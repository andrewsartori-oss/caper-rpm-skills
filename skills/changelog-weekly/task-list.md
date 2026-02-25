# Changelog-Weekly: Tasks

## Skill's Purpose
This file contains the the tasks to be completed by the changelog-weekly SKILL. Those tasks include determining what changed in the project from the past week, focused on only the following areas:
- New/Updated Risks
- New/Updated Assumptions
- New/Updated Issues
- New/Updated Decisions
- New/Updated Dependencies
- New/Update Project Deployment Dates
- New/Updated Project Scope

## **CRITICAL** ##
- This skill must present a brief overview of each of the changes.
- If there are no changes for a task listed beneath Task 2. Project Changes, then simply state "No changes this week."
- The store ID can be provided in THREE formats:
  1. **Caper internal store ID** (ex: allegiance-prod-1, prod-clarks-1, prod-hgg-1)
  2. **Retailer store number/ID** (ex: 530, 1234)
  3. **Store/location name** (ex: hastings-on-hudson, times-square)
- If store ID is "all" or empty, search across all stores for that retailer
- If a non-internal format is provided, resolve it to the internal Caper ID first before searching

## Important: SKILL output
- The changelog-weekly output must be an .md file that must follow this naming convention: changelog-[retailer]-[MM]-[DD]-[YYYY]-[Time].md
    - The file name includes the time when it was created, thus there can be multiple files created on the same day without having to delete a previous one.
    - Time should be created as 24 hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
- The file directory where these files are saved must follow this naming convention: changelog [retailer-name].
    - If the file directory already exists, do not create another one, just save the file to that directory.
- The output file must not exceed 5,000 words

---

## Retailer: [to be determined by the user]
## Store ID: [to be determined by the user - can be Caper internal ID, retailer store number, or location name, or "all"]

---

## Your Tasks

1. Changelog Time Period
    - [Current Date subtract 7 days] -- [Current Date]

2. Project Changes
    1. New or Updated Risks 
    2. New or Updated Assumptions
    3. New or Updated Issues
    4. New or Updated Decisions
    5. New or Updated Dependencies
    6. New or Updated Project Deployment Dates
    7. New or Updated Project Scope
    8. Other Critical Project Changes (only CRITICAL changes)