#!/bin/bash

git add _posts
git commit -m "publishing new content"
git push origin master
cp -r _site ../_site
git checkout gh-pages
mv vendor ..
mv .bundle ..
rm -rf *
mv ../.bundle .
mv ../vendor .
mv ../_site/* .
rm -rf ../_site
git add .
git commit -m "publishing new content"
git push origin gh-pages
git checkout master
git reset --hard HEAD
