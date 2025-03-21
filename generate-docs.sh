#!/bin/bash

# Function to process JSON file for documentation
process_json_docs() {
    local file=$1
    local relative_path=${file#./snippets/}
    
    echo "## ${relative_path}" >> README.md
    echo "" >> README.md
    echo "| Name | Keyword | Output |" >> README.md
    echo "|------|---------|---------|" >> README.md
    
    jq -r '.snippets[] | "| \(.name) | `\(.keyword)` | `\(.text)` |"' "$file" >> README.md
    echo "" >> README.md
}

# Function to merge JSON files
merge_json_files() {
    # Create a temporary array for all snippets
    snippets=()
    
    # Read all JSON files and collect their snippets
    while IFS= read -r file; do
        # Get snippets from each file and add to array
        while IFS= read -r snippet; do
            if [ -n "$snippet" ]; then
                snippets+=("$snippet")
            fi
        done < <(jq -c '.snippets[]' "$file")
    done < <(find ./snippets -type f -name "*.json")
    
    # Combine all snippets into index.json
    printf "[" > index.json
    printf "%s," "${snippets[@]}" | sed 's/,$//' >> index.json
    printf "]" >> index.json
    
    # Format the final JSON file
    jq '.' index.json > temp.json && mv temp.json index.json
}

# Generate README
cat > README.md << 'EOF'
# Raycast Snippets

This repository contains various text expansion snippets for Raycast.

## Usage

1. Import the snippets into your Raycast Text Snippets
2. Use the keywords to trigger the expansions
3. Alternatively, use the index.json file to import all snippets at once

## Available Snippets

EOF

# Process all JSON files for documentation
find ./snippets -type f -name "*.json" | while read -r file; do
    process_json_docs "$file"
done

# Merge all JSON files into index.json
merge_json_files

echo "Documentation and index.json generated successfully!"