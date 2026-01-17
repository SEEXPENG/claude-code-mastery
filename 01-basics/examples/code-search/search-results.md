# Code Search Results

Search performed on: 2026-01-16
Target: `01-basics/examples/file-organizer/sample-files/`

---

## 1. TODO/FIXME Analysis

**Pattern**: `TODO|FIXME|NOTE|HACK`

**Files found**: 2 files
- app.js
- notes.txt

**Details**:
```
app.js:2    - TODO: Add authentication middleware
app.js:7    - FIXME: Need proper error handling
app.js:12   - NOTE: This endpoint organizes files
notes.txt:4 - TODO: (with task list)
```

**Summary**: 3 actionable items in app.js, 1 TODO list in notes.txt

---

## 2. Function Definitions

**Pattern**: `function\s+\w+|async\s+function`

**Functions found**: 2
```
utils.js:2  - function formatDate(date)
utils.js:6  - function capitalize(str)
```

**Summary**: Helper functions for formatting in utils.js

---

## 3. Import/Require Statements

**Pattern**: `require\(|import.*from`

**Imports found**: 2
```
app.js:3 - const express = require('express');
app.js:4 - const { organizeFiles } = require('./utils');
```

**Summary**: Using CommonJS require() syntax, importing express and local utils

---

## 4. Console Statements

**Pattern**: `console\.(log|error|warn|info)`

**Results**: 1 match
```
app.js:19 - console.log('Server running on port 3000');
```

**Summary**: One console.log for server startup message

---

## 5. All Comments

**Pattern**: `//.*|/\*.*\*/`

**Comments found**: 4
```
app.js:1  - // Main application entry point
app.js:2  - // TODO: Add authentication middleware
app.js:7  - // FIXME: Need proper error handling
app.js:12 - // NOTE: This endpoint organizes files
```

**Summary**: All comments are single-line (//) style, mix of documentation and action items

---

## Grep Skills Demonstrated

✅ **Output modes**: Used files_with_matches and content modes
✅ **Regex patterns**: Used OR operator (|) and character classes (\s, \w)
✅ **File filtering**: Searched specific directory
✅ **Pattern matching**: Found functions, imports, comments
✅ **Case sensitivity**: Default case-sensitive search

---

## Key Learnings

1. **Grep is powerful** - Can find any pattern in code
2. **Regex is flexible** - One pattern can match multiple variations
3. **Output modes matter** - Choose based on what you need
4. **Context helps** - Use -A/-B/-C to see surrounding code
5. **Combine patterns** - Use | for OR logic

---

## Next Practice

Try these patterns yourself:
- Find all string literals: `["'].*["']`
- Find arrow functions: `=>`
- Find async/await: `async|await`
- Find exported items: `export\s+(const|function|class)`
