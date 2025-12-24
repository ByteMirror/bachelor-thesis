# Diagram Generation

These Mermaid diagram files need to be rendered to PNG/SVG before they can be included in the thesis.

## Option 1: Online Rendering (Easiest)

1. Go to https://mermaid.live/
2. Paste the content of each `.mmd` file
3. Click "Download PNG" or "Download SVG" (SVG recommended)
4. Save as:
   - `state-management-architecture.mmd` → `../bilder/state-management-architecture.png`
   - `bidirectional-linking-flow.mmd` → `../bilder/bidirectional-linking-flow.png`

## Option 2: CLI Rendering

```bash
# Install mermaid-cli (once)
npm install -g @mermaid-js/mermaid-cli

# Render diagrams
cd diagrams
mmdc -i state-management-architecture.mmd -o ../bilder/state-management-architecture.png -w 1200 -b transparent
mmdc -i bidirectional-linking-flow.mmd -o ../bilder/bidirectional-linking-flow.png -w 1000 -b transparent
```

## Files

- `state-management-architecture.mmd` - State management architecture with numbered flow
- `bidirectional-linking-flow.mmd` - Token-Statblock linking flowchart
