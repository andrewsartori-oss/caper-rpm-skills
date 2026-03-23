# Scope-Doc: Output Template

## Skill's Purpose
This file defines the output template for generating a Project Scope Document for a specific retailer's Caper cart deployment. The document captures mutually agreed-upon scope of work, assumptions, dependencies, stakeholders, timeline, and requirements that will drive the overall implementation.

## **CRITICAL** ##
- This skill generates a full Project Scope Document — not a summary or task list
- Every [BRACKETED PLACEHOLDER] in the template below must be replaced with real data gathered via Glean
- If a data point cannot be confirmed from Glean, retain the placeholder and append "(TBD)" — never fabricate data
- The document is retailer-scoped (no store ID argument); it covers all stores in the deployment
- Base the structure and formatting on the Project Scope Template: https://docs.google.com/document/d/1xXZ5aFej_yrrPtU5HtKshEnr2CdIQ2O9uuW2aTiWXDY/edit

## Important: SKILL Output
- The scope-doc output must be an .md file that follows this naming convention:
  - `scope-doc-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
  - Time should be in 24-hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
  - Multiple files can be created on the same day without deleting previous ones
- The file directory must follow this naming convention: `scope-doc [retailer-name]`
  - If the directory already exists, do not create another one — save to the existing directory
- Also save a Google Doc version using the md2doc plugin

---

## Retailer: [to be determined by the user argument]

---

## For This Skill
- **CRITICAL**: Use Glean to gather data every time — prioritize searching for the latest versions of project documents. Do not refer to past skill-generated .md or .webloc files.
- **CRITICAL - Slack Channel Review**: You must explicitly enumerate and search every Slack channel whose name contains the [retailer-name]. Do NOT rely only on broad keyword searches. Required process:
  1. Use Glean to find all Slack channels with the retailer name in the channel name (search: `type:publicchannel [retailer-name]`)
  2. For each channel found, run a separate targeted Glean search using the `channel` filter for that specific channel name
  3. Do not skip any channel — missing a channel is unacceptable
- Key sources to search: Jira (CDP project), Confluence (XFN dashboard, SDD, store info), Google Docs (project charter, kickoff decks, retailer success plan, RAID log, factsheet), Smartsheet/Monday (project plan), Slack (#caper-project-[retailer])

---

## Output Document Template

# High Level Project Charter
# [RETAILER NAME]
Project Scope Document

## Revision History

| Version | Date | Author | Comments |
|---------|------|--------|----------|
| 0.1 | [DATE] | [AUTHOR] | Draft |

---

## Document Sign Off

By signing off, the teams agree to the scope mentioned above as well as the timelines outlined for development readiness and QA completion.

| Cross-Functional Team | Sign-Off | Date |
|-----------------------|----------|------|
| ES - SA | [NAME] | |
| ES - CSM | [NAME] | |
| QA | [NAME] + [NAME] | |
| Product Team | [NAME], [NAME] | |
| ES - RPM | [NAME] | |
| Store Ops | [NAME] + [NAME] | |
| Marketing | [NAME] + [NAME] | |
| BD | [NAME], [NAME] | |

---

## Project Objective

The purpose of this document is to outline the mutually agreed upon scope of work to be implemented and delivered for the [RETAILER NAME] Caper Project. The scope of work, along with any related assumptions and dependencies will drive the overall implementation timeline.

---

## Context

[RETAILER DESCRIPTION: company background, founding year, number of locations, geographic footprint, customer base, brand identity/motto if known]

For the Caper Pilot Project, **[X] carts** are planned to launch across **[X] stores**:

| Store | Address | Carts | Projected Launch |
|-------|---------|-------|-----------------|
| Store 1 – [NAME] (Pilot) | [ADDRESS] | [X] | [DATE] |
| Store 2 – [NAME] | [ADDRESS] | [X] | [DATE] |
| [Add rows as needed] | | | |

> **Note:** [SCOPE CAVEATS — e.g., stores excluded from pilot, contracted vs. recommended scope differences, if applicable]

XFN Team approved the Project Kickoff for [RETAILER NAME]:
- IC Internal Kickoff: **[DATE]**
- External / Retailer Kickoff: **[DATE]**

Deployment goals:
- Launch Caper smart carts to improve checkout experience and operational efficiency
- Ensure technical readiness, staff training, and customer adoption
- Monitor post-launch performance and optimize as needed

[RETAILER NAME] operates with the following tech stack:
- **POS:** [POS SYSTEM]
- **Loyalty / Digital Coupons:** [LOYALTY PROVIDER]
- **Catalog:** [CATALOG SOURCE]

> [ANY NOTABLE INTEGRATION FLAGS — e.g., FOAK integration, refurbished carts, AFS member, etc.]

---

## Retailer Success

- The [RETAILER NAME] Retailer Success Strategy is to be reviewed by XFN team and leadership [DATE IF KNOWN]
- Retailer Success Criteria is defined as reaching **[X]% GMV** and **[X] uses/cart/day (UCD)**
- Contractual KPIs: [X] UCD, [X]/5 average customer satisfaction rating, [X]% API uptime
- Retailer launch success will be refined during project initiation as Marketing and other inputs are finalized
- [Retailer Success Plan – Link if available]

---

## Project Stakeholders

| Company | Name | Role | R&R |
|---------|------|------|-----|
| Instacart | [NAME] | Retailer Project Manager | Leads project planning, execution, timeline, and coordination |
| Instacart | [NAME] | Solution Architect | Manages system architecture, engineering, and development |
| Instacart | [NAME] | Business Development | LIG retailer expertise to guide strategy & deliverables, retailer comms |
| Instacart | [NAME] | Customer Success Manager | Manages ongoing customer success |
| Instacart | [NAME] | Retail Ops Excellence Sr. Program Manager | Ensures deployment, scalability, and ongoing support |
| Instacart | [NAME] | Senior Marketing Manager II, Retailer Marketing | Handles go-to-market strategy, branding, and customer outreach |
| Instacart | [NAME] | Senior Product Designer II | Designs core customer experience flow – Checkout / Cart Placement |
| Instacart | [NAME] | Senior Associate, Product and Technology Partnerships | Owns relationship with external technical partners |
| Instacart | [NAME] | QA Engineer | Leads Caper Lab QA |
| Instacart | [NAME] | QA Engineer | Leads E2E Testing, Field QA |
| Instacart | [NAME] | UPOS | UPOS development |
| Instacart | [NAME] | 3PI / [LOYALTY PROVIDER] | Loyalty and digital coupons development |
| Instacart | [NAME] | Caper Deployment | Caper Deployment Development and Support |
| Instacart | [NAME] | CTAM | Catalog Technical Account Management |
| Instacart | [NAME] | HW Ops Manager | Manages supply chain of carts, chargers, payment terminals |
| [RETAILER] | [NAME] | Owner / Project Sponsor | |
| [RETAILER] | [NAME] | Marketing POC | |
| [PARTNER] | [NAME] | [ROLE] | |

---

## Project Schedule

The high-level project schedule and key milestones listed below are based on the assumptions and dependencies outlined.

**Current Projected Launch Date: [DATE]**

[[RETAILER] High Level Project Plan – Link if available]

Timeline Assumptions:
- [ASSUMPTION 1]
- [ASSUMPTION 2]
- [ASSUMPTION 3]
- [X] week(s) for integration testing, [X] week(s) for FRT, [X] weeks for E2E
- [X] days for Employee Testing Period

---

## Key Milestones

[[RETAILER] JIRA Dashboard – Link if available]

| Milestone | Date | Status |
|-----------|------|--------|
| [MILESTONE] | [DATE] | [Status] |
| Integration Testing Complete | [DATE] | Planned |
| FRT Complete | [DATE] | Planned |
| E2E In-Store Testing | [DATE] | Planned |
| Employee Testing Period | [DATE] | Planned |
| Launch – Store 1 (Pilot) | [DATE] | Planned |
| [Add rows as needed] | | |
| All Stores Live | [DATE] | Planned |

---

## High-level Project Requirements

### In Scope

**Software Release:**
- The latest software version that is close to the E2E in-store testing start date will be used. Currently, the latest release version is [VERSION].

**Technical:**
- POS: [POS SYSTEM]
- Loyalty / Digital Coupons: [LOYALTY PROVIDER]
- Catalog: [CATALOG SOURCE]
- Location Data via Catalog API
- WIFI and LTE Validation
- [PAYMENT METHOD: Payment on Cart / Transfer to SCO]
- [ANY OTHER INTEGRATION NOTES]

**Key Features and User Flows:**
- Scan, weigh, and bag
- Frictionless checkout
- Product search and discovery
- Loyalty programs
- Payment processing
- Point-of-sale
- Promotions and discounts
- Store Admin
- Cart Manager

**Feature Scope:**

| Feature | Release Version | Notes |
|---------|----------------|-------|
| Location Based Coupons and Ads | | |
| On-Cart Verifications | | |
| Payment Flow Redesign | | |
| Zone Based Checkout (ZBC) | | |
| Checkout Prompt | | |
| Loyalty Login v2 with QR Code | | |
| CECs (Caper Exclusive Coupons) | | |
| Produce OOO Flow | | |
| Negligible Weight 80g | Internal | |
| Price Override | | |
| LTE Fallback Phase 2 | Internal | |
| [ADDITIONAL FEATURE] | | |

**Hardware:**
- [X] [New / Refurbished] M3 Caper Carts
- Payment Terminals
- 2CV
- 6 Wheels
- Bag Hooks
- Cup Holders
- In-Basket Bag Holders
- IR Film & Charger Raincoats
- [X] Fixed Chargers ([X] per store × [X] stores)
- Beacons for Zone-Based Checkout (TBD)

**Operational:**
- Operational requirements to be defined post-store walk
- SE Promotion: Incentivized SE Promotion Post Launch

**Marketing:**
- [MARKETING KIT DESCRIPTION]

**Legal/Compliance:**
- Review privacy policies, terms of use, signage compliance
- Alcohol, drug/pharmacy on cart
- [W&M CERTIFICATION OWNER] to conduct W&M Certification

**Analytics:**
- Usage tracking, engagement reports, feedback collection

---

### Out of Scope

**Technical:**
- [OUT OF SCOPE ITEM 1]
- [OUT OF SCOPE ITEM 2]

**Operational:**
- [OUT OF SCOPE ITEM]

---

### Post Launch Feature List

| Feature | Release Version | Status |
|---------|----------------|--------|
| [FEATURE] | | Post-launch |

---

## Project Risks

[RAID Log – Link if available]

| Risk | Functional Area | Severity | DRI | Status |
|------|----------------|----------|-----|--------|
| [RISK] | [AREA] | [High/Medium/Low] | [NAME] | [Open/Closed] |
| [RISK] | [AREA] | [High/Medium/Low] | [NAME] | [Open/Closed] |

---

## Assumptions & Dependencies

The project plan is based on the following assumptions and dependencies as of [DATE].

**Assumptions:**
1. [ASSUMPTION 1]
2. [ASSUMPTION 2]
3. Contract will be signed prior to the shipping of Caper carts to stores
4. [RETAILER] is able to successfully support the targeted launch time frame
5. [RETAILER] will accomplish W&M certification ahead of launch
6. [RETAILER] will complete the electrical retrofit required for fixed chargers
7. [RETAILER] will make improvements to store WIFI if needed
8. [RETAILER] will have appropriate logo files for marketing requirements
9. Pilot store is fit for retailer success: checkout flow + cart placement

**Dependencies:**
1. [DEPENDENCY 1] — [OWNER]
2. [DEPENDENCY 2] — [OWNER]
3. Contract signed — [OWNER]
4. [RETAILER] to provide catalog prior to implementation — [OWNER]

---

## Project Management – Workflow Management Approach

The RPM team uses a workflow-based structure for Caper deployment projects.

Benefits of workflow-based approach:
- Concentrates on the flow of work through sequential steps with clear exit criteria
- Emphasizes risk management, dependency management, and tracking progress
- Ideal for complex projects with interconnected processes
- Improves efficiency and transparency

- [RETAILER] Workflows: [Link if available]
- JIRA Workflow & Assignment Tracking Dashboard: [Link if available]

---

## Project Management Deliverables

- SS Project Plan: [Link if available]
- Monday Project Plan: [Link if available]
- JIRA Project Plan: [Link if available]
- Deployment Plan: [Link if available]
- RAID Log: [Link if available]

---

## References

- [XFN Dashboard](Link if available)
- [Retailer Success Plan](Link if available)
- [SDD](Link if available)
- [Internal Kickoff Deck](Link if available)
- [External Kickoff Deck](Link if available)
- [Key Retailer Information](Link if available)
- [Google Drive – Retailer Folder](Link if available)
- [JIRA Project](Link if available)
- [Marketing Package](Link if available)
- Slack: #caper-project-[retailer]
