# Green-Todo: Tasks

## Skill's Purpose
This file contains only the tasks an RPM needs to complete in order to move their project to Green Status
- Green Status: Project is on track to deploy on-schedule
- Yellow Status: Project has risks that may delay scheduled deployment
- Red Status: Project has serious risks that will delay scheduled deployment

## **CRITICAL** ##
- This skill is intended to be a short, specific, action-focused list of items to complete.
- This skill cannot contain any information besides Tasks 1 and 2
- This skill must focus on getting the project to green for the next caper deployment at the next scheduled store.
    - This store must be provided as an argument
    - The store ID can be provided in THREE formats:
      1. **Caper internal store ID** (ex: allegiance-prod-1, prod-clarks-1, prod-hgg-1)
      2. **Retailer store number/ID** (ex: 530, 1234)
      3. **Store/location name** (ex: hastings-on-hudson, times-square)
    - If store ID is "all" or empty, search across all stores for that retailer
    - If a non-internal format is provided, resolve it to the internal Caper ID first before searching

## Important: SKILL output
- The green-todo output must be an .md file that must follow this naming convention: green-todo-[retailer]-[MM]-[DD]-[YYYY]-[Time].md 
    - The file name includes the time when it was created, thus there can be multiple files created on the same day without having to delete a previous one.
    - Time should be created as 24 hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
- The file directory where these files are saved must follow this naming convention: green-todo [retailer-name]. 
    - If the file directory already exists, do not create another one, just save the file to that directory.
- The output file must not exceed 5,000 words

---

## Retailer: [to be determined by the user]
## Store ID: [to be determined by the user - can be Caper internal ID, retailer store number, or location name, or "all"]

---

## Your Tasks

1. Project Status
    - Current Project Status: [Green, Yellow, or Red]
    - Target: Green by [DATE]

2. Green Status Checklist (Must Have By [DATE])
    - Critical Path Items to GREEN (list as many as necessary to move project to status GREEN)
        1. [Critical Path - Item 1]: [Actions that must be taken]