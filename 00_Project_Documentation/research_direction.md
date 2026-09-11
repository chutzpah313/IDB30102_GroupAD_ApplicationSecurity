# Research Direction

## Research Title

Automotive Application Security Testing System for Improved Vulnerability Detection

## Research Area

Application Security

## Research Focus

This research focuses on improving vulnerability detection for automotive software by integrating Static Application Security Testing and Dynamic Application Security Testing within a controlled Secure Software Development Life Cycle environment.

The study does not aim to create new SAST or DAST engines. It focuses on integrating existing security testing tools into one coordinated workflow and consolidating their findings into a unified security report.

## Main Research Problems

The research addresses two main problems.

1. Standalone SAST and DAST approaches may provide incomplete vulnerability coverage because each technique examines different aspects of an application.

2. Application security testing is not sufficiently integrated into continuous Secure SDLC practices for automotive software development.

## Research Aim

To develop an automotive application security testing system for improving vulnerability detection within a controlled software development environment.

## Research Objectives

1. To study existing application security testing approaches for automotive software systems.

2. To develop an application security testing system for automotive software within a Secure Software Development Life Cycle environment.

3. To test the functionality and security performance of the proposed application security testing system.

## Research Methodology

Design Science Research Methodology will be used because the study develops and evaluates a technical artefact.

## Development Model

Secure Software Development Life Cycle guided by the NIST Secure Software Development Framework.

## Proposed System

The proposed system will integrate SAST and DAST within a controlled CI/CD workflow.

The intended process is:

1. Source code is committed to GitHub.
2. GitHub Actions triggers the testing workflow.
3. Semgrep performs static security testing.
4. The application is deployed inside a controlled Docker environment.
5. OWASP ZAP performs dynamic security testing.
6. Security results are collected in structured format.
7. Python processes and normalises the findings.
8. Duplicate or overlapping findings are identified.
9. Findings are classified using CWE and relevant OWASP categories.
10. A unified security report is generated.

## Proposed Evaluation

Three testing configurations will be compared:

1. SAST only
2. DAST only
3. Integrated SAST and DAST

The evaluation will use:

- vulnerability detection coverage
- false positive proportion
- severity coverage
- testing time

## Testing Environment

All testing will be conducted within a controlled and authorised academic environment.

The testbed may represent an automotive related application such as an infotainment service, vehicle information service or telematics related API.

The research will not conduct testing against live vehicles, production automotive systems, manufacturer infrastructure or third party services without permission.

## Expected Outcome

The expected outcome is a working prototype that integrates static and dynamic application security testing and produces a unified security report.

## Current Project Stage

This repository represents the research proposal and preliminary design stage.

Architecture, workflow, evaluation planning and supporting documentation are prepared before full prototype implementation and experimental evaluation.
