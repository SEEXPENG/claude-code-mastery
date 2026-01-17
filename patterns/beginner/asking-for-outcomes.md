# Pattern: Asking for Outcomes

**Level**: Beginner
**Core Skill**: Describe WHAT you want, not HOW to do it

---

## The Mindset

Think about your **goal** (the outcome), not the **steps** (the process).

Claude is an expert who knows all the tools. Your job is to describe what success looks like. Claude's job is to make it happen.

---

## The Pattern

### ❌ Amateur (Tool-Focused)
Specifies tools and steps:
- "Use Glob to find .jpg files, then use Bash to move them to Photos/"
- "Use Grep with pattern TODO in content mode"
- "Read file.js then use Edit to change line 42"

### ✅ Professional (Outcome-Focused)
Describes desired result:
- "Organize my photos into folders by date"
- "Show me all unfinished work in this project"
- "Fix the authentication bug"

---

## Examples by Scenario

### File Organization

**Amateur**:
```
"Use Glob with pattern *.pdf then create a Documents folder
and use Bash to move them there"
```

**Professional**:
```
"Organize all my PDFs into a Documents folder"
```

**Why it's better**: Claude can choose optimal tools, handle edge cases, create better folder structures, and work more efficiently.

---

### Code Search

**Amateur**:
```
"Use Grep with pattern 'TODO|FIXME' in content mode with -n flag"
```

**Professional**:
```
"Find all unfinished work in this codebase"
```

**Why it's better**: Claude searches for TODO, FIXME, HACK, NOTE, XXX, and other patterns you might forget. Organizes results better.

---

### Bug Fixing

**Amateur**:
```
"Read auth.js, find the login function, use Edit to add try-catch"
```

**Professional**:
```
"The login function crashes when the email is invalid. Fix it."
```

**Why it's better**: Claude understands the problem, finds the root cause, fixes it properly, and may catch related issues.

---

### Project Setup

**Amateur**:
```
"Create package.json, install express, create server.js,
add route handlers, write README"
```

**Professional**:
```
"Set up an Express API with user authentication"
```

**Why it's better**: Claude knows best practices, adds proper error handling, includes testing setup, creates better structure.

---

## Practice Exercises

Transform these amateur requests into professional ones:

### Exercise 1
**Amateur**: "Use Glob to find .js files then use Grep to search for console.log"

**Your turn**: _______________

<details>
<summary>Answer</summary>
"Find all console.log statements in my JavaScript files"
or
"Show me where I'm logging to console"
</details>

---

### Exercise 2
**Amateur**: "Use Read on config.json then use Edit to change port to 8080"

**Your turn**: _______________

<details>
<summary>Answer</summary>
"Change the server port to 8080"
or
"Update the configuration to use port 8080"
</details>

---

### Exercise 3
**Amateur**: "Use Bash to create folders src/, tests/, docs/ then use Write to create README.md"

**Your turn**: _______________

<details>
<summary>Answer</summary>
"Set up a basic project structure for a Node.js library"
or
"Initialize a new JavaScript project with standard folders"
</details>

---

## Why This Works

### 1. Claude Knows Best Practices
You describe the goal. Claude applies professional standards you might not know.

### 2. Claude Handles Edge Cases
You say "organize photos." Claude handles duplicates, invalid files, special characters, etc.

### 3. Claude Optimizes Automatically
Claude chooses the fastest, most efficient approach without you specifying.

### 4. Claude Provides Better Results
Professional outcomes beat amateur steps every time.

---

## Real Example: Downloads Cleanup

### What Was Said (Professional)
```
"Organize my Downloads folder"
```

### What Claude Did (Automatic)
1. Used Glob to scan 1000+ files
2. Used Bash to check file sizes
3. Used Read to analyze file lists
4. Identified MATLAB temp folder (513MB)
5. Found duplicate folders
6. Proposed Quick Clean vs Full Organization
7. Used Bash to delete safely
8. Used Write to create reports
9. Freed 550-600MB space

**User effort**: 9 words
**Claude's tools**: 5 tools, 15 operations
**Time**: 5 minutes
**Result**: Professional organization

[See the full example](../../projects/01-file-management/downloads-cleanup/EXAMPLE.md)

---

## Common Mistakes

### Mistake 1: Mixing Outcome with Process
❌ "Organize my files using date-based folders"
✅ "Organize my files" (let Claude decide the structure)
✅ "Organize my files by date" (if you want date-based specifically)

### Mistake 2: Being Too Vague
❌ "Help with files"
✅ "Organize my Downloads folder"

### Mistake 3: Over-Specifying
❌ "Find all .js files with TODO comments excluding node_modules using regex"
✅ "Find TODOs in my JavaScript code"

---

## Quick Reference

| Instead of saying... | Say this... |
|---------------------|-------------|
| "Use Glob to find..." | "Find..." |
| "Use Grep to search..." | "Search for..." or "Find..." |
| "Use Read then Edit..." | "Change..." or "Update..." |
| "Use Bash to delete..." | "Remove..." or "Delete..." |
| "Create folder then move files..." | "Organize..." |

---

## Next Pattern

Once you're comfortable asking for outcomes, learn:
- [Describing Problems](describing-problems.md) - How to give Claude helpful context
- [Trusting the Process](../../patterns/intermediate/trust-and-delegation.md) - Let Claude work

---

## Try It Now

Pick one thing you want to accomplish and phrase it as an outcome:

**Don't say**: "Use [tool] to [action]"
**Do say**: "I want [result]"

Examples:
- "Clean up my code" (not "Use Grep to find unused variables")
- "Set up testing" (not "Install Jest and create test files")
- "Make this faster" (not "Use profiler to find bottlenecks")

**Your turn**: What do you want to accomplish? Say it as an outcome and watch Claude make it happen.

---

*This is the most important pattern for beginners. Master this and everything else becomes easy.*
