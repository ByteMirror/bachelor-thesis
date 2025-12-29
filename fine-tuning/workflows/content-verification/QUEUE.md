# Content Verification Queue

> **For Orchestrators**: Claim sources, verify content via WebFetch, add page numbers where needed.

## Statistics
- Total: 55
- Completed: 19
- Claimed: 0
- Available: 36

---

## Priority Levels

Sources with more citations get higher priority (more impact if wrong).

### High Priority (4+ citations)

| Citation Key | Citations | Source Type | Notes |
|--------------|-----------|-------------|-------|
| ~~PixiPerf2024~~ | 12 | @online | ✓ VERIFIED (batch-001) |
| ~~DnDBasicRules2014~~ | 6 | @online | ✓ VERIFIED (batch-001) |
| ~~Nielsen1993ResponseTimes~~ | 4 | @online | ✓ VERIFIED (batch-001) |
| ~~FoundryTokens2024~~ | 4 | @online | ✓ VERIFIED (batch-001) |

### Medium Priority (2-3 citations)

| Citation Key | Citations | Source Type | Notes |
|--------------|-----------|-------------|-------|
| ~~RefactoringGuruObserver~~ | 3 | @online | ✓ VERIFIED (batch-002) |
| ~~ElectronPerformanceGuide2024~~ | 3 | @online | ✓ VERIFIED (batch-002) |
| ~~Canvas2025~~ | 3 | @online | ✓ VERIFIED (batch-002) |
| ~~Weber2019EssentialBenchmarking~~ | 2 | @online | ✓ FIXED (batch-003) - n≥30 removed |
| Thangadurai2024ElectronApps | 2 | replaced | → Electron docs |
| ~~Roll20Graphics2024~~ | 2 | @online | ✓ VERIFIED (batch-002) |
| ~~RefactoringGuruSingleton~~ | 2 | @online | ✓ VERIFIED (batch-002) |
| ~~PixiV8Migration2024~~ | 2 | @online | ✓ FLAGGED (batch-003) - Culling-Controls unsupported |
| PixiTexture2024 | 2 | replaced | → MDN WebGL docs |
| ~~PixiPool2024~~ | 2 | @online | ✓ VERIFIED (batch-002) |
| ~~PixiGarbageCollection2024~~ | 2 | @online | ✓ VERIFIED (batch-003) |
| ~~ImmerDocs2024~~ | 2 | @online | ✓ VERIFIED (batch-003) |
| ~~FowlerPoEAACatalog2024~~ | 2 | @online | ✓ FIXED (batch-003) - DAO→Table Data Gateway |
| ~~Fowler2014~~ | 2 | @online | ✓ VERIFIED (batch-003) |
| ~~FoundryToken2024~~ | 2 | @online | ✓ REPLACED (batch-004) - merged with FoundryTokens2024 |
| ~~FoundryScenes2024~~ | 2 | @online | ✓ VERIFIED (batch-004) |
| ~~FoundryIssue11183~~ | 2 | @online | ✓ FIXED (batch-004) - factual error corrected |

### Low Priority (1 citation)

| Citation Key | Citations | Source Type | Notes |
|--------------|-----------|-------------|-------|
| ZustandDocs2024 | 1 | @online | State management |
| WikiWebGPU2024 | 1 | @online | Wikipedia - needs page# |
| WikiWebGL2024 | 1 | @online | Wikipedia - needs page# |
| WikiCanvas2024 | 1 | @online | Wikipedia - needs page# |
| VSCodeExtensionLifecycle2024 | 1 | @online | VSCode extension docs |
| ValentineFantasyStatblocks2024 | 1 | @online | Statblock plugin |
| V8MemoryOptimization2016 | 1 | @online | V8 memory optimization |
| StackifyOCP | 1 | @online | Open/Closed Principle |
| RPGDrop2024Market | 1 | @online | Market analysis |
| Roll20TokenFeatures2024 | 1 | @online | Roll20 tokens |
| Roll20FogOfWar2024 | 1 | @online | Roll20 fog of war |
| Roll202024 | 1 | @online | Roll20 general |
| Richards2024MicrokernelArchitecture | 1 | @online | Microkernel pattern (NEW) |
| Richards2015LayeredArchitecture | 1 | @online | Layered architecture (NEW) |
| PixiJSV8Performance2024 | 1 | @online | PIXI v8 perf blog |
| PixiJSSceneGraph2024 | 1 | @online | Scene graph docs |
| PixiJS2024Launch | 1 | @online | PIXI v8 launch blog |
| PixiIssue10586 | 1 | @online | GitHub issue |
| PixiBatch2024 | 1 | @online | Batch rendering |
| ObsidianWiki2024 | 1 | @online | Obsidian Wikipedia |
| ObsidianPluginDev2024 | 1 | @online | Plugin dev guide |
| ObsidianAPI2024 | 1 | @online | Obsidian API docs |
| Microsoft2024EventDriven | 1 | @online | Event-driven arch (NEW) |
| MDNAnimPerf2024 | 1 | @online | MDN animation perf |
| Liu2023FrameRateVariation | 1 | @article | Peer-reviewed - needs page# |
| Klein2024FrameTiming | 1 | @article | Peer-reviewed - needs page# |
| JSON2017 | 1 | @online | RFC 8259 |
| JavalentInitiativeTracker2024 | 1 | @online | Initiative tracker plugin |
| JavaDesignPatternsLazyLoading | 1 | @online | Lazy loading pattern |
| FoundryVTTWiki2024 | 1 | @online | Foundry VTT Wikipedia |
| FoundryVTT2024 | 1 | @online | Foundry main site |
| FoundryMeasurement2024 | 1 | @online | Measurement API |
| FoundryGridDocs2024 | 1 | @online | Grid API docs |
| FoundryFrameworks2024 | 1 | @online | Foundry frameworks |
| FabricJSWebGL2025 | 1 | @online | FabricJS WebGL (NEW) |
| ElectronWiki2024 | 1 | @online | Electron Wikipedia |

### Already Have Page Numbers (Skip)

| Citation Key | Current | Notes |
|--------------|---------|-------|
| Daggerheart2025 | [p. 4] | Correct - only @book allowed |

---

## Verification Protocol

### For Each Source:

1. **Fetch source** with WebFetch
2. **Identify all claims** using this source in thesis
3. **Locate evidence** in source for each claim
4. **Record page/section** where evidence found
5. **Flag issues** if claim unsupported

### Page Number Format:

```latex
% Short sources (<6 pages/sections): no page needed
\autocite{Key}

% Long sources (>6 pages): add page
\autocite[S. 42]{Key}

% Web sources with sections: use section name
\autocite[Grid Configuration]{Key}
```

---

> Last updated: 2025-12-29
