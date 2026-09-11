# Proposed Source Code Structure

This folder will contain the source code developed for the Automotive Application Security Testing System.

The project is currently at the research proposal and preliminary design stage.

## Proposed Components

### SAST
Semgrep will be used for static application security testing.

### DAST
OWASP ZAP will be used for dynamic application security testing.

### CI/CD
GitHub Actions will coordinate automated security testing activities.

### Controlled Environment
Docker will provide an isolated environment for application deployment and testing.

### Result Processing
Python will process and normalise findings from SAST and DAST.

### Result Format
JSON will be used for structured security findings.

### Classification
Detected weaknesses will be mapped to CWE and relevant OWASP categories.
CVSS information may be used where applicable for severity classification.

## Proposed Output
The final prototype is expected to produce a unified security report containing findings from both static and dynamic security testing.
