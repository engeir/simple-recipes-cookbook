# Simple Recipes Cookbook

> _Create your own online cookbook with minimal effort_

This cookbook is generated with the [retype](https://retype.com/) framework. It is
ridiculously easy to set up, has every type setting feature you can think of, and can be
hosted on your very own website. All for free and without having to install a thing.

To get your own online cookbook set up:

1. [Fork](https://github.com/engeir/simple-recipes-cookbook/fork) this repository.
2. Change the links set up in [retype.yml](./retype.yml)
   - This means that you change `engeir` to your own GitHub username. (Note that you can
     change everything else as well, but these two must be updated.)
3. Remove the CNAME file in the `retype` branch.
4. Set up workflows to be run in the forked repository.
   - Workflows are not run by default in repositories that are forked, but this can be
     turned on. Move to the `Actions` page of you repository to turn them on.
   - Manually run the `Publish ...` workflow.
5. Finally, go to `Settings -> Pages` in your repository, and set GitHub pages to be
   built from the `retype` branch.

----

The video below show the whole process of setting up a new site. The speed is 3x the
original, so it took less than 4 minutes to complete!

You can find the generated repo
[here](https://github.com/flottflyt/simple-recipes-cookbook) with the website deployed
at
[https://flottflyt.github.io/simple-recipes-cookbook](https://flottflyt.github.io/simple-recipes-cookbook).

https://user-images.githubusercontent.com/38856990/167300712-b58bd13e-8d7c-4070-b210-4c6ace324b25.mov

## Editing and adding new recipes

Once you have done all the steps above, you have your own fork of the project that is
set up to build a website every time the "main" branch is updated. You could do all the
editing on the GitHub website, but if you want to instead clone it locally and edit
using your editor of choice, you may also run a local version of the website. This is
useful to be able to verify that your changes work before you push the changes to
GitHub.

To do this you first clone the project, move into it and then run the retype CLI (visit
their website for instructions on how to [install the retype
CLI](https://retype.com/guides/getting-started/#install)):

```bash
# Use the URL of your fork:
git clone https://github.com/engeir/simple-recipes-cookbook
cd simple-recipes-cookbook
# Installing retype CLI with npm should be as simple as
# npm install retypeapp --global
retype watch
```

If you now start chaining files while the `retype watch` command is running, the locally
hosted website will automatically update.

## Note

The deployed website found in this repository is what I'm using for my own recipes, and
its contents (contents of [src](./src) that is) will change. For fewer and more diverse
examples of what is possible with [retype](https://retype.com/), visit their
[website](https://retype.com/) and have a look at my [example
repository](https://github.com/flottflyt/simple-recipes-cookbook).
