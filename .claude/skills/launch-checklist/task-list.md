# Launch Readiness: Tasks

## Skill's Purpose
This file contains the tasks and assessment criteria for evaluating launch readiness for a Caper deployment. Given a target launch date, this skill assesses readiness across all workstreams, checks for missing artifacts, flags unresolved dependencies, and generates a launch go/no-go recommendation with evidence.

## Important: SKILL output
- The launch checklist output must be an .md file that must follow this naming convention: LAUNCH-[retailer]-[MM]-[DD]-[YYYY]-[Time].md
    - The file name includes the time when it was created, thus there can be multiple files created on the same day without having to delete a previous one.
    - Time should be created as 24 hour clock with timezone indicated (ex: 8:00pmEST = 2000EST)
- The file directory where these files are saved must follow this naming convention: launch-checklist [retailer-name].
    - If the file directory already exists, do not create another one, just save the file to that directory.

---

## Retailer: [to be determined by the user]

---

## Your Tasks

1. Launch Overview
    - Retailer Name: [Retailer Name]
    - Target Launch Date: [MM/DD/YYYY]
    - Days Until Launch: [Number]
    - Current Launch Readiness Status: [GO / NO-GO / CONDITIONAL GO]
    - Executive Summary: [High level overview of launch readiness]

2. Launch Go/No-Go Recommendation
    - **Recommendation**: [GO / NO-GO / CONDITIONAL GO]
    - **Confidence Level**: [High / Medium / Low]
    - **Key Evidence Supporting Recommendation**:
        1. [Evidence Item 1]
        2. [Evidence Item 2]
        3. [Evidence Item 3]
    - **Critical Conditions** (if Conditional Go):
        1. [Condition 1]: [Must be resolved by DATE]
        2. [Condition 2]: [Must be resolved by DATE]

3. Workstream Readiness Assessment

    ### Hardware & Infrastructure
    - **Status**: [Ready / At Risk / Not Ready]
    - **Completion**: [X%]
    - **Key Items**:
        - Carts Delivered: [Yes/No] - [X of Y carts]
        - Cart Hardware Testing: [Complete / In Progress / Not Started]
        - Network Infrastructure: [Ready / At Risk / Not Ready]
        - Power Infrastructure: [Ready / At Risk / Not Ready]
    - **Outstanding Issues**: [List any blockers or risks]

    ### Software & Integration
    - **Status**: [Ready / At Risk / Not Ready]
    - **Completion**: [X%]
    - **Key Items**:
        - Software Build: [Version number and status]
        - API Integration: [Complete / In Progress / Not Started]
        - Third-party Integrations: [Complete / In Progress / Not Started]
        - Feature Flags Configured: [Yes/No]
    - **Outstanding Issues**: [List any blockers or risks]

    ### Testing & Validation
    - **Status**: [Ready / At Risk / Not Ready]
    - **Completion**: [X%]
    - **Key Items**:
        - Unit Testing: [Complete / In Progress / Not Started]
        - Integration Testing: [Complete / In Progress / Not Started]
        - User Acceptance Testing (UAT): [Complete / In Progress / Not Started]
        - Load/Performance Testing: [Complete / In Progress / Not Started]
        - Security Testing: [Complete / In Progress / Not Started]
    - **Outstanding Issues**: [List any blockers or risks]

    ### Operations & Support
    - **Status**: [Ready / At Risk / Not Ready]
    - **Completion**: [X%]
    - **Key Items**:
        - 24/7 Support Coverage: [Yes/No]
        - Escalation Procedures: [Documented / In Progress / Not Started]
        - Monitoring & Alerting: [Configured / In Progress / Not Started]
        - Incident Response Plan: [Complete / In Progress / Not Started]
    - **Outstanding Issues**: [List any blockers or risks]

    ### Training & Documentation
    - **Status**: [Ready / At Risk / Not Ready]
    - **Completion**: [X%]
    - **Key Items**:
        - Store Staff Training: [Complete / In Progress / Not Started]
        - IT Staff Training: [Complete / In Progress / Not Started]
        - Customer Support Training: [Complete / In Progress / Not Started]
        - Training Materials: [Complete / In Progress / Not Started]
    - **Outstanding Issues**: [List any blockers or risks]

    ### Compliance & Legal
    - **Status**: [Ready / At Risk / Not Ready]
    - **Completion**: [X%]
    - **Key Items**:
        - Legal Agreements: [Signed / In Review / Not Started]
        - Privacy/Data Compliance: [Complete / In Progress / Not Started]
        - Regulatory Approvals: [Complete / In Progress / Not Started]
        - Terms of Service: [Finalized / In Review / Not Started]
    - **Outstanding Issues**: [List any blockers or risks]

4. Critical Artifacts Assessment

    ### Required Artifacts - Launch Blockers
    - [ ] Launch Runbook: [Complete / Missing / In Progress]
    - [ ] Test Plan: [Complete / Missing / In Progress]
    - [ ] Rollback Plan: [Complete / Missing / In Progress]
    - [ ] Incident Response Plan: [Complete / Missing / In Progress]
    - [ ] Support Escalation Matrix: [Complete / Missing / In Progress]
    - [ ] Store Staff Training Materials: [Complete / Missing / In Progress]
    - [ ] Technical Documentation: [Complete / Missing / In Progress]
    - [ ] Monitoring Dashboard: [Complete / Missing / In Progress]

    ### Important Artifacts - Should Have
    - [ ] Customer FAQ: [Complete / Missing / In Progress]
    - [ ] Troubleshooting Guide: [Complete / Missing / In Progress]
    - [ ] Performance Baseline Metrics: [Complete / Missing / In Progress]
    - [ ] Communication Plan: [Complete / Missing / In Progress]
    - [ ] Post-Launch Review Plan: [Complete / Missing / In Progress]

    ### Missing Artifacts Detail
    1. [Artifact Name]:
        - Status: [Missing / Incomplete]
        - Impact: [High / Medium / Low]
        - Owner: [Name]
        - Target Completion: [DATE]

5. Dependency Analysis

    ### Critical Dependencies - Must Resolve Before Launch
    1. **Dependency Name**: [Description]
        - Owner: [Team/Person]
        - Current Status: [Blocked / In Progress / At Risk]
        - Impact if Unresolved: [Description]
        - Target Resolution Date: [DATE]
        - Mitigation Plan: [Actions if not resolved]

    ### External Dependencies
    1. **Dependency Name**: [Description]
        - External Party: [Company/Team]
        - Current Status: [Blocked / In Progress / At Risk]
        - Impact if Unresolved: [Description]
        - Target Resolution Date: [DATE]

    ### Internal Dependencies
    1. **Dependency Name**: [Description]
        - Internal Team: [Team Name]
        - Current Status: [Blocked / In Progress / At Risk]
        - Impact if Unresolved: [Description]
        - Target Resolution Date: [DATE]

6. Risk Assessment

    ### Launch-Blocking Risks (Must Resolve)
    1. **Risk**: [Risk Name]
        - Severity: Critical
        - Probability: [High / Medium / Low]
        - Impact: [Description of what could go wrong]
        - Mitigation: [Actions being taken]
        - Owner: [Name]
        - Resolution Deadline: [DATE]

    ### High Risks (Could Impact Launch)
    1. **Risk**: [Risk Name]
        - Severity: High
        - Probability: [High / Medium / Low]
        - Impact: [Description]
        - Mitigation: [Actions being taken]
        - Owner: [Name]

    ### Medium Risks (Monitor Closely)
    1. **Risk**: [Risk Name]
        - Severity: Medium
        - Probability: [High / Medium / Low]
        - Impact: [Description]
        - Mitigation: [Actions being taken]

7. Timeline & Milestones

    ### Completed Milestones
    - [DATE]: [Milestone Name] ✓
    - [DATE]: [Milestone Name] ✓

    ### Upcoming Milestones (Before Launch)
    - [DATE]: [Milestone Name] - [Status: On Track / At Risk / Delayed]
    - [DATE]: [Milestone Name] - [Status: On Track / At Risk / Delayed]
    - [Launch Date]: Launch Day

    ### Post-Launch Milestones
    - [DATE]: [Milestone Name]
    - [DATE]: [Milestone Name]

8. Launch Day Readiness

    ### Pre-Launch Checklist (Day Before)
    - [ ] Final system health check completed
    - [ ] All monitoring alerts tested and verified
    - [ ] Support team briefed and on standby
    - [ ] Rollback plan reviewed and approved
    - [ ] Communication plan activated
    - [ ] Stakeholder notification sent
    - [ ] War room scheduled and confirmed

    ### Launch Day Activities
    - [ ] Go-live at [TIME]
    - [ ] Initial health check at [TIME]
    - [ ] First status update at [TIME]
    - [ ] Team standup at [TIME]
    - [ ] End of day review at [TIME]

    ### Launch Team Contact Information
    - Launch Lead: [Name] - [Contact]
    - Technical Lead: [Name] - [Contact]
    - Operations Lead: [Name] - [Contact]
    - Support Lead: [Name] - [Contact]
    - Executive Sponsor: [Name] - [Contact]

9. Contingency Plans

    ### Scenario 1: Critical System Failure During Launch
    - **Trigger**: [Description of conditions]
    - **Immediate Actions**:
        1. [Action with responsible party and timeline]
        2. [Action with responsible party and timeline]
    - **Rollback Criteria**: [When to initiate rollback]
    - **Communication Plan**: [Who to notify and how]

    ### Scenario 2: Partial Feature Degradation
    - **Trigger**: [Description of conditions]
    - **Immediate Actions**:
        1. [Action with responsible party and timeline]
        2. [Action with responsible party and timeline]
    - **Continue/Abort Criteria**: [Decision framework]
    - **Communication Plan**: [Who to notify and how]

    ### Scenario 3: Launch Postponement
    - **Trigger**: [Conditions requiring postponement]
    - **New Launch Date**: [DATE or TBD]
    - **Required Actions**:
        1. [Action with responsible party and timeline]
        2. [Action with responsible party and timeline]
    - **Stakeholder Communication**: [Plan for notifying all parties]

10. Final Recommendation Summary

    ### GO Criteria
    - All launch-blocking risks resolved: [Yes/No]
    - All critical artifacts complete: [Yes/No]
    - All critical dependencies resolved: [Yes/No]
    - All workstreams at 95%+ readiness: [Yes/No]
    - Launch team confirms readiness: [Yes/No]

    ### CONDITIONAL GO Criteria
    - Limited number of medium-severity issues: [Yes/No]
    - Clear mitigation plans in place: [Yes/No]
    - Issues can be addressed post-launch: [Yes/No]

    ### NO-GO Criteria
    - Launch-blocking risks unresolved: [Yes/No]
    - Critical artifacts missing: [Yes/No]
    - Critical dependencies unresolved: [Yes/No]
    - Major workstream(s) not ready: [Yes/No]

    ### **FINAL RECOMMENDATION**: [GO / NO-GO / CONDITIONAL GO]

    **Justification**: [Detailed explanation of recommendation with supporting evidence]

---

## Report Prepared By
- Author: [Name]
- Date: [DATE]
- Time: [TIME with timezone]
