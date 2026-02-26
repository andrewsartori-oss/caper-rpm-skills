---
name: green-todo
description: Generate an actionable task list to achieve project health (Green status) OR launch readiness for a specific retailer's Caper cart store deployment
argument-hint: [retailer-name] [store-id]
context: fork
agent: general-purpose
tools: mcp__glean_default__search, mcp__glean_default__read_document, mcp__glean_default__chat
---

# Green-Todo Task List Generator

Generate a focused, actionable task list to achieve project health (Green status) OR launch readiness for the specified retailer's Caper cart store deployment.

**Context-Aware Skill**: Automatically adapts based on project timeline and context:
- **Project Health Mode**: When target date is >2 weeks away or context indicates ongoing project work
- **Launch Readiness Mode**: When target date is ≤2 weeks away or context indicates imminent launch

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

1. **Research Phase** - Gather current project/launch information:
   - **Store Scope**: If store ID is provided (not "all" or empty), focus on that specific store. If "all" or empty, search across all stores for the retailer
   - Search Jira for open tickets and blockers related to $ARGUMENTS deployment/launch for the specified store
   - If store ID is specific: Look for the store ID (second argument) in ticket descriptions, labels, or fields
   - Search documentation (Confluence, Google Docs) for $ARGUMENTS project status, launch plans, and store-specific details
   - Search Slack for recent updates, issues, and discussions about this deployment/launch
   - Identify current status:
     - Project health (Green/Yellow/Red) for ongoing work
     - Launch readiness (GO/NO-GO/CONDITIONAL GO) if approaching launch
   - Understand timeline: target dates, milestones, launch date
   - Find critical path items blocking progress or launch
   - Identify active risks, missing artifacts, or unresolved dependencies

2. **Context Detection & Analysis Phase** - Determine the focus:
   - **Detect Context** based on research findings:
     - If target date ≤2 weeks away → **Launch Readiness Mode**
     - If research mentions "launch," "go-live," "launch date," "ribbon cutting" → **Launch Readiness Mode**
     - If target date >2 weeks away → **Project Health Mode**
     - If research mentions "status," "health," "blocked," "delayed" → **Project Health Mode**
   - **Assess Current State**:
     - For Project Health Mode: Why is it Green/Yellow/Red? What's blocking Green?
     - For Launch Readiness Mode: Why is it GO/NO-GO/CONDITIONAL GO? What's blocking launch?
   - Identify specific actions needed
   - Determine critical path items that must be completed
   - Keep analysis brief - focus on actionable next steps only

3. **Task List Generation** - Create a SHORT, SPECIFIC, ACTION-FOCUSED list using this structure:

Reference the task-list.md file in this directory for the complete template structure.

### **CRITICAL**: Content Restrictions
- This skill can ONLY contain information from Tasks 1 and 2 below
- Do NOT include: comprehensive workstream assessments, detailed risk analysis, contingency plans, historical context, or any other sections
- This is intended to be a brief, actionable list - NOT a comprehensive report
- Focus ONLY on critical items needed to achieve Green status OR launch readiness

### Sections to Complete (ONLY THESE TWO):

#### 1. Status Overview
- **Retailer Name**: Name of the retailer
- **Store ID**: Internal Caper store ID if provided (ex: prod-clarks-1), or "All Stores"
- **Store Location**: City, State if available from research
- **Target Date**: Specific date found in research (launch date or milestone date)
- **Days Until Target**: Calculate based on current date
- **Current Status**:
  - For Project Health Mode: Green / Yellow / Red
  - For Launch Readiness Mode: GO / NO-GO / CONDITIONAL GO
- **Brief Justification**: 1-2 sentences explaining why this status

#### 2. Critical Action Items (Must Complete By [DATE])
- **List ONLY the critical items** that must be completed to achieve Green status OR launch readiness
  - For each item: Describe specific, actionable steps that must be taken
  - Include owners or responsible parties when possible
  - Include target completion dates
  - Keep items concise and action-oriented
  - List as many as necessary

4. **Output Format** - Create a Google Doc with the task list:
   - First, create the task list content in markdown format with clear sections
   - Format as a well-structured markdown document
   - Replace ALL [] placeholders with actual information
   - Add specific dates, ticket numbers, store IDs (if applicable), and concrete details
   - Include source references where applicable (Jira tickets, Slack threads, etc.)
   - Make all action items specific and actionable
   - Document title format:
     - **If store ID provided**: `Green Todo - [Retailer Name] [store-id] ([Month] [Day] [Year])`
     - **If no store ID**: `Green Todo - [Retailer Name] ([Month] [Day] [Year])`
   - Example titles:
     - `Green Todo - Clarks prod-clarks-1 (Feb 26 2026)`
     - `Green Todo - HGG (Feb 8 2026)`

5. **Google Doc Creation** - CRITICAL: Create Google Doc using md2doc:
   - First, save the markdown content to a temporary file in `/tmp/` directory
   - File naming with context-aware naming:
     - **If store ID provided**: `/tmp/green-todo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
     - **If no store ID**: `/tmp/green-todo-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Get the current time in 24-hour clock format with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - Then upload to Google Docs using the md2doc upload script:
     ```bash
     export PATH="$HOME/.local/bin:$PATH" && cd ~/.claude/plugins/marketplaces/instacart/md2doc/skills/md2doc/scripts/ && uv run python upload-gdoc.py "/tmp/green-todo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md" --title "Green Todo - [Retailer Name] [store-id] ([Month] [Day] [Year])"
     ```
   - After upload completes, inform the user of the Google Doc URL
   - Clean up the temporary markdown file after successful upload

## Research Tools Available

Use these tools to gather information:
- **Glean Search**: Search internal company documentation
- **Glean Chat**: Ask questions about the retailer's deployment/launch status
- **Grep/Glob**: Search local codebase and documentation
- **Read**: Read specific files with deployment/launch information

## Output Requirements

- **The output document must not exceed 4,000 words**
- **CRITICAL**: The output can ONLY contain Tasks 1 and 2
- **CRITICAL**: Keep the task list SHORT, SPECIFIC, and ACTION-FOCUSED
- This is NOT a comprehensive report - focus ONLY on critical items
- The task list must be concise and actionable
- Focus on the specific store (if store ID provided) or retailer (if no store ID)
- All [] brackets must be filled with real data
- Include specific dates, not placeholders like [DATE]
- Each action item should be clear and specific
- Include owners or responsible parties when possible
- Be realistic about timelines and requirements
- Focus only on what's needed to achieve Green status OR launch readiness
- Do NOT include comprehensive workstream assessments, detailed risk analysis, contingency plans, historical context, or any other sections
- **MUST create a Google Doc** - Do not just output to console
- **Document title format**:
  - With store ID: `Green Todo - [Retailer Name] [store-id] ([Month] [Day] [Year])`
  - Without store ID: `Green Todo - [Retailer Name] ([Month] [Day] [Year])`
  - Example: `Green Todo - Clarks prod-clarks-1 (Feb 26 2026)`
  - Avoid special characters like apostrophes, colons, or parentheses in retailer names that could cause API errors
- **Temporary file naming**:
  - With store ID: `green-todo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
  - Without store ID: `green-todo-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
  - Store ID: Internal Caper store ID (ex: prod-clarks-1)
  - Time format: 24-hour clock with timezone indicated (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
  - Saved to `/tmp/` directory during upload process
- After successful upload, provide the user with the Google Doc URL
- Clean up temporary markdown file after upload

## Critical Success Factors

- **Context-Aware**: Automatically adapt between project health and launch readiness focus
- **Store-Specific**: Focus on the specific store if store ID is provided
- **Actionable**: Every item must be a clear, specific action that can be taken
- **Brief**: This is a todo list, not a detailed report - keep it concise
- **Realistic**: Include only what's truly critical
- **Timely**: Include target dates for each critical item
- **Owned**: Identify who is responsible for each item when possible

Generate a brief, focused green-todo task list for **$ARGUMENTS** (retailer and optional store ID) and create it as a Google Doc using the md2doc plugin.
