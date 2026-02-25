# Team Marketplace Setup Guide

This guide is for **Caper RPM team members** who want to use these skills without cloning the repository.

## Prerequisites

Make sure you have:
1. Claude Code installed (via Gohan)
2. Connected to Instacart VPN (Tailscale)
3. Glean MCP server connected (`olive claude mcp add glean_default ...`)

## Installation (2 Minutes)

### Option 1: Quick Install via Marketplace (Recommended)

Open your terminal and run:

```bash
claude
```

Then in Claude, run these commands:

```
/plugin marketplace add andrewsartori-oss/caper-rpm-skills
/plugin install caper-rpm-tools@caper-rpm-skills
```

That's it! You can now use all the skills.

### Option 2: Auto-Install via Settings (Team-Wide Deployment)

Add this to your `~/.claude/settings.json` file:

```json
{
  "extraKnownMarketplaces": {
    "caper-rpm-skills": {
      "source": {
        "source": "github",
        "repo": "andrewsartori-oss/caper-rpm-skills"
      }
    }
  },
  "enabledPlugins": {
    "caper-rpm-tools@caper-rpm-skills": true
  }
}
```

After adding this, restart Claude and the skills will be automatically available.

## Using the Skills

Once installed, you can use the skills from **any directory**:

```bash
# Navigate to any folder
cd ~/projects

# Start Claude
claude

# Use the skills
/factsheet HGG prod-hgg-1
/launch-report Clarks prod-clarks-1
/get-to-green Kroger all
/green-todo Albertsons prod-albertsons-5
/launch-checklist Safeway prod-safeway-2
/blindspot HGG all
/changelog-weekly Kroger prod-kroger-2
```

## Available Skills

### Project Status & Planning
- `/get-to-green [retailer] [store-id]` - Comprehensive status report
- `/green-todo [retailer] [store-id]` - Actionable task list for Green status
- `/blindspot [retailer] [store-id]` - Find tasks you've committed to but haven't touched in 24+ hours

### Launch Readiness
- `/launch-checklist [retailer] [store-id]` - Validate all 16 launch items with evidence
- `/launch-report [retailer] [store-id]` - Comprehensive launch readiness assessment
- `/launch-todo [retailer] [store-id]` - Actionable launch task list

### Documentation
- `/factsheet [retailer] [store-id]` - Complete deployment factsheet
- `/changelog-weekly [retailer] [store-id]` - Weekly project changelog

## Updating Skills

When Andrew updates the skills, get the latest version:

```bash
claude
/plugin marketplace update caper-rpm-skills
```

## Uninstalling

If you need to remove the skills:

```bash
claude
/plugin uninstall caper-rpm-tools@caper-rpm-skills
/plugin marketplace remove caper-rpm-skills
```

## Troubleshooting

### "Marketplace not found"
- Verify you have access to the GitHub repo: https://github.com/andrewsartori-oss/caper-rpm-skills
- Make sure you're on Instacart VPN

### "Glean search failed"
- Verify Glean MCP is connected: `/mcp` in Claude
- Reconnect if needed: `olive claude mcp add glean_default https://instacart-be.glean.com/mcp/default --transport http --scope user`

### Skills not appearing
- Check plugin status: `/plugin list`
- Reinstall: `/plugin install caper-rpm-tools@caper-rpm-skills`

## Questions?

Contact Andrew Sartori or ask in the Caper team Slack channel.
