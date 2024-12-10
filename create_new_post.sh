cp template_post.md ./content/post
cd content
cd post
month=$(date +%m)
day=$(date +%d)
if ! test -f 2024$month$day\_00.md; then
  echo "File does not exist."
  mv template_post.md 2024$month$day\_00.md
fi
