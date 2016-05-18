#!/bin/bash

npm run build

git checkout master

# create a local gh-pages branch containing the splitted output folder
git subtree split --prefix built -b gh-pages --force

# force the push of the gh-pages branch to the remote gh-pages branch at origin
git push origin gh-pages --force

# delete the local gh-pages because you will need it: ref
git branch -D gh-pages

git checkout master
