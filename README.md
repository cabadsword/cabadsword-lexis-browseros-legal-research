# Lexis BrowserOS Legal Research

A Codex skill for source-grounded legal research in Lexis using BrowserOS MCP, Codex Browser, or Playwright-style browser automation. It supports citation verification, Shepardizing and treatment checks, authority banks, research memos, table-of-authorities planning, and source-supported drafting.

The skill does not provide Lexis access. Users must have their own Lexis subscription, complete login and MFA themselves, and select the correct client or matter for each research session.

## What It Helps With

- Legal research memos
- Citation verification tables
- Shepard's and treatment reviews
- Authority banks
- Tables of authorities planning
- Argument outlines
- Statute, rule, and code-section validation
- Source-supported draft language
- Search logs and materials-reviewed working memos

## Core Workflow

1. Confirm the research product, jurisdiction, court level, procedural posture, and date sensitivity.
2. Confirm the Lexis `[client/matter]` before searching.
3. Use normal Lexis Legal Research through BrowserOS MCP, Codex Browser, or Playwright-style browser automation.
4. Search broadly to orient, then use terms and connectors, filters, and citing decisions for precision.
5. Open and read each authority directly before relying on it.
6. Shepardize key primary authorities and assess treatment at the proposition level when possible.
7. Keep search logs, treatment notes, rejected authorities, and Lexis AI lead-generation notes in separate working memos by default.
8. Keep final attorney-facing memos clean and source-supported.

## Guardrails

- Do not use Lexis AI, Protege, or AI-generated Lexis answers unless the user expressly authorizes it.
- If Lexis AI or Protege is authorized, use it only for lead generation and verify every accepted authority in normal Lexis.
- Do not store Lexis credentials, session cookies, browser profiles, or MFA artifacts.
- Do not rely on search-result snippets as final authority support.
- Do not overquote from Lexis or other copyrighted sources.
- Treat trial-court orders as persuasive only unless controlling law says otherwise.
- Preserve a reproducible research trail, but keep research-log material out of final memos unless requested.

## Repository Contents

```text
SKILL.md
agents/
  openai.yaml
references/
  browser-setup.md
  citation-verification.md
  deliverable-templates.md
  legal-research-workflows.md
  lexis-search-methods.md
  shepardizing-workflow.md
scripts/
  lexis_search_url_helper.ps1
```

## Installation

Install this repository as a Codex skill under your local Codex skills directory.

Windows PowerShell:

```powershell
git clone https://github.com/cabadsword/cabadsword-lexis-browseros-legal-research.git "$env:USERPROFILE\.codex\skills\lexis-browseros-legal-research"
```

macOS/Linux shell:

```bash
git clone https://github.com/cabadsword/cabadsword-lexis-browseros-legal-research.git "$HOME/.codex/skills/lexis-browseros-legal-research"
```

Manual ZIP install:

1. Download the repository ZIP from GitHub.
2. Extract it.
3. Rename the extracted folder to `lexis-browseros-legal-research`.
4. Move it into your Codex skills directory:
   - Windows: `%USERPROFILE%\.codex\skills\lexis-browseros-legal-research`
   - macOS/Linux: `~/.codex/skills/lexis-browseros-legal-research`

## Typical Prompt

```text
Use lexis-browseros-legal-research to research this issue in Lexis, Shepardize the key authorities, and produce a source-supported memo with a separate search log.
```

## Tool Dependencies

Primary browser path:

- BrowserOS MCP registered with Codex.

Fallback browser paths:

- Codex Browser plugin.
- Playwright-style browser MCP or other browser automation that can navigate, click, fill/type, extract page content or snapshots, and take screenshots.

Optional helper:

- `scripts/lexis_search_url_helper.ps1` builds a direct Lexis search URL from a query string. Always verify the resulting page in Lexis before relying on results.

## Privacy Warning

Never commit matter workspaces, client names, matter numbers, research logs, draft memos, downloaded authorities, screenshots, credentials, cookies, browser profiles, or Lexis session artifacts to this repository.

## Legal Review

This skill supports legal research workflow and source organization. It does not replace attorney review, final citation verification, Shepard's/treatment checks, court-rule review, or case-specific judgment.
