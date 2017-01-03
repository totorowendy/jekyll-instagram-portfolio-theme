#!/bin/bash

git add _site _posts web-dist/images
git commit -m "publishing new content"
git push origin master
cp -r _site ../_site
git checkout gh-pages
mv ../_site/* .
rm -rf ../_site
git add .
git commit -m "publishing new content"
git push origin gh-pages
git checkout master
git reset --hard HEAD
