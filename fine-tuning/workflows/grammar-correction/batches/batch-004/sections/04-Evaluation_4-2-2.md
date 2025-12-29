# Lektoratsbericht: 04-2.2 - Identifizierter Memory Leak

**Datei**: `latex/04-Evaluation-Ergebnisse.tex`
**Zeilen**: 154-270
**Datum**: 2025-12-29

---

## Zusammenfassung

| Kategorie | Anzahl |
|-----------|--------|
| Grammatikfehler | 0 |
| Rechtschreibfehler | 0 |
| Typografie-/Stilfehler | 5 |
| LaTeX-spezifische Fehler | 4 |
| **Gesamt korrigiert** | **7** |

---

## Gefundene Fehler und Korrekturen

### 1. LaTeX: Dopplung "Abbildung~\autoref" (4x)

**Problem**: `\autoref` erzeugt automatisch "Abbildung X". Die Voranstellung von "Abbildung~" fuehrt zu "Abbildung Abbildung X".

**Betroffene Zeilen und Korrekturen**:

| Zeile | Vorher | Nachher |
|-------|--------|---------|
| 156 | `Abbildung~\autoref{fig:memory-leak}` | `\autoref{fig:memory-leak}` |
| 165 | `Abbildung~\autoref{fig:memory-leak}` | `\autoref{fig:memory-leak}` |
| 171 | `Abbildung~\autoref{fig:benchmark-flow}` | `\autoref{fig:benchmark-flow}` |
| 223 | `Abbildung~\autoref{fig:benchmark-flow}` | `\autoref{fig:benchmark-flow}` |

---

### 2. Anglizismus: "Memory Leak" ohne Bindestrich (3x)

**Problem**: Englische Komposita werden im Deutschen mit Bindestrich verbunden (Durchkopplungsprinzip).

**Betroffene Zeilen und Korrekturen**:

| Zeile | Vorher | Nachher |
|-------|--------|---------|
| 167 | "Ein Memory Leak dieser Groessenordnung" | "Ein Memory-Leak dieser Groessenordnung" |
| 171 | "die Ursache des Memory Leaks" | "die Ursache des Memory-Leaks" |
| 257 | "ein bekanntes Memory Leak bei" | "ein bekanntes Memory-Leak bei" |

**Hinweis**: Die Ueberschrift (Zeile 154: `\subsection{Identifizierter Memory Leak}`) wurde bewusst nicht geaendert, um Konsistenz mit anderen Kapitelueberschriften zu wahren und da Ueberschriften oft andere typografische Regeln folgen.

---

### 3. Anglizismus: "Scope" (1x)

**Zeile 269**:
- **Vorher**: "was ausserhalb des Scopes dieser Arbeit liegt"
- **Nachher**: "was ausserhalb des Rahmens dieser Arbeit liegt"

**Begruendung**: "Scope" ist ein Anglizismus, der im wissenschaftlichen Deutsch durch "Rahmen" oder "Umfang" ersetzt werden sollte.

---

## Nicht korrigiert (bereits korrekt)

- Dezimaltrennzeichen mit Komma: "1,8 \ac{MB}" -- korrekt
- En-Dash mit Leerzeichen: " -- " in Zeile 165 -- korrekt
- Genitiv korrekt verwendet (z.B. "des Speicherverlaufs", "des Stress-Tests")
- Alle LaTeX-Befehle bewahrt (\autocite, \ac, \texttt, \autoref, etc.)
- Kommasetzung vor "dass", "da", "was" korrekt

---

## Stilistische Anmerkungen (ohne Korrektur)

**Lange Saetze**: Mehrere Saetze in den Zeilen 226, 232, 234 sind sehr lang (>50 Woerter). Sie sind grammatisch korrekt, aber schwer lesbar. Keine Korrektur vorgenommen, da:
- Die Saetze technische Ablaeufe beschreiben
- Die Aufzaehlungsstruktur (enumerate) die Laenge akzeptabel macht
- Eine Aufteilung den inhaltlichen Zusammenhang stoeren wuerde

---

## Zusammenfassung der angewandten Korrekturen

1. **Zeile 156**: Entfernung von "Abbildung~" vor \autoref
2. **Zeile 165**: Entfernung von "Abbildung~" vor \autoref
3. **Zeile 167**: "Memory Leak" -> "Memory-Leak"
4. **Zeile 171**: "Memory Leaks" -> "Memory-Leaks" + Entfernung von "Abbildung~"
5. **Zeile 223**: Entfernung von "Abbildung~" vor \autoref
6. **Zeile 257**: "Memory Leak" -> "Memory-Leak"
7. **Zeile 269**: "Scopes" -> "Rahmens"

**Gesamt**: 7 Korrekturen angewandt
