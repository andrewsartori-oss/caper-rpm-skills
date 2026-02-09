# Caper RPM Skills for Claude Code

This repository contains custom Claude Code skills for generating Caper cart deployment reports and documentation.

## Skills Available

- `/factsheet [retailer-name]` - Generate a comprehensive factsheet with all key facts about a retailer's deployment
- `/green-todo [retailer-name]` - Generate an actionable task list to move a deployment to Green status
- `/get-to-green [retailer-name]` - Generate a comprehensive status report for moving a deployment to Green
- `/changelog-weekly [retailer-name]` - Generate a weekly changelog documenting project changes

## Setup

### Prerequisites: Claude Code Setup

Before using these skills, you need Claude Code installed and configured on your Instacart laptop.

#### 1. Get on the Instacart VPN (Tailscale)

Claude uses internal services, so VPN is required.

- Open Okta → ConductorOne and request a VPN group (e.g. VPN-Engineering-Users or your org's equivalent)
- On your Mac, open Self Service, search for Tailscale, and install it
- Open Tailscale, sign in with your Instacart email via Okta, and connect
- Confirm VPN works by visiting http://lobster.fernet.io/ in your browser (it should load)

#### 2. Install Gohan + Claude Code

On your Instacart Mac, open Terminal and run:

```bash
curl -fsSL https://gohan.icprivate.com/install.sh | bash
```

This installs Gohan, Claude Code, and hooks you into the internal Claude Marketplace.

If you already had Gohan:

```bash
gohan update
```

#### 3. Start Claude

With VPN still connected, in Terminal run:

```bash
claude
# if that fails:
olive claude
```

You should now see a Claude prompt in your terminal and can start chatting/asking for help.

#### 4. Connect Claude to Glean (Strongly Recommended)

This lets Claude see your work docs, tickets, and Slack via Glean MCP, which is especially useful for these RPM skills.

In Terminal (Claude can be open or closed), run:

```bash
olive claude mcp add glean_default https://instacart-be.glean.com/mcp/default --transport http --scope user
```

Start Claude if it isn't running:

```bash
claude
```

In the Claude prompt, type:

```
/mcp
```

Follow the browser flow to log into Glean and approve access.

#### 5. About Claude Desktop / Personal Accounts

Internal guidance today is:

- Instacart supports Claude Code via our own API stack, not individual Claude Desktop accounts
- Company policy says to use authorized AI tools and be careful with external AI services and sensitive data; non-approved third-party tools on your work laptop are restricted
- Stick with Claude Code via Gohan on your Instacart machine

#### 6. If you hit issues

If any step errors out (VPN, Gohan, or Claude itself), you can:

- Check the internal setup guide: Guide: Setup Claude Code
- Ask in Slack: #prj-claude-code or #eng-ai-tools (include the command you ran and any error text)

---

### Install Caper RPM Skills in This Repository

#### 1. Clone this repository

```bash
cd ~/
git clone git@github.com:andrewsartori-oss/caper-rpm-skills.git
cd caper-rpm-skills
```

#### 2. Configure Glean MCP Permissions

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

#### 3. Start using the skills

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

- Instacart VPN (Tailscale)
- Claude Code CLI (installed via Gohan)
- Glean MCP server access (configured via setup steps above)
- SSH access to GitHub (for cloning/pushing changes)

## Contributing

When you make changes to skills:

```bash
git add .
git commit -m "Description of changes"
git push
```

Or ask Claude to commit and push for you.
