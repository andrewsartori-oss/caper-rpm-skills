---
name: blindspot
description: Identify tasks committed to or assigned but not completed or accessed in 24+ hours for a specific retailer's Caper cart store deployment
argument-hint: [retailer-name] [store-id]
context: fork
agent: general-purpose
---

# Blindspot Task Identifier

Surface tasks that the RPM has committed to doing or is tasked with doing but hasn't completed or accessed in the last 24 hours for the specified retailer's Caper cart deployment.

## Retailer and Store ID
**Target Retailer**: $ARGUMENTS (first argument is retailer name, second argument is store ID)
- **Store ID Format**: Internal Caper store ID (ex: prod-clarks-1)
- **All Stores Option**: If second argument is "all" or left empty, search across all stores for that retailer

## Instructions

1. **Research Phase** - Search for stale tasks and commitments:
   - **CRITICAL FILTERING REQUIREMENT**: ONLY include tasks explicitly related to the specified retailer (first argument). EXCLUDE all tasks from other retailers.

   - **Retailer Filtering**:
     - Tasks MUST mention the retailer name (first argument) in the ticket title, description, labels, or related fields
     - If searching for "Clarks", ONLY include Clarks-related tasks
     - EXCLUDE tasks for other retailers like Kroger, HGG, Albertsons, etc. even if they are stale

   - **Store Scope**:
     - If store ID is provided (not "all" or empty): ONLY include tasks for that specific store (ex: prod-clarks-1)
     - If "all" or empty: Include tasks for ANY store under that retailer banner (prod-clarks-1, prod-clarks-2, etc.)

   - **Search Sources** (filter by retailer in ALL searches):
     - Search Jira for tickets assigned to you that:
       - Haven't been updated in 24+ hours AND
       - Explicitly mention the retailer name (first argument) OR
       - Include the store ID (if specified) in ticket fields/labels
     - Search Slack for commitments or promises you made about [retailer-name] that haven't been followed up on in 24+ hours
     - Search emails for action items related to [retailer-name] that you committed to but haven't addressed in 24+ hours
     - Search meeting notes and documentation for tasks assigned to you for [retailer-name] that are stale (24+ hours)

   - **What to Look For** (retailer-specific only):
     - Blocked tickets requiring your input or action for this retailer
     - Follow-ups you promised to stakeholders about this retailer
     - Status updates you committed to providing about this retailer

2. **Analysis Phase** - Categorize and prioritize blindspots (retailer-specific only):
   - **CRITICAL**: Verify ALL tasks in your analysis are for the specified retailer. Remove any tasks from other retailers.
   - Determine which stale tasks are critical to this retailer's project success
   - Identify which blindspots could become blockers for this retailer if not addressed
   - Assess the risk level of each neglected task (Critical/Medium/Low) in context of this retailer's deployment
   - Calculate how overdue each task is (days/hours since last action)
   - Understand why these tasks fell through the cracks (capacity, dependencies, etc.)
   - Prioritize based on impact to this retailer's project timeline and stakeholder expectations
   - **FINAL CHECK**: Before generating report, ensure zero tasks from other retailers are included

3. **Report Generation** - Create the blindspot report using this structure:

Reference the task-list.md file in this directory for the complete report template structure.

### Report Sections to Complete:

#### 1. Overview
- **Project Executive Summary**: Brief overview of the $ARGUMENTS project current state
- **Current Project Status**: Green, Yellow, or Red
- **Target**: Green by [specific date based on research]
- **Status Change**: Context of how blindspots are affecting project status

#### 2. Blindspot Task Checklist (Stale 24+ Hours)
- **Critical Path Blindspots**: Tasks you committed to that are critical and haven't been touched in 24+ hours
  - For each task: Describe what was committed, when, to whom, and what action is needed NOW
  - Include Jira ticket numbers, Slack thread links, or email references
  - Add specific due dates and who is waiting on you

- **Risk Management Blindspots**: Promised actions related to risks that haven't been addressed in 24+ hours
  - For each risk: Describe the commitment made, why it's stale, and immediate action needed

#### 3. Complete Blindspot Analysis

**Critical Blindspots (24+ Hours Stale)**
1. Task: Name and description
2. Task: Committed To (person/team expecting action)
3. Task: Committed Date/Time
4. Task: Hours Overdue
5. Task: Why This is Critical
6. Task: Immediate Action Required (Today)
7. Task: Reference (Jira ticket, Slack link, email, meeting notes)

**Medium Priority Blindspots (24+ Hours Stale)**
1. Task: Name and description
2. Task: Committed To (person/team)
3. Task: Committed Date/Time
4. Task: Hours Overdue
5. Task: Why This Matters
6. Task: Action Required (This Week)
7. Task: Reference (Jira ticket, Slack link, etc.)

**Low Priority Blindspots (24+ Hours Stale)**
1. Task: Name and description
2. Task: Committed To (person/team)
3. Task: Hours Overdue
4. Task: Action Required
5. Task: Reference

#### 4. Recovery Action Plan
Create specific action items to address blindspots immediately:
- **Today's Actions**: What must be done today to get back on track
  - Action Item 1 with owner and deadline
  - Action Item 2 with owner and deadline
- **This Week's Actions**: What must be done this week to clear blindspots
  - Action Item 1 with owner and deadline
  - Action Item 2 with owner and deadline
- **Communication Plan**: Who needs to be notified about delays or status changes
  - Stakeholder 1: What to communicate
  - Stakeholder 2: What to communicate

4. **Output Format** - Save the report as a markdown file:
   - Create a markdown file named: `blindspot-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - The file name includes the time when it was created
   - This allows multiple files to be created on the same day without deleting previous ones
   - Save the file in the "blindspot [retailer]" folder on the Desktop
   - Format as a well-structured markdown document with proper headings, lists, and emphasis
   - Include all research findings with specific details and references
   - Replace ALL [] placeholders with actual information
   - Add specific dates, times, ticket numbers, links, and concrete details
   - Include source references (Jira tickets, Slack thread URLs, email subjects, meeting note docs)
   - Highlight urgency and immediate actions needed

5. **File Creation** - CRITICAL: Check if directory exists, then create the markdown file:
   - First, check if the directory exists: `/Users/andrewsartori/Desktop/blindspot [retailer]/`
   - If it doesn't exist, create it: `mkdir -p "/Users/andrewsartori/Desktop/blindspot [retailer]"`
   - If it exists, use the existing directory (do NOT create another one)
   - Get the current time in 24-hour clock format with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - Then save the file to: `/Users/andrewsartori/Desktop/blindspot [retailer]/blindspot-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Example: For HGG on Feb 19, 2026 at 8:00 PM EST: `/Users/andrewsartori/Desktop/blindspot HGG/blindspot-HGG-02-19-2026-2000EST.md`
   - Content: Complete formatted report in markdown
   - After writing the file, inform the user of the exact file location

6. **Notification Preparation** - Include at the end of the markdown file:
   - Draft messages for key stakeholders about delayed tasks
   - Suggest appropriate timing for sending status updates
   - Recommend escalation if needed for critical blindspots

## Research Tools Available

Use these tools to gather information:
- **Glean Search**: Search internal company documentation, Jira tickets, emails
- **Glean Chat**: Ask about task status, commitments, and updates for the retailer
- **Grep/Glob**: Search local files for task references
- **Read**: Read specific files with task information

## Search Strategy

**CRITICAL**: All searches MUST filter by retailer name to ensure only relevant tasks are included.

Focus your searches on finding (retailer-specific only):
- Jira: "assigned to me" + "[retailer-name]" + "updated:>24 hours ago"
  - Example: For Clarks, search: "assigned to me Clarks updated:>24 hours ago"
  - If store ID provided, also include: "[store-id]" (ex: "prod-clarks-1")
- Slack: Messages where you said "I will" or "I'll" or "I can" AND mentioned "[retailer-name]"
  - Example: "I'll follow up" + "Clarks" in the same message thread
- Email: Your sent emails with "action item" or "I'll follow up" AND "[retailer-name]" mentioned
- Meeting notes: Your name + "owner" or "responsible for" + "[retailer-name]"
- Open threads: Tickets/threads where someone is waiting for your response about [retailer-name]

**Verification**:
- After gathering results, verify each task explicitly mentions the retailer name
- Remove any tasks that are generic RPM work or related to other retailers
- If searching for "Clarks", the final list should contain ZERO Kroger, HGG, or other retailer tasks

## Output Requirements

- **CRITICAL**: The report must ONLY include tasks for the specified retailer (first argument)
- If report includes tasks from other retailers, that is an ERROR - remove them
- The report must be specific and actionable
- All [] brackets must be filled with real data
- Include specific times (not just dates) when tasks went stale
- Include direct links to Jira tickets, Slack threads, email subjects
- Provide evidence of commitments made (quote the message/ticket where you committed)
- Calculate exact hours overdue for each task
- Be honest about capacity and why tasks fell through the cracks
- Prioritize immediate actions for today
- Each task in the report should clearly mention the retailer name to demonstrate relevance
- **MUST create a markdown file** - Do not just output to console
- **File naming convention**: `blindspot-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
  - Time format: 24-hour clock with timezone indicated (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
  - This allows multiple files per day without deleting previous versions
- **Folder naming convention**: `blindspot [retailer]`
- **Save location**: `/Users/andrewsartori/Desktop/blindspot [retailer]/`
- If the retailer-specific folder exists, use it (do NOT create another one)
- If it doesn't exist, create it
- Inform the user of the exact file location after creation
- Include stakeholder notification drafts at the end of the report

Generate the complete blindspot report for **$ARGUMENTS** and save it as a markdown file in a Desktop folder named "blindspot [retailer]".
