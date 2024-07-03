#!/bin/bash

# Assuming current directory is where you want to copy the files (current directory)
destination_dir=$(pwd)

# Directory where config* files exist
source_dir="./config_bootstrap"

counter=1

# Iterate over each file that matches the pattern config* in the source directory
for file in "$source_dir"/config*; do
    if [ -f "$file" ]; then  # Check if it's a regular file
        echo "Copying file: $file"
        
        # Extract the filename without path
        filename=$(basename "$file")
        
        # Copy the file to the current directory and rename as config.json
        cp "$file" "$destination_dir/config.json"
        
        # Generate average template
        source generate-average-template.sh
        
        # Rename cortexmap directory (so that there is 1 directory per sample)
        mv cortexmap cortexmap_s"$counter"
        counter=$((counter+=1))
        echo "Generated probability map for: $file"
    fi
done


