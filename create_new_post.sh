cp template_post.md ./content/post
cd content
cd post
month=$(date +%m)
day=$(date +%d)
mv template_post.md 2024$month$day\_00.md
