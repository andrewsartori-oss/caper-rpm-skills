# Launch-Checklist: Tasks

## Skill's Purpose
This file contains the 16 consolidated launch checklist items that MUST be validated and completed before a store can launch.
- Each item must be validated with evidence (Jira ticket, doc, Slack message, test result)
- Each item requires a status assessment: ✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown
- Focus on the specific store (by Caper ID) or all stores for the specified retailer

## **CRITICAL** ##
- This skill validates ALL 16 required launch checklist items
- Each item must have evidence of completion or clear blockers identified
- The skill generates a GO/NO-GO/CONDITIONAL GO recommendation based on completion status
- The store ID can be provided in THREE formats:
  1. **Caper internal store ID** (ex: allegiance-prod-1, prod-clarks-1, prod-hgg-1)
  2. **Retailer store number/ID** (ex: 530, 1234)
  3. **Store/location name** (ex: hastings-on-hudson, times-square)
- If store ID is "all" or empty, validate across all stores for that retailer
- If a non-internal format is provided, resolve it to the internal Caper ID first before searching

## Important: SKILL output
- The launch-checklist output must be an .md file that must follow this naming convention: launch-checklist-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md
    - The file name includes the store ID and the time when it was created, thus there can be multiple files created on the same day without having to delete a previous one.
    - Time should be created as 24 hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
- The file directory where these files are saved must follow this naming convention: launch-checklist [retailer-name].
    - If the file directory already exists, do not create another one, just save the file to that directory.
- The output file must not exceed 2,000 words
- Also save a Google document (or .webloc file) version of the MD file. Use the md2doc plugin to convert the .md file to a Google Doc.

---

## Retailer: [to be determined by the user]
## Store ID: [to be determined by the user - can be Caper internal ID, retailer store number, or location name, or "all"]

---

## For This Skill
- Use Glean to gather data every time — do not refer to past skill-generated .md or .webloc documents
- Review messages and replies sent in all Slack channels containing the [retailer-name] used as an argument for this skill

## Your Tasks

1. Launch Overview
    - Retailer Name: [Retailer Name]
    - Store ID: [Internal Caper store ID - ex: prod-clarks-1, or "All Stores"]
    - Store Location: [City, State if available]
    - Target Launch Date: [MM/DD/YYYY]
    - Report Generated: [MM/DD/YYYY at HH:MM timezone]
    - Overall Launch Readiness: ***[GO / NO-GO / CONDITIONAL GO]***

2. Launch Readiness Summary
    - Total Items: 16
    - Complete: [count] (✅)
    - In Progress: [count] (⚠️)
    - Not Started: [count] (❌)
    - Unknown: [count] (🔍)
    - Completion Percentage: [X%]

3. All 16 Checklist Items Status

List all 16 items with their current status indicator:

    1. ✅/⚠️/❌/🔍 **Electrical complete & signed off**
    2. ✅/⚠️/❌/🔍 **FC firmware updated & chargers tested**
    3. ✅/⚠️/❌/🔍 **All launch carts present**
    4. ✅/⚠️/❌/🔍 **HW accessories installed**
    5. ✅/⚠️/❌/🔍 **W&M passed for all launch carts**
    6. ✅/⚠️/❌/🔍 **3rd-party certification** (if required)
    7. ✅/⚠️/❌/🔍 **APs installed & verified per heatmap**
    8. ✅/⚠️/❌/🔍 **Checkout connectivity validated**
    9. ✅/⚠️/❌/🔍 **ZBC / beacons tested and passing**
    10. ✅/⚠️/❌/🔍 **Software & firmware versions aligned**
    11. ✅/⚠️/❌/🔍 **Store configs validated**
    12. ✅/⚠️/❌/🔍 **E2E testing completed & issues logged**
    13. ✅/⚠️/❌/🔍 **Cart placement confirmed**
    14. ✅/⚠️/❌/🔍 **Store & OTG training completed**
    15. ✅/⚠️/❌/🔍 **FSR/BA launch staffing plan confirmed**
    16. ✅/⚠️/❌/🔍 **Marketing complete OR documented**

4. Launch Checklist Status (All 16 Items)

For each of the 16 required items, provide the following information:

### Item 1: Electrical complete & signed off
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 2: FC firmware updated & chargers tested
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 3: All launch carts present
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 4: HW accessories installed
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 5: W&M passed for all launch carts
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 6: 3rd-party certification (if required)
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 7: APs installed & verified per heatmap
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 8: Checkout connectivity validated
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 9: ZBC / beacons tested and passing
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 10: Software & firmware versions aligned
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 11: Store configs validated
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 12: E2E testing completed & issues logged
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 13: Cart placement confirmed
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 14: Store & OTG training completed
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 15: FSR/BA launch staffing plan confirmed
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

### Item 16: Marketing complete OR documented
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]
