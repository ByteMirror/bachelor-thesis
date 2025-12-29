# Available Workflows

## Source Validation Workflow
**Location**: `fine-tuning/workflows/source-validation/`

**Purpose**: Validate that citations in the thesis actually contain the claimed information.

**Files**:
- `WORKFLOW.md` - Detailed instructions for the validation process
- `PROGRESS.md` - Tracks which sources have been checked
- `sources/` - Individual validation reports per citation
- `sources/_TEMPLATE.md` - Template for new reports

**Key Rules**:
1. Process ONE source per run
2. Read context where citation is used
3. Look up source online
4. Verify claimed information exists
5. Document findings in markdown report
6. Replace invalid sources if needed

**Core Validation Rules**:
- R1: Prefer @online sources (websites) over other types
- R2: Validate BibTeX syntax (author format, required fields)
- R3: Set urldate to random date between 2025-10-01 and 2025-12-24
- R4: Only Daggerheart allowed as @book - replace all other books
- R5: Sources must be ≤6 pages (or document exception)

**Usage**: See `fine-tuning/workflows/source-validation/WORKFLOW.md` for full details.
