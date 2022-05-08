# Simple Recipes Cookbook

> _Create your own online cookbook with minimal effort_

To get your own online cookbook set up:

- [Fork](https://github.com/engeir/simple-recipes-cookbook/fork) this repository.
- Change the links set up in [retype.yml](./retype.yml)
  - This means that you change `engeir` to your own GitHub username. (Note that you can
    change everything else as well, but these two must be updated.)
- Remove the CNAME file in the `retype` branch.
- Set up workflows to be run in the forked repository.
  - Workflows are not run by default in repositories that are forked, but this can be
    turned on. Move to the `Actions` page of you repository to turn them on.
  - Manually run the `Publish ...` workflow.
- Finally, go to `Settings -> Pages` in your repository, and set GitHub pages to be
  built from the `retype` branch.

----

This video show the whole process of setting up a new site. The speed is 3x the
original, so it took less than 4 minutes to complete!

https://user-images.githubusercontent.com/38856990/167300712-b58bd13e-8d7c-4070-b210-4c6ace324b25.mov
