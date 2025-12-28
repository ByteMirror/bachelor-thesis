#!/bin/bash

# Script to render Mermaid diagrams to PNG
# Requires: npm install -g @mermaid-js/mermaid-cli

echo "Rendering Mermaid diagrams..."

# Create bilder directory if it doesn't exist
mkdir -p ../bilder

# Render state management architecture
echo "Rendering state-management-architecture.mmd..."
mmdc -i state-management-architecture.mmd \
     -o ../bilder/state-management-architecture.png \
     -w 1400 \
     -b transparent \
     --theme default

# Render bidirectional linking flow
echo "Rendering bidirectional-linking-flow.mmd..."
mmdc -i bidirectional-linking-flow.mmd \
     -o ../bilder/bidirectional-linking-flow.png \
     -w 1000 \
     -b transparent \
     --theme default

echo "✓ Diagrams rendered successfully!"
echo "  - bilder/state-management-architecture.png"
echo "  - bilder/bidirectional-linking-flow.png"
