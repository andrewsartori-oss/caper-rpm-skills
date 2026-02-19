# Caper RPM Skills for Claude Code

This repository contains custom Claude Code skills for generating Caper cart deployment reports and documentation.

### Skills Available

#### Project Status & Planning Skills
- `/get-to-green [retailer-name] [store-id]` - Generate a comprehensive status report for moving a specific store deployment to Green status
- `/green-todo [retailer-name] [store-id]` - Generate a focused, actionable task list to move a specific store deployment to Green status
- `/blindspot [retailer-name]` - Identify tasks you've committed to or been assigned but haven't completed or accessed in 24+ hours

#### Launch Readiness Skills
- `/launch-checklist [retailer-name] [store-id]` - Generate a comprehensive launch readiness assessment with GO/NO-GO recommendation for a specific store
- `/launch-todo [retailer-name] [store-id]` - Generate a focused, actionable task list to launch a specific store

#### Documentation Skills
- `/factsheet [retailer-name]` - Generate a comprehensive factsheet with all key facts about a retailer's deployment
- `/changelog-weekly [retailer-name]` - Generate a weekly changelog documenting project changes

## ***** SETUP: Claude Code *****

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
---

## ***** SETUP: Install these Caper RPM Skills for Your Use *****

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

Then use any of the skills:

```
# Project status and task management
/get-to-green HGG prod-hgg-1
/green-todo Clarks prod-clarks-1
/blindspot Kroger

# Launch readiness
/launch-checklist Albertsons prod-albertsons-5
/launch-todo Safeway prod-safeway-2

# Documentation
/factsheet HGG
/changelog-weekly Kroger
```

## Skill Details

### Project Status & Planning Skills

#### `/get-to-green [retailer-name] [store-id]`
**Purpose:** Comprehensive "get-to-green" status report for a specific store deployment

**What it generates:**
- Project executive summary and current status (Green/Yellow/Red)
- Critical path items needed to achieve Green status
- Complete risk analysis (Critical, Medium, and Future risks)
- "Going Red" contingency plans
- Store-specific deployment information

**Output:** `G2G-[retailer]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/get-to-green [retailer]/`

**Example:** `/get-to-green HGG prod-hgg-1`

---

#### `/green-todo [retailer-name] [store-id]`
**Purpose:** Brief, actionable task list to move a specific store deployment to Green status

**What it generates:**
- Current project status and target date
- Critical path items needed for Green status (focused list only)
- Specific actions, owners, and deadlines

**Output:** `green-todo-[retailer]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/green-todo [retailer]/`

**Example:** `/green-todo Clarks prod-clarks-1`

**Note:** This is a shorter version of get-to-green - use this for quick action items, use get-to-green for comprehensive status reports.

---

#### `/blindspot [retailer-name]`
**Purpose:** Identify tasks you've committed to but haven't completed or accessed in 24+ hours

**What it generates:**
- Critical, Medium, and Low priority blindspots categorized by urgency
- Exact hours overdue for each task
- Direct references (Jira ticket numbers, Slack thread links, email subjects)
- Recovery action plan with immediate next steps
- Stakeholder notification drafts

**Output:** `blindspot-[retailer]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/blindspot [retailer]/`

**Example:** `/blindspot Kroger`

---

### Launch Readiness Skills

#### `/launch-checklist [retailer-name] [store-id]`
**Purpose:** Comprehensive launch readiness assessment with GO/NO-GO recommendation

**What it generates:**
- Launch overview (retailer, store ID, location, target launch date)
- GO/NO-GO/CONDITIONAL GO recommendation with evidence
- Workstream-by-workstream readiness assessment (Hardware, Software, Operations, etc.)
- Critical artifacts status and missing items
- Launch team contact information
- Risk assessment and contingency plans

**Output:** `launch-checklist-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/launch-checklist [retailer]/`

**Example:** `/launch-checklist Albertsons prod-albertsons-5`

---

#### `/launch-todo [retailer-name] [store-id]`
**Purpose:** Focused, actionable task list to launch a specific store

**What it generates:**
- Store launch status (retailer, store ID, location, target date, current readiness)
- Launch critical items only (what must be done to launch)
- Specific actions, owners, and deadlines

**Output:** `launch-todo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/launch-todo [retailer]/`

**Example:** `/launch-todo Safeway prod-safeway-2`

**Note:** This is a shorter version of launch-checklist - use this for quick action items, use launch-checklist for comprehensive readiness assessment.

---

### Documentation Skills

#### `/factsheet [retailer-name]`
**Purpose:** Comprehensive factsheet with all key facts about a retailer's deployment

**What it generates:**
- Complete deployment information organized by category
- Fact count and comprehensive coverage of retailer details

**Output:** `factsheet-[retailer]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/factsheet [retailer]/`

**Example:** `/factsheet HGG`

---

#### `/changelog-weekly [retailer-name]`
**Purpose:** Weekly changelog documenting project changes

**What it generates:**
- Chronological list of changes and updates for the week
- Project progress documentation

**Output:** `changelog-[retailer]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/changelog-weekly [retailer]/`

**Example:** `/changelog-weekly Kroger`

---

## How It Works

- Skills are defined in `.claude/skills/[skill-name]/SKILL.md`
- Each skill searches Glean (Jira, Confluence, Google Docs, Slack) for retailer information
- Store-specific skills use the internal Caper store ID (format: prod-retailer-#) to find targeted information
- Generated reports are saved to your Desktop in retailer-specific folders
- Multiple reports can be generated per day without overwriting (timestamped filenames)

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
