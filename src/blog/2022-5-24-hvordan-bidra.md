# Hvordan bidra

Om du Ã¸nsker Ã¥ legge inn en oppskrift selv for sÃ¥ Ã¥ lage en pull request, kan du gjÃ¸re
det ved Ã¥ fÃ¸lge disse stegene.

## Fork

Lag en [fork](https://github.com/engeir/simple-recipes-cookbook/fork) av repositoriet.

## Ny oppskrift

En ny oppskrift kan legges til ved Ã¥ opprette en ny fil i en eksisterende eller en ny
mappe. Filstrukturen du Ã¸nsker Ã¥ legge til filer i ser omlag slik ut:

```text
.
??? IMAGE.md
??? LICENSE
??? README.md
??? TEMPLATE.md
??? retype.yml
??? src
    ??? _includes
    ?ÊÊ ??? head.html
    ??? bakst
    ?ÊÊ ??? index.yml
    ?ÊÊ ??? bananpannekaker.md
    ??? hovedretter
    ?ÊÊ ??? index.yml
    ?ÊÊ ??? pasta-a-la-vodka.md
    ??? index.md
    ??? static
        ??? pasta-a-la-vodka.webp
```

Nye files _mÃ¥_ ha filendelsen `.md`, og filnavnet mÃ¥ vÃ¦re uten mellomrom og kun med smÃ¥
bokstaver. I stedet for mellomrom, bruk bindestrek (`-`).

La oss si at du Ã¸nsker Ã¥ legge til bolleoppskrift. Da oppretter du en ny fil i mappen
`bakst` og kaller den for eksempel `ferske-boller.md`. Kopier innholdet i
[TEMPLATE.md](https://github.com/engeir/simple-recipes-cookbook/TEMPLATE.md) inn i
`ferske-boller.md`, og legg inn det du mÃ¥tte Ã¸nske.

Den nye filstrukturen vil nÃ¥ se slik ut:

```text
.
??? IMAGE.md
??? LICENSE
??? README.md
??? TEMPLATE.md
??? retype.yml
??? src
    ??? _includes
    ?ÊÊ ??? head.html
    ??? bakst
    ?ÊÊ ??? index.yml
    ?ÊÊ ??? bananpannekaker.yml
    ?ÊÊ ??? ferske-boller.md
    ??? hovedretter
    ?ÊÊ ??? index.yml
    ?ÊÊ ??? pasta-a-la-vodka.md
    ??? index.md
    ??? static
        ??? pasta-a-la-vodka.webp
```

## Ã…pne PR

NÃ¥ kan Ã¥pne en pull request (PR) mot min gren "main".
