---
name: launch-checklist
description: Generate a comprehensive launch readiness assessment for a specific retailer's Caper cart deployment
argument-hint: [retailer-name] [target-launch-date]
context: fork
agent: general-purpose
---

# Launch Readiness Checklist Generator

Generate a comprehensive launch readiness assessment for the specified retailer's Caper cart deployment. Given a target launch date, assess readiness across all workstreams, check for missing artifacts, flag unresolved dependencies, and generate a launch go/no-go recommendation with evidence.

## Retailer and Launch Date
**Target Retailer**: $ARGUMENTS (first argument is retailer name, second argument is target launch date)

## Instructions

1. **Research Phase** - Gather information from all available sources:
   - Search Jira for tickets related to $ARGUMENTS Caper deployment and launch preparation
   - Search all documentation (Confluence, Google Docs, internal docs) for $ARGUMENTS launch plans, test results, and readiness information
   - Search Slack conversations for $ARGUMENTS launch discussions, updates, blockers, and go/no-go conversations
   - Look for launch runbooks, test plans, training materials, and support documentation
   - Identify all workstream owners and their completion status
   - Review recent testing results and any identified issues
   - Find all open dependencies and blockers
   - Look for risk assessments and mitigation plans

2. **Analysis Phase** - Assess launch readiness:
   - Determine overall launch readiness status (GO / NO-GO / CONDITIONAL GO)
   - Assess each workstream's readiness level and completion percentage
   - Identify all missing or incomplete critical artifacts
   - Flag all unresolved dependencies (internal and external)
   - Categorize risks by severity and likelihood
   - Evaluate contingency and rollback plans
   - Calculate days remaining until target launch date
   - Review launch team contact information and roles

3. **Report Generation** - Create the report using this structure:

Reference the task-list.md file in this directory for the complete report template structure.

### Report Sections to Complete:

#### 1. Launch Overview
- **Retailer Name**: Name of the retailer
- **Target Launch Date**: Specific date provided by user or found in research
- **Days Until Launch**: Calculate based on current date
- **Current Launch Readiness Status**: GO / NO-GO / CONDITIONAL GO
- **Executive Summary**: High-level overview of overall launch readiness

#### 2. Launch Go/No-Go Recommendation
- **Recommendation**: Clear GO / NO-GO / CONDITIONAL GO statement
- **Confidence Level**: High / Medium / Low based on data quality
- **Key Evidence**: List 3-5 key pieces of evidence supporting the recommendation
- **Critical Conditions**: If Conditional Go, list specific conditions that must be met with deadlines

#### 3. Workstream Readiness Assessment

Assess each of these workstreams:
- **Hardware & Infrastructure**: Carts, network, power, physical setup
- **Software & Integration**: Code, APIs, integrations, configuration
- **Testing & Validation**: Unit, integration, UAT, performance, security tests
- **Operations & Support**: 24/7 coverage, escalation, monitoring, incident response
- **Training & Documentation**: Staff training, materials, documentation
- **Compliance & Legal**: Agreements, privacy, regulatory approvals

For each workstream:
- Status: Ready / At Risk / Not Ready
- Completion percentage
- Key items with their individual status
- Outstanding issues or blockers

#### 4. Critical Artifacts Assessment

Check for these artifacts and indicate status:

**Required Artifacts** (Launch Blockers):
- Launch Runbook
- Test Plan
- Rollback Plan
- Incident Response Plan
- Support Escalation Matrix
- Store Staff Training Materials
- Technical Documentation
- Monitoring Dashboard

**Important Artifacts** (Should Have):
- Customer FAQ
- Troubleshooting Guide
- Performance Baseline Metrics
- Communication Plan
- Post-Launch Review Plan

For any missing or incomplete artifacts:
- Name of artifact
- Current status
- Impact level (High/Medium/Low)
- Owner responsible
- Target completion date

#### 5. Dependency Analysis

Identify and categorize all dependencies:

**Critical Dependencies** (Must resolve before launch):
- Description of dependency
- Owner (team or person)
- Current status
- Impact if unresolved
- Target resolution date
- Mitigation plan if not resolved

**External Dependencies**:
- Dependencies on third parties or external systems

**Internal Dependencies**:
- Dependencies on internal teams or systems

#### 6. Risk Assessment

Categorize all identified risks:

**Launch-Blocking Risks**:
- Critical severity risks that must be resolved before launch
- Include probability, impact, mitigation, owner, deadline

**High Risks**:
- Could significantly impact launch success

**Medium Risks**:
- Should monitor but not launch-blocking

#### 7. Timeline & Milestones

- **Completed Milestones**: Past achievements with dates
- **Upcoming Milestones**: Future milestones before launch with status
- **Post-Launch Milestones**: Planned activities after launch

#### 8. Launch Day Readiness

- **Pre-Launch Checklist**: Tasks for day before launch
- **Launch Day Activities**: Hour-by-hour plan for launch day
- **Launch Team Contact Information**: Key personnel and contact details

#### 9. Contingency Plans

Create specific contingency plans for at least 3 scenarios:
- **Scenario 1**: Critical system failure during launch
- **Scenario 2**: Partial feature degradation
- **Scenario 3**: Launch postponement

For each scenario:
- Trigger conditions
- Immediate actions with responsible parties
- Decision criteria (rollback, continue, abort)
- Communication plan

#### 10. Final Recommendation Summary

Evaluate against GO/NO-GO/CONDITIONAL GO criteria:

**GO Criteria**:
- All launch-blocking risks resolved
- All critical artifacts complete
- All critical dependencies resolved
- All workstreams at 95%+ readiness
- Launch team confirms readiness

**CONDITIONAL GO Criteria**:
- Limited medium-severity issues
- Clear mitigation plans in place
- Issues can be addressed post-launch

**NO-GO Criteria**:
- Launch-blocking risks unresolved
- Critical artifacts missing
- Critical dependencies unresolved
- Major workstream(s) not ready

**FINAL RECOMMENDATION**: Clear statement with detailed justification

4. **Output Format** - Save the report as a markdown file:
   - Create a markdown file named: `LAUNCH-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - The file name includes the time when it was created
   - This allows multiple files to be created on the same day without deleting previous ones
   - Save the file in the "launch-checklist [retailer]" folder on the Desktop
   - Format as a well-structured markdown document with proper headings, lists, and checkboxes
   - Include all research findings with specific details
   - Replace ALL [] placeholders with actual information
   - Add specific dates, ticket numbers, test results, and concrete details
   - Include source references where applicable
   - Use checkboxes [ ] for incomplete items and [x] for completed items
   - Add a note at the end with instructions for copying to Google Doc

5. **File Creation** - CRITICAL: Check if directory exists, then create the markdown file:
   - First, check if the directory exists: `/Users/andrewsartori/Desktop/launch-checklist [retailer]/`
   - If it doesn't exist, create it: `mkdir -p "/Users/andrewsartori/Desktop/launch-checklist [retailer]"`
   - If it exists, use the existing directory (do NOT create another one)
   - Get the current time in 24-hour clock format with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - Then save the file to: `/Users/andrewsartori/Desktop/launch-checklist [retailer]/LAUNCH-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Example: For HGG on Feb 15, 2026 at 8:00 PM EST: `/Users/andrewsartori/Desktop/launch-checklist HGG/LAUNCH-HGG-02-15-2026-2000EST.md`
   - Content: Complete formatted report in markdown
   - After writing the file, inform the user of the exact file location

6. **Google Doc Instructions** - Include at the end of the markdown file:
   - Provide clear instructions for copying the formatted report into a Google Doc
   - Suggest appropriate formatting for the Google Doc version
   - Note that checkboxes can be converted to Google Doc checkboxes

## Research Tools Available

Use these tools to gather information:
- **Glean Search**: Search internal company documentation for launch plans, test results, artifacts
- **Glean Chat**: Ask complex questions about the retailer's launch readiness
- **Grep/Glob**: Search local codebase and documentation
- **Read**: Read specific files with launch information

## Output Requirements

- The report must be comprehensive and actionable
- All [] brackets must be filled with real data from research
- Include specific dates, not placeholders like [DATE]
- Provide evidence-based launch readiness assessment
- Include clear GO/NO-GO recommendation with justification
- List all missing artifacts and unresolved dependencies
- Include specific action items with owners when possible
- Be honest about risks and readiness gaps
- **MUST create a markdown file** - Do not just output to console
- **File naming convention**: `LAUNCH-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
  - Time format: 24-hour clock with timezone indicated (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
  - This allows multiple files per day without deleting previous versions
- **Folder naming convention**: `launch-checklist [retailer]`
- **Save location**: `/Users/andrewsartori/Desktop/launch-checklist [retailer]/`
- If the retailer-specific folder exists, use it (do NOT create another one)
- If it doesn't exist, create it
- Inform the user of the exact file location after creation
- Include Google Drive upload instructions at the end of the report

## Critical Success Factors

- **Evidence-Based**: Every assessment must be backed by specific evidence from research
- **Actionable**: Clear next steps for every identified issue
- **Honest**: Don't sugarcoat readiness issues - better to identify problems now
- **Complete**: Cover all workstreams and artifact categories thoroughly
- **Specific**: Use actual dates, names, ticket numbers, and concrete details
- **Decision-Ready**: Provide clear GO/NO-GO recommendation with confidence level

Generate the complete launch readiness checklist for **$ARGUMENTS** and save it as a markdown file in a Desktop folder named "launch-checklist [retailer]".
