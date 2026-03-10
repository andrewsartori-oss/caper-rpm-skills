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
- **CRITICAL**: Use Glean to gather data every time and prioritize searching for, and using, the latest version of project documents. — do not refer to past skill-generated .md or .webloc documents.
- **CRITICAL - Slack Channel Review**: You must explicitly enumerate and search every Slack channel whose name contains the [retailer-name]. Do NOT rely only on broad keyword searches. Required process:
  1. Use Glean to find all Slack channels with the retailer name in the channel name (e.g., search `type:publicchannel [retailer-name]`)
  2. For each channel found, run a separate targeted Glean search using the `channel` filter for that specific channel name
  3. Do not skip any channel — missing a channel is unacceptable

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
    17. ✅/⚠️/❌/🔍 **Project Scope Document sign off**

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

### Item 17: Project Scope Document sign off
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Action Required: [If incomplete, what needs to be done]

---

5. Launch Checklist Task Reference

The following is the full list of launch tasks, organized by stage, to be validated for each store launch. Use this as the reference task list when assessing launch readiness.

### Pre Launch

| **#** | **Task** | **Owner / Team** |
| --- | --- | --- |
| 1 | Launch war room set up in Slack | RPM |
| 2 | Cart placement and setup confirmed | RPM |
| 3 | CM audit thresholds approved and configured in backend for the store | RPM |
| 4 | PODS ticket filed with Retailer Tooling team to enable new store for video inspector | RPM |
| 5 | Production DUMAC servers installed in store | External (Retailer) |
| 6 | Marketing signage approved | Marketing |
| 7 | Store retrofit – electrical upgrade complete | External (Retailer) |
| 8 | Store retrofit – WiFi upgrade complete | External (Retailer) |
| 9 | Cart delivery complete | HW Ops |
| 10 | Store retrofit – charging stations installed | External (Retailer) |
| 11 | Cart set-up complete | HW Ops |
| 12 | All carts upgraded to planned production software release | RPM |
| 13 | W&M certification complete | External (AFS) |
| 14 | Payment terminals configured | Support |
| 15 | Incentives enabled | RPM |
| 16 | Tablets procured for Cart Manager (2x) | External (Retailer) |
| 17 | Instabug connected to Slack war room | RPM |
| 18 | Production retailer PSO Jira dashboard created | RPM |
| 19 | Payments tested | Ops |
| 20 | Payments verified hitting retailer's backend | RPM |
| 21 | Cart Manager access provisioned | RPM |
| 22 | Caper Champions selected | Ops |
| 23 | Store team Store Admin barcode created | RPM |
| 24 | DS ticket created to add new store to Mode dashboard | RPM |
| 25 | Launch plan reviewed and signed off | RPM |
| 26 | E2E testing completed | Ops / Field QA |
| 27 | Carts and tablets charged before training | Ops |
| 28 | Customer (retailer) sign-off obtained | RPM |
| 29 | Store staff training round 1 completed | Operations |

### Launch Event

| **#** | **Task** | **Owner / Team** |
| --- | --- | --- |
| 30 | Friends & Family launch executed | RPM |
| 31 | Launch Slack update created – F&F | RPM |
| 32 | Store associate promotion training completed | Operations |
| 33 | Marketing signage installed – A-frame (2, 36x48) and standee (1, 24x60) near carts | Marketing |
| 34 | Marketing signage installed – cart corral | Marketing |
| 35 | Marketing signage installed – outdoor banner (15x3) | Marketing |
| 36 | Marketing signage installed – outdoor A-frame near carts (x3) | Marketing |
| 37 | Marketing signage installed – hanging sign (x2) | Marketing |
| 38 | Marketing signage installed – produce signs (x18) and instructional signs (x4) | Marketing |
| 39 | Marketing signage installed – standee at each entrance (x2) | Marketing |
| 40 | Marketing signage installed – bakery cling (x3) | Marketing |
| 41 | Marketing signage installed – aisle blades (2 per aisle) | Marketing |
| 42 | Marketing signage installed – freezer clings (every 3 doors) | Marketing |
| 43 | Marketing signage installed – checkout setup (hanging sign, standees, floor decals) | Marketing |
| 44 | Marketing signage installed – Caper bagging station | Marketing |
| 45 | Store staff training round 2 completed | Operations |
| 46 | Launch moment supplies purchased (balloons, coffee, donuts) | RPM |
| 47 | Launch Slack update created – full launch | RPM |
| 48 | Store launch executed | RPM |
| 49 | Launch report created | RPM |
| 50 | Caper project transition document created | RPM |
| 51 | Retro board created | RPM |