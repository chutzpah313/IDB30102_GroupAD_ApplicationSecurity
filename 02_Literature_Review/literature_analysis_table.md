# Literature Analysis Table

This table summarises supporting literature by theme and relates the reviewed work to the proposed Automotive Application Security Testing System.

| Theme | Source (Author, Year) | Method / Focus | Key Result | Limitation | Relevance to this project |
|---|---|---|---|---|---|
| Secure SDLC foundation | NIST (2022) — SSDF v1.1 | Framework definition (practices, not empirical study) | Defines practices for preparing organisations, protecting software, producing well-secured software and responding to vulnerabilities | Prescriptive, not tool-specific | Supports the Secure SDLC development model used in the final proposal |
| SAST effectiveness | Charoenwet et al. (2024) | Empirical evaluation of static analysis tools for secure code review | Static analysis can identify known unsafe patterns but may generate findings that require contextual validation | Limited runtime visibility and potential false positives | Supports combining source-code analysis with runtime testing |
| DAST in CI/CD | Rangnau et al. (2020) | Case study integrating dynamic security testing into a CI/CD pipeline | Demonstrates the feasibility of repeatable automated DAST within delivery workflows | Limited to execution paths reached during testing | Supports the DAST stage in the proposed workflow |
| DAST in CI/CD | Yadati (2021) | Case study on continuous security testing with dynamic tools | Supports embedding DAST as a repeatable pipeline activity | Single-case context limits generalisability | Provides additional support for continuous dynamic testing |
| Hybrid/integrated testing | Duda et al. (2025) | Comparison of SAST, DAST and combined use | Integrated testing can provide broader vulnerability detection than either method alone | General-purpose software focus rather than automotive applications | Supports RO3 comparison of standalone and integrated testing |
| DevSecOps structure | Angermeir et al. (2024) | Automated continuous security compliance | Highlights the need for structured placement of security activities in development pipelines | Broad compliance focus | Supports coordinated security testing within the proposed Secure SDLC workflow |
| Supply-chain / pipeline guidance | Chandramouli et al. (2024) — NIST SP 800-204D | Guidance for securing CI/CD pipelines | Supports consistent handling and reporting of security findings across development workflows | Guidance rather than an empirical evaluation | Supports the proposed system's result consolidation and classification approach |
| Automotive verification | Franco da Silva et al. (2023) | Cyber Digital Twin for continuous automotive security verification | Demonstrates continuous automated automotive security checks | Focuses on firmware-level verification | Helps establish the application-level research gap |
| Automotive verification | Marksteiner et al. (2021) | Cyber digital twins for automated automotive cybersecurity testing | Supports continuous automated testing in connected-vehicle environments | Does not focus on integrated application-level SAST and DAST | Reinforces the automotive application-security research gap |
| Automotive cybersecurity standard | ISO/SAE 21434:2021 | Automotive cybersecurity engineering standard | Defines lifecycle-oriented automotive cybersecurity practices | Does not prescribe a specific SAST/DAST integration method | Provides the wider automotive cybersecurity context for the proposed system |

## Datasets and Evaluation Considerations

- **Classification:** CWE and relevant OWASP categories can be used to classify findings.
- **Evaluation metrics:** vulnerability detection coverage, false-positive proportion, severity coverage and testing time.
- **Ground truth:** the controlled test environment will contain known vulnerabilities so detection coverage can be measured.
- **Test environment:** the study uses a controlled, authorised automotive-oriented application environment rather than live vehicles or production systems.

The repository remains at the research proposal and preliminary design stage. No experimental results are claimed in this table.
