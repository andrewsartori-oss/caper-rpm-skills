# Green-Todo: Tasks

## Skill's Purpose
This file contains actionable tasks to achieve project health (Green status) OR launch readiness for a specific retailer's Caper cart store deployment.

**Context-Aware Objectives:**
- **Project Health Mode**: Move project from Yellow/Red to Green status (on-track for deployment)
- **Launch Readiness Mode**: Complete critical items needed to launch a specific store

**Status Indicators:**
- Green Status: Project is on track to deploy on-schedule
- Yellow Status: Project has risks that may delay scheduled deployment
- Red Status: Project has serious risks that will delay scheduled deployment
- GO/NO-GO/CONDITIONAL GO: Launch readiness assessment

## **CRITICAL** ##
- This skill is intended to be a short, specific, action-focused list of items to complete.
- This skill cannot contain any information besides Tasks 1 and 2
- This skill must focus on either:
  - Getting the project to Green status for next deployment, OR
  - Getting the specific store ready to launch
- The store ID can be provided in THREE formats:
  1. **Caper internal store ID** (ex: allegiance-prod-1, prod-clarks-1, prod-hgg-1)
  2. **Retailer store number/ID** (ex: 530, 1234)
  3. **Store/location name** (ex: hastings-on-hudson, times-square)
- If store ID is "all" or empty, search across all stores for that retailer
- If a non-internal format is provided, resolve it to the internal Caper ID first before searching

## Important: SKILL output
- The green-todo output must be an .md file that must follow this naming convention:
  - **If store ID provided**: green-todo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md
  - **If no store ID**: green-todo-[retailer]-[MM]-[DD]-[YYYY]-[Time].md
  - The file name includes the time when it was created, thus there can be multiple files created on the same day without having to delete a previous one.
  - Time should be created as 24 hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
- The file directory where these files are saved must follow this naming convention: green-todo [retailer-name].
  - If the file directory already exists, do not create another one, just save the file to that directory.
- The output file must not exceed 4,000 words

---

## Retailer: [to be determined by the user]
## Store ID: [to be determined by the user - can be Caper internal ID, retailer store number, or location name, or "all"]

---

## Your Tasks

1. Status Overview
    - Retailer Name: [Retailer Name]
    - Store ID: [Internal Caper store ID if provided, or "All Stores"]
    - Store Location: [City, State if available]
    - Target Date: [MM/DD/YYYY - launch date or milestone date]
    - Days Until Target: [Number if applicable]
    - Current Status: [Green/Yellow/Red for project health OR GO/NO-GO/CONDITIONAL GO for launch readiness]
    - Brief Justification: [Why this status - 1-2 sentences]

2. Critical Action Items (Must Complete By [DATE])
    - List critical items needed to achieve Green status OR launch readiness (list as many as necessary)
        1. [Critical Item 1]: [Actions that must be taken]
            - Owner: [Name/Team]
            - Target Date: [MM/DD/YYYY]
        2. [Critical Item 2]: [Actions that must be taken]
            - Owner: [Name/Team]
            - Target Date: [MM/DD/YYYY]
