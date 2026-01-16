# Claude Code Learning Path

Your day-by-day guide to Claude Code mastery. Follow this sequence for optimal learning.

## Overview

- **Total Duration**: 15 days (2-3 weeks)
- **Daily Time**: 2-4 hours
- **Approach**: Hands-on, project-based learning
- **Flexibility**: Adjust pace as needed

## Week 1: Foundation

### Day 1: Setup & File Operations

**Morning Session (1-2 hours)**
- Set up git and this repository structure (DONE!)
- Explore the `01-basics/` directory
- Learn about Read, Write, and Edit tools
- Practice reading and editing files

**Learning Goals**:
- Understand when to use Read vs Bash `cat`
- Know the difference between Edit and Write
- Practice file manipulation

**Afternoon Session (1-2 hours)**
- Complete first exercises in `01-basics/examples/`
- Read the `01-basics/README.md` thoroughly
- Experiment with different file operations

**Practice Project**: Start the file-organizer tool

**Commit**: `git commit -m "Day 1: Completed file operations basics"`

---

### Day 2: Pattern Matching & Search

**Morning Session (1-2 hours)**
- Master Glob for file pattern matching
- Learn glob patterns: `*.js`, `**/*.tsx`, `src/**/test*.py`
- Practice finding files efficiently

**Learning Goals**:
- Use Glob instead of `find` or `ls`
- Understand recursive patterns
- Filter by file type and location

**Afternoon Session (1-2 hours)**
- Master Grep for content search
- Learn regex patterns for searching code
- Understand output modes: content, files_with_matches, count
- Practice with `-A`, `-B`, `-C` context flags

**Practice Project**: Build the code-search utility

**Commit**: `git commit -m "Day 2: Mastered Glob and Grep tools"`

---

### Day 3: Bash & Task Management

**Morning Session (1-2 hours)**
- Learn when to use Bash tool vs specialized tools
- Practice git operations with Bash
- Understand command chaining with `&&` and `;`
- Learn about parallel vs sequential commands

**Learning Goals**:
- Know when NOT to use Bash (for file operations)
- Master git workflow
- Understand command execution patterns

**Afternoon Session (1-2 hours)**
- Master TodoWrite tool for task tracking
- Learn task states: pending, in_progress, completed
- Practice multi-step workflow management
- Understand activeForm vs content

**Practice Project**: Build the task-tracker app

**Commit**: `git commit -m "Day 3: Completed basics - Bash and TodoWrite"`

**Milestone**: Phase 1-2 Complete! You now understand all basic tools.

---

## Week 1: Agents

### Day 4: Understanding Agents

**Morning Session (2 hours)**
- Read `02-agents/README.md` thoroughly
- Understand agent types:
  - Bash agent (command specialist)
  - Explore agent (codebase exploration)
  - Plan agent (architecture planning)
  - general-purpose agent (complex tasks)
- Learn when to use each agent type

**Learning Goals**:
- Understand task complexity assessment
- Know when to use agents vs direct tools
- Learn agent selection criteria

**Afternoon Session (1-2 hours)**
- Practice launching Explore agents
- Understand agent prompts and context
- Learn about agent responses and resuming

**Practice**: Launch your first Explore agent on this repository

**Commit**: `git commit -m "Day 4: Learned agent fundamentals"`

---

### Day 5: Parallel Execution & Advanced Agents

**Morning Session (2 hours)**
- Master parallel agent execution
- Learn to launch multiple agents in single message
- Understand independent vs dependent operations
- Practice with Plan agents

**Learning Goals**:
- Launch 2-3 agents in parallel efficiently
- Understand when operations must be sequential
- Master agent coordination

**Afternoon Session (1-2 hours)**
- Learn about background execution
- Understand agent resuming
- Practice complex multi-agent workflows

**Practice Projects**:
- Build multi-agent-search demo
- Create codebase-analyzer
- Set up background-tasks examples

**Commit**: `git commit -m "Day 5: Mastered agents and parallel execution"`

**Milestone**: Phase 3 Complete! You can now use agents effectively.

---

## Week 2: Configuration & Planning

### Day 6: claude.md Basics

**Full Day Session (3-4 hours)**
- Read `03-claude-md/README.md`
- Understand claude.md purpose and structure
- Learn about project context
- Study coding standards setup

**Learning Goals**:
- Understand what goes in claude.md
- Learn project overview structure
- Know development setup patterns
- Understand code conventions

**Practice**: Study example claude.md files

**Commit**: `git commit -m "Day 6: Learned claude.md configuration"`

---

### Day 7: Project Templates

**Full Day Session (3-4 hours)**
- Create practical claude.md files
- Build web-app-template with full config
- Create api-project-template
- Set up library-template

**Learning Goals**:
- Write comprehensive project guidelines
- Define coding standards
- Document architecture decisions
- Create reusable templates

**Practice Projects**:
- Complete all three templates
- Customize for different project types

**Commit**: `git commit -m "Day 7: Built project templates with claude.md"`

**Milestone**: Phase 4 Complete! You can configure projects professionally.

---

### Day 8: Plan Mode Workflow

**Full Day Session (3-4 hours)**
- Read `04-plan-mode/README.md` thoroughly
- Understand the 5-phase workflow:
  1. Initial Understanding (Explore agents)
  2. Design (Plan agents)
  3. Review
  4. Final Plan
  5. ExitPlanMode
- Learn when to use plan mode
- Study plan file writing

**Learning Goals**:
- Navigate all 5 phases smoothly
- Know when plan mode is required
- Write clear, actionable plans
- Ask effective clarifying questions

**Practice**: Study feature-planning examples

**Commit**: `git commit -m "Day 8: Learned plan mode workflow"`

---

### Day 9: Planning Practice

**Full Day Session (3-4 hours)**
- Practice plan mode with real scenarios
- Create feature-planning examples
- Build refactoring-plans
- Document migration-plans

**Learning Goals**:
- Execute complete planning sessions
- Handle complex features confidently
- Make architectural decisions
- Write verification strategies

**Practice Projects**:
- Simulate 3-4 complex planning scenarios
- Document decision-making processes

**Commit**: `git commit -m "Day 9: Practiced plan mode extensively"`

**Milestone**: Phase 5 Complete! You can plan complex features professionally.

---

## Week 2: Advanced Features

### Day 10: MCP Plugin Basics

**Full Day Session (3-4 hours)**
- Read `05-mcp-plugins/README.md`
- Understand MCP server concept
- Learn about available integrations
- Study Claude in Chrome extension

**Learning Goals**:
- Understand MCP server architecture
- Know available plugins
- Learn installation and configuration
- Understand browser automation capabilities

**Practice**: Set up Claude in Chrome

**Commit**: `git commit -m "Day 10: Learned MCP plugins"`

---

### Day 11: Browser Automation

**Full Day Session (3-4 hours)**
- Master browser automation with Claude in Chrome
- Learn tab management
- Practice DOM interaction
- Understand form filling and screenshots

**Learning Goals**:
- Build automation workflows
- Handle web scraping tasks
- Create testing scenarios
- Integrate external APIs

**Practice Project**: Build browser-automation examples

**Commit**: `git commit -m "Day 11: Built browser automation workflows"`

---

### Day 12: Skills & Custom MCP

**Full Day Session (3-4 hours)**
- Read `06-skills/README.md`
- Understand built-in skills: `/commit`, `/review-pr`
- Learn about custom skills creation
- Study MCP server creation basics

**Learning Goals**:
- Use built-in skills effectively
- Understand slash command patterns
- Design custom workflows
- Know skill distribution patterns

**Practice Projects**:
- Explore custom-skills creation
- Build workflow-skills examples
- Set up deployment-skills

**Commit**: `git commit -m "Day 12: Learned skills and custom MCP"`

**Milestone**: Phase 6-7 Complete! You can extend Claude with plugins and skills.

---

## Week 3: Mastery

### Day 13: Advanced Patterns

**Full Day Session (3-4 hours)**
- Read `07-advanced/README.md` thoroughly
- Study parallel execution patterns
- Learn context management techniques
- Understand security and safety patterns

**Learning Goals**:
- Optimize for performance
- Manage token budget effectively
- Handle sensitive data properly
- Implement permission management

**Practice**: Study performance-optimization examples

**Commit**: `git commit -m "Day 13: Studied advanced patterns"`

---

### Day 14: End-to-End Project

**Full Day Session (4+ hours)**
- Build a complete workflow from scratch
- Apply everything you've learned
- Implement professional patterns
- Optimize for production

**Learning Goals**:
- Integrate all phases
- Build production-ready workflows
- Apply best practices consistently
- Handle real-world complexity

**Practice Project**: Complete the complete-workflow project

**Commit**: `git commit -m "Day 14: Built end-to-end workflow"`

---

### Day 15: Review & Mastery

**Full Day Session (3-4 hours)**
- Review all 8 phases
- Create personal cheat sheets
- Document learnings and insights
- Build security-patterns examples
- Reflect on your journey

**Learning Goals**:
- Consolidate knowledge
- Identify areas for continued practice
- Create reference materials
- Plan real-world applications

**Final Tasks**:
- Complete CHEATSHEET.md with your own notes
- Document "aha moments" and gotchas
- Plan how to apply this to your projects
- Celebrate your mastery!

**Commit**: `git commit -m "Day 15: Completed Claude Code mastery journey"`

**Milestone**: Phase 8 Complete! You are now a Claude Code master!

---

## Beyond 15 Days: Continued Learning

### Apply Your Skills
- Use Claude Code in real projects
- Create your own custom workflows
- Build MCP servers for your needs
- Share learnings with others

### Keep Learning
- Experiment with new features
- Follow Claude Code updates
- Join community discussions
- Contribute to open source with Claude

### Master Projects
Consider building:
- Full-stack application with Claude assistance
- Automated testing framework
- Documentation generation system
- CI/CD pipeline automation
- Custom MCP server for your workflow

---

## Tips for Success

1. **Commit Frequently**: After each major learning session
2. **Document Everything**: Write down what you learn
3. **Experiment Freely**: Break things in safe practice projects
4. **Ask Questions**: Use Claude to clarify concepts
5. **Take Breaks**: Let concepts sink in between sessions
6. **Build Projects**: Apply knowledge immediately
7. **Review Regularly**: Revisit earlier phases
8. **Focus on WHY**: Understand reasoning, not just mechanics

## If You Get Stuck

- Review the phase README files
- Re-read examples
- Ask Claude Code for help
- Take a break and come back
- Jump to easier topics and return later
- Focus on practice over perfection

## Adjusting the Pace

**Too Fast?**
- Spend 2 days on each phase
- Build additional practice projects
- Deep dive into areas of interest

**Too Slow?**
- Skip familiar topics
- Focus on phases most relevant to your goals
- Skim examples, dive deep on new concepts

**Just Right?**
- Follow the 15-day plan as written
- Adjust individual days as needed
- Trust the process

---

**Ready? Start with Day 1 and enjoy the journey to Claude Code mastery!**
