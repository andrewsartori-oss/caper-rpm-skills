# gonogo: Tasks

## Skill's Purpose
This file contains the essential Caper Deployment tasks that determine whether a Caper Deployment is a GO or NO GO or CONDITIONAL GO at a specific retailer OR for a specific store at a specific retailer 
- Each item must be validated with evidence (Jira ticket, doc, Slack message, test result)
- Each item requires a status assessment: ✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown
- Focus on the specific store (by Caper ID) or all stores for the specified retailer

## **CRITICAL** ##
- This skill validates ALL go/no go criteria required to launch a specific store at a specific retailer OR to launch a Caper Deployment program at a specific retailer across all planned stores for that retailer
- Each item must have evidence of completion or clear blockers identified
- The skill generates a GO/NO-GO/CONDITIONAL GO recommendation based on completion status
- The store ID can be provided in THREE formats:
  1. **Caper internal store ID** (ex: allegiance-prod-1, prod-clarks-1, prod-hgg-1)
  2. **Retailer store number/ID** (ex: 530, 1234)
  3. **Store/location name** (ex: hastings-on-hudson, times-square)
- If store ID is "all" or empty, validate across all stores for that retailer
- If a non-internal format is provided, resolve it to the internal Caper ID first before searching

## Important: SKILL output
- The gonogo output must be an .md file that must follow this naming convention: go-nogo-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md
    - The file name includes the store ID and the time when it was created, thus there can be multiple files created on the same day without having to delete a previous one.
    - Time should be created as 24 hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
- The file directory where these files are saved must follow this naming convention: go-nogo [retailer-name].
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

**Decision key:** ✅ Complete · ⚠️ In Progress / At Risk · ❌ Blocked / Not Started · 🔍 Unknown
**Blocker key:** 🔴 Absolute NO-GO if incomplete · 🟡 CONDITIONAL GO if partially complete with documented plan · 🟢 Informational / best effort

---

### 1. Hardware & Physical Infrastructure

| **#** | **Blocker** | **Item** | **Status** | **Notes / Evidence** |
| --- | --- | --- | --- | --- |
| 1 | 🔴 | All launch carts present on-site, bolted, powered, and syncing without errors |  |  |
| 2 | 🔴 | Store retrofit complete – electrical upgrade done and signed off (correct circuit/voltage; GFCI stable under ≥10-cart load) |  |  |
| 3 | 🔴 | Fixed chargers installed and all launch ports tested and functional |  |  |
| 4 | 🔴 | FC firmware updated and charger firmware tested |  |  |
| 5 | 🟡 | HW accessories installed on all designated carts (bag hooks, bottom trays, etc.) |  |  |
| 6 | 🟡 | Cart placement confirmed and aligned to heatmap, power availability, and store ops plan |  |  |
| 7 | 🟡 | Carts and tablets fully charged before training and launch |  |  |

---

### 2. Networking & Connectivity

| **#** | **Blocker** | **Item** | **Status** | **Notes / Evidence** |
| --- | --- | --- | --- | --- |
| 8 | 🔴 | WiFi APs installed and verified per heatmap plan (front end and SCO areas covered) |  |  |
| 9 | 🔴 | Checkout connectivity validated – order finalization latency and LTE usage at checkout within thresholds |  |  |
| 10 | 🔴 | ZBC / beacons tested and carts progress into finalization correctly |  |  |
| 11 | 🔴 | Network whitelisting completed by retailer's networking provider |  |  |
| 12 | 🟡 | WiFi/LTE connectivity re-validated after any AP or infrastructure changes |  |  |

---

### 3. Software, Configuration & Backend

| **#** | **Blocker** | **Item** | **Status** | **Notes / Evidence** |
| --- | --- | --- | --- | --- |
| 13 | 🔴 | All launch carts upgraded to planned production software and firmware release |  |  |
| 14 | 🔴 | All launch carts running the same software and firmware versions |  |  |
| 15 | 🔴 | Store configs validated in production – loyalty, alcohol handling (if applicable), coupon disclaimer, incentive flags, roulette flags |  |  |
| 16 | 🔴 | CM audit thresholds approved and configured in backend for the store |  |  |
| 17 | 🔴 | Cart Manager access provisioned for store team |  |  |
| 18 | 🔴 | Store team Store Admin and staff override barcodes created and distributed |  |  |
| 19 | 🔴 | Incentives enabled and validated in production (CECs, X-off-Y, Streaks, or applicable incentive types) |  |  |
| 20 | 🔴 | PODS ticket filed with Retailer Tooling team to enable new store for video inspector |  |  |
| 21 | 🔴 | Production retailer PSO Jira dashboard created (ETS) |  |  |
| 22 | 🔴 | DS ticket created and store added to Mode dashboard |  |  |
| 23 | 🟡 | DUMAC servers installed in store (if applicable to retailer's POS integration) |  |  |
| 24 | 🟡 | Instabug connected to Slack launch war room |  |  |

---

### 4. Weights & Measures

| **#** | **Blocker** | **Item** | **Status** | **Notes / Evidence** |
| --- | --- | --- | --- | --- |
| 25 | 🔴 | W&M certification passed for all launch carts OR county inspector visit scheduled and date aligned with launch plan |  |  |
| 26 | 🟡 | 3rd-party certification completed (if required by state/county) – approved, scheduled, and owner confirmed |  |  |

---

### 5. Payments

| **#** | **Blocker** | **Item** | **Status** | **Notes / Evidence** |
| --- | --- | --- | --- | --- |
| 27 | 🔴 | Payment terminals configured (VAR sheets submitted, MIDs/TIDs set up) |  |  |
| 28 | 🔴 | Payments tested in store – debit, credit, tap, insert |  |  |
| 29 | 🔴 | Payments verified hitting retailer's backend correctly |  |  |
| 30 | 🟡 | 2x Cart Manager tablets procured by retailer (if applicable) |  |  |

---

### 6. Catalog, Loyalty & Integrations

| **#** | **Blocker** | **Item** | **Status** | **Notes / Evidence** |
| --- | --- | --- | --- | --- |
| 31 | 🔴 | Catalog ingested, validated, and sanity tested in production |  |  |
| 32 | 🔴 | Age-restricted items (alcohol, tobacco) flagged correctly in catalog |  |  |
| 33 | 🔴 | Loyalty integration validated – login, coupon view, clip, and redemption tested |  |  |
| 34 | 🔴 | Offers and promotions tested – BOGO, Buy X for $Y, Manager's Special, Employee Discount, Clearance |  |  |
| 35 | 🔴 | Caper Exclusive Coupons (CECs) and other Caper incentives tested end-to-end |  |  |
| 36 | 🔴 | T-log creation verified (transactions posting to POS/backend correctly) |  |  |
| 37 | 🟡 | Digital receipt validated (includes promos, coupons, and taxable items) |  |  |
| 38 | 🟡 | Transfer-to-cashier flow tested and passing |  |  |
| 39 | 🟡 | Large basket checkout tested (50+ items) |  |  |

---

### 7. QA & Testing

| **#** | **Blocker** | **Item** | **Status** | **Notes / Evidence** |
| --- | --- | --- | --- | --- |
| 40 | 🔴 | E2E in-store testing completed – all test cases executed (scan, produce, alcohol if applicable, audit, loyalty, transfer/finalize, charging) |  |  |
| 41 | 🔴 | All P0 and P1 bugs resolved, or risk formally accepted and documented |  |  |
| 42 | 🔴 | Retailer UAT completed and retailer sign-off obtained |  |  |
| 43 | 🟡 | E2E test summary report produced and shared with stakeholders |  |  |
| 44 | 🟡 | All P2 bugs triaged, owners assigned, and target fix dates confirmed |  |  |

---

### 8. Operations & Staffing

| **#** | **Blocker** | **Item** | **Status** | **Notes / Evidence** |
| --- | --- | --- | --- | --- |
| 45 | 🔴 | Store employee training completed (rounds 1 and 2) – including incident flows (network down, cart unavailability, charger issues, W&M stickers) |  |  |
| 46 | 🔴 | FSR/BA launch staffing plan confirmed – launch day, D+1, and D+2 coverage locked |  |  |
| 47 | 🔴 | Caper Champions selected by retailer |  |  |
| 48 | 🟡 | Store Associate Promotion training completed |  |  |
| 49 | 🟡 | Remote auditors booked and confirmed for launch window |  |  |

---

### 9. Marketing

| **#** | **Blocker** | **Item** | **Status** | **Notes / Evidence** |
| --- | --- | --- | --- | --- |
| 50 | 🟡 | Marketing signage approved by retailer |  |  |
| 51 | 🟡 | Marketing signage delivered and installed in store (A-frames, standees, cart corral, aisle blades, freezer clings, checkout signage, bagging station, outdoor banners) – OR soft-launch decision formally documented |  |  |
| 52 | 🟡 | Caper lane clearly designated and visible to shoppers |  |  |

---

### 10. Sign-offs, Documentation & Launch Readiness

| **#** | **Blocker** | **Item** | **Status** | **Notes / Evidence** |
| --- | --- | --- | --- | --- |
| 53 | 🔴 | Launch plan reviewed and signed off (RPM, CSM, SA, Ops) |  |  |
| 54 | 🔴 | Internal Go/No-Go alignment obtained |  |  |
| 55 | 🔴 | External (retailer) Go/No-Go alignment obtained |  |  |
| 56 | 🔴 | Project Scope Document reviewed and signed off |  |  |
| 57 | 🔴 | Slack launch war room set up and active |  |  |
| 58 | 🟡 | Launch report template prepared |  |  |
| 59 | 🟡 | Caper Project Transition Document drafted |  |  |
| 60 | 🟡 | Retro board created |  |  |

---

### Decision Framework

| **Decision** | **Criteria** |
| --- | --- |
| **GO** | All 🔴 items are ✅ Complete. All 🟡 items are either ✅ Complete or have a documented plan and owner. |
| **CONDITIONAL GO** | All 🔴 items are ✅ Complete. One or more 🟡 items are ⚠️ In Progress with a clear owner, target date, and risk accepted in writing. |
| **NO-GO** | One or more 🔴 items are ❌ Not Started, 🚫 Blocked, or 🔍 Unknown with no clear path to resolution before launch date. |