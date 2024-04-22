#!/bin/bash

echo "Joining files..."

# Get the base filename from the first argument (without extension)
base_filename="$1"

# Use cat command to concatenate chunk files
cat "$base_filename"_* > "$base_filename"

echo "> Done"