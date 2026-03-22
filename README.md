# FraudWarningSite

Static site for a forceful but more defensible version of the original warning page.

## Current direction

The relaunch version keeps the main warning purpose intact:

- state the repo owner's firsthand deposit/refund dispute clearly
- explain that a police report was filed and partial repayments followed
- preserve the scale of the broader public-source pattern
- keep the business-name breadth and source links that show repetition

At the same time, it avoids some of the most attackable choices from the old version:

- no verbatim complaint dump
- no personal-character narrative sections
- no open complaint submission flow
- no interactive map or exposed API key
- no raw KML or working-note deployment

## Files

- `index.html`: warning-focused landing page anchored in firsthand facts and source-backed patterns
- `corrections.html`: corrections and clarification workflow
- `package.sh`: rsync-based publish helper
- `package-exclude.ctl`: excludes non-public artifacts from deployment

## Before hosting

- Replace the placeholder contact address in `corrections.html`
- Replace the placeholder wording in the `My Documented Case` section with exact dates, partial repayment totals, and current unpaid balance
- Review outbound links for currency and accuracy
- If this repo is public, remember that removed material still exists in git history; the strongest cleanup is publishing from a fresh repo or orphan branch that contains only the relaunch site
