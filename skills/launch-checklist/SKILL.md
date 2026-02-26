---
name: launch-checklist
description: Validate completion status of all required launch checklist items for a specific retailer's Caper cart store deployment
argument-hint: [retailer-name] [store-id]
context: fork
agent: general-purpose
tools: mcp__glean_default__search, mcp__glean_default__read_document, mcp__glean_default__chat
---

# Launch Checklist Validator

Validate the completion status of all required launch checklist items for the specified retailer's Caper cart store deployment. This skill lists the consolidated launch checklist items and validates their current status to determine if the store is ready to launch.

## Retailer and Store ID
**Target Retailer**: $ARGUMENTS (first argument is retailer name, second argument is store ID)
- **Store ID Formats Accepted** (any of these three):
  1. **Caper internal store ID** (ex: allegiance-prod-1, prod-clarks-1, prod-hgg-1)
  2. **Retailer store number/ID** (ex: 530, 1234)
  3. **Store/location name** (ex: hastings-on-hudson, times-square)
- **All Stores Option**: If second argument is "all" or left empty, search across all stores for that retailer
- **Store ID Resolution**: If a non-internal format is provided, resolve it to the internal Caper ID before proceeding

## Consolidated Launch Checklist Items

These 16 items MUST be completed for the store to launch:

1. **Electrical complete & signed off** - Fixed chargers on correct circuit/voltage; GFCI stable under ≥10‑cart load
2. **FC firmware updated & chargers tested** - All launch ports tested and functional
3. **All launch carts present** - Bolted, powered, and with no syncing issues
4. **HW accessories installed** - All required accessories (e.g., bottom tray on all designated carts)
5. **W&M passed** - All launch carts passed OR inspector visit scheduled and aligned with launch
6. **3rd‑party certification** - (If required) Approved, scheduled, and owner confirmed
7. **APs installed & verified** - Per heatmap plan (front end / SCO covered)
8. **Checkout connectivity validated** - Order finalization latency & LTE‑usage at checkout within thresholds
9. **ZBC / beacons tested** - Carts progress into finalization correctly
10. **Software & firmware versions aligned** - All launch carts running same versions
11. **Store configs validated** - Loyalty, alcohol handling if applicable, incentives/coupon disclaimer, roulette flags
12. **E2E testing completed** - Issues logged (scan, produce, alcohol if applicable, audit, EBT/loyalty, transfer/finalize, charging)
13. **Cart placement confirmed** - Aligned to heatmaps, power, and store ops
14. **Store & OTG training completed** - Including incident flows (QVS/network down, cart unavailability, chargers, W&M stickers)
15. **FSR/BA launch staffing plan confirmed** - Launch day and D+1/D+2 coverage
16. **Marketing complete OR documented** - Arrival & installation complete OR soft‑launch decision documented (if launching without full signage)

## Instructions

0. **Store ID Resolution Phase** (if needed):
   - If the store ID argument is NOT in the internal Caper format (doesn't match pattern like "allegiance-prod-1" or "prod-clarks-1"):
     - Search Glean/Jira/Confluence for the store ID mapping
     - Look for documents containing both the retailer name and the provided store identifier (retailer store number or location name)
     - Find the corresponding internal Caper store ID (format: [retailer]-prod-[number] or allegiance-prod-[number])
     - Use this resolved internal ID for all subsequent searches
   - If store ID is "all" or empty, skip resolution and search across all stores
   - If already in internal format, proceed directly to Research Phase

1. **Research Phase** - Gather evidence for each checklist item:
   - **Store Scope**: If store ID is provided (not "all" or empty), focus on that specific store. If "all" or empty, search across all stores for the retailer
   - Search Jira for tickets related to $ARGUMENTS deployment and each checklist item
   - If store ID is specific: Look for the store ID (second argument) in ticket descriptions, labels, or fields
   - Search documentation (Confluence, Google Docs) for evidence of completion for each item
   - Search Slack conversations for status updates on each checklist item
   - Look for:
     - Electrical sign-off documentation
     - FC firmware version logs and charger test results
     - Cart inventory lists and syncing status reports
     - W&M certification documents or scheduled inspector visits
     - AP installation verification and heatmap plans
     - Connectivity test results and latency measurements
     - E2E testing reports and bug logs
     - Training completion records
     - Staffing plans and schedules
     - Marketing material delivery and installation confirmation

2. **Validation Phase** - For each of the 16 checklist items:
   - Determine current status: ✅ Complete, ⚠️ In Progress, ❌ Not Started, 🔍 Unknown
   - Find evidence of completion (Jira ticket, doc, Slack message, test result)
   - Identify blockers or missing information
   - Note who is responsible/owner
   - Record last update date
   - Assess risk if incomplete

3. **Report Generation** - Create launch checklist validation report:

Reference the task-list.md file in this directory for the complete report template structure.

### Report Structure:

#### 1. Launch Overview
- **Retailer Name**: Name of the retailer
- **Store ID**: Internal Caper store ID (or "All Stores" if searching all)
- **Store Location**: City, State or address if available from research
- **Target Launch Date**: Specific date found in research
- **Report Generated**: Date and time of this report
- **Overall Launch Readiness**: GO / NO-GO / CONDITIONAL GO

#### 2. Launch Readiness Summary
- **Total Items**: 16
- **Complete**: [count] (✅)
- **In Progress**: [count] (⚠️)
- **Not Started**: [count] (❌)
- **Unknown**: [count] (🔍)
- **Completion Percentage**: [X%]

#### 3. All 16 Checklist Items Status

List all 16 items with their current status indicator:

1. ✅/⚠️/❌/🔍 **Electrical complete & signed off**
2. ✅/⚠️/❌/🔍 **FC firmware updated & chargers tested**
3. ✅/⚠️/❌/🔍 **All launch carts present**
4. ✅/⚠️/❌/🔍 **HW accessories installed**
5. ✅/⚠️/❌/🔍 **W&M passed for all launch carts**
6. ✅/⚠️/❌/🔍 **3rd-party certification** (if required)
7. ✅/⚠️/❌/🔍 **APs installed & verified per heatmap**
8. ✅/⚠️/❌/🔍 **Checkout connectivity validated**
9. ✅/⚠️/❌/🔍 **ZBC / beacons tested and passing**
10. ✅/⚠️/❌/🔍 **Software & firmware versions aligned**
11. ✅/⚠️/❌/🔍 **Store configs validated**
12. ✅/⚠️/❌/🔍 **E2E testing completed & issues logged**
13. ✅/⚠️/❌/🔍 **Cart placement confirmed**
14. ✅/⚠️/❌/🔍 **Store & OTG training completed**
15. ✅/⚠️/❌/🔍 **FSR/BA launch staffing plan confirmed**
16. ✅/⚠️/❌/🔍 **Marketing complete OR documented**

#### 4. Launch Checklist Status (All 16 Items)

For each item, provide:

**[Item Number]. [Item Name]**
- **Status**: ✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown
- **Owner**: Person or team responsible
- **Last Updated**: Date of most recent update
- **Action Required**: If incomplete, what needs to be done

4. **Output Format** - Save the validation report as a markdown file:
   - Create a markdown file named: `launch-checklist-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
   - The file name includes the time when it was created
   - This allows multiple files to be created on the same day without deleting previous ones
   - Save the file in the "launch-checklist [retailer]" folder on the Desktop
   - Format as a well-structured markdown document with proper headings, lists, tables, and emphasis
   - Use checkboxes, emojis, and formatting to make status clear at a glance
   - Include all research findings with specific details and references
   - Replace ALL [] placeholders with actual information
   - Add specific dates, ticket numbers, and concrete details
   - Include source references where applicable

5. **File Creation and Google Doc Upload** - CRITICAL: Save locally AND upload to Google Docs:
   - First, check if the directory exists: `/Users/andrewsartori/Desktop/launch-checklist [retailer]/`
   - If it doesn't exist, create it: `mkdir -p "/Users/andrewsartori/Desktop/launch-checklist [retailer]"`
   - If it exists, use the existing directory (do NOT create another one)
   - Get the current time in 24-hour clock format with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - Save the file to: `/Users/andrewsartori/Desktop/launch-checklist [retailer]/launch-checklist-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
   - Example: For Clarks prod-clarks-1 on Feb 19, 2026 at 8:00 PM EST: `/Users/andrewsartori/Desktop/launch-checklist clarks/launch-checklist-clarks-prod-clarks-1-02-19-2026-2000EST.md`
   - Then upload the same file to Google Docs using the md2doc upload script:
     ```bash
     export PATH="$HOME/.local/bin:$PATH" && cd ~/.claude/plugins/marketplaces/instacart/md2doc/skills/md2doc/scripts/ && uv run python upload-gdoc.py "/Users/andrewsartori/Desktop/launch-checklist [retailer]/launch-checklist-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md" --title "Launch Checklist - [Retailer Name] [store-id] ([Month] [Day] [Year])"
     ```
   - After upload completes, inform the user of:
     - The local file location on Desktop
     - The Google Doc URL

## Research Tools Available

Use these MCP tools to gather information from Glean (Jira, Confluence, Google Docs, Slack):

### 1. **mcp__glean_default__search** - Search for documents and tickets
Use this tool to search across all Glean-indexed sources (Jira, Confluence, Google Docs, Slack).

**Important:** All filters (`app`, `after`, `before`) must be embedded in the query string.

**Example searches:**
- Jira tickets: `query: "app:\"jira\" [retailer-name] [store-id] electrical chargers"`
- Google Docs: `query: "app:\"gdoc\" [retailer-name] [store-id] W&M certification"`
- Slack messages: `query: "app:\"slack\" [retailer-name] [store-id] E2E testing complete"`
- Confluence: `query: "app:\"confluence\" [retailer-name] launch checklist"`

### 2. **mcp__glean_default__read_document** - Read full document content
Use this to read complete documents found via search (provide the document URL or ID).

### 3. **mcp__glean_default__chat** - Ask questions about project status
Use this to ask natural language questions about the deployment status.

**Example:** `prompt: "What is the status of electrical work for [retailer-name] [store-id]?"`

### 4. **Grep/Glob/Read** - Search local files
- **Grep**: Search file contents for keywords
- **Glob**: Find files by name pattern
- **Read**: Read specific files with completion documentation

## Search Strategy

For each of the 16 checklist items, search for evidence using mcp__glean_default__search:
- Jira tickets: `app:\"jira\"` + item keywords + store ID
- Documentation: `app:\"gdoc\" OR app:\"confluence\"` + item keywords
- Slack messages: `app:\"slack\"` + confirmation or status updates
- Search for:
  - Test results, certification documents, training records
  - Sign-off documentation and approvals
  - Installation verification and photos
  - Staffing plans and schedules

## Output Requirements

- **The output document must not exceed 2,000 words**
- The report must validate ALL 16 checklist items
- Each item must have a clear status (✅/⚠️/❌/🔍)
- All [] brackets must be filled with real data
- Include specific evidence with links/references for each item
- Provide realistic completion percentage
- Be honest about readiness - do not mark items complete without evidence
- Flag high-risk incomplete items clearly
- Provide actionable next steps for incomplete items
- **MUST save markdown file locally AND create a Google Doc**
- **File naming convention**: `launch-checklist-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
  - Time format: 24-hour clock with timezone indicated (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
  - This allows multiple files per day without deleting previous versions
- **Folder naming convention**: `launch-checklist [retailer]`
- **Save location**: `/Users/andrewsartori/Desktop/launch-checklist [retailer]/`
- If the retailer-specific folder exists, use it (do NOT create another one)
- If it doesn't exist, create it
- **Google Doc title format**: `Launch Checklist - [Retailer Name] [store-id] ([Month] [Day] [Year])`
  - Example: `Launch Checklist - Clarks Market prod-clarks-1 (Feb 25 2026)`
  - Avoid special characters like apostrophes, colons, or parentheses in retailer names that could cause API errors
- After successful upload, provide the user with:
  - The local file location on Desktop
  - The Google Doc URL

Generate the complete launch checklist validation report for **$ARGUMENTS** and create it as a Google Doc using the md2doc plugin.
