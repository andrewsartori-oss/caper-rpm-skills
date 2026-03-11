# project-summary: Tasks

## Skill's Purpose
This skill will give the user a summary of the Caper Deployment for a specific retailer
- This skill is meant to be informational, giving a new Caper RPM a concise summary of all important topics, items, issues, decisions, and risks for a specific retailer's Caper Deployment

## **CRITICAL** ##


## Important: SKILL output
- The project-summary output must be an .md file that must follow this naming convention: project-summary-[retailer]-[store-id]-[MM]-[DD]-[YYYY]-[Time].md
    - The file name includes the store ID and the time when it was created, thus there can be multiple files created on the same day without having to delete a previous one.
    - Time should be created as 24 hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
- The file directory where these files are saved must follow this naming convention: project-summary [retailer-name].
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

## Your Tasks

1. Project Overview
    - Retailer Name: [Retailer Name]
    - Store ID(s): [Internal Caper store ID(s), or "All Stores"]
    - Store Location(s): [City, State for each store]
    - Deployment Scope: [Brief description — number of carts, store count, rollout type]
    - Target Launch Date: [MM/DD/YYYY]
    - Current Project Phase: [e.g., Pre-Install, Install, Pilot, Live]
    - Overall Project Health: [Green / Yellow / Red]
    - Report Generated: [MM/DD/YYYY at HH:MM timezone]

2. Key Stakeholders
    - Caper RPM: [Name]
    - Caper SE: [Name]
    - Caper Solutions Architect: [Name]
    - Retailer Project Lead: [Name, Title]
    - Retailer IT Contact: [Name, Title]
    - Retailer Store Operations Contact: [Name, Title]
    - Other Key Contacts: [Any additional stakeholders with role]

3. Hardware Summary
    - Total Carts: [Number]
    - Cart Model: [Model name/generation]
    - New vs. Refurbished: [New / Refurbished / Mix]
    - Wheel Configuration: [4-wheel / 6-wheel]
    - Lower Tray: [Yes / No]
    - Camera Configuration: [e.g., 2-camera, 4-camera]
    - Payment Terminal: [Type/model]
    - Accessories: [List any — lane dividers, bag hooks, etc.]
    - Fixed Chargers: [Count and capacity — e.g., 2x 10-cart chargers]
    - DC Adapters: [Count]
    - ZBC Beacons: [Count and placement summary]

4. Technology & Integrations
    - POS Provider: [Name and version]
    - Catalog Provider: [Name]
    - Loyalty Provider: [Name]
    - Digital Coupons: [Provider name, or N/A]
    - Payment Processor: [Name]
    - Debit Encryption Key: [Provided / Pending / N/A]
    - Staging Store(s): [Setup / Not Setup — include internal store IDs]
    - Production Store(s): [Setup / Not Setup — include internal store IDs]
    - Partner ID: [Value]
    - Retailer (Warehouse) ID: [Value]
    - Warehouse Location ID(s): [Value(s)]
    - Current Software Release: [Version]
    - Key Features Enabled: [Bulleted list of active features]
    - Known Integration Issues: [Any active integration problems]

5. Timeline & Milestones
    For each phase, note the Planned date, Actual date (if completed), and current Status (✅ Complete / ⚠️ In Progress / ❌ Not Started / 🔍 Unknown).

    **Phase 0 – Project Pre-initiation**
    - Phase Start: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]
    - SOW reviewed and signed (or verbal agreement confirmed): [Planned | Actual | Status]
    - Store count and cart count confirmed: [Planned | Actual | Status]
    - Transaction/sales/basket data acquired: [Planned | Actual | Status]
    - POS, Loyalty, Coupon, and Catalog providers identified: [Planned | Actual | Status]
    - RPM and SA assigned: [Planned | Actual | Status]
    - Project Slack channel created: [Planned | Actual | Status]
    - Phase 0 Complete: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]

    **Phase 1 – Project Initiation**
    - Phase Start: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]
    - BD → RPM/SA handoff completed: [Planned | Actual | Status]
    - Internal kickoff conducted: [Planned | Actual | Status]
    - External retailer kickoff conducted: [Planned | Actual | Status]
    - UPOS Intake Form reviewed; store requirements document created: [Planned | Actual | Status]
    - HW availability confirmed (carts + payment terminals): [Planned | Actual | Status]
    - Networking and whitelisting requirements reviewed with retailer: [Planned | Actual | Status]
    - Payment, POS, Loyalty, and Digital Coupon API requirements reviewed: [Planned | Actual | Status]
    - Retail Debit Key acquired; PT purchase form submitted: [Planned | Actual | Status]
    - VAR sheet requested (MIDs & TIDs per PT/cart): [Planned | Actual | Status]
    - W&M certification process reviewed with retailer: [Planned | Actual | Status]
    - Retailer warehouse ID, warehouse location ID, and retailer store ID received: [Planned | Actual | Status]
    - UAT and production cart requests created (CTAM master ticket): [Planned | Actual | Status]
    - Project Scope Document and Smartsheet schedule developed: [Planned | Actual | Status]
    - Project G Drive and RAID log set up: [Planned | Actual | Status]
    - Meeting cadences established (internal weekly, external weekly, workshops): [Planned | Actual | Status]
    - Project Initiation milestone declared: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]

    **Phase 2 – Project Planning**
    - Phase Start: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]
    - Joint store walk completed with retailer (Ops + Marketing): [Planned | Actual | Status]
    - Solution Design Document (SDD) created: [Planned | Actual | Status]
    - Wifi heat mapping planned and conducted; gaps remediated: [Planned | Actual | Status]
    - W&M certification process and requirements defined; Legal engaged: [Planned | Actual | Status]
    - Project success scores defined (Store Score, Project Success Score, Launch Usage Score): [Planned | Actual | Status]
    - Remote auditors booked with Ops: [Planned | Actual | Status]
    - Phase 2 Complete: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]

    **Phase 3 – Project Implementation**
    - Phase Start: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]
    - Integration and custom feature development started (PCRs tracked in Jira): [Planned | Actual | Status]
    - Caper stores set up in staging, UAT, and production: [Planned | Actual | Status]
    - Catalog file updated, validated, ingested, and sanity tested: [Planned | Actual | Status]
    - UAT cart order form submitted: [Planned | Actual | Status]
    - Production cart order form submitted: [Planned | Actual | Status]
    - Integration QA and FRT QA completed: [Planned | Actual | Status]
    - UAT carts configured and shipped; UAT payment terminal installed: [Planned | Actual | Status]
    - Retailer UAT planning, execution, issue triage, and sign-off completed: [Planned | Actual | Status]
    - Feature enablement confirmed in staging: [Planned | Actual | Status]
    - Phase 3 Complete: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]

    **Phase 4 – Project E2E In-store Testing**
    - Phase Start: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]
    - Store readiness checked (charging outlets, chargers, wifi): [Planned | Actual | Status]
    - Production carts set up and shipped: [Planned | Actual | Status]
    - Store wifi settings validated; SA approval received: [Planned | Actual | Status]
    - E2E test planning completed; TestRail runs and CDP Jira epic created: [Planned | Actual | Status]
    - E2E in-store testing conducted; all issues logged: [Planned | Actual | Status]
    - All E2E issues triaged, fixed, and retested: [Planned | Actual | Status]
    - PT in-store functional testing completed (debit, credit, tap, insert): [Planned | Actual | Status]
    - Final software and release versions upgraded in production: [Planned | Actual | Status]
    - E2E in-store testing declared complete (test summary report issued): [Planned | Actual | Status]
    - W&M certification performed (initial, where applicable): [Planned | Actual | Status]
    - BA hiring completed: [Planned | Actual | Status]
    - BA training and store employee training completed: [Planned | Actual | Status]
    - CM credentials, access, and staff override barcodes distributed: [Planned | Actual | Status]
    - Launch plan created; internal and external sign-off obtained: [Planned | Actual | Status]
    - Launch Checklist and Launch Plan Review completed: [Planned | Actual | Status]
    - Go/No-Go alignment obtained (internal and retailer): [Planned | Actual | Status]
    - Phase 4 Complete: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]

    **Phase 5 – Store Launch**
    - Phase Start: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]
    - DS ticket submitted to add store to Mode dashboard: [Planned | Actual | Status]
    - Marketing signs and Caper lane set up in store: [Planned | Actual | Status]
    - Carts placed in store; fixed chargers installed: [Planned | Actual | Status]
    - Pilot carts launched; blockers addressed: [Planned | Actual | Status]
    - All carts launched; blockers addressed: [Planned | Actual | Status]
    - Launch announced to retailer and internal stakeholders: [Planned | Actual | Status]
    - Phase 5 Complete / Store Launch Date: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]

    **Phase 6 – Stabilization & Transition to Sustaining**
    - Phase Start: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]
    - Daily performance reports published in Slack (D1–D5): [Planned | Actual | Status]
    - Issues fixed and validated during stabilization: [Planned | Actual | Status]
    - End of stabilization declared: [Planned | Actual | Status]
    - CSM & ETS handover document prepared and handover meeting conducted: [Planned | Actual | Status]
    - Official W&M certification completed (applicable US states): [Planned | Actual | Status]
    - XFN retrospective conducted; lessons learned documented: [Planned | Actual | Status]
    - Project closed / Transition to Sustaining complete: [Planned: MM/DD/YYYY | Actual: MM/DD/YYYY | Status]

6. Current Open Issues & Blockers
    - List all active Jira tickets, Slack-flagged issues, or known blockers. For each:
        - Issue: [Brief description]
        - Severity: [Critical / High / Medium / Low]
        - Owner: [Person responsible]
        - Status: [Open / In Progress / Pending Retailer / Pending Caper]
        - Last Updated: [MM/DD/YYYY]

7. Key Decisions Made
    - List important decisions that have been made and documented for this deployment. For each:
        - Decision: [What was decided]
        - Date: [MM/DD/YYYY]
        - Made By: [Person or team]
        - Impact: [Brief note on why this matters]

8. Risks
    - List current known risks to the deployment timeline or success. For each:
        - Risk: [Description]
        - Likelihood: [High / Medium / Low]
        - Impact: [High / Medium / Low]
        - Mitigation: [What is being done or planned]
        - Owner: [Person responsible]

9. Recent Activity (Last 2 Weeks)
    - Summarize the most significant updates, actions, and communications from the past two weeks. Draw from Jira activity, Slack messages, and project documents. Include:
        - What was completed
        - What decisions were made
        - Any escalations or notable conversations
        - Any changes to timeline or scope

10. Next Steps
    - List the most important upcoming actions needed to keep the project on track. For each:
        - Action: [What needs to happen]
        - Owner: [Person responsible]
        - Due Date: [MM/DD/YYYY or "ASAP"]
        - Dependency: [What this is blocked on, if anything]
