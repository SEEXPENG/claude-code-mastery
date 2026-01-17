# .claude Directory

This directory contains Claude Code configuration and metadata files.

## Contents

- `settings.local.json` - Local permissions and settings
- `plans/` - Plan mode files (gitignored)
- `docs/` - Additional documentation

## settings.local.json

Contains permissions for Bash commands and other local configurations.

Current configuration allows:
- `Bash(dir:*)` - Directory listing commands
- `Bash(powershell:*)` - PowerShell commands

## Plans Directory

When using plan mode, Claude creates plan files here. These are gitignored to keep your repository clean.

## Best Practices

- Commit `settings.local.json` if you want to share configurations
- Keep `plans/` in .gitignore
- Document any custom configurations
- Use for project-specific Claude settings

---

**Learn more**: See [04-plan-mode](../04-plan-mode/) for details on the planning workflow.
