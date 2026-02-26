---
name: changelog-weekly
description: Generate a weekly changelog documenting project changes for a specific retailer's Caper cart store deployment
argument-hint: [retailer-name] [store-id]
context: fork
agent: general-purpose
tools: mcp__glean_default__search, mcp__glean_default__read_document, mcp__glean_default__chat
---

# Weekly Changelog Generator

Generate a weekly changelog documenting what has changed in the specified retailer's Caper cart deployment project over the past 7 days.

## Retailer and Store ID
**Target Retailer**: $ARGUMENTS (first argument is retailer name, second argument is store ID)
- **Store ID Formats Accepted** (any of these three):
  1. **Caper internal store ID** (ex: allegiance-prod-1, prod-clarks-1, prod-hgg-1)
  2. **Retailer store number/ID** (ex: 530, 1234)
  3. **Store/location name** (ex: hastings-on-hudson, times-square)
- **All Stores Option**: If second argument is "all" or left empty, search across all stores for that retailer
- **Store ID Resolution**: If a non-internal format is provided, resolve it to the internal Caper ID before proceeding

## Instructions

0. **Store ID Resolution Phase** (if needed):
   - If the store ID argument is NOT in the internal Caper format (doesn't match pattern like "allegiance-prod-1" or "prod-clarks-1"):
     - Search Glean/Jira/Confluence for the store ID mapping
     - Look for documents containing both the retailer name and the provided store identifier (retailer store number or location name)
     - Find the corresponding internal Caper store ID (format: [retailer]-prod-[number] or allegiance-prod-[number])
     - Use this resolved internal ID for all subsequent searches
   - If store ID is "all" or empty, skip resolution and search across all stores
   - If already in internal format, proceed directly to Research Phase

1. **Research Phase** - Gather information about changes from the past week:
   - Calculate the time period: (Current Date - 7 days) to Current Date
   - **Store Scope**: If store ID is provided (not "all" or empty), focus on that specific store. If "all" or empty, search across all stores for the retailer
   - Search Jira for tickets created, updated, or closed in the past week related to $ARGUMENTS
   - If store ID is specific: Look for the store ID (second argument) in ticket descriptions, labels, or fields
   - Search Slack conversations from the past 7 days for $ARGUMENTS deployment updates
   - Search documentation (Confluence, Google Docs) for recent changes to $ARGUMENTS project
   - Look for timeline/schedule updates, scope changes, or deployment date changes
   - Identify new or updated risks, issues, decisions, assumptions, and dependencies
   - Focus on changes that happened within the past 7 days

2. **Analysis Phase** - Categorize and summarize the changes:
   - Organize findings into the eight key categories (see below)
   - For each change, provide a brief overview (1-3 sentences)
   - Include dates when changes occurred or were documented
   - Filter out minor changes - focus on meaningful updates
   - If a category has no changes, note "No changes this week"
   - Identify patterns or themes in the changes

3. **Changelog Generation** - Create a brief, organized changelog using this structure:

Reference the task-list.md file in this directory for the complete template structure.

### **CRITICAL**: Keep it Brief
- This skill must present a brief overview of each change
- Do NOT include comprehensive analysis or long explanations
- Focus on WHAT changed, not extensive WHY or HOW details
- **IMPORTANT**: If there are no changes for a task listed beneath Task 2. Project Changes, then simply state "No changes this week."

### Sections to Complete:

#### 1. Changelog Time Period
- Start Date: [Current Date - 7 days]
- End Date: [Current Date]

#### 2. Project Changes (Past 7 Days)

For each category below, list the changes that occurred in the past week. If there are no changes for a category, state "No changes this week."

1. **New or Updated Risks**: Brief description of new or changed risks
2. **New or Updated Assumptions**: Brief description of new or changed assumptions
3. **New or Updated Issues**: Brief description of new or reported issues
4. **New or Updated Decisions**: Brief description of decisions made
5. **New or Updated Dependencies**: Brief description of new or changed dependencies
6. **New or Updated Project Deployment Dates**: Brief description of schedule changes
7. **New or Updated Project Scope**: Brief description of scope changes
8. **Other Critical Project Changes**: ONLY include CRITICAL changes not covered above

4. **Output Format** - Create a Google Doc with the changelog:
   - First, create the changelog content in markdown format
   - Format as a well-structured markdown document with clear sections
   - Replace ALL [] placeholders with actual information
   - Add specific dates when changes occurred
   - Include source references where applicable (Jira ticket numbers, Slack thread dates, etc.)
   - Keep descriptions brief and focused
   - Document title format: `Weekly Changelog - [Retailer Name] ([Month] [Day] [Year])`
   - Example title: `Weekly Changelog - HGG (Feb 8 2026)`

5. **Google Doc Creation** - CRITICAL: Create Google Doc using md2doc:
   - First, save the markdown content to a temporary file in `/tmp/` directory
   - File naming: `/tmp/changelog-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Get the current time in 24-hour clock format with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - Then upload to Google Docs using the md2doc upload script:
     ```bash
     export PATH="$HOME/.local/bin:$PATH" && cd ~/.claude/plugins/marketplaces/instacart/md2doc/skills/md2doc/scripts/ && uv run python upload-gdoc.py "/tmp/changelog-[retailer]-[MM]-[DD]-[YYYY]-[Time].md" --title "Weekly Changelog - [Retailer Name] ([Month] [Day] [Year])"
     ```
   - After upload completes, inform the user of the Google Doc URL
   - Clean up the temporary markdown file after successful upload

## Research Tools Available

Use these tools to gather information:
- **Glean Search**: Search internal company documentation with date filters
- **Glean Chat**: Ask questions about recent changes to the retailer's deployment
- **Grep/Glob**: Search local codebase and documentation
- **Read**: Read specific files with deployment information

## Output Requirements

- **The output file must not exceed 5,000 words**
- **CRITICAL**: Keep the changelog BRIEF and FOCUSED on changes from the past 7 days only
- This is a summary of changes - NOT a comprehensive project report
- All [] brackets must be filled with real data
- Include specific dates when changes occurred
- Each entry should be concise (1-3 sentences per change)
- If a category has no changes, state "No changes this week"
- Focus on meaningful changes - filter out minor updates
- Include source references (Jira tickets, Slack threads, document links)
- **MUST create a Google Doc** - Do not just output to console
- **Document title format**: `Weekly Changelog - [Retailer Name] ([Month] [Day] [Year])`
- **Temporary file naming**: `changelog-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
- After successful upload, provide the user with the Google Doc URL

Generate a brief weekly changelog for **$ARGUMENTS** covering the past 7 days and create it as a Google Doc using the md2doc plugin.
