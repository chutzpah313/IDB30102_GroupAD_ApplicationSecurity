# Automotive Application Security Testing System for Improved Vulnerability Detection

## Course Information

Course: IDB30102 Research Methodology  
Group: AD  
Research Area: Application Security  
Semester: July 2026  

## Team Members

- Aleen Mahib Mahmud - Team Leader
- Hassan Ibrahim Toure
- Karam Abohadeer
- Abasheikh Yusuf Kamal

## Research Problem

This research addresses two main problems.

1. Standalone application security testing approaches may provide incomplete vulnerability coverage because SAST and DAST examine different aspects of an application.

2. Application security testing is not sufficiently integrated within continuous Secure SDLC practices for automotive software development.

## Research Aim

To develop an automotive application security testing system for improving vulnerability detection within a controlled software development environment.

## Research Objectives

### RO1

To study existing application security testing approaches for automotive software systems.

### RO2

To develop an application security testing system for automotive software within a Secure Software Development Life Cycle environment.

### RO3

To test the functionality and security performance of the proposed application security testing system.

## Proposed Solution

The proposed solution is an Automotive Application Security Testing System that integrates Static Application Security Testing and Dynamic Application Security Testing within a controlled Secure SDLC workflow.

The proposed system will:

- perform static application security testing
- perform dynamic application security testing
- collect and consolidate security findings
- identify duplicate or overlapping findings
- classify vulnerabilities using CWE and relevant OWASP categories
- record severity information where available
- generate a unified security report

## Research Methodology

The research uses Design Science Research Methodology.

The six DSRM phases are:

1. Problem Identification and Motivation
2. Define Objectives of a Solution
3. Design and Development
4. Demonstration
5. Evaluation
6. Communication

## Development Model

The development model is the Secure Software Development Life Cycle guided by the NIST Secure Software Development Framework.

## Proposed Technologies

- GitHub
- GitHub Actions
- Semgrep
- OWASP ZAP
- Docker
- Python
- JSON
- CWE
- OWASP
- CVSS where applicable

## Proposed Evaluation

Three configurations will be compared:

1. SAST only
2. DAST only
3. Integrated SAST and DAST

The proposed evaluation metrics are:

- vulnerability detection coverage
- false positive proportion
- severity coverage
- testing time

## Controlled Testing Scope

All security testing will be conducted within a controlled and authorised academic environment.

The research will not perform security testing against live vehicles, production automotive systems, manufacturer infrastructure or third party services without permission.

## Expected Output

The expected output is a working prototype of the Automotive Application Security Testing System that integrates SAST and DAST and produces a unified security report.

## Repository Structure

- `00_Project_Documentation/` - research direction, project alignment and team documentation
- `01_Research_Papers/` - selected research papers and supporting literature
- `02_Literature_Review/` - literature analysis and research gap
- `03_Architecture_and_Flowchart/` - methodology, system architecture, workflow and timeline
- `04_Source_Code/` - proposed prototype implementation
- `05_Data_or_Sample_Input/` - sample inputs and controlled test environment information
- `06_Results_or_Expected_Output/` - proposed evaluation and expected outputs
- `07_References/` - references and supporting standards

## Research Alignment

Research Problem  
↓  
Literature Review  
↓  
Research Gap  
↓  
Research Objectives  
↓  
Proposed Methodology  
↓  
Architecture and Flowchart  
↓  
Technical Components  
↓  
Proposed Evaluation  
↓  
Expected Outcome
