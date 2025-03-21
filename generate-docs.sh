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
    echo "{\"snippets\":[" > index.json
    
    # Process each file and append snippets
    first=true
    while IFS= read -r file; do
        if [ "$first" = true ]; then
            first=false
        else
            echo "," >> index.json
        fi
        jq -r '.snippets[] | tostring' "$file" | tr '\n' ',' | sed 's/,$//' >> index.json
    done < <(find ./snippets -type f -name "*.json")
    
    echo "]}" >> index.json
    
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