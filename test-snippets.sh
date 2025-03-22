#!/bin/bash

# Function to check for duplicate keywords
check_duplicates() {
    echo "Checking for duplicate keywords..."
    
    # Create a temporary file to store all keywords
    keywords_file=$(mktemp)
    
    # Extract all keywords from JSON files
    find ./snippets -type f -name "*.json" | while read -r file; do
        jq -r '.[].keyword' "$file" >> "$keywords_file"
    done
    
    # Check for duplicates
    duplicates=$(sort "$keywords_file" | uniq -d)
    
    # Clean up
    rm "$keywords_file"
    
    # If duplicates found, exit with error
    if [ -n "$duplicates" ]; then
        echo "Error: Found duplicate keywords:"
        echo "$duplicates"
        exit 1
    else
        echo "No duplicate keywords found."
    fi
}

# Run the check
check_duplicates