# Hvordan bidra

Om du ønsker å legge inn en oppskrift selv for så å lage en innlemmelsesforespørsel
(pull request, PR), kan du gjøre det ved å følge disse stegene.

## Fork

Lag en [fork](https://github.com/engeir/simple-recipes-cookbook/fork) eller gafling av
lageret.

## Ny oppskrift

En ny oppskrift kan legges til ved å opprette en ny fil i en eksisterende eller en ny
mappe.

Nye filer _må_ ha filendelsen `.md`, og filnavnet må være uten mellomrom (bruk heller
bindestrek, `-`) og kun med små bokstaver, også kjent som
[kebab case](https://en.wikipedia.org/wiki/Letter_case#Kebab_case).

La oss si at du ønsker å legge til en bolleoppskrift. Da oppretter du en ny fil i mappen
`bakst` og kaller den for eksempel `ferske-boller.md`. Kopier innholdet i
[TEMPLATE.md](https://github.com/engeir/simple-recipes-cookbook/blob/main/TEMPLATE.md?plain=1)
inn i `ferske-boller.md`, og rediger etter eget ønske.

Filstrukturen du ønsker å legge til filer i ser omlag slik ut, før og etter:

||| Før

```text
.
├── IMAGE.md
├── LICENSE
├── README.md
├── TEMPLATE.md
├── retype.yml
└── src
    ├── _includes
    │   └── head.html
    ├── bakst
    │   ├── bananpannekaker.md
    │   └── index.yml
    ├── blog
    │   └── 2022-5-24-hvordan-bidra.md
    ├── hovedretter
    │   ├── index.yml
    │   └── tomat-paprika-suppe.md
    ├── index.md
    └── static
        └── pasta-a-la-vodka.webp
```

||| Etter

```text
.
├── IMAGE.md
├── LICENSE
├── README.md
├── TEMPLATE.md
├── retype.yml
└── src
    ├── _includes
    │   └── head.html
    ├── bakst
    │   ├── bananpannekaker.md
    │   ├── ferske-boller.md
    │   └── index.yml
    ├── blog
    │   └── 2022-5-24-hvordan-bidra.md
    ├── hovedretter
    │   ├── index.yml
    │   └── tomat-paprika-suppe.md
    ├── index.md
    └── static
        └── pasta-a-la-vodka.webp
```

|||

## Bilder

For å unngå at bilder gjør lageret veldig stort skal de være i filformatet `webp`, med
en maks filstørrelse på 500 kB. Dette forklares i større detailj i
[IMAGE.md](https://github.com/engeir/simple-recipes-cookbook/blob/main/IMAGE.md), men
kort fortalt kan det gjøres ved hjelp av kommandolinjeprogrammet `cwebp` slik:

```bash
cwebp -size 500000 in.jpg -o out.webp
```

Eventuelt kan du forsøke en av de mange nettsidene for å konvertere, f.eks
[freeconvert](https://www.freeconvert.com/jpg-to-webp).

## Åpne PR

Nå kan åpne en pull request (PR) mot min gren "main".
