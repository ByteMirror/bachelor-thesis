# Style and Conventions

## Language Rules
- **Main text**: German (Deutsch)
- **Technical terms**: Keep in English (e.g., "Rendering", "Framework", "Plugin")
- **No emojis** in LaTeX files

## Citation Format
```latex
\autocite{Key}                    % Standard citation
\autocite[S. 42]{Key}            % With page number
\autocite{Key1,Key2,Key3}        % Multiple citations
```

**IMPORTANT**: Every claim must have a citation!

## Code References
```latex
\texttt{TokenRenderer.ts:845}    % Format: filename:line
```

## Writing Style
- **Concise**: No filler words (Füllwörter)
- **Data-driven**: Use metrics (FPS, LoC, MB, ms)
- **Scientific**: Every decision needs justification
- **Code**: Only include if essential

## Scientific Approach (Chapter 3)
For each implementation decision, follow one of these patterns:

1. **Evaluation**: Alternatives → Benchmarks → Choice
2. **Research**: Problem → Research → Best Practices → Implementation
3. **Problem-Solution**: Challenge → Trade-offs → Decision
4. **Refactoring**: Problem-Code → Refactoring → Measurable Result

## What to Avoid
- ❌ Feature descriptions without justification
- ❌ Subjective statements without data
- ❌ Code snippets without context
- ❌ Missing citations
- ❌ English sentences in main text

## What to Do
- ✅ Data-supported claims ("60 FPS [Source]")
- ✅ Document research process
- ✅ Measurable results ("+40% FPS")
- ✅ Clear narrative thread (roter Faden)
