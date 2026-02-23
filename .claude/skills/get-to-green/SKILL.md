---
name: get-to-green
description: Generate a comprehensive "get-to-green" status report for a specific retailer's next scheduled Caper cart store deployment
argument-hint: [retailer-name] [store-id]
context: fork
agent: general-purpose
---

# Get-to-Green Report Generator

Generate a comprehensive project status report for the specified retailer's next scheduled Caper cart store deployment, including tasks, risks, and what is needed to get the project to Green status for that specific store.

## Retailer and Store ID
**Target Retailer**: $ARGUMENTS (first argument is retailer name, second argument is store ID)
- **Store ID Format**: Internal Caper store ID (ex: prod-clarks-1)
- **All Stores Option**: If second argument is "all" or left empty, search across all stores for that retailer

## Instructions

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

4. **Output Format** - Save the report as a markdown file:
   - Create a markdown file named: `G2G-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - The file name includes the time when it was created
   - This allows multiple files to be created on the same day without deleting previous ones
   - Save the file in the "get-to-green [retailer]" folder on the Desktop
   - Format as a well-structured markdown document with proper headings, lists, and emphasis
   - Include all research findings with specific details
   - Replace ALL [] placeholders with actual information
   - Add specific dates, ticket numbers, and concrete details
   - Include source references where applicable
   - Add a note at the end with instructions for copying to Google Doc

5. **File Creation** - CRITICAL: Check if directory exists, then create the markdown file:
   - First, check if the directory exists: `/Users/andrewsartori/Desktop/get-to-green [retailer]/`
   - If it doesn't exist, create it: `mkdir -p "/Users/andrewsartori/Desktop/get-to-green [retailer]"`
   - If it exists, use the existing directory (do NOT create another one)
   - Get the current time in 24-hour clock format with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - Then save the file to: `/Users/andrewsartori/Desktop/get-to-green [retailer]/G2G-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Example: For HGG on Feb 8, 2026 at 8:00 PM EST: `/Users/andrewsartori/Desktop/get-to-green HGG/G2G-HGG-02-08-2026-2000EST.md`
   - Content: Complete formatted report in markdown
   - After writing the file, inform the user of the exact file location

6. **Google Doc Instructions** - Include at the end of the markdown file:
   - Provide clear instructions for copying the formatted report into a Google Doc
   - Suggest appropriate formatting for the Google Doc version

## Research Tools Available

Use these tools to gather information:
- **Glean Search**: Search internal company documentation
- **Glean Chat**: Ask complex questions about the retailer's deployment
- **Grep/Glob**: Search local codebase and documentation
- **Read**: Read specific files with deployment information

## Output Requirements

- **The output file must not exceed 5,000 words**
- The report must be comprehensive and actionable
- All [] brackets must be filled with real data
- Include specific dates, not placeholders like [DATE]
- Provide evidence-based status assessment
- Include clear action items with owners when possible
- Be honest about risks and challenges
- **MUST create a markdown file** - Do not just output to console
- **File naming convention**: `G2G-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
  - Time format: 24-hour clock with timezone indicated (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
  - This allows multiple files per day without deleting previous versions
- **Folder naming convention**: `get-to-green [retailer]`
- **Save location**: `/Users/andrewsartori/Desktop/get-to-green [retailer]/`
- If the retailer-specific folder exists, use it (do NOT create another one)
- If it doesn't exist, create it
- Inform the user of the exact file location after creation
- Include Google Drive upload instructions at the end of the report

Generate the complete get-to-green report for **$ARGUMENTS** and save it as a markdown file in a Desktop folder named "get-to-green [retailer]".
