# Recipe header images

Adding images as header images (or any image, actually) to a recipe will make it appear
as a cover image in the tags and categories pages, which is really handy!

But, for consistency across the recipes, they should all be of the same format. A good
option is the `webp` format with images with size `1280x480` or ratio `8:3` that
preferably have rounded corners.

## Converting to `webp`

```sh
cwebp -z 6 in.jpg -o out.webp
```

## Cropping

```sh
cwebp -crop <x> <y> <width> <height> in.jpg -o out.webp
```

## Adding rounded corners

Note that `convert` do not accept `webp`, so this step does not go well with the above,
and may well be skipped.

Here, `40` is the radius of the circles at the corners and the image width and height
must be given.

```sh
convert -size <width>x<height> xc:none -draw "roundrectangle 0,0,<width>,<height>,40,40" png:- | convert in.jpg -matte - -compose DstIn -composite out.jpg
```
