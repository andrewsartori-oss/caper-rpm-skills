---
name: green-todo
description: Generate an actionable task list to move a specific retailer's next scheduled Caper cart store deployment to Green status
argument-hint: [retailer-name] [store-id]
context: fork
agent: general-purpose
---

# Green-Todo Task List Generator

Generate a focused, actionable task list for moving the specified retailer's next scheduled Caper cart store deployment to Green status.

## Retailer and Store ID
**Target Retailer**: $ARGUMENTS (first argument is retailer name, second argument is store ID)
- **Store ID Format**: Internal Caper store ID (ex: prod-clarks-1)
- **All Stores Option**: If second argument is "all" or left empty, search across all stores for that retailer

## Instructions

1. **Research Phase** - Gather current project information:
   - **Store Scope**: If store ID is provided (not "all" or empty), focus on that specific store. If "all" or empty, search across all stores for the retailer
   - Search Jira for open tickets and blockers related to $ARGUMENTS Caper deployment for the specified store
   - If store ID is specific: Look for the store ID (second argument) in ticket descriptions, labels, or fields
   - Search documentation (Confluence, Google Docs) for $ARGUMENTS project status and store-specific details
   - Search Slack for recent updates, issues, and discussions about $ARGUMENTS deployment for this specific store
   - Identify current project status (Green/Yellow/Red) for this store
   - Understand project timeline and target dates for this store
   - Find critical path items blocking Green status for this store
   - Identify active risks preventing Green status for this store

2. **Analysis Phase** - Determine what's needed to get to Green:
   - Assess current project status and why it's at that level
   - Identify the specific actions needed to move to Green status
   - Determine critical path items that must be completed
   - Set realistic target date for achieving Green status
   - Keep analysis brief - focus on actionable next steps only

3. **Task List Generation** - Create a SHORT, SPECIFIC, ACTION-FOCUSED list using this structure:

Reference the task-list.md file in this directory for the complete template structure.

### **CRITICAL**: Content Restrictions
- This skill can ONLY contain information from Tasks 1 and 2 below
- Do NOT include: risk analysis, contingency plans, historical context, or any other sections
- This is intended to be a brief, actionable list - NOT a comprehensive report
- Focus ONLY on what's needed to get to Green status

### Sections to Complete (ONLY THESE TWO):

#### 1. Project Status
- **Current Project Status**: Green, Yellow, or Red (with brief justification)
- **Target**: Green by [specific date based on research]

#### 2. Green Status Checklist (Must Have By [DATE])
- **Critical Path Items to GREEN**: List ONLY the critical items that must be completed to achieve Green status (list as many as necessary to move project to status GREEN)
  - For each item: Describe specific, actionable steps that must be taken
  - Include owners when possible
  - Include target completion dates
  - Keep items concise and action-oriented

4. **Output Format** - Save the task list as a markdown file:
   - Create a markdown file named: `green-todo-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - The file name includes the time when it was created
   - This allows multiple files to be created on the same day without deleting previous ones
   - Save the file in the "green-todo [retailer]" folder on the Desktop
   - Format as a well-structured markdown document with clear sections
   - Replace ALL [] placeholders with actual information
   - Add specific dates, ticket numbers, and concrete details
   - Include source references where applicable (Jira tickets, Slack threads, etc.)
   - Make all action items specific and actionable

5. **File Creation** - CRITICAL: Check if directory exists, then create the markdown file:
   - First, check if the directory exists: `/Users/andrewsartori/Desktop/green-todo [retailer]/`
   - If it doesn't exist, create it: `mkdir -p "/Users/andrewsartori/Desktop/green-todo [retailer]"`
   - If it exists, use the existing directory (do NOT create another one)
   - Get the current time in 24-hour clock format with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - Then save the file to: `/Users/andrewsartori/Desktop/green-todo [retailer]/green-todo-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Example: For HGG on Feb 8, 2026 at 8:00 PM EST: `/Users/andrewsartori/Desktop/green-todo HGG/green-todo-HGG-02-08-2026-2000EST.md`
   - Content: Complete formatted task list in markdown (ONLY Tasks 1 and 2)
   - After writing the file, inform the user of the exact file location

## Research Tools Available

Use these tools to gather information:
- **Glean Search**: Search internal company documentation
- **Glean Chat**: Ask questions about the retailer's deployment status
- **Grep/Glob**: Search local codebase and documentation
- **Read**: Read specific files with deployment information

## Output Requirements

- **The output file must not exceed 5,000 words**
- **CRITICAL**: The output can ONLY contain Tasks 1 and 2
- **CRITICAL**: Keep the task list SHORT, SPECIFIC, and ACTION-FOCUSED
- This is NOT a comprehensive report - focus ONLY on critical path items
- The task list must be concise and actionable
- All [] brackets must be filled with real data
- Include specific dates, not placeholders like [DATE]
- Each action item should be clear and specific
- Include owners or responsible parties when possible
- Be realistic about timelines and requirements
- Focus only on what's needed to achieve Green status
- Do NOT include risk analysis, contingency plans, historical context, or any other sections
- **MUST create a markdown file** - Do not just output to console
- **File naming convention**: `green-todo-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
  - Time format: 24-hour clock with timezone indicated (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
  - This allows multiple files per day without deleting previous versions
- **Folder naming convention**: `green-todo [retailer]`
- **Save location**: `/Users/andrewsartori/Desktop/green-todo [retailer]/`
- If the retailer-specific folder exists, use it (do NOT create another one)
- If it doesn't exist, create it
- Inform the user of the exact file location after creation

Generate a brief, focused green-todo task list for **$ARGUMENTS** and save it as a markdown file in a Desktop folder named "green-todo [retailer]".
