#!/bin/bash

# Get the filename from the first argument
file="$1"

# Check if file exists
if [ ! -f "$file" ]; then
  echo "Error: File '$file' does not exist."
  exit 1
fi

# Get the base filename without extension
base_filename=$file

# Set the chunk size in bytes (80MB)
chunk_size=$((80 * 1024 * 1024))

# Split the file into chunks using split command
split -b "$chunk_size" "$file" "$base_filename"_

echo "File '$file' successfully split into chunks of maximum 80MB."