# Performance Evaluation & Optimization Plan for Atlas VTT
**Bachelor Thesis - Fabian Urbanek**
**Date**: 2025-01-16
**Version**: 2.0 (Revised Feature Selection)

---

## Overview
Create a scientific, reproducible performance measurement system for the Atlas VTT bachelor thesis, following state-of-the-art best practices from Electron/web performance research.

**Research Question** (from Exposé):
> Welche Herausforderungen ergeben sich bei der Umsetzung eines VTT-Plugins in Obsidian.md, und wie beeinflussen diese Performance, Wartbarkeit und Entwicklungsaufwand?

---

## Phase 1: Feature Identification & Toggle System (Week 1-2)

### 1.1 The 5 Critical Features (VALIDATED)

Based on codebase analysis, these features represent the most significant architectural and bundle impact:

#### **1. PIXI.js Rendering Engine** 🎨
- **Location**: `src/app/pixi/`, `RendererService.ts`, `PixiRendererOrchestrator.ts`
- **Why critical**:
  - Core graphics system powering all visual elements
  - PIXI.js v8 (~500KB+) with pixi-viewport, pixi-filters
  - Multi-layer rendering (background, tokens, grid, fog, UI)
  - Object pooling and GPU memory management
- **Bundle impact**: Largest single dependency
- **Performance impact**: FPS, frame time, GPU memory
- **Key metrics**: Startup time, memory footprint, rendering performance

#### **2. Statblock Builder/System** 📝
- **Location**:
  - `src/app/packages/components/statblock-builder/`
  - `src/app/statblock-view.tsx`
  - Services: `StatblockDialogService.ts`, `CharacterService.ts`, `TokenStatblockLinkService.ts`
- **Why critical**:
  - Complex React component tree with drag-and-drop UI
  - Multiple layout systems (D&D 5e, Daggerheart, custom)
  - Demiplane integration (`DemiplaneCharacterExtractor.ts`)
  - Character sync system (`CharacterSyncService.ts`)
  - Heavy state management (Zustand stores)
- **Bundle impact**: React-DND, Radix UI, Framer Motion, form validation
- **Performance impact**: UI responsiveness, memory allocation, state updates
- **Key metrics**: Component mount time, interaction latency, heap size

#### **3. Asset Manager** 🗂️
- **Location**:
  - `src/app/packages/components/asset-manager/`
  - Services: `GlobalAssetManagerService.ts`, `AssetService.ts`, `AssetValidationService.ts`, `ImageOptimizationService.ts`
- **Why critical**:
  - File I/O intensive (vault integration)
  - Image processing and optimization
  - JSZip for asset import/export (~100KB)
  - Cheerio for HTML parsing
  - Asset validation and path fixing
  - Collection organization
- **Bundle impact**: jszip, cheerio, image processing libraries
- **Performance impact**: Startup time (asset indexing), I/O blocking, memory usage
- **Key metrics**: Asset scan time, image optimization performance, memory footprint

#### **4. Token Creator/Management** 🎭
- **Location**:
  - `src/app/packages/components/token-picker/`
  - `src/app/pixi/token-renderer/`
  - `src/app/packages/components/asset-manager/token-creator.scss`
  - Services: `PlayerTokenSyncService.ts`, `WidgetSyncService.ts`
- **Why critical**:
  - Interactive token UI builder with live preview
  - Widget system (health bars, counters, status indicators)
  - Token-statblock linking
  - React-DND for drag-and-drop
  - Radix UI for tooltips, sliders, separators
  - PIXI transformer for token manipulation
- **Bundle impact**: react-dnd, @pixi-essentials/transformer, Radix UI
- **Performance impact**: UI rendering, drag performance, token sync latency
- **Key metrics**: Token creation time, widget update performance, memory per token

#### **5. Grid System** 📐
- **Location**:
  - `src/app/grid/`
  - Services: `GridManager.ts`
- **Why critical**:
  - Complex hexagonal tessellation mathematics
  - Multiple grid types (square, hex flat-top, hex pointy-top)
  - Grid alignment and snapping algorithms
  - Real-time rendering overlay
  - Custom geometry calculations
- **Bundle impact**: Custom mathematical implementations
- **Performance impact**: Calculation overhead, rendering performance, snapping latency
- **Key metrics**: Grid render time, snapping precision, calculation cost

---

### 1.2 Selection Rationale

**Why these 5 features best demonstrate single-bundle constraints:**

1. **Large React component trees** → Statblock Builder
   Demonstrates the cost of bundling complex UI frameworks

2. **Heavy file processing dependencies** → Asset Manager
   Shows impact of including large libraries (jszip, cheerio)

3. **Complex interactive UIs** → Token Creator
   Reveals the cost of modern interaction libraries (react-dnd)

4. **Core rendering engine** → PIXI.js
   Essential baseline; cannot be toggled but must be measured

5. **Unique computational complexity** → Grid System
   Demonstrates custom algorithmic overhead

**Features excluded** (and why):
- ❌ **Fog of War** - Relatively isolated, less architecturally complex
- ❌ **Networking** - Small bundle size (~60KB partysocket), experimental
- ❌ **Music/Audio** - Limited impact, Howler.js well-optimized
- ❌ **Dice Roller** - Small feature, minimal bundle contribution

---

### 1.3 Feature Toggle Architecture

Create a centralized, robust feature flag system:

```typescript
// src/app/services/FeatureToggleService.ts

interface FeatureFlags {
  // Core rendering (baseline - always enabled for comparison)
  pixiRendering: boolean;

  // Content creation tools
  statblockBuilder: boolean;
  assetManager: boolean;
  tokenCreator: boolean;

  // Computational systems
  gridSystem: boolean;
}

interface FeatureToggleConfig {
  enableLazyLoading: boolean;
  measurementMode: boolean;
  logPerformance: boolean;
}

class FeatureToggleService {
  private flags: FeatureFlags;
  private config: FeatureToggleConfig;

  constructor() {
    // Load from settings or environment variables
    this.flags = this.loadFlags();
    this.config = this.loadConfig();
  }

  isEnabled(feature: keyof FeatureFlags): boolean {
    return this.flags[feature];
  }

  async loadFeature(feature: keyof FeatureFlags): Promise<void> {
    if (!this.isEnabled(feature)) return;

    // Lazy load via dynamic imports
    switch (feature) {
      case 'statblockBuilder':
        await import('./services/StatblockDialogService');
        await import('./services/CharacterService');
        await import('./packages/components/statblock-builder');
        break;

      case 'assetManager':
        await import('./services/GlobalAssetManagerService');
        await import('./services/ImageOptimizationService');
        await import('./packages/components/asset-manager');
        break;

      case 'tokenCreator':
        await import('./services/WidgetSyncService');
        await import('./packages/components/token-picker');
        break;

      case 'gridSystem':
        await import('./services/GridManager');
        await import('./grid');
        break;
    }
  }

  // Performance tracking
  async measureFeatureImpact<T>(
    feature: keyof FeatureFlags,
    operation: () => Promise<T>
  ): Promise<{ result: T; metrics: PerformanceMetrics }> {
    const startTime = performance.now();
    const startMemory = (performance as any).memory?.usedJSHeapSize;

    const result = await operation();

    const endTime = performance.now();
    const endMemory = (performance as any).memory?.usedJSHeapSize;

    return {
      result,
      metrics: {
        duration: endTime - startTime,
        memoryDelta: endMemory - startMemory,
        feature
      }
    };
  }
}

export const featureToggle = new FeatureToggleService();
```

**Implementation requirements:**
- ✅ Complete feature removal (not just UI hiding)
- ✅ Clean dependency isolation
- ✅ Graceful degradation when disabled
- ✅ Settings UI for manual testing
- ✅ Environment variable overrides for automated tests

---

## Phase 2: Performance Measurement Infrastructure (Week 2-3)

### 2.1 Comprehensive Metrics Suite

Following exposé requirements:

#### **Startup Metrics**
```typescript
interface StartupMetrics {
  // Plugin initialization
  pluginLoadTime: number;        // main.js → onload() complete
  bundleParseTime: number;        // V8 parse/compile time

  // Feature initialization
  pixiInitTime: number;
  assetManagerScanTime: number;

  // Memory
  initialHeapSize: number;
  initialGPUMemory: number;
}
```

#### **Runtime Metrics**
```typescript
interface RuntimeMetrics {
  // Rendering performance
  fps: number;                    // Target: >30 FPS
  frameTime: number;              // ms per frame
  jankEvents: number;             // Frames >50ms

  // Interaction latency
  inputToVisual: number;          // Input → screen update (target: <100ms)
  dragLatency: number;            // Token drag responsiveness

  // Resource usage
  heapSize: number;
  gpuMemory: number;
  cpuUtilization: number;
}
```

#### **Bundle Metrics**
```typescript
interface BundleMetrics {
  totalSize: number;
  featureContributions: Map<keyof FeatureFlags, number>;
  treeshakingEffectiveness: number;
  compressionRatio: number;
}
```

---

### 2.2 Measurement Tools Stack

Based on exposé literature review:

#### **Primary Tools**

1. **hyperfine** - CLI benchmark tool
   ```bash
   # Automated startup time measurements
   hyperfine --warmup 3 --runs 10 \
     'open -a Obsidian --args --enable-feature=statblocks'
   ```

2. **Chrome DevTools Performance Panel**
   - Record performance profiles
   - Identify bottlenecks
   - Memory heap snapshots
   - CPU profiling

3. **Electron Performance APIs**
   ```typescript
   // Native Electron metrics
   process.memoryUsage()
   process.cpuUsage()
   performance.now()
   performance.memory
   ```

4. **Custom Telemetry Service**
   ```typescript
   // src/app/services/PerformanceTelemetryService.ts
   class PerformanceTelemetryService {
     logMetric(metric: string, value: number): void;
     exportMetrics(): Promise<void>;
     compareBaseline(current: Metrics, baseline: Metrics): ComparisonReport;
   }
   ```

---

### 2.3 Test Scenarios

Based on realistic usage patterns:

#### **Scenario 1: Empty Map (Baseline)**
- Minimal plugin state
- No assets loaded
- Purpose: Isolate core overhead

#### **Scenario 2: Standard Session**
- 1 map (2048×2048px)
- 20-30 tokens
- 5 statblocks loaded
- Typical GM workflow
- Purpose: Realistic usage baseline

#### **Scenario 3: Stress Test**
- Large map (4096×4096px)
- 100+ tokens
- 50+ statblocks
- Complex fog of war
- Purpose: Identify scalability limits

#### **Scenario 4: Interaction Test**
- Token drag & drop (10 operations)
- Statblock editing (5 saves)
- Asset browser scrolling
- Grid alignment operations
- Purpose: Measure UI responsiveness

---

### 2.4 Automated Benchmark Suite

```bash
#!/bin/bash
# tests/performance/run-benchmarks.sh

# Feature isolation tests
for feature in statblockBuilder assetManager tokenCreator gridSystem; do
  echo "Testing $feature in isolation..."

  # Cold start (10 runs)
  hyperfine --warmup 2 --runs 10 \
    --export-json "results/cold-start-$feature.json" \
    "npm run test:performance -- --feature=$feature --cold"

  # Warm start (10 runs)
  hyperfine --warmup 5 --runs 10 \
    --export-json "results/warm-start-$feature.json" \
    "npm run test:performance -- --feature=$feature --warm"
done

# Scenario-based tests
for scenario in empty standard stress interaction; do
  echo "Running scenario: $scenario..."
  npm run test:performance:scenario -- $scenario
done

# Generate statistical report
python scripts/analyze-results.py results/
```

---

## Phase 3: Optimization Strategies (Week 3-5)

Based on exposé literature and best practices:

### 3.1 Code Splitting & Lazy Loading

**Strategy**: Delay loading non-critical features until needed

```typescript
// Lazy load statblock builder on first use
async openStatblockBuilder() {
  if (!this.statblockModule) {
    const { StatblockDialogService } = await import('./services/StatblockDialogService');
    this.statblockModule = new StatblockDialogService();
  }
  return this.statblockModule.open();
}
```

**Expected impact**: Reduce initial bundle parse time by 30-40%

---

### 3.2 Web Workers

**Strategy**: Offload CPU-intensive tasks to background threads

```typescript
// workers/grid-calculator.worker.ts
self.onmessage = (e: MessageEvent<GridCalculationRequest>) => {
  const { gridType, bounds, resolution } = e.data;
  const cells = calculateHexGrid(gridType, bounds, resolution);
  self.postMessage({ cells });
};

// Usage in GridManager
const worker = new Worker('./workers/grid-calculator.worker.ts');
worker.postMessage({ gridType: 'hex-flat', bounds, resolution });
worker.onmessage = (e) => {
  this.renderGrid(e.data.cells);
};
```

**Candidates for Web Workers:**
- Hex grid tessellation calculations
- Asset indexing/validation
- Image optimization
- Fog of war path calculations

**Expected impact**: Prevent UI blocking, maintain 60 FPS during heavy operations

---

### 3.3 WebAssembly (WASM)

**Strategy**: Compile performance-critical algorithms to WASM

```rust
// wasm/grid_calculator.rs
#[wasm_bindgen]
pub fn calculate_hex_positions(
    cols: i32,
    rows: i32,
    size: f32
) -> Vec<HexPosition> {
    // Rust implementation ~10x faster than JS
}
```

**Candidates for WASM:**
- Hexagonal grid mathematics
- Fog of war raycasting
- Pathfinding algorithms

**Expected impact**: 5-10x speedup for computational hotspots

---

### 3.4 PIXI.js v8 Optimizations

**Strategy**: Leverage PIXI.js v8 best practices

```typescript
// Object pooling for frequently created objects
import { ObjectPool } from '@pixi-essentials/object-pool';

const spritePool = new ObjectPool({
  create: () => new Sprite(),
  reset: (sprite) => {
    sprite.texture = Texture.EMPTY;
    sprite.position.set(0, 0);
  }
});

// Texture atlasing
const atlas = await Assets.load('token-atlas.json');
const sprite = new Sprite(atlas.textures['token-orc']);

// Culling non-visible objects
container.cullable = true;
container.cullArea = new Rectangle(0, 0, viewportWidth, viewportHeight);
```

**Expected impact**: Reduce draw calls by 50%, improve FPS

---

### 3.5 Electron-Specific Optimizations

**Strategy**: Optimize for Electron/Obsidian environment

- **Preload scripts**: Cache frequently accessed data
- **Native modules**: Use Node.js APIs for file I/O
- **V8 flags**: Optimize JIT compilation

---

## Phase 4: Data Collection & Analysis (Week 4-6)

### 4.1 Experimental Design

**Independent Variables:**
- Feature toggles (5 features × on/off)
- Optimization strategies (baseline, lazy, workers, WASM)
- Test scenarios (4 scenarios)

**Dependent Variables:**
- Startup time (ms)
- FPS (frames per second)
- Memory usage (MB)
- CPU utilization (%)
- Bundle size (KB)

**Controlled Variables:**
- Hardware (identical test machine)
- Obsidian version (fixed)
- Test data (standardized maps/tokens)
- Environment (no background processes)

---

### 4.2 Statistical Analysis

```python
# scripts/analyze-results.py
import pandas as pd
import scipy.stats as stats
import matplotlib.pyplot as plt

# Load benchmark data
df = pd.read_json('results/all-benchmarks.json')

# Repeated measures ANOVA
# H0: No significant difference between feature configurations
# H1: At least one configuration differs significantly
f_stat, p_value = stats.f_oneway(
    df[df['feature'] == 'baseline']['startup_time'],
    df[df['feature'] == 'statblocks']['startup_time'],
    df[df['feature'] == 'assetManager']['startup_time'],
    df[df['feature'] == 'tokenCreator']['startup_time'],
    df[df['feature'] == 'gridSystem']['startup_time']
)

# Effect size (Cohen's d)
def cohens_d(group1, group2):
    return (group1.mean() - group2.mean()) / pooled_std

# Generate report
print(f"F-statistic: {f_stat}")
print(f"p-value: {p_value}")
print(f"Significant: {p_value < 0.05}")
```

**Statistical tests:**
- ANOVA for multi-group comparison
- Post-hoc tests (Tukey HSD) for pairwise differences
- Effect size calculation (practical significance)
- 95% confidence intervals

---

### 4.3 Data Visualization

```python
# Generate charts for thesis
import seaborn as sns

# Startup time comparison
sns.barplot(data=df, x='feature', y='startup_time')
plt.title('Startup Time by Feature (n=10)')
plt.ylabel('Time (ms)')
plt.savefig('figures/startup-comparison.png')

# Memory usage over time
sns.lineplot(data=runtime_df, x='time', y='heap_size', hue='feature')
plt.title('Memory Usage During Standard Session')
plt.savefig('figures/memory-timeline.png')
```

---

## Phase 5: Documentation & Thesis Integration (Week 5-6)

### 5.1 Results Documentation

**Quantitative findings:**
- Startup time thresholds (e.g., "Statblock builder adds 450ms ± 50ms")
- Memory overhead per feature (e.g., "Asset manager: +45MB heap")
- FPS impact under load (e.g., "Token creator: -5 FPS with 50+ widgets")
- Bundle size contribution (e.g., "PIXI.js: 520KB, Statblocks: 180KB")

**Optimization effectiveness:**
- Lazy loading: -35% startup time
- Web workers: +12 FPS during calculations
- WASM: 8x faster hex grid generation

**Practical thresholds:**
- Acceptable startup time: <2 seconds
- Minimum FPS: 30 for gameplay
- Maximum bundle size: <5MB (guidance for developers)

---

### 5.2 Thesis Deliverables

1. **Automated benchmark suite** (`tests/performance/`)
   - Reproducible test scripts
   - Statistical analysis pipeline
   - CI/CD integration ready

2. **Feature toggle system** (`src/app/services/FeatureToggleService.ts`)
   - Production-ready implementation
   - Settings UI
   - Documentation

3. **Performance report** (`docs/performance-evaluation.md`)
   - All metrics and charts
   - Statistical analysis results
   - Comparison tables

4. **Optimization guide** (`docs/optimization-guide.md`)
   - Best practices for Obsidian plugins
   - Code examples
   - Trade-off analysis

5. **Scientific evaluation** (for thesis chapters 3-4)
   - Methodology documentation
   - Raw data (CSV/JSON)
   - Statistical validation

---

## Risk Mitigation

### Technical Risks

**R1: Measurement inconsistency**
- **Mitigation**: 10+ runs per test, statistical outlier filtering
- **Contingency**: Increase sample size, control environment more strictly

**R2: Feature dependencies**
- **Mitigation**: Map dependencies before implementation, test isolation
- **Contingency**: Document dependencies, test combinations

**R3: Obsidian API limitations**
- **Mitigation**: Early prototyping, alternative measurement approaches
- **Contingency**: Adjust scope, focus on measurable aspects

### Methodological Risks

**R4: Measurement interference**
- **Mitigation**: Isolated test environment, warm-up runs
- **Contingency**: Multiple measurement techniques for validation

**R5: Non-representative scenarios**
- **Mitigation**: Validate with real user workflows
- **Contingency**: Expand scenario coverage

---

## Success Criteria

✅ **Reproducibility**: Variance <10% across runs
✅ **Feature isolation**: Each feature independently measurable
✅ **Statistical significance**: p < 0.05 for key findings
✅ **Practical relevance**: Actionable recommendations for developers
✅ **Complete dataset**: All exposé metrics collected

---

## Timeline

| Week | Phase | Key Deliverables |
|------|-------|------------------|
| 1-2 | Feature toggles | FeatureToggleService, settings UI |
| 2-3 | Measurement infrastructure | Benchmark suite, telemetry service |
| 3-5 | Optimization strategies | Lazy loading, workers, WASM implementations |
| 4-6 | Data collection | All scenarios tested, statistical analysis |
| 5-6 | Documentation | Performance report, optimization guide, thesis chapters |

---

## Next Immediate Steps

1. ✅ **Set up baseline measurement** - Before any changes
2. 🔲 **Implement FeatureToggleService** - Core infrastructure
3. 🔲 **Profile current bundle** - webpack-bundle-analyzer
4. 🔲 **Create automated benchmark script** - tests/performance/run-benchmarks.sh
5. 🔲 **Validate feature isolation** - Ensure clean toggles

---

**Document Version**: 2.0
**Last Updated**: 2025-01-16
**Author**: Fabian Urbanek
**Advisor**: Prof. Dr. Claudius Stern
