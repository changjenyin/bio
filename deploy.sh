#!/usr/bin/env sh

# abort on errors
set -e

# build
rm -rf dist/
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'
git push -f https://changjenyin@github.com/changjenyin/bio.git master:gh-pages

cd -
