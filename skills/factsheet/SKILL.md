---
name: factsheet
description: Generate a comprehensive factsheet with all key facts about a specific retailer's Caper cart store deployment
argument-hint: [retailer-name] [store-id]
context: fork
agent: general-purpose
tools: mcp__glean_default__search, mcp__glean_default__read_document, mcp__glean_default__chat
---

# Caper Cart Deployment Factsheet Generator

Generate a comprehensive factsheet documenting all important facts related to the specified retailer's Caper cart deployment project in one centralized document.

## Retailer and Store ID
**Target Retailer**: $ARGUMENTS (first argument is retailer name, second argument is store ID)
- **Store ID Formats Accepted** (any of these three):
  1. **Caper internal store ID** (ex: allegiance-prod-1, prod-clarks-1, prod-hgg-1)
  2. **Retailer store number/ID** (ex: 530, 1234)
  3. **Store/location name** (ex: hastings-on-hudson, times-square)
- **All Stores Option**: If second argument is "all" or left empty, search across all stores for that retailer
- **Store ID Resolution**: If a non-internal format is provided, resolve it to the internal Caper ID before proceeding

## Instructions

0. **Store ID Resolution Phase** (if needed):
   - If the store ID argument is NOT in the internal Caper format (doesn't match pattern like "allegiance-prod-1" or "prod-clarks-1"):
     - Search Glean/Jira/Confluence for the store ID mapping
     - Look for documents containing both the retailer name and the provided store identifier (retailer store number or location name)
     - Find the corresponding internal Caper store ID (format: [retailer]-prod-[number] or allegiance-prod-[number])
     - Use this resolved internal ID for all subsequent searches
   - If store ID is "all" or empty, skip resolution and search across all stores
   - If already in internal format, proceed directly to Research Phase

1. **Research Phase** - Gather comprehensive information from all available sources:
   - **Store Scope**: If store ID is provided (not "all" or empty), focus on that specific store. If "all" or empty, search across all stores for the retailer
   - Search Jira for all tickets related to $ARGUMENTS Caper deployment
   - If store ID is specific: Look for the store ID (second argument) in ticket descriptions, labels, or fields
   - Search all documentation (Confluence, Google Docs, internal docs) for $ARGUMENTS project information
   - Search Slack conversations for $ARGUMENTS deployment details and updates
   - Look for hardware specifications, store details, integration information
   - Identify stakeholders, timelines, milestones, and dependencies
   - Find technical specifications, backend configurations, and feature lists
   - Gather sales data, demographic data, and success criteria
   - Locate all project artifacts and reference documents

2. **Data Organization Phase** - Organize findings into the 10 key categories:
   - Retailer & Store: banners, locations, contacts, operational details
   - Project Summary: title, scope, objectives, strategic context
   - Hardware: cart specifications, models, quantities, accessories
   - Technology Stack & Integrations: POS, catalog, loyalty, payment systems
   - Timelines & Milestones: key dates, phases, launch schedule
   - Success Criteria & Launch Strategy: metrics, sales data, demographics
   - Key Stakeholders: internal and external contacts
   - Assumptions & Dependencies: project prerequisites and blockers
   - Risks: identified risks and mitigation strategies
   - Project Artifacts & References: links to all relevant documents

3. **Factsheet Generation** - Create a comprehensive factsheet using this structure:

Reference the task-list.md file in this directory for the complete template structure.

### Sections to Complete:

#### RPM Fact Sheet

**1. Retailer & Store**
- Banners
- Members
- Number of Stores
- Store Address(s)
- Store Contacts
- Store Operating Hours
- EIN
- Loading Dock

**2. Project Summary**
- Project Title
- Scope
- Primary Objective
- Strategic Context

**3. Hardware**
- Number of Carts
- Cart Model
- New vs. Refurbished carts
- Wheel Configurations (4 or 6)
- Lower Tray on Carts
- Camera Configurations
- Payment Terminals
- Accessories
- Number of Fixed Chargers
  - 10 or 15 cart fixed charger capacity
- Number of DC Adapters
- Number of ZBC Beacons

**4. Technology Stack & Integrations**
- POS Provider
- Catalog Provider
- Loyalty Provider
- Digital Coupon Provider
- Caper Backend is Setup
- Location Data for In-Store Items is Available
- Payment Processor
  - Debit Encryption Key Provided by Retailer
- Staging Store(s) is Setup
- Production Store(s) is Setup
- Internal Store IDs
- Partner ID
- Retailer (Warehouse) ID
- Warehouse Location ID(s)
- Targeted Software Release
- Feature List

**5. Timelines & Milestones**
- List all key dates and milestones

**6. Success Criteria & Launch Strategy**
- Sales Data
- Demographic Data

**7. Key Stakeholders**
- List all internal and external stakeholders with roles and contact info

**8. Assumptions & Dependencies**
- List all assumptions and dependencies

**9. Risks**
- List all identified risks

**10. Project Artifacts & References**
- Links to all relevant documents

4. **Output Format** - Create a Google Doc with the factsheet:
   - First, create the factsheet content in markdown format
   - Format as a well-structured markdown document with clear sections and subsections
   - Replace ALL [] placeholders with actual information
   - If information is not available, note "Information not available" or "TBD"
   - Include all specific details: addresses, names, phone numbers, IDs, etc.
   - Include source references where applicable (Jira tickets, document links, etc.)
   - Make the factsheet comprehensive and accurate
   - Document title format: `Factsheet - [Retailer Name] ([Month] [Day] [Year])`
   - Example title: `Factsheet - HGG (Feb 8 2026)`

5. **Google Doc Creation** - CRITICAL: Create Google Doc using md2doc:
   - First, save the markdown content to a temporary file in `/tmp/` directory
   - File naming: `/tmp/factsheet-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
   - Get the current time in 24-hour clock format with timezone (e.g., "2000EST" for 8:00 PM EST, "0945PST" for 9:45 AM PST)
   - Then upload to Google Docs using the md2doc upload script:
     ```bash
     export PATH="$HOME/.local/bin:$PATH" && cd ~/.claude/plugins/marketplaces/instacart/md2doc/skills/md2doc/scripts/ && uv run python upload-gdoc.py "/tmp/factsheet-[retailer]-[MM]-[DD]-[YYYY]-[Time].md" --title "Factsheet - [Retailer Name] ([Month] [Day] [Year])"
     ```
   - After upload completes, inform the user of the Google Doc URL
   - Clean up the temporary markdown file after successful upload

## Research Tools Available

Use these tools to gather information:
- **Glean Search**: Search internal company documentation
- **Glean Chat**: Ask questions about the retailer's deployment
- **Grep/Glob**: Search local codebase and documentation
- **Read**: Read specific files with deployment information

## Output Requirements

- **The output document must not exceed 10,000 words**
- The factsheet must be comprehensive and include all 10 categories
- All questions in the task-list.md must be addressed
- Replace ALL [] placeholders with actual data
- If information is not available, explicitly note "Information not available" or "TBD"
- Include specific details: numbers, names, addresses, IDs, dates
- **MUST create a Google Doc** - Do not just output to console
- **Document title format**: `Factsheet - [Retailer Name] ([Month] [Day] [Year])`
- **Temporary file naming**: `factsheet-[retailer]-[MM]-[DD]-[YYYY]-[Time].md`
- After successful upload, provide the user with the Google Doc URL
- Include source references (Jira tickets, document links, Slack threads)
- Format should be clear and well-organized for easy reference
- This is a factual reference document - be accurate and thorough

Generate a comprehensive factsheet for **$ARGUMENTS** and create it as a Google Doc using the md2doc plugin.
