# Using Claude Code Like a Pro

A guide to getting maximum value from Claude Code in real-world scenarios.

## The Professional vs Amateur Mindset

### Amateur Approach ❌
- Learns individual tools (Read, Write, Edit, Grep)
- Asks: "How do I use Grep?"
- Focuses on mechanics
- Does fake practice exercises
- Micromanages Claude's tool selection

### Professional Approach ✅
- Focuses on outcomes and results
- Asks: "Help me accomplish X"
- Trusts Claude to choose the right approach
- Works on real projects
- Describes goals, not steps

---

## The 5 Levels of Claude Code Mastery

### Level 1: Tool User (Beginner)
**What they do**: "Use Grep to find TODO"
**Problem**: Micromanaging, slow, missing the point

### Level 2: Task Delegator (Intermediate)
**What they do**: "Find all TODOs in my project"
**Better**: Claude picks the tools automatically

### Level 3: Outcome Requester (Advanced)
**What they do**: "Clean up all the TODOs in my codebase"
**Better**: Claude plans the approach, executes, verifies

### Level 4: Project Partner (Expert)
**What they do**: "Refactor this module to use dependency injection"
**Better**: Complex tasks, architectural decisions, full trust

### Level 5: Strategic Director (Master)
**What they do**: "Analyze the entire codebase and suggest improvements"
**Best**: High-level direction, Claude handles everything

---

## Professional Usage Patterns

### Pattern 1: Exploration & Understanding

#### Amateur:
```
"Use Glob to find files, then Read each one"
```

#### Professional:
```
"What's the architecture of this codebase?"
"Where is the authentication logic?"
"How does the payment flow work?"
"What are the main dependencies?"
```

**What Claude does**:
- Launches Explore agents in parallel
- Reads relevant files
- Analyzes structure
- Provides comprehensive answer

---

### Pattern 2: Code Modification

#### Amateur:
```
"Read line 42, use Edit to change X to Y"
```

#### Professional:
```
"Change all API endpoints to use the new error handler"
"Update the database connection to use connection pooling"
"Refactor this file to follow our coding standards"
```

**What Claude does**:
- Finds all relevant locations (Grep)
- Reads necessary context
- Makes consistent changes (Edit)
- Verifies changes
- Commits with proper message

---

### Pattern 3: Code Discovery

#### Amateur:
```
"Use Grep with pattern 'TODO' in content mode"
```

#### Professional:
```
"Show me all unfinished work in this project"
"Find potential security issues"
"Where are we still using the old API?"
"What functions are never called?"
```

**What Claude does**:
- Searches with appropriate patterns
- Analyzes context
- Categorizes findings
- Provides actionable report

---

### Pattern 4: Project Setup

#### Amateur:
```
"Create a file called server.js with express setup"
```

#### Professional:
```
"Set up a REST API with Express, PostgreSQL, and proper error handling"
"Create a React component library with TypeScript and testing"
"Initialize a Python project with FastAPI and Poetry"
```

**What Claude does**:
- Creates proper directory structure
- Writes configuration files
- Sets up dependencies
- Adds testing framework
- Creates example code
- Initializes git with proper .gitignore

---

### Pattern 5: Complex Features

#### Amateur:
```
"Add a function that does X"
```

#### Professional:
```
"I need user authentication with JWT, including:
- Login/logout endpoints
- Token refresh
- Password reset flow
- Email verification"
```

**What Claude does**:
- Enters plan mode (automatically if needed)
- Designs architecture
- Shows plan for approval
- Implements step by step
- Adds tests
- Commits progressively
- Verifies everything works

---

## Real-World Professional Scenarios

### Scenario 1: Starting a New Day

**Professional says**:
> "What did I leave unfinished yesterday? Show me all TODOs and incomplete features."

**Claude does**:
- Searches for TODO/FIXME/HACK
- Checks git status
- Reviews recent commits
- Provides prioritized list

---

### Scenario 2: Code Review

**Professional says**:
> "Review this pull request for issues"

**Claude does**:
- Uses gh cli to fetch PR
- Analyzes changes
- Checks for common issues
- Suggests improvements
- Finds potential bugs

---

### Scenario 3: Debugging

**Professional says**:
> "The authentication isn't working. Help me debug it."

**Claude does**:
- Finds auth-related code
- Traces the flow
- Identifies likely issues
- Suggests fixes
- Implements and tests

---

### Scenario 4: Refactoring

**Professional says**:
> "This file is too complex. Refactor it into smaller modules."

**Claude does**:
- Analyzes current structure
- Proposes new architecture
- Creates new files
- Moves code logically
- Updates imports
- Runs tests
- Commits changes

---

### Scenario 5: Learning New Codebase

**Professional says**:
> "I just joined this project. Give me an overview."

**Claude does**:
- Explores directory structure
- Identifies main entry points
- Maps dependencies
- Explains architecture
- Highlights important files
- Shows you where to start

---

## Communication Patterns That Work

### Be Specific About Outcomes
✅ "Make this code production-ready"
✅ "Add comprehensive error handling"
✅ "Improve performance of this function"

❌ "Use Edit to add a try-catch"
❌ "Use Grep to find errors"

### Provide Context
✅ "This is for a financial application, security is critical"
✅ "This will handle high traffic, optimize for performance"
✅ "This is a prototype, prioritize speed over perfection"

### Ask Strategic Questions
✅ "What's the best approach for this?"
✅ "What are the trade-offs?"
✅ "What potential issues should I watch for?"

### Trust the Process
✅ "Refactor this entire module" (then let Claude work)
✅ "Set up CI/CD pipeline" (Claude knows the steps)

❌ "First do X, then Y, then Z" (don't micromanage)

---

## Advanced Professional Techniques

### 1. Parallel Thinking
Instead of: "Do A, then B, then C"
Say: "I need A, B, and C done"

Claude will:
- Launch parallel agents if possible
- Optimize execution order
- Work more efficiently

### 2. Progressive Enhancement
Instead of: "Build complete feature X"
Say: "Start with basic X, we'll enhance it later"

Claude will:
- Build iteratively
- Get you working code faster
- Make it easier to course-correct

### 3. Validation Requests
Always ask: "Verify this works correctly"

Claude will:
- Check for issues
- Run tests if available
- Confirm success

### 4. Documentation as You Go
Say: "Document this as you build it"

Claude will:
- Add comments
- Update README
- Create usage examples

---

## Measuring Your Claude Code Mastery

### You're a **Beginner** if:
- You tell Claude which tools to use
- You do one thing at a time
- You're afraid to ask for complex tasks

### You're **Intermediate** if:
- You describe outcomes, not tools
- You let Claude choose the approach
- You work on real projects

### You're **Advanced** if:
- You delegate entire features
- You trust plan mode
- You ask strategic questions

### You're an **Expert** if:
- You think in outcomes, not steps
- You leverage agents effectively
- You review and guide, not micromanage

### You're a **Master** if:
- Claude is your coding partner
- You focus on architecture and strategy
- You maximize productivity through delegation

---

## Your Action Plan

### This Week
1. Stop doing practice exercises
2. Pick a real project
3. Ask Claude to help with actual goals
4. Watch what tools Claude uses
5. Ask "why" when curious

### This Month
1. Build complete features with Claude
2. Let Claude handle the details
3. Focus on outcomes and architecture
4. Trust the plan mode workflow
5. Review and learn from Claude's approach

### This Year
1. Make Claude your daily coding partner
2. Delegate all mechanical tasks
3. Focus on creative and strategic work
4. Build things 10x faster
5. Teach others this approach

---

## Common Professional Use Cases

### Daily Development
- "Continue where I left off yesterday"
- "Implement the next feature on my roadmap"
- "Fix these 5 bugs"
- "Add tests for this module"

### Code Quality
- "Improve code quality in this file"
- "Add error handling throughout this module"
- "Make this code more maintainable"
- "Follow best practices for this framework"

### Learning
- "Explain how this works"
- "What's wrong with this approach?"
- "Show me a better way to do this"
- "What are the best practices for X?"

### Productivity
- "Automate this repetitive task"
- "Generate boilerplate for X"
- "Set up my development environment"
- "Create a script that does X"

---

## The Bottom Line

**Stop learning tools. Start accomplishing goals.**

Your job:
1. Know what you want to achieve
2. Communicate it clearly
3. Trust Claude to figure out how
4. Learn from the approach
5. Apply to next challenge

Claude's job:
1. Choose the right tools
2. Execute efficiently
3. Handle the details
4. Verify success
5. Explain when asked

---

## Next Steps

Read the [REAL_WORLD_PROJECTS.md](./REAL_WORLD_PROJECTS.md) guide for actual projects to build that will teach you professional Claude Code usage through practice.

Remember: **Professionals focus on outcomes. Amateurs focus on tools.**
