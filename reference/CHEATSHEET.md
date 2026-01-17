# Claude Code Cheat Sheet

Quick reference for all Claude Code tools, commands, and patterns.

## Table of Contents
- [Basic Tools](#basic-tools)
- [Agents](#agents)
- [Plan Mode](#plan-mode)
- [Best Practices](#best-practices)
- [Common Patterns](#common-patterns)
- [Troubleshooting](#troubleshooting)

---

## Basic Tools

### Read Tool
**Use for**: Reading file contents

```
Read a file: Specify file_path
Read portion: Add offset and limit parameters
Default: Reads up to 2000 lines from start
```

**When to use**: Always prefer Read over `cat`/`head`/`tail` commands

**Example scenarios**:
- Reading source code files
- Viewing configuration files
- Checking log files
- Reading documentation

---

### Write Tool
**Use for**: Creating new files

```
Write file: Specify file_path and content
Overwrites: Yes, if file exists (must Read first for existing files)
```

**When to use**: Creating new files only

**Important**: For existing files, use Edit instead

---

### Edit Tool
**Use for**: Modifying existing files

```
Edit file: Specify file_path, old_string, new_string
Replace all: Set replace_all parameter to true
Must be unique: old_string must be unique unless using replace_all
```

**When to use**: Always prefer Edit over Write for existing files

**Tips**:
- Preserve exact indentation
- Use larger context if string isn't unique
- Use replace_all for renaming variables

---

### Glob Tool
**Use for**: Finding files by pattern

```
Common patterns:
  *.js              - All .js files in directory
  **/*.tsx          - All .tsx files recursively
  src/**/*.test.py  - All test.py files under src/
  components/*.{js,ts} - .js or .ts files in components/
```

**When to use**: Always prefer Glob over `find` or `ls` commands

**Tips**:
- Fast for any codebase size
- Returns files sorted by modification time
- Use for file discovery

---

### Grep Tool
**Use for**: Searching file contents

```
Basic: Specify pattern (regex)
Filter: Use glob or type parameters
Output modes:
  files_with_matches - Just file paths (default)
  content - Matching lines
  count - Match counts

Context flags (content mode only):
  -A N - N lines after match
  -B N - N lines before match
  -C N - N lines before and after

Options:
  -i - Case insensitive
  -n - Show line numbers (default true in content mode)
  multiline - Pattern spans lines
```

**When to use**: Always prefer Grep over `grep` or `rg` commands

**Common patterns**:
- `function\s+\w+` - Find function definitions
- `class\s+\w+` - Find class definitions
- `import.*from` - Find import statements
- `TODO|FIXME` - Find code comments

---

### Bash Tool
**Use for**: Command execution, git operations

```
When to use:
  - Git operations
  - npm/pip/package managers
  - Docker commands
  - System commands

When NOT to use:
  - File reading (use Read)
  - File editing (use Edit)
  - File searching (use Glob/Grep)
  - File writing (use Write)

Chaining commands:
  && - Run sequentially, stop on failure
  ;  - Run sequentially, continue on failure
  |  - Pipe output

Parallel vs Sequential:
  - Independent commands: Multiple Bash calls in one message
  - Dependent commands: Chain with &&
```

**Git workflow**:
```bash
# Status and diff
git status
git diff
git diff --staged

# Commit
git add <files>
git commit -m "message

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"

# Never use --no-verify unless explicitly requested
# Never force push unless explicitly requested
```

---

### TodoWrite Tool
**Use for**: Task tracking and progress management

```
Task states:
  pending - Not started
  in_progress - Currently working (ONLY ONE at a time)
  completed - Finished

Required fields:
  content - Imperative form ("Run tests")
  status - Current state
  activeForm - Present continuous ("Running tests")
```

**When to use**:
- Complex multi-step tasks (3+ steps)
- Non-trivial tasks
- User provides multiple tasks
- Tracking progress

**Best practices**:
- Mark completed IMMEDIATELY after finishing
- Keep exactly ONE task in_progress
- Remove irrelevant tasks
- Update in real-time

---

## Agents

### Agent Types

**Explore Agent**
```
Use for: Fast codebase exploration
When: Finding files, understanding structure
Example: "Find all API endpoint definitions"
Thoroughness: quick, medium, very thorough
```

**Plan Agent**
```
Use for: Architecture and design planning
When: Complex features, multiple approaches
Example: "Design authentication system"
```

**Bash Agent**
```
Use for: Command execution specialist
When: Complex bash operations
Example: "Set up CI/CD pipeline"
```

**general-purpose Agent**
```
Use for: Complex multi-step tasks
When: Combining multiple operations
Example: "Refactor module and update tests"
```

---

### Launching Agents

**Single agent**:
```
Task tool with:
- subagent_type: Agent type
- description: Short (3-5 words)
- prompt: Detailed task description
- model: sonnet (default), opus, haiku
```

**Parallel agents** (efficient!):
```
Single message with multiple Task tool calls
Use when: Tasks are independent
Example: Explore different parts of codebase simultaneously
Max: 3 agents recommended
```

**Background agents**:
```
Set run_in_background: true
Check output later with Read tool
Use for: Long-running operations
```

**Resuming agents**:
```
Use resume parameter with agent ID
Preserves full context
Continues from previous state
```

---

## Plan Mode

### 5-Phase Workflow

**Phase 1: Initial Understanding**
```
- Use Explore agents (up to 3 in parallel)
- Read relevant files
- Ask clarifying questions
- Understand user intent
```

**Phase 2: Design**
```
- Launch Plan agent(s)
- Provide comprehensive context
- Design implementation approach
- Consider alternatives
```

**Phase 3: Review**
```
- Read critical files
- Ensure alignment with user request
- Ask remaining questions
- Validate approach
```

**Phase 4: Final Plan**
```
- Write plan to plan file
- Include critical file paths
- Add verification strategy
- Keep concise but detailed
```

**Phase 5: Exit**
```
- Call ExitPlanMode tool
- Wait for user approval
- Do NOT ask "Is this okay?" - ExitPlanMode does that
```

### When to Use Plan Mode

**Use for**:
- New feature implementation
- Multiple valid approaches
- Code modifications
- Architectural decisions
- Multi-file changes
- Unclear requirements
- User preferences matter

**Skip for**:
- Single-line fixes
- Typos
- Simple tasks
- Very specific instructions
- Pure research

---

## Best Practices

### Tool Selection
```
File reading     → Read (not cat)
File searching   → Glob (not find/ls)
Content search   → Grep (not grep/rg)
File editing     → Edit (not sed/awk)
File creation    → Write (not echo >)
Git operations   → Bash
Task tracking    → TodoWrite
Codebase explore → Explore agent
Architecture     → Plan agent
```

### Parallel Execution
```
✓ Multiple independent Reads in one message
✓ Multiple Glob/Grep searches in parallel
✓ Multiple agent launches in parallel
✗ Don't use placeholders
✗ Don't guess missing parameters
✗ Don't run dependent operations in parallel
```

### File Operations
```
✓ Always Read before Edit
✓ Always Read before Write (existing files)
✓ Prefer Edit over Write for existing files
✓ NEVER create files unless necessary
✗ Don't use cat/head/tail
✗ Don't use sed/awk
✗ Don't use echo >
```

### Git Operations
```
✓ Always check git status first
✓ Always run git diff before commit
✓ Include co-author in commits
✓ Use git log to match commit style
✗ Never use --no-verify
✗ Never force push without explicit request
✗ Never use -i (interactive) flags
✗ Never skip hooks
```

### Task Management
```
✓ Use TodoWrite for complex tasks
✓ Mark completed immediately
✓ Keep ONE task in_progress
✓ Update in real-time
✗ Don't batch completions
✗ Don't have multiple in_progress
✗ Don't leave stale tasks
```

---

## Common Patterns

### Exploring a Codebase
```
1. Use Explore agent for broad search
2. Use Glob to find specific file patterns
3. Use Grep to search content
4. Use Read to examine files
5. Document findings
```

### Making Changes
```
1. Read relevant files first
2. Use Edit for modifications
3. Update TodoWrite progress
4. Run git status/diff
5. Commit with proper message
```

### Complex Feature
```
1. Enter plan mode if needed
2. Launch Explore agents in parallel
3. Ask clarifying questions
4. Create detailed plan
5. Get approval
6. Implement with TodoWrite tracking
7. Verify and test
8. Commit
```

### Multi-File Refactor
```
1. Use Grep to find all occurrences
2. Create TodoWrite list
3. Edit each file systematically
4. Mark todos completed
5. Run tests
6. Commit
```

---

## Troubleshooting

### "File not found"
```
Solution:
- Check absolute path (not relative)
- Use Glob to find correct location
- Verify file exists
```

### "Edit failed - not unique"
```
Solution:
- Provide more context in old_string
- Use replace_all for global changes
- Include surrounding lines
```

### "Agent not making progress"
```
Solution:
- Check agent prompt clarity
- Provide more context
- Try different agent type
- Resume with clarification
```

### "Too many tokens"
```
Solution:
- Use agents to reduce context
- Read files selectively
- Use Grep before Read
- Split into smaller tasks
```

### "Git command failed"
```
Solution:
- Check git status first
- Verify in git repository
- Use proper command syntax
- Chain commands with &&
```

---

## Quick Command Reference

### File Operations
```
Read file:       Read(file_path)
Write file:      Write(file_path, content)
Edit file:       Edit(file_path, old_string, new_string)
Find files:      Glob(pattern)
Search content:  Grep(pattern, output_mode)
```

### Git Commands
```
Status:   git status
Diff:     git diff
Stage:    git add <files>
Commit:   git commit -m "message"
Push:     git push
Branch:   git branch -a
Log:      git log --oneline -10
```

### Agent Launch
```
Explore:  Task(subagent_type="Explore", prompt="...")
Plan:     Task(subagent_type="Plan", prompt="...")
Bash:     Task(subagent_type="Bash", prompt="...")
```

### Plan Mode
```
Enter:  EnterPlanMode()
Exit:   ExitPlanMode()
Ask:    AskUserQuestion(questions=[...])
```

---

## Keyboard Shortcuts (CLI)

```
Ctrl+C  - Cancel current operation
Ctrl+D  - Exit Claude Code
Ctrl+L  - Clear screen
↑/↓     - Navigate command history
Tab     - Autocomplete (if available)
```

---

## Useful Regex Patterns

```
Functions:    function\s+\w+|def\s+\w+
Classes:      class\s+\w+
Imports:      import.*from|require\(
Comments:     //.*|/\*.*\*/|#.*
TODOs:        TODO|FIXME|HACK|NOTE
URLs:         https?://\S+
Emails:       \S+@\S+\.\S+
```

---

## Remember

1. **Prefer specialized tools** over Bash commands
2. **Launch agents in parallel** when tasks are independent
3. **Use plan mode** for non-trivial implementations
4. **Read before editing** always
5. **Track progress** with TodoWrite for complex tasks
6. **Commit frequently** with descriptive messages
7. **Experiment safely** in practice projects
8. **Ask questions** when unclear
9. **Focus on WHY** not just HOW
10. **Build projects** to learn effectively

---

**Keep this cheat sheet handy** - add your own notes as you learn!
