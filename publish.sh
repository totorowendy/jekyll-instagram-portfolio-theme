#!/bin/bash

git add _posts
git commit -m "publishing new content"
git push origin master
rm -rf ../_site
rm -rf ../vendor
rm -rf ../.bundle
mv vendor ..
mv .bundle ..
cp -r _site ../_site
git checkout gh-pages
rm -rf *
mv ../_site/* .
rm -rf ../_site
git add .
git commit -m "publishing new content"
git push origin gh-pages
git checkout master
mv ../.bundle .
mv ../vendor .
