#!/bin/bash

git add _site _posts web-dist/images
git commit -m "publishing new content"
git push origin gh-pages
