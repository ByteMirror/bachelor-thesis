# Suggested Commands

## LaTeX Build

### Full Build (with bibliography)
```bash
pdflatex Arbeit.tex && biber Arbeit && pdflatex Arbeit.tex && pdflatex Arbeit.tex
```

### Using latexmk (recommended)
```bash
latexmk
```
Configuration is in `.latexmkrc`.

### Quick Build (no bibliography update)
```bash
pdflatex Arbeit.tex
```

## Git Workflow

### Create chapter branch
```bash
git checkout -b kapitel/XX-name
```

### Stage thesis files
```bash
git add latex/ references.bib
```

### Commit with conventional format
```bash
git commit -m "feat(thesis): description"
```

## File Search

### Find citations in LaTeX files
```bash
grep -rn "\\autocite" latex/*.tex
```

### Find specific citation key
```bash
grep -rn "autocite{keyname}" latex/*.tex
```

### Count citation usage
```bash
grep -c "autocite{keyname}" latex/*.tex
```

## System Utilities
- `git` - Version control
- `ls` - List files
- `grep` - Search in files
- `find` - Find files
- `cat` - Read files
