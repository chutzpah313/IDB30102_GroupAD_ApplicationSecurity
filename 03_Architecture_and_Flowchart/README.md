git pull origin main

cat > 03_Architecture_and_Flowchart/README.md <<'EOF'
# Architecture and Flowchart

This folder contains the methodology and system design visuals used in Chapter 3 of the final research proposal.

## Figure 3.1
Design Science Research Methodology phases for the proposed study.

## Figure 3.2
Proposed Automotive Application Security Testing System architecture.

## Figure 3.3
Proposed system flowchart.

## Figure 3.4
Proposed research timeline based on Design Science Research Methodology.
EOF

cat > 04_Source_Code/README.md <<'EOF'
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
EOF

mkdir -p 04_Source_Code/sast 04_Source_Code/dast 04_Source_Code/parser 04_Source_Code/integration

cat > 04_Source_Code/sast/README.md <<'EOF'
# SAST Component

Semgrep is proposed as the main SAST tool. This component will analyse source code and produce structured findings for later processing.
EOF

cat > 04_Source_Code/dast/README.md <<'EOF'
# DAST Component

OWASP ZAP is proposed as the main DAST tool. This component will test the running application inside the controlled environment and produce structured findings.
EOF

cat > 04_Source_Code/parser/README.md <<'EOF'
# Result Processing Component

Python will be used to parse and normalise SAST and DAST findings into a common format.
EOF

cat > 04_Source_Code/integration/README.md <<'EOF'
# Integration Component

This component will combine SAST and DAST findings, identify duplicate or overlapping findings and prepare a unified security report.
EOF

git add 03_Architecture_and_Flowchart 04_Source_Code
git commit -m "Update system architecture and proposed source code structure"
git push origin main
git log -1 --oneline
```[cite: 1]
