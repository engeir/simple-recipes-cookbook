#!/bin/sh

cd src || exit 1

HEADER="---
title: 'Simple Recipes Cookbook'
subtitle: 'The painless, portable, cookbook cookiecutter'
geometry: margin=2cm
...
"

echo "$HEADER" > ./main.md

CURRENT_HEADER=""

for f in $(find . -maxdepth 2 -type f | sort | sed 's/\.\/src\///g'); do
    DIRECTORY=$(dirname "$f")
    [ "$DIRECTORY" = "." ] && continue
    if [ "$CURRENT_HEADER" != "$DIRECTORY" ]; then
        PRINT_DIR=$(echo "$DIRECTORY" | \
            sed -e 's/^\.\/.[0-9]-//g' -e 's/-/ /g' | \
            awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1')
        printf "\n%s\n" "\newpage{}" >> ./main.md
        printf "\n# %s\n" "$PRINT_DIR" >> ./main.md
        CURRENT_HEADER=$DIRECTORY
    fi
    FILENAME=$(basename "$f" | \
        awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1' | \
        sed -e 's/\.md//g')
    {
        printf "\n%s\n" "## $FILENAME"
        printf "\n!include %s\n" "$f"
        printf "\n%s\n" "----"
    } >> ./main.md
done

pandoc main.md --filter pandoc-include --toc -s -o main.pdf >/dev/null 2>&1
pandoc main.md --filter pandoc-include --toc -s -o main.html >/dev/null 2>&1
