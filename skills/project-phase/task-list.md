# project-phases: Tasks

## Skill's Purpose
This file contains actionable tasks to help RPMs determine the phases of a Caper deployment, the tasks to complete per-phase, and in which phase (and task) a current retailer's Caper deployment currently resides.

## **CRITICAL** ##
- This skill is intended to be a short, specific, action-focused list of project phases, tasks to complete per-phase, and the current phase + task for a specific retailer.
- A user can only request this for a caper deployment at a retailer, they cannot request this for a caper deployment at a retailer's-specific store.

## Important: SKILL output
- The project-phases output must be an .md file that must follow this naming convention:
  - **If store ID provided**: project-phases-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md
  - **If no store ID**: project-phases-[retailer]-[MM]-[DD]-[YYYY]-[Time].md
  - The file name includes the time when it was created, thus there can be multiple files created on the same day without having to delete a previous one.
  - Time should be created as 24 hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
- The file directory where these files are saved must follow this naming convention: project-phases [retailer-name].
  - If the file directory already exists, do not create another one, just save the file to that directory.
- The output file must not exceed 4,000 words
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

---

## Your Tasks

# [ES Caper RPM] Caper Cart Deployment – Phase Gate Checklist
**Purpose:** This checklist is completed by the RPM at the end of each project phase, before declaring the phase complete and entering the next phase. All items in the checklist must be confirmed complete (or explicitly accepted as N/A with justification) prior to phase advancement.

**How to use:**
- Work through each item in the current phase's gate checklist.
- Mark each item: **Complete**, **N/A** (with reason), or **Blocked** (with owner and target date).
- A phase may not be declared complete while any item is marked **Blocked**.
- Obtain sign-off from the RPM and relevant stakeholders before advancing.

---

## Phase 0: Project Pre-Initiation – Exit Checklist
Complete all items before entering **Phase 1 – Project Initiation**.

| **#** | **Task** | **Status** | **Notes / Owner** |
| --- | --- | --- | --- |
| 1 | SOW reviewed and signed (or verbal agreement documented) |  |  |
| 2 | Store count and cart count confirmed |  |  |
| 3 | Transaction / sales / basket data acquired for proposed stores |  |  |
| 4 | POS, Loyalty, Coupon, and Catalog provider information acquired |  |  |
| 5 | Retailer marketing confirmed |  |  |
| 6 | Retailer and vendor technical DRIs aligned |  |  |
| 7 | Determine if external vendor development / SOW is needed |  |  |
| 8 | Enterprise Solution RPM, CSM and Solution Architect assigned |  |  |
| 9 | Retailer Data Input form reviewed; decision made on whether to complete |  |  |
| 10 | Project Slack channel created (MSP or RPM) |  |  |

---

## Phase 1: Project Initiation – Exit Checklist
Complete all items before entering **Phase 2 – Project Planning**.

#### Sub-phase 1: Internal Kick-off

| **#** | **Task** | **Status** | **Notes / Owner** |
| --- | --- | --- | --- |
| 1 | BD/Sales handoff to ES deployment team (RPM/SA) completed with technical information<br>• [Best Caper Store Selection Process](https://instacart.atlassian.net/wiki/display/ENTSO/Caper+Retailer+Store+Selection+Process+-+2025)<br>• [Sales Digest / Handoff Template](https://docs.google.com/document/d/1FC1oLIafnfwpRL6GIdEi-yEkmMgCf7dN4ADdWHtWB6s/edit?tab=t.0#heading=h.kuud4w7apcsq) |  |  |
| 2 | UPOS Intake form and Caper Cart setup tasks reviewed; store requirements document created<br>• [UPOS Intake Form Template](https://docs.google.com/spreadsheets/d/1NiWsnhaAs2esn3oYpPAbeQsyu4weW4F2sv_svsatNvw/edit?gid=327848024#gid=327848024) |  |  |
| 3 | Catalog Resource requested from ES SA team via intake form |  |  |
| 4 | Ops Deployment Program Manager engaged |  |  |
| 5 | HW availability confirmed (carts; payment terminal requirement noted)<br>• [E2E of Caper Cart](https://instacart.atlassian.net/wiki/display/ENTSO/E2E+of+Caper+Cart) |  |  |
| 6 | Internal kickoff conducted with XFN teams (RPM, SA, BD, MSP, Ops, Eng, QA, Support, Marketing) |  |  |

#### Sub-phase 2: External Kick-off

| **#** | **Task** | **Status** | **Notes / Owner** |
| --- | --- | --- | --- |
| 7 | External retailer kickoff meeting scheduled and conducted |  |  |
| 8 | External kick-off deck prepared and internally reviewed |  |  |
| 9 | External technical review, catalog kick-off, and workshops conducted<br>• [Single-Code Products for Connected Stores](https://instacart.atlassian.net/wiki/display/Catalog/Single-Code+Products+for+Connected+Stores) |  |  |
| 10 | Networking and whitelisting requirements reviewed with retailer<br>• [Network Related (Caper Support)](https://instacart.atlassian.net/wiki/display/CPS/Network+Related)<br>• [Network Validation APK](https://instacart.atlassian.net/wiki/display/CPS/Network+Validation+APK+to+validate+network+connectivity) |  |  |
| 11 | Payment, POS API, Loyalty API, and Digital Coupon API requirements reviewed |  |  |
| 12 | Front End Development requirements determined (including CV if applicable) |  |  |
| 13 | Product feature review walkthrough conducted with retailer |  |  |
| 14 | Ops and Marketing deep-dive sessions conducted with retailer |  |  |

#### Critical Parallel Tasks

| **#** | **Task** | **Status** | **Notes / Owner** |
| --- | --- | --- | --- |
| 15 | Retail Debit Key and payment processor acquired; PT purchase form submitted<br>• [Caper Payment Terminal E2E Workflow](https://instacart.atlassian.net/wiki/display/CPS/Caper+Payment+Terminal+Integration+Workflow)<br>• [Payment Terminal Work Process](https://instacart.atlassian.net/wiki/display/ENTSO/Payment+Terminal+Work+Process) |  |  |
| 16 | VAR sheet requested (retailer MIDs & TIDs per PT/cart)<br>• [Payment Terminal Work Process](https://instacart.atlassian.net/wiki/display/ENTSO/Payment+Terminal+Work+Process) |  |  |
| 17 | Retailer package weight (SOLD Weight) information requested |  |  |
| 18 | W&M certification process walked through with retailer<br>• [Caper Weights & Measures FAQ](https://instacart.atlassian.net/wiki/display/LEGAL/Caper+Weights+%26+Measures+FAQ)<br>• [Weights and Measures Certification](https://instacart.atlassian.net/wiki/display/ENTSO/Weights+and+Measures+Certification) |  |  |
| 19 | QA test data requested and sent (loyalty, catalog, etc.) |  |  |
| 20 | Feature Matrix / Superblock updated for the retailer<br>• [Feature Matrix (Google Sheet)](https://docs.google.com/spreadsheets/d/101LbZyIQtCaPTAbzQqQ7ikWnhwy3n6c7ulFEiFpQlZo/edit?gid=494131395#gid=494131395) |  |  |
| 21 | QA barcode spreadsheet filled in |  |  |
| 22 | Branding guide and logo retrieved from retailer |  |  |
| 23 | Receipt customization and retailer privacy document confirmed |  |  |
| 24 | Retailer warehouse ID, warehouse location ID, and retailer store ID requested |  |  |
| 25 | UAT and Production cart requests created in warehouse (CTAM master ticket) |  |  |
| 26 | Audit/CM V2 threshold values determined with Caper Audit PM |  |  |
| 27 | Store information Confluence page updated; store floor plan attached<br>• [Caper Cart Deployment – Store Information](https://instacart.atlassian.net/wiki/display/ENTSO/Caper+Cart+Deployment+-+Store+Information) |  |  |
| 28 | Store wifi credentials collected; whitelisting completed by networking provider |  |  |
| 29 | Project success criteria and scores (scorecard) defined |  |  |
| 30 | Project Scope Document and Smartsheet schedule developed<br>• [Smartsheet Caper Project Template (3-month)](https://app.smartsheet.com/sheets/G3vCcPR4V656qFQRGVr8RvGmr3mqFqpfrCMmmfq1?timelineGroupBy=3008244657728&view=grid) |  |  |
| 31 | Incentives strategy requested; retailer-side coupons and Caper Exclusive Coupons set up<br>• [Caper Value Feature Launch Runbook](https://instacart.atlassian.net/wiki/x/oIT1NwE)<br>• [Superblocks (Incentives Tool)](https://app.superblocks.com/applications/a482ae9b-8745-42ae-a9cb-6e5e692d40c7) |  |  |
| 32 | Project G Drive and RAID log set up |  |  |
| 33 | Meeting cadences set up (internal weekly, external weekly, deep-dive workshops) |  |  |
| 34 | Project Initiation milestone declared |  |  |

---

## Phase 2: Project Planning – Exit Checklist
Complete all items before entering **Phase 3 – Project Implementation**.

| **#** | **Task** | **Status** | **Notes / Owner** |
| --- | --- | --- | --- |
| 1 | Joint store walk completed with retailer (Ops + Marketing); store walk recap deck delivered |  |  |
| 2 | Project scope defined; store visit conducted as needed |  |  |
| 3 | Solution Design Document (SDD) created |  |  |
| 4 | Wifi heat mapping planned and conducted at each store; gaps identified and remediated |  |  |
| 5 | Weight collection planned (per SA catalog assessment) |  |  |
| 6 | W&M certification process and requirements determined; Legal engaged (Sara Starck) |  |  |
| 7 | Store Score, Project Success Score, and Launch Usage Score defined<br>• [2025 Caper Deployment Project Success Strategy, Plan & Process](https://instacart.atlassian.net/wiki/display/ENTSO/2025+Caper+Deployment+Project+Success+Strategy%2C+Plan+%26+Process) |  |  |
| 8 | Technical integration workstream managed (scrum master role active; Jira up to date) |  |  |
| 9 | Launch plan review cadence developed |  |  |
| 10 | Remote auditors booked with Ops / Sarah Alford |  |  |

---

## Phase 3: Project Implementation – Exit Checklist
Complete all items before entering **Phase 4 – Project E2E In-store Testing**.

| **#** | **Task** | **Status** | **Notes / Owner** |
| --- | --- | --- | --- |
| 1 | Integration development and custom feature development (PCRs) driven to completion; tracked in Jira<br>• [Caper PCR Overview](https://instacart.atlassian.net/wiki/display/PEO/Caper+PCR+Overview) |  |  |
| 2 | Weekly XFN status reporting and Friday Slack update implemented<br>• [Friday Slack Update Template](https://instacart.atlassian.net/wiki/display/ENTSO/%5BTemplate%5D+Project+Weekly+Status+Updates+-+Slack) |  |  |
| 3 | Daily/bi-weekly dev standup running |  |  |
| 4 | Weekly XFN sync and weekly retailer project sync running<br>• [External-Facing Weekly Status Deck Template](https://docs.google.com/presentation/d/19HlCgTM0B-R0YYEMhS3WNxKm1CGLZKX6Awtfcx5NX3g/edit#slide=id.g266054c8f47_0_175) |  |  |
| 5 | Weekly/bi-weekly vendor dev sync running |  |  |
| 6 | Internal and external escalations managed as needed |  |  |
| 7 | Feature enablement confirmed in staging (Superblock) |  |  |
| 8 | Wifi heat mapping and indoor location mapping completed per store |  |  |
| 9 | Caper stores set up in staging, UAT, and production (Caper Support) |  |  |
| 10 | Catalog file updated, validated, ingested, and sanity tested |  |  |
| 11 | Cart order forms submitted for UAT and production carts |  |  |
| 12 | Integration QA and FRT QA completed |  |  |
| 13 | UAT carts configured and shipped; UAT payment terminal installed |  |  |
| 14 | Retailer UAT planning, execution, issue logging/triage, and sign-off supported and completed |  |  |
| 15 | Feature matrix updated per new releases |  |  |

---

## Phase 4: E2E In-Store Testing – Exit Checklist
Complete all items before entering **Phase 5 – Store Launch**.

| **#** | **Task** | **Status** | **Notes / Owner** |
| --- | --- | --- | --- |
| 1 | Store readiness checked (charging outlets, charger, wifi) |  |  |
| 2 | Production carts set up and shipped<br>• [Caper Payment Terminal E2E Workflow](https://instacart.atlassian.net/wiki/display/CPS/Caper+Payment+Terminal+Integration+Workflow)<br>• [Caper Cart Software Setup in Warehouses](https://instacart.atlassian.net/wiki/display/ENTSO/Caper+Cart+Software+Setup+in+Caper+Warehouses+%28WIP%29) |  |  |
| 3 | Store wifi settings validated; SA approval confirmed |  |  |
| 4 | E2E test planning conducted; TestRail test runs and CDP Jira epic created |  |  |
| 5 | E2E in-store testing conducted (Caper Field QA); issues logged and reported |  |  |
| 6 | All issues triaged, fixed, and retested |  |  |
| 7 | PT in-store functional testing completed (debit, credit, tap, insert)<br>• [Caper Payment Terminal E2E Workflow](https://instacart.atlassian.net/wiki/display/CPS/Caper+Payment+Terminal+Integration+Workflow) |  |  |
| 8 | Final upgrade of retailer/vendor release versions in production completed |  |  |
| 9 | Final upgrade of production cart software versions completed |  |  |
| 10 | E2E in-store testing declared complete (test summary report produced) |  |  |
| 11 | W&M certification performed (initial, where applicable) |  |  |
| 12 | BA hiring completed (8 weeks for new retailer; 4 weeks for new store at existing retailer) |  |  |
| 13 | BA training, store employee training, and training materials completed |  |  |
| 14 | CM credentials and access set up; staff override barcodes generated and distributed<br>• [Auth0 Guidelines – Caper Cloud Account Setup](https://instacart.atlassian.net/wiki/display/CPS/Set+up+a+Caper+Cloud+account+on+Auth0)<br>• [Staff Barcode Creation – Example Ticket (PSO-35277)](https://instacart.atlassian.net/browse/PSO-35277) |  |  |
| 15 | Holistic launch plan created (RPM, CSM, SA, Ops); internal and external sign-off obtained |  |  |
| 16 | Launch Checklist and Launch Plan Review conducted |  |  |
| 17 | Internal and external (retailer) Go/No-Go alignment obtained |  |  |

---

## Phase 5: Store Launch – Exit Checklist
Complete all items before entering **Phase 6 – Stabilization & Transition to Sustaining**.

| **#** | **Task** | **Status** | **Notes / Owner** |
| --- | --- | --- | --- |
| 1 | DS ticket logged to add new store to Mode dashboard<br>• [Mode Dashboard – Caper Launched Stores](https://app.mode.com/instacart/spaces/f6b9deadadc7)<br>• [Example DS Jira Ticket (CST-2147)](https://instacart.atlassian.net/browse/CST-2147) |  |  |
| 2 | ETS requested to set up retailer and PSO Jira dashboard |  |  |
| 3 | Marketing signs and Caper lane confirmed set up in store (1 day prior to launch) |  |  |
| 4 | Carts set up in store at agreed placement; fixed chargers installed |  |  |
| 5 | Slack war room set up for launch (if applicable) |  |  |
| 6 | Pilot carts launched; blockers addressed |  |  |
| 7 | All carts launched; blockers addressed |  |  |
| 8 | Store cart launch declared to retailer and internal stakeholders (announcement + photos sent) |  |  |

---

## Phase 6: Stabilization & Transition to Sustaining – Exit Checklist
Complete all items before declaring project complete and transitioning to sustaining.

| **#** | **Task** | **Status** | **Notes / Owner** |
| --- | --- | --- | --- |
| 1 | Stabilization monitored and managed for 20 business days (technical and non-technical) |  |  |
| 2 | All issues fixed; fixes applied and validated |  |  |
| 3 | Daily store performance report published in project Slack channel (D1–D5) |  |  |
| 4 | End of stabilization determined and declared |  |  |
| 5 | CSM & ETS handover document prepared and handover meeting conducted<br>• [CSM & ETS Handover Document Template](https://docs.google.com/document/d/1CIcck_1RpphnHyAKxEt-D008gBga9Q_hXaRyrQR4dis/edit?tab=t.0) |  |  |
| 6 | Official W&M certification conducted (for applicable US states) |  |  |
| 7 | Launch status reviewed; project milestone declared |  |  |
| 8 | XFN retrospective conducted; lessons learned and launch insights documented |  |  |

---

*Document version: March 10, 2026 | Owner: Enterprise Solutions RPM*
