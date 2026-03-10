---
name: project-phase
description: Display the phases of a Caper deployment, the tasks to complete per-phase, and the current phase and task for a specific retailer's Caper cart store deployment
argument-hint: [retailer-name]
context: fork
agent: general-purpose
tools: mcp__glean_default__search, mcp__glean_default__read_document, mcp__glean_default__chat
---

# Project Phases Reference

Help RPMs determine the phases of a Caper deployment, the tasks to complete per-phase, and in which phase (and task) a specific retailer's Caper deployment currently resides.

**CRITICAL**:
- This skill is intended to be a short, specific, action-focused list of project phases, tasks to complete per-phase, and the current phase + task for a specific retailer.
- A user can only request this for a Caper deployment at a retailer — they cannot request this for a Caper deployment at a retailer's specific store.

## Retailer
**Target Retailer**: $ARGUMENTS

## Instructions

1. **Research Phase** — Identify the current project phase:
   - **CRITICAL**: Use Glean to gather data every time and prioritize searching for, and using, the latest version of project documents. Do not refer to past skill-generated .md or .webloc documents.
   - **CRITICAL - Slack Channel Enumeration and Review**: Do NOT rely only on broad keyword searches. You MUST follow this exact process:
     1. Search Glean for all Slack channels whose name contains the retailer name (search with `type:publicchannel [retailer-name]` to enumerate channels)
     2. For each channel found, run a separate targeted Glean search using the `channel` filter for that specific channel name
     3. Review all messages and replies in every channel containing the retailer name — skipping any channel is unacceptable
   - Search Jira (CDP project) for the retailer's deployment initiative ticket and its sub-tasks to assess phase progress
   - Search Confluence and Google Docs for the retailer's project scope document, Smartsheet plan, and any phase milestone declarations
   - Identify which phase the project is currently in (Phase 0–6) based on completed milestones and open tasks
   - Identify which tasks within the current phase are complete, in-progress, or not yet started
   - Note the target launch date or next milestone date if available

2. **Phase Status Assessment** — Summarize where things stand:
   - Confirm the current phase (e.g., "Phase 2 – Project Planning")
   - List tasks in the current phase that are complete vs. outstanding
   - Note any tasks that are overdue or blocking phase completion
   - Identify the next phase and any tasks that should be started in parallel now

3. **Output Generation** — Produce the report using the structure below:

---

### Output Structure

#### Section 1 – Project Overview
- **Retailer Name**: [Retailer Name]
- **Target Launch Date**: [MM/DD/YYYY if known, or "TBD"]
- **Days Until Launch**: [Number if known, or "TBD"]
- **Project Phases**:
  - Phase 0: ✅/⚠️/❌/🔍 Project Pre-initiation
  - Phase 1: ✅/⚠️/❌/🔍 Project Initiation
  - Phase 2: ✅/⚠️/❌/🔍 Project Planning
  - Phase 3: ✅/⚠️/❌/🔍 Project Implementation
  - Phase 4: ✅/⚠️/❌/🔍 Project E2E In-store Testing
  - Phase 5: ✅/⚠️/❌/🔍 Store Launch
  - Phase 6: ✅/⚠️/❌/🔍 Stabilization & Transition to Sustaining
- **Current Phase**: [Phase # – Phase Name]
- **Phase Summary**: [1–2 sentence description of what this phase entails and where the team is within it]

**Status key**: ✅ Complete · ⚠️ In Progress / At Risk · ❌ Blocked / Not Started · 🔍 Unknown

#### Section 2 – Current Phase Task Status
List every task for the current phase. For each task, indicate its status:
- ✅ Complete
- 🔄 In Progress
- ⬜ Not Started
- 🚫 Blocked

Include sub-bullets with reference links exactly as listed in the Phase Reference section of this skill.

#### Section 3 – Upcoming Phases (Preview)
For each remaining phase after the current one, list the phase name and its tasks (without status — these are future tasks). Include reference links as sub-bullets exactly as listed in the Phase Reference section of this skill.

#### Section 4 – Completed Phases (Summary)
For each phase already completed, list the phase name with a ✅ and the date completed (if known from research).

---

4. **Output Format** — Save the report as a markdown file:
   - **If store ID provided**: `project-phase-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
   - **If no store ID**: `project-phase-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Time format: 24-hour clock with timezone (e.g., "2000EST", "0945PST")
   - Multiple files can be created on the same day — do not delete previous versions

5. **File Creation and Google Doc Upload** — Save locally AND upload to Google Docs:
   - Check if the directory exists: `/Users/andrewsartori/Desktop/project-phase [retailer]/`
   - If it doesn't exist, create it: `mkdir -p "/Users/andrewsartori/Desktop/project-phase [retailer]"`
   - If it exists, use the existing directory (do NOT create another one)
   - Get the current time in 24-hour clock format with timezone
   - Save the file:
     - **If store ID provided**: `/Users/andrewsartori/Desktop/project-phase [retailer]/project-phase-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
     - **If no store ID**: `/Users/andrewsartori/Desktop/project-phase [retailer]/project-phase-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Then upload to Google Docs using the md2doc upload script:
     ```bash
     export PATH="$HOME/.local/bin:$PATH" && cd ~/.claude/plugins/marketplaces/instacart/md2doc/skills/md2doc/scripts/ && uv run python upload-gdoc.py "/Users/andrewsartori/Desktop/project-phase [retailer]/project-phase-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md" --title "Project Phase - [Retailer Name] [store-id] ([Month] [Day] [Year])"
     ```
   - After successful upload, create a .webloc shortcut file to the Google Doc in the same folder
   - After completion, provide the user with:
     - The local markdown file location on Desktop
     - The Google Doc URL
     - The .webloc shortcut file location

## Phase Reference

The following phases and tasks are the official Caper Cart Deployment framework. Use this as the authoritative reference when populating Sections 2, 3, and 4 of the output. All links should be included as labeled sub-bullets exactly as shown.

---

### Phase 0 – Project Pre-initiation
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

---

### Phase 1 – Project Initiation

**Sub-phase 1: Internal Kick-off**
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

**Sub-phase 2: External Kick-off**
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

**Critical parallel tasks during Initiation**
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
- Request incentives strategy; set up retailer-side coupons and Caper Exclusive Coupons
  - [Caper Value Feature Launch Runbook](https://instacart.atlassian.net/wiki/x/oIT1NwE): Step-by-step instructions for each incentive type
  - [Superblocks (Incentives Tool)](https://app.superblocks.com/applications/a482ae9b-8745-42ae-a9cb-6e5e692d40c7): Internal tool for configuring retailer incentives/coupons
- Set up Project G Drive and RAID log
- Set up meeting cadences (internal weekly, external weekly, deep-dive workshops)
- Declare Project Initiation milestone

---

### Phase 2 – Project Planning
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

---

### Phase 3 – Project Implementation
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

---

### Phase 4 – Project E2E In-store Testing
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

---

### Phase 5 – Store Launch
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

---

### Phase 6 – Stabilization & Transition to Sustaining
- Monitor and manage stabilization for 5 business days (technical and non-technical)
- Fix issues; apply and validate fixes
- Publish daily performance report in project Slack channel (D1–D5)
- Determine and declare end of stabilization
- Prepare CSM & ETS handover document and conduct handover meeting
  - [CSM & ETS Handover Document Template](https://docs.google.com/document/d/1CIcck_1RpphnHyAKxEt-D008gBga9Q_hXaRyrQR4dis/edit?tab=t.0): Template for the end-of-stabilization handover to CSM and ETS
- Conduct official W&M certification (for applicable US states)
- Review launch status and declare project milestone
- Conduct XFN retrospective; document lessons learned and launch insights

---

## Output Requirements

- **The output document must not exceed 4,000 words**
- All four sections (Project Overview, Current Phase Task Status, Upcoming Phases, Completed Phases) must be present
- Use ✅ 🔄 ⬜ 🚫 status indicators for all tasks in Section 2
- Include reference links as labeled sub-bullets in Sections 2 and 3, exactly as defined in the Phase Reference above
- All [] brackets must be replaced with real data from research
- Include specific dates and ticket numbers where available
- **MUST save markdown file locally AND create a Google Doc**
- **File naming convention**:
  - With store ID: `project-phase-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md`
  - Without store ID: `project-phase-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
  - Time format: 24-hour clock with timezone (e.g., "2000EST", "0945PST")
- **Folder naming convention**: `project-phase [retailer]`
- **Save location**: `/Users/andrewsartori/Desktop/project-phase [retailer]/`
- **Google Doc title format**:
  - With store ID: `Project Phase - [Retailer Name] [store-id] ([Month] [Day] [Year])`
  - Without store ID: `Project Phase - [Retailer Name] ([Month] [Day] [Year])`

Generate the project phases report for **$ARGUMENTS** and save it as a Google Doc using the md2doc plugin.
