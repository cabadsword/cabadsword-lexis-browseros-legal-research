# Browser Setup

Use this when Lexis research must be performed through browser automation.

## Browser Order

Prefer these browser options in order:

1. BrowserOS MCP.
2. Codex Browser plugin.
3. Playwright-style browser MCP or other browser automation.

The browser tool must be able to navigate, click, fill/type, inspect page content or snapshots, and capture screenshots when visual verification matters.

## BrowserOS MCP Registration

If BrowserOS is not available in the current tool list, the usual registration command is:

```powershell
codex mcp add browseros http://127.0.0.1:9000/mcp
codex mcp list
```

If the desktop sandbox blocks the `codex` command, ask the user to run the registration in a user-accessible Codex terminal, then reload or restart the Codex session.

## Codex Browser Fallback

Use the Codex Browser plugin when BrowserOS MCP is not available but the agent has an in-app browser automation tool. Use the same research discipline:

- open Lexis Legal Research directly
- pause for user login or MFA
- confirm the `[client/matter]`
- open authorities directly before citing them
- capture screenshots or page snapshots only as working verification material

## Playwright-Style Fallback

Use a Playwright-style browser MCP or comparable browser automation only if it supports:

- navigating to Lexis URLs
- clicking filters, tabs, links, and Shepard's report controls
- filling search boxes
- extracting page text or accessibility snapshots
- taking screenshots for visual confirmation

Do not use a headless-only or text-only tool if the research task requires visual confirmation of Lexis product, client/matter, filters, Shepard's signals, or page-specific pincites.

## Direct MCP Fallback

If BrowserOS is running locally but not exposed as a first-class tool, a direct JSON-RPC POST to `http://127.0.0.1:9000/mcp` may work. Use this only as an operational fallback, not as a substitute for normal browser review.

Common BrowserOS capabilities include:

- list pages
- create a new page
- navigate
- take a page snapshot
- get page content
- click
- fill/type

## Lexis Entry

Before substantive research:

1. Confirm the selected browser tool is connected and can see at least one browser page.
2. Open a fresh Lexis Legal Research tab.
3. If Lexis opens in Protege, Lexis AI, or another product, use the product switcher to return to Legal Research / Lexis.
4. Confirm the client or matter shown at the top of the normal Legal Research page.
5. Select the user-specified `[client/matter]`, using the user-confirmed visible client label when available.
6. If Lexis redirects to Protege, AI, or a page where the client/matter does not persist, return once to `https://plus.lexis.com/zhome` and repeat the product/client confirmation.
7. If prompted for login or MFA, stop and ask the user to complete login.

Pause before substantive research if the requested client/matter cannot be confirmed after the retry. Tell the user the exact generic page state visible in Lexis without exposing confidential details in any public artifact.

## Direct Search URL Pattern

When normal UI navigation is slow, construct a Lexis search URL using the encoded search query:

```text
https://plus.lexis.com/search/?pdmfid=1530671&pdsearchterms=<URL_ENCODED_QUERY>&pdtypeofsearch=searchboxclick&pdsearchtype=SearchBox&pdstartin=&pdpsf=oop%3A1%3A1&pdqttype=and&pdquerytemplateid=&pdsf=&ecomp=pygg&earg=pdpsf
```

Always verify the resulting page in the browser. Do not rely only on URL construction.

## Do Not Use

- Lexis AI or Protege-generated answers, unless the user expressly authorizes them.
- Stored credentials.
- Browser profile files, cookies, or session artifacts committed to a repository.
- Search-result snippets alone as final authority support.

## Troubleshooting

If search results are not usable:

- Refresh the page.
- Reconfirm the product is Lexis Legal Research, not Protege.
- Reconfirm the client/matter.
- If the client/matter does not persist, return once to `https://plus.lexis.com/zhome` and retry selection from the normal Legal Research page.
- Open a new page and navigate directly to Lexis.
- Use a narrower query or direct citation search.
- Ask the user to resolve login/MFA/session issues.

## Heavy Page / Timeout Fallback

Start with browser snapshots and ordinary page review. If Lexis document pages, case pages, statute pages, or Shepard's pages repeatedly time out during full-page extraction:

1. Stop attempting full DOM extraction of the heavy page.
2. Use direct citation search to reopen the authority if needed.
3. Use Lexis delivery, export, download, or print tools to save the authority, Shepard's report, or narrow treatment/citing-decision view.
4. Parse the local file for the proposition, pincite, and treatment note.
5. Record any export/download limitation in the working search log, not in the final memo unless the user asks.
