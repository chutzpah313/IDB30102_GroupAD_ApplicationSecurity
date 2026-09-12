# Research Gap — Owner: HASSAN

> **Updated after Madam's guidance (Sept 2026):** the project title, aim and RO1-RO3
> changed from a named "Integrated SAST-DAST DevSecOps Framework" to the broader
> "Automotive Application Security Testing System." SAST and DAST remain the specific
> techniques the literature supports and that the prototype will use — they now sit
> in the methodology/technical layer rather than in the title or RO wording itself.
> Only the RO references below were reworded; the substance is unchanged.

## Summary

Existing literature establishes three consistent findings:

1. **SAST and DAST are complementary, not substitutable.** Standalone SAST produces
   high false-positive rates and misses runtime-only issues (Charoenwet et al., 2024);
   standalone DAST is limited to the execution paths actually exercised during testing
   (Rangnau et al., 2020; Yadati, 2021). Integrating both is reported to improve
   detection coverage and reduce false positives through cross-validation
   (Duda et al., 2025).

2. **DevSecOps/CI-CD security-testing research still lacks a structured, repeatable
   placement model.** Studies point out that organisations know security testing
   *should* be automated in the pipeline, but lack a consistent method for deciding
   where each test type belongs and how results should be consolidated
   (Angermeir et al., 2024; Chandramouli et al., 2024).

3. **Automotive-specific security-verification research operates mainly at the
   firmware/digital-twin level**, not at the application/API layer where SAST and
   DAST normally operate (Franco da Silva et al., 2023; Marksteiner et al., 2021).
   ISO/SAE 21434 (2021) mandates a lifecycle-wide Secure Development Lifecycle but
   does not prescribe how application-layer SAST/DAST integration should be designed
   or evaluated within it.

4. **The practical urgency is rising:** automotive-related published vulnerabilities
   (CVEs) reached 530 in 2024, and the Pwn2Own Automotive 2025 contest alone
   uncovered 49 previously unknown zero-day vulnerabilities in infotainment and
   EV-charging systems (VicOne, 2025). Independent benchmarking also shows a single
   static analyser alone can miss 47-80% of known vulnerabilities in real-world
   programs (Lipp et al., 2022) — direct evidence that standalone testing is
   insufficient.

## The gap

No reviewed study proposes **and empirically evaluates** a structured,
CI/CD-embedded framework that:

- integrates SAST and DAST specifically for **application security**,
- within a **controlled automotive software** environment,
- consolidates findings into a **unified, severity-classified report** (mapped to
  OWASP/CWE),
- and compares the integrated approach against **standalone SAST-only and
  DAST-only baselines** using vulnerability detection coverage, false-positive
  rate, severity coverage and testing time.

## Why this matters (link to objectives)

| Gap element | Addressed by (updated RO wording) |
|---|---|
| No structured SAST+DAST placement model in DevSecOps pipelines | RO2 — to develop an application security testing system for automotive software within a Secure SDLC environment (SAST+DAST integration is the specific technique carried into the methodology) |
| No automotive application-layer evaluation of integrated testing | RO1 (study) + RO2 (develop, incl. test environment) |
| No systematic comparison against standalone baselines | RO3 — to test the functionality and security performance of the proposed application security testing system |

This file mirrors Section 2.9 of Chapter 2 and should stay word-for-word consistent
with it — update both together if the framing changes.
