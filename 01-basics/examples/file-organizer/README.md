# File Organizer Practice Project

## Objective
Build a tool that analyzes files in a directory and creates an organization plan.

## Skills You'll Practice
- **Glob**: Find all files by pattern
- **Read**: Examine file contents
- **Write**: Create organization report
- **Edit**: Modify the report (optional)

## The Challenge

Create a script that:
1. Finds all files in the `sample-files/` directory
2. Groups them by file type (extension)
3. Analyzes file sizes
4. Creates an organization plan

## Setup

I've created some sample files for you to organize:
- Text files (.txt)
- Code files (.js, .py)
- Config files (.json, .yaml)
- Documentation (.md)

## Step-by-Step Guide

### Step 1: Find All Files
Use **Glob** to find all files in `sample-files/`:
```
Glob pattern: sample-files/**/*
```

### Step 2: Analyze Files
Use **Read** to:
- Check file contents
- Determine file type
- Estimate file size

### Step 3: Create Organization Plan
Use **Write** to create `organization-plan.md` with:
- File count by type
- Suggested folder structure
- Files to archive/delete

### Step 4: Update the Plan
Use **Edit** to:
- Add more categories
- Update recommendations
- Refine the organization

## Expected Output

`organization-plan.md` should contain:
```markdown
# File Organization Plan

## Summary
- Total files: X
- File types: Y

## By Category
### JavaScript Files (3)
- app.js
- utils.js
- config.js

### Python Files (2)
- script.py
- helper.py

## Recommendations
- Create `src/` for code files
- Create `docs/` for markdown files
- Create `config/` for configuration files
```

## Your Task

Now it's your turn! Try to:
1. Use Glob to find the sample files
2. Group them by extension
3. Create the organization plan
4. Edit it to add improvements

**Don't worry about making it perfect** - the goal is to practice using the tools!

## Bonus Challenges

Once you've completed the basic version:
1. Add file size analysis
2. Detect duplicate files by name
3. Suggest archiving old files
4. Create a more detailed categorization

---

**Ready to start?** Ask Claude to help you use Glob to find all the sample files!
