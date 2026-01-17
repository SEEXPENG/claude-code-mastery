# Code Search Utility

A practical guide to using Grep for searching code patterns.

## What You'll Learn

- Grep output modes
- Regex patterns for code
- Context flags (-A, -B, -C)
- Finding TODOs, functions, imports
- Case-insensitive search

## Common Search Patterns

### 1. Find TODOs and FIXMEs
```
Pattern: TODO|FIXME|HACK|NOTE
Finds: All code comments with action items
```

### 2. Find Function Definitions
```
Pattern: function\s+\w+
Finds: JavaScript function declarations
```

### 3. Find Class Definitions
```
Pattern: class\s+\w+
Finds: Class declarations
```

### 4. Find Import Statements
```
Pattern: import.*from|require\(
Finds: ES6 imports and CommonJS requires
```

### 5. Find Console Logs
```
Pattern: console\.(log|error|warn)
Finds: All console statements
```

## Grep Output Modes

### files_with_matches (default)
Shows only file paths containing the pattern
```
Result: path/to/file.js
```

### content
Shows matching lines with file paths and line numbers
```
Result: path/to/file.js:42:matching line here
```

### count
Shows number of matches per file
```
Result: path/to/file.js:5
```

## Context Flags

- `-A N` - Show N lines **After** match
- `-B N` - Show N lines **Before** match
- `-C N` - Show N lines before **and** after match

Example: `Grep(pattern="TODO", -A=2, -B=1)` shows 1 line before and 2 lines after each TODO

## Your Task

Use Grep to answer these questions about the sample-files:

1. How many TODO/FIXME comments are there?
2. What functions are defined?
3. What packages are imported?
4. Are there any console.log statements?
5. Find all comments

Write your findings in `search-results.md`!
