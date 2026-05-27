---
name: lexis-browseros-legal-research
description: Use when the user asks Codex to perform legal research, citation verification, Shepardizing or treatment review, authority table building, or source-supported legal memo drafting in Lexis using BrowserOS MCP, Codex Browser, or Playwright-style browser automation. Use normal Lexis search, source review, filters, and Shepard's tools; do not use Lexis AI or Protege unless the user expressly authorizes it.
---

# Lexis BrowserOS Legal Research

Use this skill for legal research in Lexis through browser automation. The goal is reliable, source-based legal research that can support briefs, motions, separate statements, tables of authorities, research memos, and citation verification.

## Core Rules

- Use ordinary Lexis legal research search and source review.
- Do not use Lexis AI, Protege, or AI-generated Lexis answers unless the user expressly authorizes it.
- Always associate research with the client or matter specified by the user.
- If the client/matter is not visible or specified, ask the user to identify the correct `[client/matter]` before researching.
- If login, MFA, or credentials are required, pause and ask the user to complete login manually.
- Never store, request, or commit Lexis credentials, session cookies, or browser profile artifacts.
- Start with normal browser snapshots and page review. Do not rely on search-result snippets as final authority support.
- If Lexis case, statute, or Shepard's pages time out or become unstable during full-page extraction, stop trying to scrape the heavy page. Use Lexis delivery, export, download, or print tools as a fallback, then parse the local file.
- Verify authorities against the specific proposition for which they are cited.
- Shepardize important primary authorities. When possible, verify treatment at the headnote or proposition level, not merely at the whole-case level.
- For statutes, rules, and code sections, check the current version/effective date and relevant citing decisions when the point matters.
- Keep an audit trail: search strings, filters, sources opened, exports or downloads used, export limitations, and why authorities were accepted or rejected. Put audit trails, materials reviewed, Lexis AI checks, treatment notes, rejected authorities, verification status, and export limitations in separate working files unless the user asks to include them in the final product.
- Keep final attorney memos clean: include the answer, governing law, application, objective risk assessment, recommendation, and a pure authority list; do not include research-log material, Lexis verification status, timeout notes, export limitations, or rejected authorities unless requested.
- When facts cut both ways, use a neutral risk assessment rather than pure advocacy. Identify the strongest opposing argument and the best response.
- Treat trial-court orders as persuasive only. State the specific procedural point they support and do not present them as controlling authority.
- If the user expressly authorizes Lexis AI or Protege, use it only for lead generation. Open every suggested authority directly in normal Lexis, verify the proposition, Shepardize key primary authority, and cite only the direct source.
- Do not overquote from Lexis or other copyrighted sources. Use short quotations only when necessary and otherwise summarize.

## Before Research

1. Identify the requested product:
   - citation verification table
   - legal research memo
   - table of authorities
   - authority bank
   - argument outline
   - case/statute treatment check
2. Identify jurisdiction, court level, date sensitivity, procedural posture, and governing body of law.
3. Identify whether the user supplied authorities that must control the research.
4. Confirm the Lexis client/matter if not already specified or visible.

## Browser Setup

Use `references/browser-setup.md` when connecting to Lexis, selecting a client/matter, using direct Lexis search URLs, or troubleshooting browser automation.

Default browser order:

1. BrowserOS MCP.
2. Codex Browser plugin.
3. Playwright-style browser MCP or other browser automation with navigation, clicking, typing, page snapshots/content extraction, and screenshots.

## Research Methods

Use `references/lexis-search-methods.md` for query construction, filters, terms and connectors, and search refinement.

Use `references/legal-research-workflows.md` for open-ended legal research, issue research, statute/rule validation, and building an authority bank.

Use `references/citation-verification.md` for checking draft citations, pincites, treatment, and proposition support.

Use `references/shepardizing-workflow.md` for Shepard's reports, headnote-level treatment review, and treatment-risk analysis.

Use `references/deliverable-templates.md` for output tables and memo formats.

## Default Output Standards

For citation verification, lead with exact corrections before the full table.

For legal research, lead with the answer and controlling authorities, then supporting analysis, objective risks, and recommendation. Keep search logs and source-review notes in separate working memos by default.

For authority tables, separate statutes/rules, cases, and secondary sources. Include the proposition supported and whether the authority is controlling, persuasive, or background.

## Quality Checklist

- Correct client/matter selected.
- Search used normal Lexis search, not Lexis AI.
- Each cited case/statute/rule was opened and checked.
- Pincites support the sentence where used.
- Shepard's or other treatment was reviewed for key authorities.
- Negative treatment was evaluated for the specific proposition.
- Search log is sufficient for another researcher to reproduce the work.
