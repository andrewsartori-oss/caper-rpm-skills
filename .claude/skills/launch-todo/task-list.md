# Launch-Todo: Tasks

## Skill's Purpose
This file contains only the tasks an RPM needs to complete in order to launch a specific store for a specific retailer.
- This is a short, action-focused todo list for launching a specific store
- Focus on the next scheduled store deployment using the internal Caper store ID

## **CRITICAL** ##
- This skill is intended to be a short, specific, action-focused list of items to complete.
- This skill cannot contain any information besides Tasks 1 and 2
- This skill must focus on launching the specific store (by Caper ID) at the specified retailer
- The store ID must be the internal Caper ID (ex: prod-hgg-1, prod-clarks-1, etc.)

## Important: SKILL output
- The launch-todo output must be an .md file that must follow this naming convention: launch-todo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md
    - The file name includes the store ID and the time when it was created, thus there can be multiple files created on the same day without having to delete a previous one.
    - Time should be created as 24 hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
- The file directory where these files are saved must follow this naming convention: launch-todo [retailer-name].
    - If the file directory already exists, do not create another one, just save the file to that directory.

---

## Retailer: [to be determined by the user]
## Store ID: [to be determined by the user - internal Caper ID]

---

## Your Tasks

1. Store Launch Status
    - Retailer Name: [Retailer Name]
    - Store ID: [Internal Caper store ID - ex: prod-clarks-1]
    - Store Location: [City, State if available]
    - Target Launch Date: [MM/DD/YYYY]
    - Days Until Launch: [Number]
    - Current Launch Readiness: [GO / NO-GO / CONDITIONAL GO]

2. Launch Checklist (Must Complete By [DATE])
    - Critical Items for Launch (list as many as necessary to launch this store)
        1. [Critical Item 1]: [Actions that must be taken]
            - Owner: [Name/Team]
            - Target Date: [MM/DD/YYYY]
        2. [Critical Item 2]: [Actions that must be taken]
            - Owner: [Name/Team]
            - Target Date: [MM/DD/YYYY]
