#!/bin/bash

# Convert all snippet files to array format
find ./snippets -type f -name "*.json" | while read -r file; do
    echo "Converting $file..."
    # Convert the file using jq
    jq '.snippets' "$file" > "$file.tmp" && mv "$file.tmp" "$file"
done

# Update the generate-docs.sh script to handle new format
sed -i '' 's/jq -r '\''.snippets\[\]/jq -r '\''\[\]/g' generate-docs.sh

echo "All files converted to array format!"