#!/bin/bash

blogdir=$1
shift

rm -rf ./_posts
cp -r "$blogdir"/posts ./_posts

rm -rf ./web-dist/images
cp -r "$blogdir"/images ./web-dist/images
