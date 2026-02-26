---
name: get-to-green
description: Generate a comprehensive "get-to-green" status report for a specific retailer's next scheduled Caper cart store deployment
argument-hint: [retailer-name] [store-id]
context: fork
agent: general-purpose
tools: mcp__glean_default__search, mcp__glean_default__read_document, mcp__glean_default__chat
---

# Get-to-Green Report Generator

Generate a comprehensive project status report for the specified retailer's next scheduled Caper cart store deployment, including tasks, risks, and what is needed to get the project to Green status for that specific store.

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

1. **Research Phase** - Gather information from all available sources:
   - **Store Scope**: If store ID is provided (not "all" or empty), focus on that specific store. If "all" or empty, search across all stores for the retailer
   - Search Jira for tickets related to $ARGUMENTS Caper deployment for the specified store
   - If store ID is specific: Look for the store ID (second argument) in ticket descriptions, labels, or fields
   - Search all documentation (Confluence, Google Docs, internal docs) for $ARGUMENTS project information and store-specific details
   - Search Slack conversations for $ARGUMENTS deployment discussions, updates, and issues related to this specific store
   - Look for project timelines, milestones, and deployment schedules for this store
   - Identify all critical risks, blockers, and open issues specific to this store deployment

2. **Analysis Phase** - Understand the current state:
   - Determine the current project status (Green/Yellow/Red)
   - Identify critical path items blocking Green status
   - Categorize risks by severity (Critical, Medium, Future)
   - Review recent progress and upcoming milestones
   - Understand deployment timeline and target dates

3. **Report Generation** - Create the report using this structure:

Reference the task-list.md file in this directory for the complete report template structure.

### Report Sections to Complete:

#### 1. Overview
- **Project Executive Summary**: High-level overview of the entire project to date
- **Current Project Status**: Green, Yellow, or Red (with justification)
- **Target**: Green by [specific date based on research]
- **Status Change**: Historical Risks, Issues, and Decisions that have changed the project's status up to the present date

#### 2. Green Status Checklist (Must Have By [DATE])
- **Critical Path Items to GREEN**: List all items that must be completed to achieve Green status (list as many as necessary to move project to status GREEN)
  - For each item: Describe specific actions that must be taken
- **Risk Management**: List all risks preventing the project from moving to Green status (list the risks preventing the project from moving to status GREEN)
  - For each risk: Describe specific actions that must be taken

#### 3. Complete Risk Analysis

For each risk category, provide detailed information:

**Critical Risks (Week [DATE])**
1. Risk: Name
2. Risk: Current Status
3. Risk: Why Critical
4. Risk: What Could Go Wrong
5. Risk: Mitigation Actions (This Week)
6. Risk: Success Criteria for Green

**Medium Risks (Week [DATE])**
1. Risk: Name
2. Risk: Current Status
3. Risk: Why This Matters
4. Risk: Mitigations

**Future Risks (Week [DATE])**
1. Risk: Name
2. Risk: Impact
3. Risk: Mitigation

#### 4. "Going Red" Contingency Plans
Create contingency plans for scenarios that could push the project to Red status:
- Scenario 1: [Description] with Action Items & Dates
- Scenario 2: [Description] with Action Items & Dates
- Scenario 3: [Description] with Action Items & Dates

4. **Output Format** - Create a Google Doc with the report:
   - First, create the report content in markdown format
   - Format as a well-structured markdown document with proper headings, lists, and emphasis
   - Include all research findings with specific details
   - Replace ALL [] placeholders with actual information
   - Add specific dates, ticket numbers, and concrete details
   - Include source references where applicable
   - Document title format: `Get to Green - [Retailer Name] ([Month] [Day] [Year])`
   - Example title: `Get to Green - HGG (Feb 8 2026)`

5. **Google Doc Creation** - CRITICAL: Create Google Doc using md2doc:
   - First, save the markdown content to a temporary file in `/tmp/` directory
   - File naming: `/tmp/G2G-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Get the current time in 24-hour clock format with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - Then upload to Google Docs using the md2doc upload script:
     ```bash
     export PATH="$HOME/.local/bin:$PATH" && cd ~/.claude/plugins/marketplaces/instacart/md2doc/skills/md2doc/scripts/ && uv run python upload-gdoc.py "/tmp/G2G-[retailer]-[MM]-[DD]-[YYYY]-[Time].md" --title "Get to Green - [Retailer Name] ([Month] [Day] [Year])"
     ```
   - After upload completes, inform the user of the Google Doc URL
   - Clean up the temporary markdown file after successful upload

## Research Tools Available

Use these tools to gather information:
- **Glean Search**: Search internal company documentation
- **Glean Chat**: Ask complex questions about the retailer's deployment
- **Grep/Glob**: Search local codebase and documentation
- **Read**: Read specific files with deployment information

## Output Requirements

- **The output document must not exceed 5,000 words**
- The report must be comprehensive and actionable
- All [] brackets must be filled with real data
- Include specific dates, not placeholders like [DATE]
- Provide evidence-based status assessment
- Include clear action items with owners when possible
- Be honest about risks and challenges
- **MUST create a Google Doc** - Do not just output to console
- **Document title format**: `Get to Green - [Retailer Name] ([Month] [Day] [Year])`
- **Temporary file naming**: `G2G-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
- After successful upload, provide the user with the Google Doc URL

Generate the complete get-to-green report for **$ARGUMENTS** and create it as a Google Doc using the md2doc plugin.
