---
name: gonogo
description: Validate Go/No-Go launch readiness for a specific retailer's Caper cart store deployment
argument-hint: [retailer-name] [store-id]
context: fork
agent: general-purpose
tools: mcp__glean_default__search, mcp__glean_default__read_document, mcp__glean_default__chat
---

# Go/No-Go Launch Readiness Validator

Validate the Go/No-Go launch readiness for the specified retailer's Caper cart store deployment. This skill assesses all required launch checklist items and produces a clear GO / NO-GO / CONDITIONAL GO recommendation.

## Retailer and Store ID
**Target Retailer**: $ARGUMENTS (first argument is retailer name, second argument is store ID)
- **Store ID Formats Accepted** (any of these three):
  1. **Caper internal store ID** (ex: allegiance-prod-1, prod-clarks-1, prod-hgg-1)
  2. **Retailer store number/ID** (ex: 530, 1234)
  3. **Store/location name** (ex: hastings-on-hudson, times-square)
- **All Stores Option**: If second argument is "all" or left empty, search across all stores for that retailer
- **Store ID Resolution**: If a non-internal format is provided, resolve it to the internal Caper ID before proceeding

## Go/No-Go Checklist Items

60 items across 10 categories determine the Go/No-Go decision. Each item is tagged with its blocker type:
- 🔴 **Absolute NO-GO** if incomplete
- 🟡 **CONDITIONAL GO** if partially complete with a documented plan and owner
- 🟢 **Informational / best effort**

### Category 1 – Hardware & Physical Infrastructure
1. 🔴 All launch carts present on-site, bolted, powered, and syncing without errors
2. 🔴 Store retrofit complete – electrical upgrade done and signed off (correct circuit/voltage; GFCI stable under ≥10-cart load)
3. 🔴 Fixed chargers installed and all launch ports tested and functional
4. 🔴 FC firmware updated and charger firmware tested
5. 🟡 HW accessories installed on all designated carts (bag hooks, bottom trays, etc.)
6. 🟡 Cart placement confirmed and aligned to heatmap, power availability, and store ops plan
7. 🟡 Carts and tablets fully charged before training and launch

### Category 2 – Networking & Connectivity
8. 🔴 WiFi APs installed and verified per heatmap plan (front end and SCO areas covered)
9. 🔴 Checkout connectivity validated – order finalization latency and LTE usage at checkout within thresholds
10. 🔴 ZBC / beacons tested and carts progress into finalization correctly
11. 🔴 Network whitelisting completed by retailer's networking provider
12. 🟡 WiFi/LTE connectivity re-validated after any AP or infrastructure changes

### Category 3 – Software, Configuration & Backend
13. 🔴 All launch carts upgraded to planned production software and firmware release
14. 🔴 All launch carts running the same software and firmware versions
15. 🔴 Store configs validated in production – loyalty, alcohol handling (if applicable), coupon disclaimer, incentive flags, roulette flags
16. 🔴 CM audit thresholds approved and configured in backend for the store
17. 🔴 Cart Manager access provisioned for store team
18. 🔴 Store team Store Admin and staff override barcodes created and distributed
19. 🔴 Incentives enabled and validated in production (CECs, X-off-Y, Streaks, or applicable incentive types)
20. 🔴 PODS ticket filed with Retailer Tooling team to enable new store for video inspector
21. 🔴 Production retailer PSO Jira dashboard created (ETS)
22. 🔴 DS ticket created and store added to Mode dashboard
23. 🟡 DUMAC servers installed in store (if applicable to retailer's POS integration)
24. 🟡 Instabug connected to Slack launch war room

### Category 4 – Weights & Measures
25. 🔴 W&M certification passed for all launch carts OR county inspector visit scheduled and date aligned with launch plan
26. 🟡 3rd-party certification completed (if required by state/county) – approved, scheduled, and owner confirmed

### Category 5 – Payments
27. 🔴 Payment terminals configured (VAR sheets submitted, MIDs/TIDs set up)
28. 🔴 Payments tested in store – debit, credit, tap, insert
29. 🔴 Payments verified hitting retailer's backend correctly
30. 🟡 2x Cart Manager tablets procured by retailer (if applicable)

### Category 6 – Catalog, Loyalty & Integrations
31. 🔴 Catalog ingested, validated, and sanity tested in production
32. 🔴 Age-restricted items (alcohol, tobacco) flagged correctly in catalog
33. 🔴 Loyalty integration validated – login, coupon view, clip, and redemption tested
34. 🔴 Offers and promotions tested – BOGO, Buy X for $Y, Manager's Special, Employee Discount, Clearance
35. 🔴 Caper Exclusive Coupons (CECs) and other Caper incentives tested end-to-end
36. 🔴 T-log creation verified (transactions posting to POS/backend correctly)
37. 🟡 Digital receipt validated (includes promos, coupons, and taxable items)
38. 🟡 Transfer-to-cashier flow tested and passing
39. 🟡 Large basket checkout tested (50+ items)

### Category 7 – QA & Testing
40. 🔴 E2E in-store testing completed – all test cases executed (scan, produce, alcohol if applicable, audit, loyalty, transfer/finalize, charging)
41. 🔴 All P0 and P1 bugs resolved, or risk formally accepted and documented
42. 🔴 Retailer UAT completed and retailer sign-off obtained
43. 🟡 E2E test summary report produced and shared with stakeholders
44. 🟡 All P2 bugs triaged, owners assigned, and target fix dates confirmed

### Category 8 – Operations & Staffing
45. 🔴 Store employee training completed (rounds 1 and 2) – including incident flows (network down, cart unavailability, charger issues, W&M stickers)
46. 🔴 FSR/BA launch staffing plan confirmed – launch day, D+1, and D+2 coverage locked
47. 🔴 Caper Champions selected by retailer
48. 🟡 Store Associate Promotion training completed
49. 🟡 Remote auditors booked and confirmed for launch window

### Category 9 – Marketing
50. 🟡 Marketing signage approved by retailer
51. 🟡 Marketing signage delivered and installed in store (A-frames, standees, cart corral, aisle blades, freezer clings, checkout signage, bagging station, outdoor banners) – OR soft-launch decision formally documented
52. 🟡 Caper lane clearly designated and visible to shoppers

### Category 10 – Sign-offs, Documentation & Launch Readiness
53. 🔴 Launch plan reviewed and signed off (RPM, CSM, SA, Ops)
54. 🔴 Internal Go/No-Go alignment obtained
55. 🔴 External (retailer) Go/No-Go alignment obtained
56. 🔴 Project Scope Document reviewed and signed off
57. 🔴 Slack launch war room set up and active
58. 🟡 Launch report template prepared
59. 🟡 Caper Project Transition Document drafted
60. 🟡 Retro board created

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
   - **CRITICAL**: Use Glean to gather data every time and prioritize searching for, and using, the latest version of project documents. — do not refer to past skill-generated .md or .webloc documents.
   - **CRITICAL - Slack Channel Enumeration and Review**: Do NOT rely only on broad keyword searches. You MUST follow this exact process:
     1. Search Glean for all Slack channels whose name contains the retailer name (search with `type:publicchannel [retailer-name]` to enumerate channels)
     2. For each channel found, run a separate targeted Glean search using the `channel` filter for that specific channel name
     3. Review all messages and replies in every channel containing the retailer name — skipping any channel is unacceptable
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

2. **Validation Phase** - For each of the 60 checklist items across 10 categories:
   - Determine current status: ✅ Complete, ⚠️ In Progress, ❌ Not Started, 🔍 Unknown
   - Find evidence of completion (Jira ticket, doc, Slack message, test result)
   - Identify blockers or missing information
   - Note who is responsible/owner
   - Record last update date
   - Assess risk if incomplete — pay special attention to 🔴 items, as any incomplete 🔴 item is an automatic NO-GO

3. **Report Generation** - Create Go/No-Go launch readiness report:

Reference the task-list.md file in this directory for the complete report template structure.

### Report Structure:

#### 1. Launch Overview
- **Retailer Name**: Name of the retailer
- **Store ID**: Internal Caper store ID (or "All Stores" if searching all)
- **Store Location**: City, State or address if available from research
- **Target Launch Date**: Specific date found in research
- **Report Generated**: Date and time of this report
- **Overall Launch Readiness**: **GO / NO-GO / CONDITIONAL GO**

#### 2. Launch Readiness Summary
- **Total Items**: 60 (across 10 categories)
- **🔴 NO-GO Blockers**: [count complete] / [count total 🔴 items]
- **🟡 Conditional Items**: [count complete] / [count total 🟡 items]
- **Complete**: [count] (✅)
- **In Progress**: [count] (⚠️)
- **Not Started / Blocked**: [count] (❌)
- **Unknown**: [count] (🔍)
- **Completion Percentage**: [X%]

#### 3. Go/No-Go Decision

State the decision clearly at the top of this section, with justification:

| **Decision** | **Criteria** |
| --- | --- |
| **GO** | All 🔴 items are ✅ Complete. All 🟡 items are either ✅ Complete or have a documented plan and owner. |
| **CONDITIONAL GO** | All 🔴 items are ✅ Complete. One or more 🟡 items are ⚠️ In Progress with a clear owner, target date, and risk accepted in writing. |
| **NO-GO** | One or more 🔴 items are ❌ Not Started, blocked, or 🔍 Unknown with no clear path to resolution before launch date. |

#### 4. Checklist Status by Category

For each of the 10 categories, provide a status table with every item's current status, owner, and any notes/evidence. Use this structure per category:

**Category [#] – [Name]**

| **#** | **Blocker** | **Item** | **Status** | **Notes / Evidence** |
| --- | --- | --- | --- | --- |
| [#] | 🔴/🟡 | [Item description] | ✅/⚠️/❌/🔍 | [Evidence or blocker detail] |

Repeat for all 10 categories:
1. Hardware & Physical Infrastructure (items 1–7)
2. Networking & Connectivity (items 8–12)
3. Software, Configuration & Backend (items 13–24)
4. Weights & Measures (items 25–26)
5. Payments (items 27–30)
6. Catalog, Loyalty & Integrations (items 31–39)
7. QA & Testing (items 40–44)
8. Operations & Staffing (items 45–49)
9. Marketing (items 50–52)
10. Sign-offs, Documentation & Launch Readiness (items 53–60)

#### 5. Blockers & Required Actions

List all incomplete 🔴 items with:
- Item number and description
- Current status
- Owner
- Required action and target date to resolve

4. **Output Format** - Save the Go/No-Go report as a markdown file:
   - Create a markdown file named: `gonogo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
   - The file name includes the time when it was created
   - This allows multiple files to be created on the same day without deleting previous ones
   - Save the file in the "gonogo [retailer]" folder on the Desktop
   - Format as a well-structured markdown document with proper headings, lists, tables, and emphasis
   - Use checkboxes, emojis, and formatting to make status clear at a glance
   - Include all research findings with specific details and references
   - Replace ALL [] placeholders with actual information
   - Add specific dates, ticket numbers, and concrete details
   - Include source references where applicable

5. **File Creation and Google Doc Upload** - CRITICAL: Save locally AND upload to Google Docs:
   - First, check if the directory exists: `/Users/andrewsartori/Desktop/gonogo [retailer]/`
   - If it doesn't exist, create it: `mkdir -p "/Users/andrewsartori/Desktop/gonogo [retailer]"`
   - If it exists, use the existing directory (do NOT create another one)
   - Get the current time in 24-hour clock format with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - Save the file to: `/Users/andrewsartori/Desktop/gonogo [retailer]/gonogo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
   - Example: For Clarks prod-clarks-1 on Feb 19, 2026 at 8:00 PM EST: `/Users/andrewsartori/Desktop/gonogo clarks/gonogo-clarks-prod-clarks-1-02-19-2026-2000EST.md`
   - Then upload the same file to Google Docs using the md2doc upload script:
     ```bash
     export PATH="$HOME/.local/bin:$PATH" && cd ~/.claude/plugins/marketplaces/instacart/md2doc/skills/md2doc/scripts/ && uv run python upload-gdoc.py "/Users/andrewsartori/Desktop/gonogo [retailer]/gonogo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md" --title "Go/No-Go - [Retailer Name] [store-id] ([Month] [Day] [Year])"
     ```
   - After successful upload, create a .webloc shortcut file to the Google Doc in the same folder:
     - Extract the Google Doc URL from the upload output
     - Create a .webloc file with the same base filename: `/Users/andrewsartori/Desktop/gonogo [retailer]/gonogo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].webloc`
     - The .webloc file should be a macOS Safari bookmark in XML plist format containing the Google Doc URL
     - When user double-clicks the .webloc file, it will open the Google Doc in their browser
   - After completion, inform the user of:
     - The local markdown file location on Desktop
     - The Google Doc URL
     - The .webloc shortcut file location

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

For each of the 60 checklist items across 10 categories, search for evidence using mcp__glean_default__search:
- Jira tickets: `app:\"jira\"` + item keywords + store ID
- Documentation: `app:\"gdoc\" OR app:\"confluence\"` + item keywords
- Slack messages: `app:\"slack\"` + confirmation or status updates
- Search for:
  - Test results, certification documents, training records
  - Sign-off documentation and approvals
  - Installation verification and photos
  - Staffing plans and schedules

## Output Requirements

- **The output document must not exceed 4,000 words**
- The report must validate ALL 60 checklist items across 10 categories
- Each item must have a clear status (✅/⚠️/❌/🔍)
- All [] brackets must be filled with real data
- Include specific evidence with links/references for each item
- Provide realistic completion percentage
- Be honest about readiness - do not mark items complete without evidence
- Flag high-risk incomplete items clearly
- Provide actionable next steps for incomplete items
- **MUST save markdown file locally AND create a Google Doc**
- **File naming convention**: `gonogo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
  - Time format: 24-hour clock with timezone indicated (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
  - This allows multiple files per day without deleting previous versions
- **Folder naming convention**: `gonogo [retailer]`
- **Save location**: `/Users/andrewsartori/Desktop/gonogo [retailer]/`
- If the retailer-specific folder exists, use it (do NOT create another one)
- If it doesn't exist, create it
- **Google Doc title format**: `Go/No-Go - [Retailer Name] [store-id] ([Month] [Day] [Year])`
  - Example: `Go/No-Go - Clarks Market prod-clarks-1 (Feb 25 2026)`
  - Avoid special characters like apostrophes, colons, or parentheses in retailer names that could cause API errors
- After successful upload, provide the user with:
  - The local file location on Desktop
  - The Google Doc URL

Generate the complete Go/No-Go launch readiness report for **$ARGUMENTS** and create it as a Google Doc using the md2doc plugin.
