#!/bin/bash
# Find target_folder in the current directory and move it up two directories
find . -type d -name "cortexmap" -exec sh -c '
    for folder; do
        mv "$folder" "${folder%/*/*}/"
        echo "Moved $folder to ${folder%/*/*}/"
    done
' sh {} +
