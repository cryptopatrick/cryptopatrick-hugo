#!/bin/bash

# remove everything in public folder
cd public
rm -rf *
cd ..

# removing dummy post
#rm content/post/newpost.md

# Build the project.
# hugo -t hugo-theme-casper_backup # if using a theme, replace by `hugo -t <yourtheme>`
hugo -t seamless

# Go To Public folder
# cd public
# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push -u origin master

# Come Back
# cd ..

### Make changes to site folder #############################
# Copy contents in cryptopatrick-hugo/public
# to cryptopatrick.github.io
echo -e "\033[0;32mCopying built site to local cryptopatrick.github.io...\033[0m"
cd public
cp -r * ../../cryptopatrick.github.io/

# Go to ../cryptopatrick.github.io/
cd ..
cp CNAME ../cryptopatrick.github.io/
cd ../cryptopatrick.github.io/
# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos
# to github.com/cryptopatrick/cryptopatrick.github.io
echo -e "\033[0;32mDeploying new site to GitHub...\033[0m"
git push origin master --force

# Come Back
cd ..
cd cryptopatrick-hugo
