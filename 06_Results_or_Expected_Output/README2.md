# Results and Expected Output

This folder lays out how we plan to evaluate the prototype and what we expect it to produce — not actual results, since we're still at the research proposal stage. Nothing here should be read as a finished experiment; think of it as our evaluation blueprint.

The end goal of the prototype is to take the separate outputs from static and dynamic security testing and turn them into one unified security report, rather than leaving developers to manually cross-reference two unrelated tool outputs. That consolidation — merging, de-duplicating, and classifying findings — is really the core value the integrated approach is meant to add over using SAST or DAST alone.

## What's in this folder

- `evaluation_metrics.md` — the four metrics we'll use to judge the prototype, plus how the SAST-only / DAST-only / integrated comparison will work
- `expected_report_structure.md` — what fields the final unified security report is expected to contain

## A note on honesty

We're intentionally being careful not to present sample data or expected output as if it were already real experimental results. Everything in this folder describes what we plan to measure and expect to see, based on the reasoning in our literature review and methodology — the real numbers only exist once the prototype is actually built and run.
