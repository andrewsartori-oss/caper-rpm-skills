---
name: project-summary
description: Generate a comprehensive project summary for a specific retailer's Caper cart store deployment
argument-hint: [retailer-name] [store-id]
context: fork
agent: general-purpose
tools: mcp__glean_default__search, mcp__glean_default__read_document, mcp__glean_default__chat
---

# Project Summary

Generate a comprehensive, informational summary of the Caper cart deployment for the specified retailer. This skill is designed to give anyone — especially a new RPM — a concise but complete picture of all key topics, items, issues, decisions, and risks associated with this deployment.

## Retailer and Store ID

**Target Retailer**: $ARGUMENTS (first argument is retailer name, second argument is store ID)
- **Store ID Formats Accepted** (any of these three):
  1. **Caper internal store ID** (ex: allegiance-prod-1, prod-clarks-1, prod-hgg-1)
  2. **Retailer store number/ID** (ex: 530, 1234)
  3. **Store/location name** (ex: hastings-on-hudson, times-square)
- **All Stores Option**: If second argument is "all" or left empty, summarize across all stores for that retailer
- **Store ID Resolution**: If a non-internal format is provided, resolve it to the internal Caper ID before proceeding

## Instructions

### 0. Store ID Resolution (if needed)
- If the store ID is NOT in internal Caper format (e.g., does not match a pattern like "prod-clarks-1"):
  - Search Glean for documents containing both the retailer name and the provided store identifier
  - Resolve to the internal Caper store ID before proceeding
- If store ID is "all" or empty, skip resolution and search across all stores
- If already in internal format, proceed directly to the Research Phase

### 1. Research Phase
Gather information across all of the following topics. Use Glean (Jira, Confluence, Google Docs, Slack) as the primary source for all data.

- **CRITICAL**: Always use the latest version of project documents. Do NOT refer to past skill-generated .md or .webloc files.
- **CRITICAL - Slack Channel Enumeration**: Do NOT rely only on broad keyword searches. You MUST:
  1. Search Glean for all Slack channels whose name contains the retailer name (use `type:publicchannel [retailer-name]`)
  2. For each channel found, run a separate targeted Glean search using the `channel` filter for that specific channel
  3. Skipping any channel is unacceptable

**Research topics:**
- Project overview: deployment scope, store count, cart count, target launch date, current phase, project health
- Key stakeholders: Caper RPM, SA, BD, and retailer-side contacts
- Hardware: cart model, count, accessories, chargers, beacons, payment terminals
- Technology & integrations: POS, loyalty, catalog, digital coupons, payment processor, store IDs, feature list
- Timeline & milestones: planned vs. actual dates for each of the 7 project phases and their key tasks
- Open issues & blockers: active Jira tickets, Slack-flagged problems, known blockers with severity and ownership
- Key decisions: important decisions documented in Jira, Confluence, Slack, or Google Docs
- Risks: known risks to timeline or success with likelihood, impact, and mitigation
- Recent activity: significant updates, actions, and communications from the past two weeks
- Next steps: upcoming actions needed to keep the project on track

### 2. Report Generation
Reference the task-list.md file in this directory for the complete report structure. Produce all 10 sections:

1. **Project Overview** — snapshot of the deployment at a glance
2. **Key Stakeholders** — Caper and retailer contacts with roles
3. **Hardware Summary** — carts, model, accessories, chargers, beacons, payment terminals
4. **Technology & Integrations** — POS, loyalty, catalog, payment, store IDs, active features, known integration issues
5. **Timeline & Milestones** — all 7 project phases with planned/actual dates and status for each phase's key tasks
6. **Current Open Issues & Blockers** — active problems with severity, owner, status, and last update
7. **Key Decisions Made** — documented decisions with date, decision-maker, and impact
8. **Risks** — likelihood, impact, mitigation, and owner for each known risk
9. **Recent Activity (Last 2 Weeks)** — what was completed, decided, escalated, or changed
10. **Next Steps** — prioritized actions with owners, due dates, and dependencies

**Report quality requirements:**
- Replace ALL placeholder brackets with real data found in research
- Include specific ticket numbers, document links, dates, and version numbers where available
- Be factual and honest — do not fill fields with assumptions if evidence is not found; mark as 🔍 Unknown instead
- Keep the tone neutral and informational — this is a briefing document, not an assessment

### 3. Output Format
- Save the report as a markdown file named: `project-summary-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
  - Time in 24-hour clock with timezone (e.g., "1430PST", "0900EST")
  - Multiple files can be created on the same day without overwriting previous versions
- Save to the directory: `/Users/andrewsartori/Desktop/project-summary [retailer]/`
  - If the directory already exists, use it — do NOT create another one
  - If it does not exist, create it
- The output file must not exceed 5,000 words

### 4. Google Doc Upload
After saving the markdown file locally, upload it to Google Docs using the md2doc plugin:

```bash
export PATH="$HOME/.local/bin:$PATH" && cd ~/.claude/plugins/marketplaces/instacart/md2doc/skills/md2doc/scripts/ && uv run python upload-gdoc.py "/Users/andrewsartori/Desktop/project-summary [retailer]/project-summary-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md" --title "Project Summary - [Retailer Name] [store-id] ([Month] [Day] [Year])"
```

- After successful upload, create a .webloc shortcut file in the same folder:
  - Extract the Google Doc URL from the upload output
  - Create: `/Users/andrewsartori/Desktop/project-summary [retailer]/project-summary-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].webloc`
  - The .webloc file must be a macOS Safari bookmark in XML plist format containing the Google Doc URL
- Inform the user of:
  - The local markdown file path
  - The Google Doc URL
  - The .webloc shortcut file path

## Research Tools Available

### 1. **mcp__glean_default__search** — Search for documents and tickets
Use to search across all Glean-indexed sources (Jira, Confluence, Google Docs, Slack). All filters must be embedded in the query string.

**Example searches:**
- Jira tickets: `query: "app:\"jira\" [retailer-name] [store-id] project status"`
- Google Docs: `query: "app:\"gdoc\" [retailer-name] project scope document"`
- Slack messages: `query: "app:\"slack\" [retailer-name] weekly update"`
- Confluence: `query: "app:\"confluence\" [retailer-name] deployment phases"`
- Slack channels: `query: "type:publicchannel [retailer-name]"`

### 2. **mcp__glean_default__read_document** — Read full document content
Use to read complete documents found via search (provide the document URL or ID).

### 3. **mcp__glean_default__chat** — Ask questions about project status
Use for natural language questions that require synthesis across multiple sources.

**Example:** `prompt: "What is the current status of the [retailer-name] Caper deployment? What are the open issues and risks?"`

## Output Requirements

- **The output document must not exceed 5,000 words**
- All 10 report sections must be present and populated
- All placeholder brackets must be replaced with real data (or 🔍 Unknown where data is not found)
- Include specific references (ticket numbers, doc links, Slack thread dates) where available
- **Must save markdown file locally AND create a Google Doc**
- **File naming**: `project-summary-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
- **Folder naming**: `project-summary [retailer]`
- **Save location**: `/Users/andrewsartori/Desktop/project-summary [retailer]/`
- **Google Doc title format**: `Project Summary - [Retailer Name] [store-id] ([Month] [Day] [Year])`
  - Example: `Project Summary - Clarks Market prod-clarks-1 (Mar 11 2026)`

Generate the complete project summary for **$ARGUMENTS** and create it as a Google Doc using the md2doc plugin.
