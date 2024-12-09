#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_folder> <output_file>"
    exit 1
fi

# Assign arguments to variables
input_folder="$1"
output_file="$2"

# Check if the input folder exists
if [ ! -d "$input_folder" ]; then
    echo "Error: Input folder '$input_folder' does not exist."
    exit 1
fi

# Save the list of .txt filenames to the output file using ls
ls "$input_folder"/*.txt 2>/dev/null | while read -r file; do
    basename "$file"
done > "$output_file"

echo "List of .txt filenames has been saved to $output_file"
