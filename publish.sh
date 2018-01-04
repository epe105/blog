#!/bin/sh

echo "### Deleting old publication"
rm -rf public
mkdir public

echo "### Cloning gh-pages branch into public"
git clone https://github.com/epe105/blog.git --branch gh-pages public

echo "### Generating site"
hugo

echo "### Updating gh-pages branch"
cd public && git add -A && git commit -m "Publishing to gh-pages." && git push origin gh-pages

echo "Go back to Original Directory"
cd ../
