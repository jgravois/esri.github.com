#!/bin/bash
git branch -D gh-pages
git checkout -b gh-pages
npm run build
git add -f built/
git commit -m "deploy"
git push origin `git subtree split --prefix built gh-pages`:gh-pages --force
git reset --hard HEAD~1
git checkout v2
git branch -D gh-pages
