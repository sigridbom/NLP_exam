#!/bin/bash

# Create the destination folder if it doesn't exist
mkdir -p matched_scripts

# Path to the text file with the matched script titles
input_file="matched_script_titles.txt"

# Path to the folder containing the original scripts
source_folder="raw_texts"

# Loop through each script name in the text file
while IFS= read -r script; do
    # Construct the full path to the source file
    source_path="$source_folder/$script"
    
    # Check if the file exists in the source folder
    if [ -f "$source_path" ]; then
        # Copy the file to the matched_scripts folder
        cp "$source_path" matched_scripts/
        echo "Copied $script to matched_scripts/"
    else
        echo "File not found: $script"
    fi
done < "$input_file"

# write in terminal
# chmod +x script.sh # makes it executable according to chatgpt 
# ./script.sh # runs the script
