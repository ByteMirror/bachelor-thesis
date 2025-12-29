# Grammar Correction Queue

> **For Orchestrators**: Claim 5 sections per batch. Update `CLAIMED.md` immediately before spawning agents.

## Statistics
- Total Sections: 38
- Completed: 16 (batch-001 to batch-004)
- Claimed: 0
- Available: 22
- **Agents per batch**: 5
- **Total batches**: 8

---

## Available Sections (Unclaimed)

Sections are organized by chapter and ordered by priority (larger sections first).

### Chapter 00 - Zusammenfassung
| ID | Section | Lines | Priority | Notes |
|----|---------|-------|----------|-------|
| 00-A | Zusammenfassung (Abstract) | ~50 | Medium | Short, standalone |

### Chapter 01 - Einleitung
| ID | Section | Lines | Priority | Notes |
|----|---------|-------|----------|-------|
| 01-1 | 1.1 Hinführung zum Thema und Motivation | 14-22 | High | Opening section |
| 01-2 | 1.2 Darstellung der Problemstellung | 23-30 | High | Problem statement |
| 01-3 | 1.3 Zielsetzung und Forschungsfrage | 31-46 | High | Research question |
| 01-4 | 1.4 Aufbau der Arbeit | 47-58 | Medium | Structure overview |

### Chapter 02 - Theoretische Grundlagen
| ID | Section | Lines | Priority | Notes |
|----|---------|-------|----------|-------|
| 02-1.1 | 2.1.1 VTT Tools | 7-70 | High | Longest in chapter |
| 02-1.2 | 2.1.2 Plugin-Architekturen | 71-78 | Medium | Short section |
| 02-2.1 | 2.2.1 Obsidian als Markdown-Editor | 81-92 | Medium | Platform description |
| 02-2.2 | 2.2.2 Electron Framework | 93-104 | Medium | Technical background |
| 02-2.3 | 2.2.3 PIXI.js v8 als Rendering-Engine | 105-end | High | Core technology |

### Chapter 03 - Konzeption und Implementierung (LARGEST)
| ID | Section | Lines | Priority | Notes |
|----|---------|-------|----------|-------|
| 03-1.1 | 3.1.1 Funktionale Anforderungen | 9-153 | Critical | ~145 lines |
| 03-1.2 | 3.1.2 Nicht-funktionale Anforderungen | 154-224 | High | ~70 lines |
| 03-2.1 | 3.2.1 Architekturentwurf | 227-346 | Critical | ~120 lines |
| 03-2.2 | 3.2.2 Datenmodell | 347-528 | Critical | ~180 lines |
| 03-3.1 | 3.3.1 Rendering Engine: PIXI.js | 533-581 | High | Core feature |
| 03-3.2 | 3.3.2 Grid System: Draw Call Reduktion | 582-683 | High | Core feature |
| 03-3.3 | 3.3.3 Token Management | 684-end | High | Core feature |

### Chapter 04 - Evaluation und Ergebnisse
| ID | Section | Lines | Priority | Notes |
|----|---------|-------|----------|-------|
| 04-1.1 | 4.1.1 Testumgebung und -bedingungen | 10-66 | High | Methodology |
| 04-1.2 | 4.1.2 Messmethodik | 67-105 | High | Methodology |
| 04-2.1 | 4.2.1 Benchmark-Ergebnisse | 110-153 | Critical | Results |
| 04-2.2 | 4.2.2 Identifizierter Memory Leak | 154-270 | Critical | Key finding |
| 04-2.3 | 4.2.3 Skalierungsverhalten | 271-292 | High | Analysis |
| 04-3.1 | 4.3.1 Interpretation der Messergebnisse | 297-309 | High | Discussion |
| 04-3.2 | 4.3.2 Zusammenfassung der Ergebnisse | 310-325 | Medium | Summary |
| 04-3.3 | 4.3.3 Limitationen der Evaluation | 326-end | Medium | Limitations |

### Chapter 05 - Fazit und Ausblick
| ID | Section | Lines | Priority | Notes |
|----|---------|-------|----------|-------|
| 05-1 | 5.1 Zusammenfassung der Erkenntnisse | 6-26 | High | Summary |
| 05-2 | 5.2 Beantwortung der Forschungsfrage | 27-60 | Critical | Core answer |
| 05-3.1 | 5.3.1 Methodische Einschränkungen | 63-75 | Medium | Reflection |
| 05-3.2 | 5.3.2 Technische Limitationen | 76-86 | Medium | Reflection |
| 05-3.3 | 5.3.3 Kritische Würdigung | 87-115 | High | Reflection |
| 05-4.1 | 5.4.1 Weiterführende Forschung | 118-160 | Medium | Outlook |
| 05-4.2 | 5.4.2 Praktische Anwendung | 161-191 | Medium | Outlook |
| 05-4.3 | 5.4.3 Technologische Trends | 192-end | Medium | Outlook |

### Anhang (Lower Priority)
| ID | Section | Lines | Priority | Notes |
|----|---------|-------|----------|-------|
| A-1 | A.1 Plugin Lifecycle Integration | 7-42 | Low | Code-heavy |
| A-2 | A.2 Map Data Format | 43-84 | Low | Code-heavy |
| A-3 | A.3 MapObject Class Hierarchy | 85-122 | Low | Code-heavy |
| A-4 | A.4 AssetService Singleton | 123-154 | Low | Code-heavy |
| A-5 | A.5 Bidirektionale Token-Statblock-Verlinkung | 155-189 | Low | Code-heavy |
| A-6 | A.6 State Management Store | 190-end | Low | Code-heavy |

### Other
| ID | Section | Lines | Priority | Notes |
|----|---------|-------|----------|-------|
| V | Vorwort | all | Low | Personal text |
| ABK | Abkürzungen | all | Low | Abbreviation list |

---

## Priority Legend

- **Critical**: Core thesis sections, must be perfect
- **High**: Important content sections
- **Medium**: Supporting sections
- **Low**: Appendix/supplementary (code-heavy, fewer prose issues)

---

## Pre-Planned Batches (5 sections each)

Follow this order for systematic processing:

| Batch | Sections | Chapter Focus |
|-------|----------|---------------|
| **001** | 01-1, 01-2, 01-3, 01-4, 02-1.1 | Einleitung (complete) + Grundlagen start |
| **002** | 02-1.2, 02-2.1, 02-2.2, 02-2.3, 03-1.1 | Grundlagen (complete) + Konzeption start |
| **003** | 03-1.2, 03-2.1, 03-2.2, 03-3.1, 03-3.2 | Konzeption core sections |
| **004** | 03-3.3, 04-1.1, 04-1.2, 04-2.1, 04-2.2 | Konzeption end + Evaluation start |
| **005** | 04-2.3, 04-3.1, 04-3.2, 04-3.3, 05-1 | Evaluation end + Fazit start |
| **006** | 05-2, 05-3.1, 05-3.2, 05-3.3, 05-4.1 | Fazit core sections |
| **007** | 05-4.2, 05-4.3, 00-A, A-1, A-2 | Fazit end + Anhang start |
| **008** | A-3, A-4, A-5, A-6, V | Anhang (complete) + Vorwort |

---

## Claiming Process

1. Pick the next unclaimed batch (001 → 002 → ...)
2. Check `CLAIMED.md` to verify all 5 sections are free
3. Add all 5 claims to `CLAIMED.md` immediately
4. Create batch folder: `batches/batch-XXX/`
5. Spawn 5 agents in parallel (ONE message)

---

> Last updated: 2025-12-29
