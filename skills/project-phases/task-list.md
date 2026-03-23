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
- The output file must not exceed 5,000 words
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
- Always use Glean to search for the most updated version of the project phases. Use this confluence page as default: https://instacart.atlassian.net/wiki/spaces/ENTSO/pages/4591747230/Caper+Project+Management+Guidelines+-+Project+Phases+Detailed+Tasks

---
## **IF [RETAILER] ARGUMENT IS PRESENT, SHOW THE FOLLOWING Project Phases FOR THAT RETAILER**

## Your Tasks

1. Project Phases
  - Phase 0: ✅/⚠️/❌/🔍 Project Pre-initiation
  - Phase 1: ✅/⚠️/❌/🔍 Project Initiation
  - Phase 2: ✅/⚠️/❌/🔍 Project Planning
  - Phase 3: ✅/⚠️/❌/🔍 Project Implementation
  - Phase 4: ✅/⚠️/❌/🔍 Project E2E In-store Testing
  - Phase 5: ✅/⚠️/❌/🔍 Store Launch
  - Phase 6: ✅/⚠️/❌/🔍 Stabilization & Transition to Sustaining

2. Tasks Per-Phase

  **Phase 0 – Project Pre-initiation**
  - Review and sign SOW (or proceed on verbal agreement)
  - Confirm store count and cart count
  - Acquire transaction/sales/basket data for proposed stores
  - Acquire POS, Loyalty, Coupon, and Catalog provider information
  - Confirm retailer marketing
  - Align retailer and vendor technical DRIs
  - Evaluate partner relationship status (determine if new SOW with partner is needed)
  - Assign Enterprise Solution RPM and Solution Architect
  - Review Retailer Data Input form; determine if it needs to be filled in
  - Create project Slack channel (MSP or RPM)

  **Phase 1 – Project Initiation**
  - *Sub-phase 1: Internal Kick-off*
    - BD/Sales handoff to ES deployment team (RPM/SA) with technical information
      - [Best Caper Store Selection Process](https://instacart.atlassian.net/wiki/display/ENTSO/Caper+Retailer+Store+Selection+Process+-+2025): Criteria and process for selecting stores for Caper deployment
      - [Sales Digest / Handoff Template](https://docs.google.com/document/d/1FC1oLIafnfwpRL6GIdEi-yEkmMgCf7dN4ADdWHtWB6s/edit?tab=t.0#heading=h.kuud4w7apcsq): Template used for BD → RPM handoff
    - Review UPOS Intake form and Caper Cart setup tasks; create store requirements document
      - [UPOS Intake Form Template](https://docs.google.com/spreadsheets/d/1NiWsnhaAs2esn3oYpPAbeQsyu4weW4F2sv_svsatNvw/edit?gid=327848024#gid=327848024): SA-owned form capturing store technical requirements
    - Request Catalog Resource from ES SA team via intake form
    - Engage Ops Deployment Program Manager
    - Confirm HW availability (carts; indicate if Payment Terminal is required)
      - [E2E of Caper Cart](https://instacart.atlassian.net/wiki/display/ENTSO/E2E+of+Caper+Cart): End-to-end hardware and software lifecycle for a Caper cart
    - Conduct internal kickoff with XFN teams (RPM, SA, BD, MSP, Ops, Eng, QA, Support, Marketing, etc.)
  - *Sub-phase 2: External Kick-off*
    - Schedule and conduct external retailer kickoff meeting
    - Prepare and internally review external kick-off deck
    - Conduct external technical review, catalog kick-off, and workshops
      - [Single-Code Products for Connected Stores](https://instacart.atlassian.net/wiki/display/Catalog/Single-Code+Products+for+Connected+Stores): IC Catalog reference for Caper catalog requirements
    - Review networking & whitelisting requirements with retailer
      - [Network Related (Caper Support)](https://instacart.atlassian.net/wiki/display/CPS/Network+Related): Internal networking and whitelisting requirements detail
      - [Network Validation APK](https://instacart.atlassian.net/wiki/display/CPS/Network+Validation+APK+to+validate+network+connectivity): Tool to validate store network connectivity
    - Review payment, POS API, Loyalty API, and Digital Coupon API requirements
    - Determine Front End Development requirements (potentially CV)
    - Conduct product feature review walkthrough with retailer
    - Run Ops and Marketing deep-dive sessions with retailer
  - *Critical parallel tasks during Initiation*
    - Acquire Retail Debit Key and payment processor; submit PT purchase form
      - [Caper Payment Terminal E2E Workflow](https://instacart.atlassian.net/wiki/display/CPS/Caper+Payment+Terminal+Integration+Workflow): Full PT integration and setup process
      - [Payment Terminal Work Process](https://instacart.atlassian.net/wiki/display/ENTSO/Payment+Terminal+Work+Process): HW Ops process for PT procurement and configuration
    - Request VAR sheet (including retailer MIDs & TIDs per PT/cart)
      - [Payment Terminal Work Process](https://instacart.atlassian.net/wiki/display/ENTSO/Payment+Terminal+Work+Process): Details VAR sheet requirements and MID/TID setup
    - Request retailer package weight (SOLD Weight) information
    - Walk through W&M certification process with retailer
      - [Caper Weights & Measures FAQ](https://instacart.atlassian.net/wiki/display/LEGAL/Caper+Weights+%26+Measures+FAQ): Legal guidance on W&M certification requirements
      - [Weights and Measures Certification](https://instacart.atlassian.net/wiki/display/ENTSO/Weights+and+Measures+Certification): Internal process and state-by-state W&M certification guide
    - Request and send QA test data (loyalty, catalog, etc.)
    - Update Feature Matrix / Superblock for the retailer
      - [Feature Matrix (Google Sheet)](https://docs.google.com/spreadsheets/d/101LbZyIQtCaPTAbzQqQ7ikWnhwy3n6c7ulFEiFpQlZo/edit?gid=494131395#gid=494131395): Legacy feature matrix for reference
    - Fill in QA barcode spreadsheet
    - Retrieve branding guide and logo from retailer
    - Confirm receipt customization and retailer privacy document
    - Request retailer warehouse ID, warehouse location ID, and retailer store ID
    - Create UAT and Production cart requests in warehouse (CTAM master ticket)
    - Determine audit/CM V2 threshold values with Caper Audit PM
    - Update store information Confluence page; attach store floor plan
      - [Caper Cart Deployment – Store Information](https://instacart.atlassian.net/wiki/display/ENTSO/Caper+Cart+Deployment+-+Store+Information): Central Confluence page for all store details
    - Collect store wifi credentials; ensure whitelisting is completed by networking provider
    - Define project success criteria and scores (scorecard)
    - Develop Project Scope Document and Smartsheet schedule
      - [Smartsheet Caper Project Template (3-month)](https://app.smartsheet.com/sheets/G3vCcPR4V656qFQRGVr8RvGmr3mqFqpfrCMmmfq1?timelineGroupBy=3008244657728&view=grid): Master project plan template with phases, tasks, and dependencies
      - [Project Scope Document Template](https://docs.google.com/document/d/1xXZ5aFej_yrrPtU5HtKshEnr2CdIQ2O9uuW2aTiWXDY/edit): Blank template for creating a retailer Project Scope Document — use `/scope-doc [retailer]` to auto-generate a populated version
    - Request incentives strategy; set up retailer-side coupons and Caper Exclusive Coupons
      - [Caper Value Feature Launch Runbook](https://instacart.atlassian.net/wiki/x/oIT1NwE): Step-by-step instructions for each incentive type
      - [Superblocks (Incentives Tool)](https://app.superblocks.com/applications/a482ae9b-8745-42ae-a9cb-6e5e692d40c7): Internal tool for configuring retailer incentives/coupons
    - Set up Project G Drive and RAID log
    - Set up meeting cadences (internal weekly, external weekly, deep-dive workshops)
    - Declare Project Initiation milestone

  **Phase 2 – Project Planning**
  - Complete joint store walk with retailer (Ops + Marketing); deliver store walk recap deck
  - Define project scope; conduct store visit as needed
  - Create Solution Design Document (SDD)
  - Plan and conduct wifi heat mapping at each store; identify and remediate gaps
  - Plan weight collection (as needed, per SA catalog assessment)
  - Determine W&M certification process and requirements; engage Legal (Sara Starck)
  - Define Store Score, Project Success Score, and Launch Usage Score
    - [2025 Caper Deployment Project Success Strategy, Plan & Process](https://instacart.atlassian.net/wiki/display/ENTSO/2025+Caper+Deployment+Project+Success+Strategy%2C+Plan+%26+Process): Defines scoring framework, KPIs, and success criteria across project phases
  - Manage technical integration workstream (act as scrum master; update Jira)
  - Develop launch plan review cadence
  - Align with Ops/Sarah Alford to book remote auditors

  **Phase 3 – Project Implementation**
  - Drive integration development and custom feature development (PCRs); track in Jira
    - [Caper PCR Overview](https://instacart.atlassian.net/wiki/display/PEO/Caper+PCR+Overview): Process for submitting and tracking custom feature requests (PCRs)
  - Implement weekly XFN status reporting and Friday Slack update
    - [Friday Slack Update Template](https://instacart.atlassian.net/wiki/display/ENTSO/%5BTemplate%5D+Project+Weekly+Status+Updates+-+Slack): Template for weekly project status updates posted in Slack
  - Run daily/bi-weekly dev standup
  - Run weekly XFN sync and weekly retailer project sync
    - [External-Facing Weekly Status Deck Template](https://docs.google.com/presentation/d/19HlCgTM0B-R0YYEMhS3WNxKm1CGLZKX6Awtfcx5NX3g/edit#slide=id.g266054c8f47_0_175): Slide template used for retailer-facing weekly syncs
  - Run weekly/bi-weekly vendor dev sync
  - Manage internal and external escalation as needed
  - Confirm feature enablement in staging (Superblock)
  - Conduct wifi heat mapping and indoor location mapping per store
  - Set up Caper stores in staging, UAT, and production (Caper Support)
  - Manage catalog file update, validation, ingestion, and sanity testing
  - Submit cart order forms for UAT and production carts
  - Complete Integration QA and FRT QA
  - Configure and ship UAT carts; install UAT payment terminal
  - Support retailer UAT planning, execution, issue logging/triage, and sign-off
  - Update feature matrix per new releases

  **Phase 4 – Project E2E In-store Testing**
  - Check store readiness (charging outlets, charger, wifi)
  - Set up and ship production carts
    - [Caper Payment Terminal E2E Workflow](https://instacart.atlassian.net/wiki/display/CPS/Caper+Payment+Terminal+Integration+Workflow): Full PT setup and configuration process for production carts
    - [Caper Cart Software Setup in Warehouses](https://instacart.atlassian.net/wiki/display/ENTSO/Caper+Cart+Software+Setup+in+Caper+Warehouses+%28WIP%29): HW Ops and Caper Support process for cart SW setup prior to shipping
  - Validate store wifi settings; confirm SA approval
  - Conduct E2E test planning; create TestRail test runs and CDP Jira epic
  - Conduct E2E in-store testing (Caper Field QA); log and report issues
  - Triage, fix, and retest all issues
  - Complete PT in-store functional testing (debit, credit, tap, insert)
    - [Caper Payment Terminal E2E Workflow](https://instacart.atlassian.net/wiki/display/CPS/Caper+Payment+Terminal+Integration+Workflow): Details all required PT functional test cases
  - Final upgrade of retailer/vendor release versions in production
  - Final upgrade of production cart software versions
  - Declare E2E in-store testing complete (with test summary report)
  - Perform W&M certification (initial, where applicable)
  - Complete BA hiring (8 weeks for new retailer; 4 weeks for new store at existing retailer)
  - Conduct BA training, store employee training, and prepare training materials
  - Set up CM credentials and access; generate and distribute staff override barcodes
    - [Auth0 Guidelines – Caper Cloud Account Setup](https://instacart.atlassian.net/wiki/display/CPS/Set+up+a+Caper+Cloud+account+on+Auth0): ETS process for setting up CM access via Auth0
    - [Staff Barcode Creation – Example Ticket (PSO-35277)](https://instacart.atlassian.net/browse/PSO-35277): Example ETS ticket for staff override barcode generation
  - Create holistic launch plan (RPM, CSM, SA, Ops); obtain internal and external sign-off
  - Conduct Launch Checklist & Launch Plan Review
  - Obtain internal and external (retailer) Go/No-Go alignment

  **Phase 5 – Store Launch**
  - Log DS ticket to add new store to Mode dashboard
    - [Mode Dashboard – Caper Launched Stores](https://app.mode.com/instacart/spaces/f6b9deadadc7): Dashboard for post-launch daily performance reporting
    - [Example DS Jira Ticket (CST-2147)](https://instacart.atlassian.net/browse/CST-2147): Example ticket for requesting DS to add a store to Mode dashboard
  - Request ETS to set up retailer and PSO Jira dashboard
  - Ensure marketing signs and Caper lane are set up in store (1 day prior to launch)
  - Set up carts in store at agreed placement; install fixed chargers
  - Set up Slack war room for launch (if applicable)
  - Launch pilot carts; address any blockers
  - Launch all carts; address any blockers
  - Declare store cart launch to retailer and internal stakeholders (announcement + photos)

  **Phase 6 – Stabilization & Transition to Sustaining**
  - Monitor and manage stabilization for 5 business days (technical and non-technical)
  - Fix issues; apply and validate fixes
  - Publish daily performance report in project Slack channel (D1–D5)
  - Determine and declare end of stabilization
  - Prepare CSM & ETS handover document and conduct handover meeting
    - [CSM & ETS Handover Document Template](https://docs.google.com/document/d/1CIcck_1RpphnHyAKxEt-D008gBga9Q_hXaRyrQR4dis/edit?tab=t.0): Template for the end-of-stabilization handover to CSM and ETS
  - Conduct official W&M certification (for applicable US states)
  - Review launch status and declare project milestone
  - Conduct XFN retrospective; document lessons learned and launch insights


## **IF [RETAILER] ARGUMENT IS EMPTY, SHOW THE FOLLOWING Phase Gate Checklist**

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
| 30 | Project Scope Document and Smartsheet schedule developed<br>• [Smartsheet Caper Project Template (3-month)](https://app.smartsheet.com/sheets/G3vCcPR4V656qFQRGVr8RvGmr3mqFqpfrCMmmfq1?timelineGroupBy=3008244657728&view=grid)<br>• [Project Scope Document Template](https://docs.google.com/document/d/1xXZ5aFej_yrrPtU5HtKshEnr2CdIQ2O9uuW2aTiWXDY/edit) — or run `/scope-doc [retailer]` to auto-generate a populated version |  |  |
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