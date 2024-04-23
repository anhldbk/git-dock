#!/usr/bin/env bash

image="$1"

file_path=registry/$(echo "$image" | sed 's/:/-/g').tar
parent_dir=$(dirname "$file_path")

echo -e "💾 Dumping $image...\n"
echo "output path: $file_path"
echo "parent dir: $parent_dir"

mkdir -p "$parent_dir"
docker save -o "$file_path" "$image"

# Set the chunk size in bytes (80MB)
chunk_size=$((80 * 1024 * 1024))

# Split the file into chunks using split command
split -b "$chunk_size" "$file_path" "$file_path"_

echo -e "Image file is split successfully"
rm -f "$file_path"
echo "The file is removed. Please commit"

echo -e "\n🚀 Done"
