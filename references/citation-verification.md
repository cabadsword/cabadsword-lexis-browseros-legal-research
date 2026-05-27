# Citation Verification Workflow

Use this when checking citations in a draft brief, motion, separate statement, research memo, or table of authorities.

## Scope

Verify legal authorities only unless the user asks otherwise:

- cases
- statutes
- rules
- regulations
- treatises and practice guides
- secondary legal sources

Do not include factual record citations unless the user requests local verification.

## Steps

1. Extract each citation and the sentence or proposition it supports.
2. Search each citation directly in Lexis.
3. Open the authority, not merely the search result.
4. Start with browser snapshots and ordinary page review. If full document extraction times out or becomes unstable, stop scraping the heavy page and use Lexis delivery, export, download, or print as a fallback.
5. Confirm:
   - case/statute/rule name
   - reporter or code citation
   - court and year
   - current text for statutes/rules
   - pincite, if used
   - treatment/status
   - whether the authority supports the exact proposition
6. Shepardize key primary authorities against the proposition cited.
7. Flag problems with recommended replacement text.

## Classification

Use these statuses:

- `OK`
- `Format issue`
- `Pincite issue`
- `Support issue`
- `Treatment issue`
- `Replace / revise`
- `Needs local verification`

## Pincite Method

For a case pincite:

1. Open the case.
2. Navigate to the cited page or paragraph.
3. Read enough surrounding text to confirm the rule.
4. Check whether the cited language is holding, dictum, procedural background, party argument, or quotation from another case.
5. Shepardize if the case is important to the argument.

If browser automation cannot reliably read the case page, use this fallback:

1. Search the exact citation again and open the matching authority.
2. Try a narrow page, paragraph, or find-within-document review.
3. If the page still times out, export/download/print the document from Lexis.
4. Parse the local export for the cited proposition and best pincite.
5. Record the export path or any export limitation in the working log.

## Proposition Support

Ask:

- Does the authority say what the draft says?
- Is the draft using the authority too broadly?
- Is the cited page the best pincite?
- Is a more direct authority available?
- Has negative treatment undermined this proposition, rather than the case generally?

Do not use "export unavailable," "timeout," or "needs direct Lexis search" as a final status for a retained authority unless the user expressly accepts that limitation. Put those notes in the working log and either complete verification another way or remove the authority from the final product.

## Output

Lead with corrections:

| Replace | With | Reason |
|---|---|---|

Then provide the verification table:

| Document | Section / Sentence | Draft Citation | Lexis-Confirmed Citation | Pincite | Treatment | Supports Proposition? | Recommended Edit |
|---|---|---|---|---|---|---|---|

If all citations are accurate, say no legal citation changes are needed and list any non-Lexis items that remain unverified.
