cp -a public/* ../cryptopatrick.github.io
cd ../cryptopatrick.github.io

# Add changes to git.
git add -A
# Commit changes.
git commit -m "New update."
# Push source and build repos.
git push origin master
