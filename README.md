# Caper RPM Skills for Claude Code

This repository contains custom Claude Code skills for generating Caper cart deployment reports and documentation.

### Skills Available

**All skills require two arguments:**
1. `[retailer-name]` - The retailer name (e.g., Clarks, HGG, Kroger)
2. `[store-id]` - The internal Caper store ID (e.g., prod-clarks-1) OR "all" OR leave empty

**Store ID Options:**
- **Specific store**: `prod-clarks-1` - Focus on one specific store
- **All stores**: `all` or leave empty - Search across all stores for that retailer

---

#### Project Status & Planning Skills
- `/get-to-green [retailer-name] [store-id]` - Generate a comprehensive status report for moving a store deployment to Green status
- `/green-todo [retailer-name] [store-id]` - Generate a focused, actionable task list to move a store deployment to Green status
- `/blindspot [retailer-name] [store-id]` - Identify tasks you've committed to or been assigned but haven't completed or accessed in 24+ hours

#### Launch Readiness Skills
- `/launch-checklist [retailer-name] [store-id]` - Validate completion status of all 16 required launch checklist items with evidence
- `/launch-report [retailer-name] [store-id]` - Generate a comprehensive launch readiness assessment with workstream analysis and GO/NO-GO recommendation
- `/launch-todo [retailer-name] [store-id]` - Generate a focused, actionable task list to launch a store

#### Documentation Skills
- `/factsheet [retailer-name] [store-id]` - Generate a comprehensive factsheet with all key facts about a retailer's deployment
- `/changelog-weekly [retailer-name] [store-id]` - Generate a weekly changelog documenting project changes

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
# SPECIFIC STORE - Focus on one store deployment
/get-to-green Clarks prod-clarks-1
/green-todo HGG prod-hgg-1
/blindspot Kroger prod-kroger-2
/launch-checklist Clarks prod-clarks-1
/launch-report Albertsons prod-albertsons-5
/launch-todo Safeway prod-safeway-2
/factsheet HGG prod-hgg-1
/changelog-weekly Clarks prod-clarks-1

# ALL STORES - Search across all stores for a retailer (two ways)

# Option 1: Use "all"
/get-to-green Clarks all
/blindspot Kroger all
/factsheet HGG all

# Option 2: Leave store-id empty
/get-to-green Clarks
/blindspot Kroger
/factsheet HGG
```

## Skill Details

### Project Status & Planning Skills

#### `/get-to-green [retailer-name] [store-id]`
**Purpose:** Comprehensive "get-to-green" status report for a store deployment

**What it generates:**
- Project executive summary and current status (Green/Yellow/Red)
- Critical path items needed to achieve Green status
- Complete risk analysis (Critical, Medium, and Future risks)
- "Going Red" contingency plans
- Store-specific or all-stores deployment information

**Output:** `G2G-[retailer]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/get-to-green [retailer]/`

**Examples:**
- `/get-to-green HGG prod-hgg-1` (specific store)
- `/get-to-green HGG all` (all stores)
- `/get-to-green HGG` (all stores - empty store-id)

---

#### `/green-todo [retailer-name] [store-id]`
**Purpose:** Brief, actionable task list to move a store deployment to Green status

**What it generates:**
- Current project status and target date
- Critical path items needed for Green status (focused list only)
- Specific actions, owners, and deadlines

**Output:** `green-todo-[retailer]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/green-todo [retailer]/`

**Examples:**
- `/green-todo Clarks prod-clarks-1` (specific store)
- `/green-todo Clarks all` (all stores)
- `/green-todo Clarks` (all stores - empty store-id)

**Note:** This is a shorter version of get-to-green - use this for quick action items, use get-to-green for comprehensive status reports.

---

#### `/blindspot [retailer-name] [store-id]`
**Purpose:** Identify tasks you've committed to but haven't completed or accessed in 24+ hours

**What it generates:**
- Critical, Medium, and Low priority blindspots categorized by urgency
- Exact hours overdue for each task
- Direct references (Jira ticket numbers, Slack thread links, email subjects)
- Recovery action plan with immediate next steps
- Stakeholder notification drafts

**Output:** `blindspot-[retailer]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/blindspot [retailer]/`

**Examples:**
- `/blindspot Kroger prod-kroger-2` (specific store)
- `/blindspot Kroger all` (all stores)
- `/blindspot Kroger` (all stores - store-id empty)

---

### Launch Readiness Skills

#### `/launch-checklist [retailer-name] [store-id]`
**Purpose:** Validate completion status of all 16 required launch checklist items with evidence

**What it generates:**
- Launch overview (retailer, store ID, location, target launch date, overall readiness)
- **Item-by-item validation for all 16 consolidated launch checklist items:**
  1. Electrical complete & signed off (fixed chargers on correct circuit/voltage; GFCI stable under ≥10‑cart load)
  2. FC firmware updated & chargers tested (all launch ports)
  3. All launch carts present (bolted, powered, no syncing issues)
  4. HW accessories installed (e.g., bottom tray on all designated carts)
  5. W&M passed for all launch carts (or inspector visit scheduled)
  6. 3rd-party certification (if required - approved, scheduled, owner confirmed)
  7. APs installed & verified per heatmap (front end / SCO covered)
  8. Checkout connectivity validated (finalization latency & LTE‑usage within thresholds)
  9. ZBC / beacons tested and passing (carts progress into finalization correctly)
  10. Software & firmware versions aligned (all launch carts)
  11. Store configs validated (loyalty, alcohol, incentives/coupon disclaimer, roulette flags)
  12. E2E testing completed & issues logged (scan, produce, alcohol, audit, EBT/loyalty, transfer/finalize, charging)
  13. Cart placement confirmed (aligned to heatmaps, power, store ops)
  14. Store & OTG training completed (incl. incident flows: QVS/network down, cart unavailability, chargers, W&M stickers)
  15. FSR/BA launch staffing plan confirmed (launch day and D+1/D+2)
  16. Marketing complete OR documented (arrival & installation OR soft‑launch decision if launching without signage)
- **For each item:** Status (✅/⚠️/❌/🔍), Evidence, Owner, Last Updated, Notes, Action Required
- Completion percentage (X% of 16 items complete)
- Blockers & critical items summary
- **GO/NO-GO/CONDITIONAL GO recommendation** based on validated completion status

**Output:** `launch-checklist-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/launch-checklist [retailer]/`

**Examples:**
- `/launch-checklist Clarks prod-clarks-1` (specific store validation)
- `/launch-checklist Clarks all` (all Clarks stores)
- `/launch-checklist Clarks` (all Clarks stores - empty store-id)

**Use case:** Pre-launch validation to ensure all required items are complete with evidence before launching a store.

---

#### `/launch-report [retailer-name] [store-id]`
**Purpose:** Comprehensive launch readiness assessment with workstream analysis and GO/NO-GO recommendation

**What it generates:**
- Launch overview (retailer, store ID, location, target launch date)
- **GO/NO-GO/CONDITIONAL GO recommendation** with detailed evidence
- **Workstream-by-workstream readiness assessment:**
  - Hardware workstream status (carts, chargers, accessories, electrical)
  - Software workstream status (firmware, configs, features)
  - Operations workstream status (training, staffing, processes)
  - Testing workstream status (E2E, connectivity, performance)
  - Infrastructure workstream status (APs, network, beacons)
- Critical artifacts status and missing items
- Launch team contact information and roles
- Risk assessment and contingency plans
- Dependencies and blockers analysis

**Output:** `launch-report-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/launch-report [retailer]/`

**Examples:**
- `/launch-report Albertsons prod-albertsons-5` (specific store)
- `/launch-report Albertsons all` (all Albertsons stores)
- `/launch-report Albertsons` (all Albertsons stores - empty store-id)

**Use case:** High-level executive summary with workstream rollups and strategic launch decision-making.

**Note:** Use `/launch-checklist` for item-by-item validation and `/launch-report` for comprehensive workstream assessment.

---

#### `/launch-todo [retailer-name] [store-id]`
**Purpose:** Focused, actionable task list to launch a store

**What it generates:**
- Store launch status (retailer, store ID, location, target date, current readiness)
- Launch critical items only (what must be done to launch)
- Specific actions, owners, and deadlines

**Output:** `launch-todo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/launch-todo [retailer]/`

**Examples:**
- `/launch-todo Safeway prod-safeway-2` (specific store)
- `/launch-todo Safeway all` (all stores)
- `/launch-todo Safeway` (all stores - empty store-id)

**Note:** This is a shorter version of launch-report - use this for quick action items, use launch-report for comprehensive workstream assessment.

---

### Documentation Skills

#### `/factsheet [retailer-name] [store-id]`
**Purpose:** Comprehensive factsheet with all key facts about a retailer's deployment

**What it generates:**
- Complete deployment information organized by category
- Fact count and comprehensive coverage of retailer details

**Output:** `factsheet-[retailer]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/factsheet [retailer]/`

**Examples:**
- `/factsheet HGG prod-hgg-1` (specific store)
- `/factsheet HGG all` (all stores)
- `/factsheet HGG` (all stores - store-id empty)

---

#### `/changelog-weekly [retailer-name] [store-id]`
**Purpose:** Weekly changelog documenting project changes

**What it generates:**
- Chronological list of changes and updates for the week
- Project progress documentation

**Output:** `changelog-[retailer]-[MM]-[DD]-[YYYY]-[Time].md` in `Desktop/changelog-weekly [retailer]/`

**Examples:**
- `/changelog-weekly Kroger prod-kroger-2` (specific store)
- `/changelog-weekly Kroger all` (all stores)
- `/changelog-weekly Kroger` (all stores - store-id empty)

---

## How It Works

- Skills are defined in `.claude/skills/[skill-name]/SKILL.md`
- Each skill searches Glean (Jira, Confluence, Google Docs, Slack) for retailer information
- **All skills require a store ID argument:**
  - **Specific store** (e.g., `prod-clarks-1`): Searches only for that store
  - **All stores** (`all` or empty): Searches across all stores for the retailer
- Store-specific searches use the internal Caper store ID (format: prod-retailer-#) to find targeted information
- Generated reports are saved to your Desktop in retailer-specific folders
- Multiple reports can be generated per day without overwriting (timestamped filenames)

## Argument Pattern (All Skills)

Every skill follows this pattern:
```
/[skill-name] [retailer-name] [store-id]
```

**Store ID options:**
- `prod-clarks-1` → Focus on specific store
- `all` → Search all stores for retailer
- *(leave empty)* → Search all stores for retailer

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
