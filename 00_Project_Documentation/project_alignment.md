# Project Alignment

## Research Title

Automotive Application Security Testing System for Improved Vulnerability Detection

## Research Problem 1

Standalone application security testing approaches may provide incomplete vulnerability coverage because SAST and DAST examine different aspects of an application.

## Research Problem 2

Application security testing is not sufficiently integrated within continuous Secure SDLC practices for automotive software development.

## Research Aim

To develop an automotive application security testing system for improving vulnerability detection within a controlled software development environment.

## Research Objectives

### RO1

To study existing application security testing approaches for automotive software systems.

### RO2

To develop an application security testing system for automotive software within a Secure Software Development Life Cycle environment.

### RO3

To test the functionality and security performance of the proposed application security testing system.

## Research Gap

The literature shows limited availability of a practical automotive application security testing system that integrates SAST and DAST within a Secure SDLC workflow and evaluates the resulting system using measurable security metrics.

## Proposed Methodology

Design Science Research Methodology will guide the research process.

The six phases are:

1. Problem Identification and Motivation
2. Define Objectives of a Solution
3. Design and Development
4. Demonstration
5. Evaluation
6. Communication

## Development Model

Secure Software Development Life Cycle guided by the NIST Secure Software Development Framework.

## Proposed Technical Approach

The proposed system will use:

- Semgrep for SAST
- OWASP ZAP for DAST
- GitHub Actions for CI/CD workflow
- Docker for the controlled test environment
- Python for result processing
- JSON for structured results
- CWE and OWASP for vulnerability classification
- CVSS where applicable for severity information

## Evaluation Plan

The proposed system will be compared using three configurations:

1. SAST only
2. DAST only
3. Integrated SAST and DAST

The evaluation metrics are:

- vulnerability detection coverage
- false positive proportion
- severity coverage
- testing time

## Expected Outcome

A working prototype of the Automotive Application Security Testing System that integrates SAST and DAST and produces a unified security report.

## Alignment Chain

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
System Architecture and Flowchart  
↓  
Technical Components  
↓  
Proposed Evaluation  
↓  
Expected Outcome
