#!/usr/bin/env bash

image="$1"

file_path=registry/$(echo "$image" | sed 's/:/-/g').tar
echo -e "💾 Loading $image...\n"
echo -e "image path: $file_path"

echo "Joining image files..."
cat "$file_path"_* > "$file_path"

docker load -i "$file_path"

rm -f "$file_path"
echo -e "The temporary image file is removed.\n"

echo "🚀 Done"