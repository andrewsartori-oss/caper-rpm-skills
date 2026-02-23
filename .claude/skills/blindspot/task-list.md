# Blindspot: Tasks

## Skill's Purpose
This file contains the structure for identifying tasks committed to or assigned but not completed or accessed in 24+ hours for a Caper RPM.
- Blindspots are tasks you've committed to doing but haven't touched in 24+ hours
- These tasks could become blockers if not addressed promptly
- Focus is on tasks stale for 24+ hours that need immediate attention

## **CRITICAL** ##
- This skill must identify tasks explicitly related to the specified retailer only
- Tasks MUST mention the retailer name in the ticket, description, or related fields
- Exclude all tasks from other retailers even if they are stale
- The store ID must be the internal Caper ID (ex: prod-clarks-1, prod-hgg-1, etc.)
- If store ID is "all" or empty, search across all stores for that retailer

## Important: SKILL output
- The blindspot output must be an .md file that must follow this naming convention: blindspot-[retailer]-[MM]-[DD]-[YYYY]-[Time].md
    - The file name includes the time when it was created, thus there can be multiple files created on the same day without having to delete a previous one.
    - Time should be created as 24 hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
- The file directory where these files are saved must follow this naming convention: blindspot [retailer-name].
    - If the file directory already exists, do not create another one, just save the file to that directory.
- The output file must not exceed 5,000 words

---

## Retailer: [to be determined by the user]
## Store ID: [to be determined by the user - internal Caper ID or "all"]

---

## Your Tasks

1. Overview
    - Project Executive Summary: [Brief overview of the retailer's project current state]
    - Current Project Status: [Green, Yellow, or Red]
    - Target: Green by [DATE]
    - Status Change: [Context of how blindspots are affecting project status]

2. Blindspot Task Checklist (Stale 24+ Hours)
    - Critical Path Blindspots (list tasks committed to that are critical and stale 24+ hours)
        1. [Critical Blindspot - Item 1]: [What was committed, when, to whom, and what action is needed NOW]
            - Jira Ticket: [ticket number]
            - Slack Thread: [link]
            - Committed Date/Time: [MM/DD/YYYY HH:MM timezone]
            - Hours Overdue: [number]
            - Waiting On You: [person/team name]
    - Risk Management Blindspots (list promised actions related to risks that are stale 24+ hours)
        1. [Risk Blindspot - Item 1]: [What commitment was made, why it's stale, immediate action needed]

3. Complete Blindspot Analysis
    - Critical Blindspots (24+ Hours Stale)
        1. Task: Name and description
        2. Task: Committed To (person/team expecting action)
        3. Task: Committed Date/Time
        4. Task: Hours Overdue
        5. Task: Why This is Critical
        6. Task: Immediate Action Required (Today)
        7. Task: Reference (Jira ticket, Slack link, email, meeting notes)

    - Medium Priority Blindspots (24+ Hours Stale)
        1. Task: Name and description
        2. Task: Committed To (person/team)
        3. Task: Committed Date/Time
        4. Task: Hours Overdue
        5. Task: Why This Matters
        6. Task: Action Required (This Week)
        7. Task: Reference (Jira ticket, Slack link, etc.)

    - Low Priority Blindspots (24+ Hours Stale)
        1. Task: Name and description
        2. Task: Committed To (person/team)
        3. Task: Hours Overdue
        4. Task: Action Required
        5. Task: Reference

4. Recovery Action Plan
    - Today's Actions: [What must be done today to get back on track]
        1. Action Item 1 with owner and deadline
        2. Action Item 2 with owner and deadline
    - This Week's Actions: [What must be done this week to clear blindspots]
        1. Action Item 1 with owner and deadline
        2. Action Item 2 with owner and deadline
    - Communication Plan: [Who needs to be notified about delays or status changes]
        1. Stakeholder 1: What to communicate
        2. Stakeholder 2: What to communicate
