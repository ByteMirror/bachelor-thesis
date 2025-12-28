# Citation Verification Report: Chapter 2 (Theoretische Grundlagen)
Date: 2025-12-06
Status: **FIXED**

## Summary
- **Total citations**: 23
- **Verified (OK)**: 18 ✅
- **Fixed**: 5
- **Archived**: 0 (fleeting sources should be archived)

## Final Status

| Citation | Status | Action Taken |
|----------|--------|--------------|
| Scriven2021FromTabletop | ✅ NEW | Replaced fabricated Sidhu2020VirtualTabletops |
| Tychsen2006RolePlaying | ✅ OK | ACM paper verified (DOI: 10.5555/1231894.1231906) |
| Burgun2013GameDesign | ✅ OK | Book with ISBN |
| Dormans2012Engineering | ✅ OK | Book with ISBN |
| Costikyan2013Uncertainty | ✅ OK | Book with ISBN |
| Claypool2009Perspectives | ✅ FIXED | Corrected year from 2007 to 2009, added DOI |
| FoundryVTT2024 | ✅ FIXED | Updated broken URL to /kb/ |
| Gamma1994DesignPatterns | ✅ OK | Gang of Four book with ISBN |
| Buschmann1996PatternOriented | ✅ OK | POSA book with ISBN |
| Michelson2006EventDriven | ✅ OK | Patricia Seybold Group white paper verified |
| Marquardt1999PluginPatterns | ✅ FIXED | Corrected to 1999 EuroPLoP, removed fake co-author |
| ObsidianAPI2024 | ✅ OK | docs.obsidian.md verified |
| Fowler2002Patterns | ✅ OK | Book with ISBN |
| Freeman2004HeadFirst | ✅ OK | Book with ISBN |
| Martin2017CleanArchitecture | ✅ OK | Book with ISBN |
| ObsidianWiki2024 | ✅ OK | Wikipedia |
| ElectronWiki2024 | ✅ OK | Wikipedia |
| ElectronProcessModel2024 | ✅ OK | Electron docs verified |
| ElectronIPC2024 | ✅ OK | Electron docs verified |
| V8MemoryOptimization2016 | ✅ FIXED | Corrected year from 2024 to 2016 |
| PixiJS2024Launch | ✅ OK | March 2024 blog post verified |
| PixiJSSceneGraph2024 | ✅ OK | PixiJS docs verified |
| PixiJSV8Performance2024 | ✅ OK | Performance claim verified (0.12ms static vs 15ms moving) |

---

## Changes Made

### 1. Sidhu2020VirtualTabletops (FABRICATED → REPLACED)
**Problem**: Paper does NOT exist. The International Journal of Role-Playing Issue 11 was published in 2021 (not 2020) and contains no paper by Sidhu or Chen. The journal is real, but the paper is fabricated.
**Solution**:
- Replaced with `Scriven2021FromTabletop` - a verified peer-reviewed paper
- Paul Scriven (2021): "From Tabletop to Screen: Playing Dungeons and Dragons during COVID-19"
- Published in *Societies* (MDPI), DOI: 10.3390/soc11040125
- Directly relevant to VTT adoption and remote TTRPG play

### 2. Claypool2007Perspectives (WRONG YEAR → FIXED)
**Problem**: Paper exists but was published in **2009** (not 2007) at FDG conference
**Solution**:
- Changed key to `Claypool2009Perspectives`
- Updated year to 2009
- Added DOI: 10.1145/1536513.1536530
- Fixed author order (Mark first, then Kajal)

### 3. FoundryVTT2024 (BROKEN URL → FIXED)
**Problem**: URL https://foundryvtt.com/article/ returns 404
**Solution**:
- Updated URL to https://foundryvtt.com/kb/ (Knowledge Base)
- Updated title to "Foundry Virtual Tabletop Knowledge Base"

### 4. Marquardt2004PluginPattern (WRONG PAPER → FIXED)
**Problem**: "The Plugin Pattern" by Marquardt & Völter from EuroPLoP 2004 does not exist as cited. Klaus Marquardt did publish plugin pattern work, but:
- It was at **EuroPLoP 1999** (not 2004)
- The paper is called "Patterns for Plug-Ins"
- Markus Völter was NOT a co-author on this paper
**Solution**:
- Changed key to `Marquardt1999PluginPatterns`
- Updated title to "Patterns for Plug-Ins"
- Fixed year to 1999, conference to EuroPLoP '99
- Removed Völter as co-author
- Added ISBN: 978-3-87940-774-3

### 5. V8MemoryOptimization2024 (WRONG YEAR → FIXED)
**Problem**: The V8 blog post exists but was published on **October 7, 2016** (not 2024)
**Solution**:
- Changed key to `V8MemoryOptimization2016`
- Updated year to 2016
- Added note clarifying publication date

---

## Sources to Archive (Fleeting)

These verified web sources should be archived to `resources/archived-sources/`:

| Citation | URL | Priority |
|----------|-----|----------|
| FoundryVTT2024 | https://foundryvtt.com/kb/ | High |
| ObsidianAPI2024 | https://docs.obsidian.md/ | High |
| ElectronProcessModel2024 | https://www.electronjs.org/docs/latest/tutorial/process-model | Medium |
| ElectronIPC2024 | https://www.electronjs.org/docs/latest/tutorial/ipc | Medium |
| V8MemoryOptimization2016 | https://v8.dev/blog/optimizing-v8-memory | High |
| PixiJS2024Launch | https://pixijs.com/blog/pixi-v8-launches | High |
| PixiJSSceneGraph2024 | https://pixijs.com/8.x/guides/concepts/scene-graph | Medium |
| PixiJSV8Performance2024 | https://pixijs.com/blog/pixi-v8-beta | High |

---

## Verified Performance Claims

The following specific claims in the text were verified against their sources:

1. **PixiJSV8Performance2024**: "100.000 statische Sprites konsumieren lediglich 0,12ms CPU-Zeit pro Frame, wohingegen bewegte Sprites 15ms beanspruchen"
   - ✅ VERIFIED: Source states "100k sprites not moving" = ~0.12ms vs ~15ms for moving sprites

2. **Claypool2009Perspectives**: "Die Reaktionszeit zwischen Eingabe und sichtbarer Reaktion darf 100 Millisekunden nicht überschreiten"
   - ⚠️ NOTE: This specific paper focuses on frame rate/resolution, not latency. The 100ms threshold is a common UX guideline but may need a different source (e.g., Nielsen Norman Group).

---

## Lessons Learned

1. **One citation was completely fabricated** (Sidhu2020 - fake paper in real journal)
2. **Two citations had wrong years** (Claypool was 2009 not 2007, V8 blog was 2016 not 2024)
3. **One citation had wrong URL** (Foundry VTT documentation moved)
4. **One citation had wrong author attribution** (Völter was not a co-author on Marquardt's plugin work)
5. **Always verify conference years** - papers are often cited with wrong years
6. **Blog posts need date verification** - the "year" field should match actual publication date

---

## Recommended Additional Verification

The 100ms latency claim in Performance-Anforderungen section cites Claypool2009Perspectives, but that paper focuses on frame rate and resolution, not latency. Consider:
1. Keeping as-is (100ms is widely accepted UX guideline)
2. Adding Nielsen Norman Group citation for response time guidelines
3. Finding a Claypool latency-specific paper (they have several)
