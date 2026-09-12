# Expected Unified Security Report

One of the main things the prototype is meant to produce is a single, consolidated security report — instead of a developer having to manually reconcile two separate, differently-formatted tool outputs from SAST and DAST.

## Planned fields

Each finding in the report is expected to include:

- **Finding ID** — a unique identifier so findings can be tracked and cross-referenced across repeated test runs
- **Vulnerability title** — a short, human-readable name for the issue
- **Testing source** — whether the finding came from SAST, DAST, or was flagged by both (useful for de-duplication and for our detection-coverage comparison)
- **CWE category** — links the finding to a recognised weakness classification rather than an ad-hoc label
- **OWASP category** — ties the finding to the OWASP Top 10 where applicable, for a widely understood severity/impact context
- **Severity** — Critical / High / Medium / Low
- **Affected component** — which part of the test application the issue was found in
- **Validation status** — whether the finding has been manually confirmed as a true positive, marked a false positive, or is still pending review

## Why this structure

Structuring the report this way directly supports two of our evaluation metrics: the CWE/OWASP fields feed severity coverage, and the validation status field is what lets us calculate the false-positive proportion after manual review.

This document describes the expected output structure only — it does not represent actual experimental results, since the prototype has not yet been run against a finalized test environment.
