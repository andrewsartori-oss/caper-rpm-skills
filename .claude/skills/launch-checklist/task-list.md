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
- The store ID must be the internal Caper ID (ex: prod-hgg-1, prod-clarks-1, etc.)
- If store ID is "all" or empty, validate across all stores for that retailer

## Important: SKILL output
- The launch-checklist output must be an .md file that must follow this naming convention: launch-checklist-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md
    - The file name includes the store ID and the time when it was created, thus there can be multiple files created on the same day without having to delete a previous one.
    - Time should be created as 24 hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
- The file directory where these files are saved must follow this naming convention: launch-checklist [retailer-name].
    - If the file directory already exists, do not create another one, just save the file to that directory.
- The output file must not exceed 5,000 words

---

## Retailer: [to be determined by the user]
## Store ID: [to be determined by the user - internal Caper ID or "all"]

---

## Your Tasks

1. Launch Overview
    - Retailer Name: [Retailer Name]
    - Store ID: [Internal Caper store ID - ex: prod-clarks-1, or "All Stores"]
    - Store Location: [City, State if available]
    - Target Launch Date: [MM/DD/YYYY]
    - Report Generated: [MM/DD/YYYY at HH:MM timezone]
    - Overall Launch Readiness: [GO / NO-GO / CONDITIONAL GO]

2. Launch Checklist Status (All 16 Items)

For each of the 16 required items, provide the following information:

### Item 1: Electrical complete & signed off
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [Link to Jira ticket, doc, Slack thread, or sign-off document]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [Fixed chargers on correct circuit/voltage; GFCI stable under ≥10‑cart load]
- Action Required: [If incomplete, what needs to be done]

### Item 2: FC firmware updated & chargers tested
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [Link to firmware version logs, charger test results]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [All launch ports tested and functional]
- Action Required: [If incomplete, what needs to be done]

### Item 3: All launch carts present
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [Cart inventory list, syncing status reports]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [Bolted, powered, and with no syncing issues]
- Action Required: [If incomplete, what needs to be done]

### Item 4: HW accessories installed
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [Installation photos, verification docs]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [All required accessories, e.g., bottom tray on all designated carts]
- Action Required: [If incomplete, what needs to be done]

### Item 5: W&M passed for all launch carts
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [W&M certification documents or scheduled inspector visit confirmation]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [All launch carts passed OR inspector visit scheduled and aligned with launch]
- Action Required: [If incomplete, what needs to be done]

### Item 6: 3rd-party certification (if required)
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown / N/A]
- Evidence: [Certification approval, scheduling confirmation]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [If required: Approved, scheduled, and owner confirmed]
- Action Required: [If incomplete, what needs to be done]

### Item 7: APs installed & verified per heatmap
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [AP installation verification, heatmap coverage reports]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [Front end / SCO covered per heatmap plan]
- Action Required: [If incomplete, what needs to be done]

### Item 8: Checkout connectivity validated
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [Connectivity test results, latency measurements]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [Order finalization latency & LTE‑usage at checkout within thresholds]
- Action Required: [If incomplete, what needs to be done]

### Item 9: ZBC / beacons tested and passing
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [ZBC test results, beacon validation logs]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [Carts progress into finalization correctly]
- Action Required: [If incomplete, what needs to be done]

### Item 10: Software & firmware versions aligned
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [Version logs, deployment records]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [All launch carts running same versions]
- Action Required: [If incomplete, what needs to be done]

### Item 11: Store configs validated
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [Config validation reports, testing confirmation]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [Loyalty, alcohol handling if applicable, incentives/coupon disclaimer, roulette flags]
- Action Required: [If incomplete, what needs to be done]

### Item 12: E2E testing completed & issues logged
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [E2E test reports, bug logs, Jira tickets]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [Scan, produce, alcohol if applicable, audit, EBT/loyalty, transfer/finalize, charging]
- Action Required: [If incomplete, what needs to be done]

### Item 13: Cart placement confirmed
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [Placement photos, store ops confirmation]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [Aligned to heatmaps, power, and store ops]
- Action Required: [If incomplete, what needs to be done]

### Item 14: Store & OTG training completed
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [Training completion records, attendance sheets]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [Including incident flows: QVS/network down, cart unavailability, chargers, W&M stickers]
- Action Required: [If incomplete, what needs to be done]

### Item 15: FSR/BA launch staffing plan confirmed
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [Staffing plan document, schedule confirmation]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [Launch day and D+1/D+2 coverage confirmed]
- Action Required: [If incomplete, what needs to be done]

### Item 16: Marketing complete OR documented
- Status: [✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown]
- Evidence: [Delivery confirmation, installation photos, or soft-launch decision doc]
- Owner: [Person or team responsible]
- Last Updated: [MM/DD/YYYY]
- Notes: [Arrival & installation complete OR soft‑launch decision documented if launching without full signage]
- Action Required: [If incomplete, what needs to be done]

3. Launch Readiness Summary
    - Total Items: 16
    - Complete: [count] (✅)
    - In Progress: [count] (⚠️)
    - Not Started: [count] (❌)
    - Unknown: [count] (🔍)
    - Completion Percentage: [X%]

4. All 16 Checklist Items Status

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

5. Blockers & Critical Items
    - [List any items that are not started or in progress with launch date approaching]
    - [List any items with blockers preventing completion]
    - [List any high-risk items if not completed]

6. Go/No-Go Recommendation
    - Recommendation: [GO / NO-GO / CONDITIONAL GO]
    - Justification: [Based on checklist completion status]
    - Conditions (if CONDITIONAL GO): [What must be completed before launch]
    - Risks: [What could go wrong if launching now]
