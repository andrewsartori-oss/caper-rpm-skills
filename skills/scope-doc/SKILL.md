---
name: scope-doc
description: Generate a comprehensive Project Scope Document for a specific retailer's Caper cart store deployment
argument-hint: [retailer-name]
context: fork
agent: general-purpose
tools: mcp__glean_default__search, mcp__glean_default__read_document, mcp__glean_default__chat
---

# Caper Cart Deployment Project Scope Document Generator

Generate a complete, populated Project Scope Document for the specified retailer's Caper cart deployment. The document captures the mutually agreed-upon scope of work, stakeholders, timeline, requirements, risks, assumptions, and dependencies that drive the overall implementation.

## Retailer
**Target Retailer**: $ARGUMENTS

## Instructions

1. **Research Phase** - Gather comprehensive project information from all available sources:
   - **CRITICAL**: Use Glean to gather data every time and prioritize searching for, and using, the latest version of project documents. Do not refer to past skill-generated .md or .webloc documents.
   - **CRITICAL - Slack Channel Enumeration and Review**: Do NOT rely only on broad keyword searches. You MUST follow this exact process:
     1. Search Glean for all Slack channels whose name contains the retailer name (search: `type:publicchannel [retailer-name]`)
     2. For each channel found, run a separate targeted Glean search using the `channel` filter for that specific channel name
     3. Review all messages and replies in every channel containing the retailer name — skipping any channel is unacceptable
   - Search for and read the following source documents in priority order:
     - **Project Charter** (Google Docs) — retailer background, contracted scope, stakeholders
     - **Internal and External Kickoff Decks** (Google Slides) — deployment scope, tech stack, hardware
     - **Retailer Success Plan** (Google Slides/Docs) — success criteria, KPIs, GTM
     - **Factsheet** (Google Docs) — store details, hardware specs, integration details
     - **Project Summary** (Google Docs) — current status, milestones, risks, blockers
     - **RAID Log** (Google Docs/Sheets) — risks, assumptions, issues, decisions
     - **Project Plan** (Smartsheet / Monday / JIRA) — timeline, milestones, key dates
     - **SDD** (Confluence) — technical architecture and integration details
     - **XFN Dashboard** (Confluence) — project artifacts and links
     - **Caper Cart Deployment Store Information** (Confluence) — store IDs, addresses, cart counts, launch dates
     - **Jira Epic / Initiative** (CDP project) — project tickets, open items, blockers
     - **Slack: #caper-project-[retailer]** — latest updates, decisions, open issues

2. **Data Extraction Phase** - Extract and organize findings into these categories:
   - Retailer background (description, locations, founding, motto, customer base)
   - Deployment scope (store count, cart count, contracted vs. recommended, excluded stores)
   - Tech stack (POS, loyalty, catalog, payment method)
   - Stakeholders (RPM, SA, CSM, BD, QA, HW Ops, Marketing, Store Ops, Partnerships, UPOS, 3PI, Caper Deployment, retailer contacts)
   - Timeline (kickoff dates, integration milestones, testing phases, launch dates)
   - Features (in-scope features with release versions, out-of-scope items, post-launch features)
   - Hardware (cart model, quantity, new vs. refurbished, accessories, chargers, beacons)
   - Risks (from RAID log — severity, owner, status)
   - Assumptions and dependencies (from RAID log / project charter / project plan)
   - Project artifacts (links to all key documents, JIRA, Smartsheet, Monday, Slack)

3. **Document Generation Phase** - Create a full Project Scope Document using the template:

   Reference the task-list.md file in this directory for the complete output template structure.

   - Replace every [BRACKETED PLACEHOLDER] with real data from research
   - If a data point cannot be confirmed, retain the placeholder and append "(TBD)"
   - Never fabricate data — accuracy is critical
   - Do not omit sections; if a section has no data, note "TBD — to be defined during project initiation"
   - Include all discovered document links in the References section
   - The document should be ready to share with the retailer XFN team

4. **Output Format** - Save the scope document as a markdown file:
   - File naming convention: `scope-doc-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Time format: 24-hour clock with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - This allows multiple files per day without overwriting previous versions
   - Save the file in the "scope-doc [retailer]" folder on the Desktop

5. **File Creation and Google Doc Upload** - CRITICAL: Save locally AND upload to Google Docs:
   - First, check if the directory exists: `/Users/andrewsartori/Desktop/scope-doc [retailer]/`
   - If it doesn't exist, create it: `mkdir -p "/Users/andrewsartori/Desktop/scope-doc [retailer]"`
   - If it exists, use the existing directory (do NOT create another one)
   - Get the current time in 24-hour clock format with timezone
   - Save the file to: `/Users/andrewsartori/Desktop/scope-doc [retailer]/scope-doc-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Example: For Neimans on Mar 23, 2026 at 2:00 PM EST: `/Users/andrewsartori/Desktop/scope-doc Neimans/scope-doc-Neimans-03-23-2026-1400EST.md`
   - Then upload the same file to Google Docs using the md2doc upload script:
     ```bash
     export PATH="$HOME/.local/bin:$PATH" && cd ~/.claude/plugins/marketplaces/instacart/md2doc/skills/md2doc/scripts/ && uv run python upload-gdoc.py "/Users/andrewsartori/Desktop/scope-doc [retailer]/scope-doc-[retailer]-[MM]-[DD]-[YYYY]-[Time].md" --title "Project Scope Document - [Retailer Name] ([Month] [Day] [Year])"
     ```
   - After successful upload, create a .webloc shortcut file to the Google Doc in the same folder:
     - Extract the Google Doc URL from the upload output
     - Create a .webloc file with the same base filename: `/Users/andrewsartori/Desktop/scope-doc [retailer]/scope-doc-[retailer]-[MM]-[DD]-[YYYY]-[Time].webloc`
     - The .webloc file should be a macOS Safari bookmark in XML plist format containing the Google Doc URL
     - When the user double-clicks the .webloc file, it will open the Google Doc in their browser
   - After completion, provide the user with:
     - The local markdown file location on Desktop
     - The Google Doc URL
     - The .webloc shortcut file location

## Research Tools Available

- **Glean Search**: Search internal company documentation
- **Glean Read Document**: Read the full content of a specific document URL
- **Glean Chat**: Ask questions to synthesize information across multiple sources
- **Grep/Glob**: Search local codebase and documentation
- **Read**: Read specific local files

## Output Requirements

- **The output document must not exceed 10,000 words**
- Every section from the template must be present in the output
- All [BRACKETED PLACEHOLDERS] must be replaced with real data; retain "(TBD)" only when data is genuinely unavailable
- Never fabricate data — if unsure, mark as TBD with a note on what source to confirm from
- Include specific details: names, addresses, dates, IDs, links, version numbers
- The document must be immediately usable as a working project scope — not a rough draft
- **MUST save markdown file locally AND create a Google Doc with a .webloc shortcut**
- **File naming**: `scope-doc-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
- **Folder**: `scope-doc [retailer]` on the Desktop
- **Google Doc title**: `Project Scope Document - [Retailer Name] ([Month] [Day] [Year])`
- Avoid special characters (apostrophes, colons) in retailer names in filenames and titles

## Critical Success Factors

- **Comprehensive**: All 10+ sections populated with real data — no empty sections
- **Accurate**: Data sourced directly from Glean; no fabrication
- **Current**: Prioritize the latest versions of all source documents
- **Linked**: All referenced documents include actual URLs where available
- **Actionable**: The document is ready for review and sign-off by the XFN team

Generate a complete Project Scope Document for **$ARGUMENTS** and create it as a Google Doc using the md2doc plugin.
