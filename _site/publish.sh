#!/bin/bash

git add -u _site _posts web-dist/images
git commit -m "publishing new content"
git push origin gh-pages
