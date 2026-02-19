---
name: launch-todo
description: Generate an actionable task list to launch a specific store for a specific retailer's Caper cart deployment
argument-hint: [retailer-name] [store-id]
context: fork
agent: general-purpose
---

# Launch-Todo Task List Generator

Generate a focused, actionable task list for launching a specific store for the specified retailer's Caper cart deployment.

## Retailer and Store ID
**Target Retailer**: $ARGUMENTS (first argument is retailer name, second argument is store ID - internal Caper ID, ex: prod-clarks-1)

## Instructions

1. **Research Phase** - Gather current store launch information:
   - Search Jira for open tickets and blockers related to $ARGUMENTS store launch
   - Search documentation (Confluence, Google Docs) for $ARGUMENTS store launch plans and status
   - Search Slack for recent updates, issues, and discussions about this specific store launch
   - Look for the store ID (second argument) in documentation to find store-specific information
   - Identify current launch readiness status (GO/NO-GO/CONDITIONAL GO)
   - Understand target launch date for this store
   - Find critical items blocking or required for launch
   - Identify missing artifacts, unresolved dependencies, or open issues for this store

2. **Analysis Phase** - Determine what's needed to launch this store:
   - Assess current launch readiness for this specific store
   - Identify the specific actions needed to achieve launch readiness
   - Determine critical items that must be completed before launch
   - Find target launch date for this store
   - Keep analysis brief - focus on actionable next steps only

3. **Task List Generation** - Create a SHORT, SPECIFIC, ACTION-FOCUSED list using this structure:

Reference the task-list.md file in this directory for the complete template structure.

### **CRITICAL**: Content Restrictions
- This skill can ONLY contain information from Tasks 1 and 2 below
- Do NOT include: comprehensive workstream assessments, detailed risk analysis, contingency plans, historical context, or any other sections
- This is intended to be a brief, actionable list - NOT a comprehensive launch readiness report
- Focus ONLY on what's needed to launch this specific store

### Sections to Complete (ONLY THESE TWO):

#### 1. Store Launch Status
- **Retailer Name**: Name of the retailer
- **Store ID**: Internal Caper store ID (second argument, ex: prod-clarks-1)
- **Store Location**: City, State if available from research
- **Target Launch Date**: Specific date found in research for this store
- **Days Until Launch**: Calculate based on current date
- **Current Launch Readiness**: GO / NO-GO / CONDITIONAL GO (with brief justification)

#### 2. Launch Checklist (Must Complete By [DATE])
- **Critical Items for Launch**: List ONLY the critical items that must be completed to launch this store
  - For each item: Describe specific, actionable steps that must be taken
  - Include owners or responsible parties when possible
  - Include target completion dates
  - Keep items concise and action-oriented
  - List as many as necessary to launch this store

4. **Output Format** - Save the task list as a markdown file:
   - Create a markdown file named: `launch-todo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
   - The file name includes the store ID and the time when it was created
   - This allows multiple files to be created on the same day without deleting previous ones
   - Save the file in the "launch-todo [retailer]" folder on the Desktop
   - Format as a well-structured markdown document with clear sections
   - Replace ALL [] placeholders with actual information
   - Add specific dates, ticket numbers, store IDs, and concrete details
   - Include source references where applicable (Jira tickets, Slack threads, etc.)
   - Make all action items specific and actionable

5. **File Creation** - CRITICAL: Check if directory exists, then create the markdown file:
   - First, check if the directory exists: `/Users/andrewsartori/Desktop/launch-todo [retailer]/`
   - If it doesn't exist, create it: `mkdir -p "/Users/andrewsartori/Desktop/launch-todo [retailer]"`
   - If it exists, use the existing directory (do NOT create another one)
   - Get the current time in 24-hour clock format with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - Then save the file to: `/Users/andrewsartori/Desktop/launch-todo [retailer]/launch-todo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
   - Example: For Clark's store prod-clarks-1 on Feb 19, 2026 at 8:00 PM EST: `/Users/andrewsartori/Desktop/launch-todo Clarks/launch-todo-Clarks-prod-clarks-1-02-19-2026-2000EST.md`
   - Content: Complete formatted task list in markdown (ONLY Tasks 1 and 2)
   - After writing the file, inform the user of the exact file location

## Research Tools Available

Use these tools to gather information:
- **Glean Search**: Search internal company documentation
- **Glean Chat**: Ask questions about the store's launch status
- **Grep/Glob**: Search local codebase and documentation
- **Read**: Read specific files with launch information

## Output Requirements

- **CRITICAL**: The output can ONLY contain Tasks 1 and 2
- **CRITICAL**: Keep the task list SHORT, SPECIFIC, and ACTION-FOCUSED
- This is NOT a comprehensive launch readiness report - focus ONLY on critical items to launch this store
- The task list must be concise and actionable
- Focus on this specific store (identified by store ID)
- All [] brackets must be filled with real data
- Include specific dates, not placeholders like [DATE]
- Each action item should be clear and specific
- Include owners or responsible parties when possible
- Be realistic about timelines and requirements
- Focus only on what's needed to launch this specific store
- Do NOT include comprehensive workstream assessments, detailed risk analysis, contingency plans, historical context, or any other sections
- **MUST create a markdown file** - Do not just output to console
- **File naming convention**: `launch-todo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
  - Store ID: Internal Caper store ID (ex: prod-clarks-1)
  - Time format: 24-hour clock with timezone indicated (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
  - Example: `launch-todo-Clarks-prod-clarks-1-02-19-2026-2000EST.md`
  - This allows multiple files per day without deleting previous versions
- **Folder naming convention**: `launch-todo [retailer]`
- **Save location**: `/Users/andrewsartori/Desktop/launch-todo [retailer]/`
- If the retailer-specific folder exists, use it (do NOT create another one)
- If it doesn't exist, create it
- Inform the user of the exact file location after creation

## Critical Success Factors

- **Store-Specific**: Focus on the specific store identified by the store ID argument
- **Actionable**: Every item must be a clear, specific action that can be taken
- **Brief**: This is a todo list, not a detailed report - keep it concise
- **Realistic**: Include only what's truly critical for launch
- **Timely**: Include target dates for each critical item
- **Owned**: Identify who is responsible for each item when possible

Generate a brief, focused launch-todo task list for **$ARGUMENTS** (retailer and store ID) and save it as a markdown file in a Desktop folder named "launch-todo [retailer]".
