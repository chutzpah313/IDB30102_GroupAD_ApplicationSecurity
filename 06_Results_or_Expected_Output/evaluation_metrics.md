# Proposed Evaluation Metrics

To actually answer RO3 — testing the functionality and security performance of the system — we need metrics that are concrete enough to calculate, not just "it seemed to work better." These four were chosen because each one targets a different, sometimes competing, aspect of what makes a security testing approach useful in practice.

## 1. Vulnerability Detection Coverage

```
Detection Coverage = Known Vulnerabilities Detected / Total Known Vulnerabilities x 100%
```

This is the headline metric tied directly to Problem Statement 1 — the idea that relying on SAST or DAST alone leaves gaps. If the integrated approach doesn't meaningfully raise this number over either standalone method, our core argument for integration doesn't hold up.

## 2. False Positive Proportion

```
False Positive Proportion = False Positive Findings / Total Reported Findings x 100%
```

Coverage alone isn't the whole story — a tool that flags everything as a vulnerability would score perfectly on detection coverage while being useless in practice. This metric keeps that honest by checking how much noise comes with the improved coverage.

## 3. Severity Coverage

Severity coverage measures whether each testing configuration identifies vulnerabilities across different severity levels (Critical, High, Medium, Low), rather than only catching the "easy," low-impact issues. Findings will be mapped against OWASP Top 10 and CWE categories so this isn't judged on an internally invented scale.

## 4. Testing Time

Testing time measures the duration required to complete each testing configuration. Since one of the practical arguments for integration is automating what would otherwise be two separate manual-ish processes, this checks that combining SAST and DAST doesn't introduce so much overhead that it defeats the purpose.

## Comparison structure

Three configurations will be run against the same test environment to keep the comparison fair:

1. SAST only
2. DAST only
3. Integrated SAST and DAST

Each configuration is compared back to the two standalone baselines separately (see `baseline_comparison.md` context in Section 3.13 of our proposal), rather than against a single blended number, so we can see specifically where integration helps and where it doesn't.
