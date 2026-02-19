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
   - **Store Scope**: If store ID is provided (not "all" or empty), focus on that specific store. If "all" or empty, search across all stores for the retailer
   - Search Jira for tickets assigned to you related to $ARGUMENTS that haven't been updated in 24+ hours
   - If store ID is specific: Look for the store ID (second argument) in ticket descriptions, labels, or fields
   - Search Slack for commitments or promises you made about $ARGUMENTS that haven't been followed up on in 24+ hours
   - Search emails for action items related to $ARGUMENTS that you committed to but haven't addressed in 24+ hours
   - Search meeting notes and documentation for tasks assigned to you for $ARGUMENTS that are stale (24+ hours)
   - Look for blocked tickets that require your input or action
   - Identify follow-ups you promised to stakeholders that haven't been completed
   - Find status updates you committed to providing but haven't sent

2. **Analysis Phase** - Categorize and prioritize blindspots:
   - Determine which stale tasks are critical to project success
   - Identify which blindspots could become blockers if not addressed
   - Assess the risk level of each neglected task (Critical/Medium/Low)
   - Calculate how overdue each task is (days/hours since last action)
   - Understand why these tasks fell through the cracks (capacity, dependencies, etc.)
   - Prioritize based on impact to project timeline and stakeholder expectations

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

Focus your searches on finding:
- "assigned to me" + $ARGUMENTS + "updated:>24 hours ago" (Jira)
- Messages where you said "I will" or "I'll" or "I can" related to $ARGUMENTS (Slack)
- Your sent emails with "action item" or "I'll follow up" for $ARGUMENTS (Email search)
- Meeting notes with your name + "owner" or "responsible for" + $ARGUMENTS
- Any open threads or tickets where someone is waiting for your response

## Output Requirements

- The report must be specific and actionable
- All [] brackets must be filled with real data
- Include specific times (not just dates) when tasks went stale
- Include direct links to Jira tickets, Slack threads, email subjects
- Provide evidence of commitments made (quote the message/ticket where you committed)
- Calculate exact hours overdue for each task
- Be honest about capacity and why tasks fell through the cracks
- Prioritize immediate actions for today
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
