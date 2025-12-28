# Abbreviations Action Plan

**Date:** 2025-12-22
**Status:** Ready for implementation

## Executive Summary

Found **34 unique abbreviations** used across the 5 main LaTeX chapters that are **not** currently using the `\ac{}` command. Of these, **32 are missing** from `latex/abkuerzungen.tex` and need to be added.

## Current State

### Already Defined in abkuerzungen.tex
- AP (access point)
- API (application programming interface)
- JSON (JavaScript Object Notation)
- REST (Representational State Transfer)
- TTRPG (Tabletop Role-Playing Game)
- VTT (Virtual Tabletop)

### Missing Definitions (32 total)

The following abbreviations are used in the text but NOT defined in `abkuerzungen.tex`:

1. **CPU** - Central Processing Unit (12 occurrences)
2. **CSS** - Cascading Style Sheets (5 occurrences)
3. **DAO** - Data Access Object (1 occurrence)
4. **DOM** - Document Object Model (3 occurrences)
5. **FPS** - Frames Per Second (35 occurrences)
6. **GB** - Gigabyte (2 occurrences)
7. **GC** - Garbage Collection (4 occurrences)
8. **GM** - Game Master (6 occurrences)
9. **GPU** - Graphics Processing Unit (15 occurrences)
10. **HP** - Hit Points (3 occurrences)
11. **HTML** - HyperText Markup Language (3 occurrences)
12. **HTML5** - HyperText Markup Language 5 (2 occurrences)
13. **I/O** - Input/Output (4 occurrences)
14. **IPC** - Inter-Process Communication (1 occurrence)
15. **JPEG** - Joint Photographic Experts Group (5 occurrences)
16. **KB** - Kilobyte (3 occurrences)
17. **MB** - Megabyte (10 occurrences)
18. **NVMe** - Non-Volatile Memory Express (1 occurrence)
19. **OS** - Operating System (1 occurrence)
20. **PNG** - Portable Network Graphics (5 occurrences)
21. **RGBA** - Red Green Blue Alpha (2 occurrences)
22. **SCSS** - Sassy CSS (2 occurrences)
23. **SOA** - Service-Oriented Architecture (1 occurrence)
24. **SRP** - Single Responsibility Principle (1 occurrence)
25. **SSD** - Solid State Drive (1 occurrence)
26. **UI** - User Interface (8 occurrences)
27. **UX** - User Experience (1 occurrence)
28. **WebGL** - Web Graphics Library (19 occurrences)
29. **WebP** - Web Picture format (2 occurrences)
30. **XDR** - Extended Dynamic Range (1 occurrence)
31. **YAML** - YAML Ain't Markup Language (5 occurrences)
32. **ms** - milliseconds (11 occurrences)

## Implementation Plan

### Step 1: Add Missing Abbreviations to abkuerzungen.tex

Add the following lines to `latex/abkuerzungen.tex` (in alphabetical order):

```latex
\acro{CPU}{Central Processing Unit}
\acro{CSS}{Cascading Style Sheets}
\acro{DAO}{Data Access Object}
\acro{DOM}{Document Object Model}
\acro{FPS}{Frames Per Second}
\acro{GB}{Gigabyte}
\acro{GC}{Garbage Collection}
\acro{GM}{Game Master}
\acro{GPU}{Graphics Processing Unit}
\acro{HP}{Hit Points}
\acro{HTML}{HyperText Markup Language}
\acro{I/O}{Input/Output}
\acro{IPC}{Inter-Process Communication}
\acro{JPEG}{Joint Photographic Experts Group}
\acro{KB}{Kilobyte}
\acro{MB}{Megabyte}
\acro{ms}{milliseconds}
\acro{NPC}{Non-Player Character}
\acro{NVMe}{Non-Volatile Memory Express}
\acro{OS}{Operating System}
\acro{PNG}{Portable Network Graphics}
\acro{RGBA}{Red Green Blue Alpha}
\acro{SCSS}{Sassy CSS}
\acro{SOA}{Service-Oriented Architecture}
\acro{SRP}{Single Responsibility Principle}
\acro{SSD}{Solid State Drive}
\acro{UI}{User Interface}
\acro{UX}{User Experience}
\acro{WebGL}{Web Graphics Library}
\acro{WebP}{Web Picture format}
\acro{XDR}{Extended Dynamic Range}
\acro{YAML}{YAML Ain't Markup Language}
```

### Step 2: Programmatic Replacement

After adding the abbreviations to `abkuerzungen.tex`, use the following approaches for replacement:

#### Option A: Python Script (Recommended)

Create a script that:
1. Reads each LaTeX file
2. For each abbreviation, finds standalone usage (not already in `\ac{}`)
3. Replaces with `\ac{ABBREV}`
4. Handles special cases:
   - Don't replace in code listings
   - Don't replace in comments
   - Don't replace in URLs or file paths
   - Handle hyphenated cases (e.g., "HTML5 Canvas" → `\ac{HTML5}` Canvas)

#### Option B: Serena MCP Tools

Use the following sequence:
1. `replace_symbol_body` or regex-based replacement with `mcp__serena__edit_memory`
2. For each abbreviation, search and replace pattern: `\b{ABBREV}\b` → `\ac{{ABBREV}}`
3. Exclude patterns that are already wrapped in `\ac{}`

### Step 3: Special Cases to Handle

**Compound abbreviations:**
- "HTML5 Canvas" → `\ac{HTML5}` Canvas
- "WebGL-based" → `\ac{WebGL}`-based
- "CPU-Auslastung" → `\ac{CPU}`-Auslastung

**Units that may not need \ac{}:**
- "16 GB", "512 GB" → Keep as is or use `\ac{GB}`?
- "8,33 ms" → Keep as is or use `\ac{ms}`?

**Recommendation:** Units in measurements can stay as plain text, but standalone usage should use `\ac{}`.

### Step 4: Verification

After replacement:
1. Run `pdflatex` to check for compilation errors
2. Verify that first occurrence shows full form
3. Verify that subsequent occurrences show short form
4. Check the Abkürzungsverzeichnis is complete

## Files Affected

- `latex/abkuerzungen.tex` - Add 32 new abbreviation definitions
- `latex/01-Einleitung.tex` - Multiple abbreviations to replace
- `latex/02-Theoretische-Grundlagen.tex` - Multiple abbreviations to replace
- `latex/03-Konzeption-Implementierung.tex` - Most occurrences (this is the largest file)
- `latex/04-Evaluation-Ergebnisse.tex` - Multiple abbreviations to replace
- `latex/05-Fazit-Ausblick.tex` - Multiple abbreviations to replace

## Detailed Report

See `abbreviations-usage-report.md` for:
- Exact line numbers of each occurrence
- Context for each usage
- File-by-file breakdown

## Next Steps

1. **Review** this plan and the detailed report
2. **Add** the 32 missing abbreviations to `abkuerzungen.tex`
3. **Test** compilation with new abbreviations
4. **Run** programmatic replacement (we can create this script together)
5. **Verify** the output and fix any edge cases
6. **Compile** final PDF and check Abkürzungsverzeichnis

## Questions to Decide

1. Should units (GB, MB, KB, ms) use `\ac{}` in measurement contexts?
   - Example: "16 GB RAM" vs "16 \ac{GB} RAM"

2. Should "HTML5" be treated separately from "HTML"?
   - Current: Both are used
   - Recommendation: Keep HTML5 as separate abbreviation

3. Should we keep "NPC" in abkuerzungen.tex even though it's not currently used?
   - Recommendation: Add it since it's a common gaming term

---

**Ready for implementation!** Let me know if you'd like me to:
- Create the programmatic replacement script
- Update `abkuerzungen.tex` directly
- Do a test replacement on one chapter first
