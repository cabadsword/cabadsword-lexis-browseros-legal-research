# Lexis Search Methods

Use this for constructing and refining Lexis searches.

## Search Strategy Ladder

1. Start broad when the issue is unfamiliar.
2. Switch to terms and connectors when precision matters.
3. Filter by jurisdiction, court, source, date, category, and practice area.
4. Search within results using issue-specific terms.
5. Open and read the leading cases or statutes.
6. Use Shepard's, headnotes, citing decisions, and tables of authorities to expand from strong sources.

## Query Types

Use natural language for issue spotting:

```text
California motion to compel third party subpoena bank records attorney client privilege work product
```

Use terms and connectors for precision:

```text
(bank! or financial) /5 record! and (attorney-client or privilege or work product) and subpoena
```

## Connector Toolkit

- Exact phrase: `"attorney-client privilege"`
- AND: `and` or `&`
- OR: `or`
- Proximity: `/n` or `near/n`
- Ordered proximity: `pre/n`
- Same sentence: `/s`
- Same paragraph: `/p`
- Exclusion: `and not`
- Root expansion: `privileg!`, `sanction!`, `misappropriat!`
- Grouping: parentheses around alternatives and proximity groups

## Search Refinement

After a broad search, narrow using:

- jurisdiction
- court
- timeline/date
- content category
- source
- search within results
- publication status
- practice area/topic

Use search within results when the result set is too broad:

```text
financial privacy /10 discovery
```

## Useful Expansion Techniques

From a good case:

- review headnotes
- Shepardize the case
- Shepardize narrow by headnote when available
- review citing decisions by jurisdiction and treatment
- review the case's table of authorities
- search within citing decisions for the proposition terms

From a statute or rule:

- confirm current text and effective date
- review notes and citing decisions
- search within citing decisions for the procedural use
- check whether later cases limit the statute's use

## Search Log

Record:

- exact search strings
- filters applied
- sources opened
- citations accepted
- citations rejected
- reason for each major research conclusion

## Source Notes

Lexis supports natural-language and terms-and-connectors searches, result filters, and search within results. Lexis terms and connectors include exact phrases, `and`, `or`, `/n`, `pre/n`, `/s`, `/p`, and exclusion connectors. Lexis help pages should be consulted if syntax appears to behave unexpectedly.
