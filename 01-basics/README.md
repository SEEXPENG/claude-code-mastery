# Phase 1-2: Foundation & Basic Tools

Master the fundamental Claude Code tools: Read, Write, Edit, Glob, Grep, Bash, and TodoWrite.

## Learning Objectives

By the end of this phase, you will:
- Understand when to use each basic tool
- Master file operations (Read, Write, Edit)
- Find files efficiently with Glob
- Search code content with Grep
- Know when to use Bash vs specialized tools
- Track complex tasks with TodoWrite

## Tools Covered

### 1. File Operations

#### Read Tool
**Purpose**: Read file contents

**When to use**:
- Reading source code
- Viewing configuration files
- Checking logs
- Examining any file

**When NOT to use**: Never use `cat`, `head`, or `tail` - always use Read

**Key features**:
- Reads up to 2000 lines by default
- Can specify offset and limit for large files
- Returns line numbers (cat -n format)
- Can read images and PDFs

**Practice**:
```
Try reading different files:
- This README.md
- The main project README
- Any code file you have
```

---

#### Write Tool
**Purpose**: Create new files

**When to use**:
- Creating brand new files only
- Writing initial content

**When NOT to use**:
- Editing existing files (use Edit instead)
- Appending to files

**Important rules**:
- For existing files, you MUST Read first
- Write will overwrite existing content
- Always prefer Edit for modifications

---

#### Edit Tool
**Purpose**: Modify existing files with exact string replacement

**When to use**:
- Changing code in existing files
- Updating configuration
- Refactoring
- Bug fixes

**Key features**:
- Requires exact match of old_string
- Preserves indentation
- Can replace all occurrences with replace_all flag
- Safer than Write for existing files

**Tips**:
- Include enough context to make old_string unique
- Preserve exact spacing and indentation
- Use replace_all for variable renames

---

### 2. File Discovery

#### Glob Tool
**Purpose**: Find files by name patterns

**When to use**: ALWAYS prefer Glob over `find` or `ls`

**Common patterns**:
```
*.js                    - All .js files in current directory
**/*.tsx                - All .tsx files recursively
src/**/*.test.py        - All test.py files under src/
components/*.{js,ts}    - .js or .ts in components/
```

**Features**:
- Works with any codebase size
- Fast pattern matching
- Returns files sorted by modification time

---

#### Grep Tool
**Purpose**: Search file contents with regex

**When to use**: ALWAYS prefer Grep over command-line `grep` or `rg`

**Output modes**:
- `files_with_matches` (default) - Just show file paths
- `content` - Show matching lines
- `count` - Show match counts

**Context flags** (content mode):
- `-A N` - Show N lines after match
- `-B N` - Show N lines before match
- `-C N` - Show N lines before and after

**Common searches**:
```
function\s+\w+        - Find function definitions
class\s+\w+           - Find class definitions
import.*from          - Find imports
TODO|FIXME            - Find code comments
```

**Features**:
- Full regex support
- Case insensitive with -i
- Multiline mode available
- Filter by glob or file type

---

### 3. Command Execution

#### Bash Tool
**Purpose**: Run terminal commands, especially git operations

**When to use**:
- Git commands
- Package managers (npm, pip, etc.)
- Docker commands
- System operations

**When NOT to use**:
- File reading (use Read)
- File editing (use Edit)
- File searching (use Glob/Grep)
- File writing (use Write)

**Command chaining**:
```bash
# Sequential, stop on failure
command1 && command2 && command3

# Sequential, continue on failure
command1 ; command2 ; command3

# Pipe output
command1 | command2
```

**Git workflow**:
```bash
# Always check status first
git status

# See changes
git diff
git diff --staged

# Commit pattern
git add <files>
git commit -m "message

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"
```

---

### 4. Task Management

#### TodoWrite Tool
**Purpose**: Track progress on complex multi-step tasks

**When to use**:
- Tasks with 3+ steps
- Non-trivial implementations
- User provides multiple tasks
- Complex workflows

**Task states**:
- `pending` - Not started yet
- `in_progress` - Currently working (ONLY ONE at a time!)
- `completed` - Finished

**Required fields**:
```javascript
{
  content: "Run the tests",        // Imperative form
  status: "in_progress",            // Current state
  activeForm: "Running the tests"   // Present continuous
}
```

**Best practices**:
- Mark completed IMMEDIATELY after finishing
- Keep exactly ONE task in_progress
- Remove stale/irrelevant tasks
- Update in real-time

---

## Practice Projects

### Project 1: File Organizer
**Goal**: Build a tool to organize files by type

**Skills practiced**:
- Glob to find files
- Read to check contents
- Write to create organization plan
- Bash to move files (optional)

**Steps**:
1. Use Glob to find all files
2. Group by extension
3. Create organization strategy
4. Document the plan

**Location**: `examples/file-organizer/`

---

### Project 2: Code Search Utility
**Goal**: Build a search tool for finding code patterns

**Skills practiced**:
- Grep with different patterns
- Output modes
- Context flags
- Regex patterns

**Steps**:
1. Define search patterns
2. Use Grep to find matches
3. Format results
4. Document findings

**Location**: `examples/code-search/`

---

### Project 3: Task Tracker
**Goal**: Build a simple task management system

**Skills practiced**:
- TodoWrite for tracking
- File operations for persistence
- State management

**Steps**:
1. Design task structure
2. Implement add/update/complete
3. Track progress
4. Save to file

**Location**: `examples/task-tracker/`

---

## Exercises

### Exercise 1: Tool Selection
For each scenario, choose the correct tool:

1. Find all TypeScript files: **_____**
2. Search for "TODO" comments: **_____**
3. Read a configuration file: **_____**
4. Update a function name: **_____**
5. Create a new file: **_____**
6. Run git status: **_____**
7. Track a 5-step process: **_____**

<details>
<summary>Answers</summary>

1. Glob
2. Grep
3. Read
4. Edit
5. Write
6. Bash
7. TodoWrite

</details>

---

### Exercise 2: Glob Patterns
Write glob patterns for:

1. All JavaScript files in src/: **_____**
2. All test files anywhere: **_____**
3. All .json or .yaml files: **_____**

<details>
<summary>Answers</summary>

1. `src/**/*.js`
2. `**/*.test.* or **/test*.* or **/*spec.*`
3. `**/*.{json,yaml}` or `**/*.{json,yml}`

</details>

---

### Exercise 3: Grep Patterns
Write regex patterns for:

1. Find class definitions: **_____**
2. Find import statements: **_____**
3. Find async functions: **_____**

<details>
<summary>Answers</summary>

1. `class\s+\w+`
2. `import.*from|require\(`
3. `async\s+function|async\s+\w+\s*=>`

</details>

---

## Common Gotchas

### ❌ Using Bash for file operations
```bash
# DON'T
cat file.txt
find . -name "*.js"
grep "pattern" file.txt
```

```python
# DO
Read(file_path="file.txt")
Glob(pattern="**/*.js")
Grep(pattern="pattern", path="file.txt")
```

---

### ❌ Writing to existing files
```python
# DON'T
Write(file_path="existing.js", content="new content")
```

```python
# DO
Read(file_path="existing.js")
Edit(file_path="existing.js", old_string="old", new_string="new")
```

---

### ❌ Not tracking complex tasks
```
Working on 5-step process without TodoWrite
Forgetting steps, losing track of progress
```

```
DO: Use TodoWrite for 3+ step tasks
Update status in real-time
Mark completed immediately
```

---

## Key Takeaways

1. **Use specialized tools** instead of Bash commands for file operations
2. **Read before Edit/Write** for existing files
3. **Glob for files, Grep for content** - know the difference
4. **TodoWrite for complex tasks** - track your progress
5. **Prefer Edit over Write** for existing files
6. **Git workflow**: status → diff → add → commit
7. **One in_progress task** at a time

---

## Next Steps

Once you've mastered these basics:
1. Complete all three practice projects
2. Try using these tools on your own projects
3. Move to [Phase 3: Agents](../02-agents/) to learn about parallel execution and specialized agents

---

## Quick Reference

| Task | Tool | Command |
|------|------|---------|
| Read file | Read | `Read(file_path)` |
| Edit file | Edit | `Edit(file_path, old, new)` |
| Create file | Write | `Write(file_path, content)` |
| Find files | Glob | `Glob(pattern)` |
| Search content | Grep | `Grep(pattern)` |
| Git operations | Bash | `git status` |
| Track tasks | TodoWrite | `TodoWrite(todos)` |

---

**Time to practice!** Start with the file-organizer project and build your muscle memory.
