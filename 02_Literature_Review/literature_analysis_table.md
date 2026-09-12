# Literature Analysis Table — Owner: HASSAN

Thematic comparison of the sources underpinning Chapter 2. Grouped by theme (not by
paper order) so the table itself supports the "critical synthesis" standard in the
Section A rubric (1.3 Chapter 2 — 5 marks).

| Theme | Source (Author, Year) | Method / Focus | Key Result | Limitation | Relevance to this project |
|---|---|---|---|---|---|
| Secure SDLC foundation | NIST (2022) — SSDF v1.1 | Framework definition (practices, not empirical study) | Defines 4 practice groups: prepare org, protect software, produce well-secured software, respond to vulnerabilities | Prescriptive, not tool-specific; needs a concrete testing layer to operationalise | Provides the development-model vocabulary the team's frozen contract already commits to |
| SAST effectiveness | Charoenwet et al. (2024) | Empirical evaluation of static analysis tools on secure code review tasks | Tools reliably flag known unsafe patterns but a large share of findings are not exploitable in context | High false-positive rate without contextual/runtime validation | Justifies pairing SAST with DAST for cross-validation rather than using SAST alone |
| DAST in CI/CD | Rangnau et al. (2020) | Case study integrating dynamic testing tools into a CI/CD pipeline | Continuous, automated DAST scans replaced periodic manual pentests at the staging stage | Limited to execution paths actually exercised during automated scans | Confirms DAST's pipeline position (post-build/staging) used in the proposed architecture |
| DAST in CI/CD | Yadati (2021) | Case study on continuous security testing with dynamic tools | Supports feasibility of embedding DAST as a repeatable pipeline stage | Single-case study; limited generalisability | Secondary support for DAST placement in the pipeline |
| Hybrid/integrated testing | Duda et al. (2025) | Literature review + experimental comparison of SAST, DAST, and combined use | Integrated SAST+DAST improved detection coverage and reduced false positives vs. either alone | Reviews mostly general-purpose software, not automotive-specific | Directly supports the core hypothesis (RO3) of comparing standalone vs. integrated testing |
| DevSecOps structure | Angermeir et al. (2024) | Study on automated continuous security compliance | Organisations still lack structured, repeatable models for where/how to place security tests in a pipeline | Focus on compliance automation broadly, not SAST-DAST specifically | Motivates the need for a *structured* framework rather than ad-hoc tool placement — core research gap |
| Supply-chain / pipeline guidance | Chandramouli et al. (2024) — NIST SP 800-204D | Government guidance on securing CI/CD pipelines | Recommends consistent classification/reporting of findings (e.g., OWASP/CWE) across tools | Guidance-level, not empirically tested on a specific framework | Justifies the proposed framework's unified, severity-classified reporting design |
| Automotive verification | Franco da Silva et al. (2023) | Cyber Digital Twin (CDT) for continuous automotive security requirement verification | Continuous automated checks against firmware-extracted security data, detecting known vulnerabilities over time | Operates at firmware level, not application/API layer | Shows automotive research favours continuous verification — but leaves an application-layer gap this project fills |
| Automotive verification | Marksteiner et al. (2021) | Cyber digital twins for automated automotive cybersecurity testing | Automated, continuous testing needed given growing vehicle connectivity | Also firmware/black-box level; no SAST-DAST application-security integration | Reinforces the automotive research gap identified in 2.9 |
| Regulatory framework | ISO/SAE 21434:2021 | International standard for automotive cybersecurity engineering | Mandates a lifecycle-wide Secure Development Lifecycle with risk-based threat identification | Does not prescribe how to integrate specific application-security testing techniques (SAST/DAST) | Provides the compliance frame the proposed framework aligns to, without duplicating its scope |

## Datasets and metrics identified from the literature

- **Vulnerability taxonomies used for classification:** OWASP Top 10, CWE (referenced by Chandramouli et al., 2024; Duda et al., 2025) — recommended for the proposed framework's unified report.
- **Common evaluation metrics across sources:** detection coverage, false-positive rate, true/false positive counts, testing time/scan duration.
- **CVE databases** referenced in automotive digital-twin studies (Franco da Silva et al., 2023) as the source of known-vulnerability ground truth — relevant to ABASHEIKH's baseline/dataset definition (Section 6).
- No source reviewed here used a public automotive-application benchmark dataset; most automotive studies work on vendor/lab firmware, which supports defining a **controlled, self-built test environment** (as the team's frozen Evaluation Concept already specifies) rather than relying on an existing public dataset.

## How to keep this table current

1. When a new paper is added to `01_Research_Papers/README.md`, add one row here in the
   matching theme before pushing.
2. Keep the "Relevance to this project" column tied to a specific RO (RO1/RO2/RO3) or to
   the Comparison of Existing Approaches table in Chapter 2 (Section 2.8) — this is what
   the rubric's "traceability" criterion (2.2) checks.
