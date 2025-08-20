#!/bin/bash

cp math_template_post.md ./content/post
cd content
cd post

month=$(date +%m)
day=$(date +%d)
counter=0

filename="2025${month}${day}_${counter}.md"

# Loop until we find a filename that doesn't exist
while [ -f "$filename" ]; do
  ((counter++))
  filename="2025${month}${day}_${counter}.md"
done

# Move the template to the available filename
mv math_template_post.md "$filename"
echo "Created file: $filename"
