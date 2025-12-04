#!/bin/bash

# Function to sanitize a filename
sanitize_filename() {
    local filename="$1"
    # Convert to lowercase
    filename=$(echo "$filename" | tr '[:upper:]' '[:lower:]')
    # Replace spaces with hyphens
    filename=$(echo "$filename" | sed 's/ /-/g')
    # Remove any characters that are not alphanumeric, hyphens, or periods
    filename=$(echo "$filename" | sed 's/[^a-z0-9.-]//g')
    # Replace multiple hyphens with a single hyphen
    filename=$(echo "$filename" | sed 's/--/-/g')
    # Remove leading/trailing hyphens
    filename=$(echo "$filename" | sed 's/^-//;s/-$//')
    echo "$filename"
}

# Check if a filename is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

original_filename="$1"
sanitized_filename=$(sanitize_filename "$original_filename")

# Check if the original file exists
if [ ! -f "$original_filename" ]; then
    echo "Error: File '$original_filename' not found."
    exit 1
fi

# Check if the sanitized filename is different from the original
if [ "$original_filename" = "$sanitized_filename" ]; then
    echo "Filename '$original_filename' is already safe. No changes made."
    exit 0
fi

# Perform the rename
mv "$original_filename" "$sanitized_filename"

if [ $? -eq 0 ]; then
    echo "Renamed '$original_filename' to '$sanitized_filename'."
else
    echo "Error renaming '$original_filename'."
    exit 1
fi

