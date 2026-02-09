# Caper RPM Skills for Claude Code

This repository contains custom Claude Code skills for generating Caper cart deployment reports and documentation.

## Skills Available

- `/factsheet [retailer-name]` - Generate a comprehensive factsheet with all key facts about a retailer's deployment
- `/green-todo [retailer-name]` - Generate an actionable task list to move a deployment to Green status
- `/get-to-green [retailer-name]` - Generate a comprehensive status report for moving a deployment to Green
- `/changelog-weekly [retailer-name]` - Generate a weekly changelog documenting project changes

## Setup

### 1. Clone this repository

```bash
cd ~/
git clone git@github.com:andrewsartori-oss/caper-rpm-skills.git
cd caper-rpm-skills
```

### 2. Configure Glean MCP Access

These skills use Instacart's Glean search system. You need to configure the Glean MCP server in your Claude Code settings.

**Add Glean MCP permissions:**

Create or edit your `.claude/settings.local.json` file:

```json
{
  "permissions": {
    "allow": [
      "mcp__glean_default__search",
      "mcp__glean_default__read_document",
      "mcp__glean_default__chat"
    ]
  }
}
```

**Note:** The `.claude/settings.local.json` file is gitignored (personal settings only). Each team member needs to create their own.

### 3. Start using the skills

From this directory, run Claude Code:

```bash
claude
```

Or if using the VS Code extension, open this folder in VS Code.

Then use any of the skills with a retailer name:

```
/factsheet HGG
/green-todo Kroger
/get-to-green Albertsons
/changelog-weekly Safeway
```

## How It Works

- Skills are defined in `.claude/skills/[skill-name]/SKILL.md`
- Each skill searches Glean (Jira, Confluence, Google Docs, Slack) for retailer information
- Generated reports are saved to your Desktop in retailer-specific folders

## Requirements

- Claude Code CLI or VS Code extension
- Glean MCP server access (Instacart internal)
- SSH access to GitHub (for cloning/pushing)

## Contributing

When you make changes to skills:

```bash
git add .
git commit -m "Description of changes"
git push
```

Or ask Claude to commit and push for you.
