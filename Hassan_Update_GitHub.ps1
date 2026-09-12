$ErrorActionPreference = "Stop"

Write-Host "=== Hassan - GitHub Update ===" -ForegroundColor Cyan

# Step 1 - Update local repository
Write-Host "`n[1/7] Pulling latest changes..." -ForegroundColor Yellow
git pull origin main

# Safety check: do not overwrite literature_analysis_table.md
if (Test-Path "02_Literature_Review/literature_analysis_table.md") {
    Write-Host "literature_analysis_table.md found - it will NOT be modified." -ForegroundColor Green
}

# Step 2 - Update 01_Research_Papers/README.md
Write-Host "`n[2/7] Updating 01_Research_Papers/README.md..." -ForegroundColor Yellow
@'
# Research Papers

This folder contains research papers and supporting literature used for Chapter 2 of the research proposal.

The main research areas include:
- Static Application Security Testing
- Dynamic Application Security Testing
- Secure Software Development Life Cycle
- DevSecOps
- Continuous security testing
- Automotive cybersecurity
- Automotive application security

The selected papers support the comparison of existing approaches and the identification of the research gap.

Only relevant academic papers and supporting sources should be included.
'@ | Set-Content -Path "01_Research_Papers/README.md" -Encoding UTF8

# Step 3 - Update 02_Literature_Review/research_gap.md
Write-Host "`n[3/7] Updating 02_Literature_Review/research_gap.md..." -ForegroundColor Yellow
@'
# Research Gap

The reviewed literature identifies three main limitations.

First, standalone SAST and DAST do not provide complete vulnerability coverage because each method examines different aspects of an application.

Second, DevSecOps research shows that security testing can be integrated into continuous development workflows, but coordinating multiple testing tools and consolidating their outputs remains a challenge.

Third, automotive cybersecurity research often focuses on firmware, communication networks, digital twins and over-the-air updates. There is less evidence of application-level security testing systems that combine SAST and DAST within a Secure Software Development Life Cycle environment.

The research gap is therefore the limited availability of a practical automotive application security testing system that integrates static and dynamic testing and evaluates its performance using measurable security metrics.
'@ | Set-Content -Path "02_Literature_Review/research_gap.md" -Encoding UTF8

# Step 4 - Update 02_Literature_Review/README.md
Write-Host "`n[4/7] Updating 02_Literature_Review/README.md..." -ForegroundColor Yellow
@'
# Literature Review

This folder contains the supporting materials for Chapter 2 of the research proposal.

## Main Themes

- Secure Software Development Life Cycle
- Static Application Security Testing
- Dynamic Application Security Testing
- Integrated SAST and DAST
- DevSecOps and continuous security testing
- Automotive application security

## Literature Review Purpose

The literature review compares existing application security testing approaches and identifies their strengths and limitations.

SAST supports early code-level vulnerability detection while DAST focuses on vulnerabilities that appear during application execution.

The two methods provide complementary security capabilities, but each has limitations when used independently.

## Research Gap

The main research gap is the limited availability of a practical automotive application security testing system that integrates SAST and DAST within a Secure SDLC workflow and evaluates the system using measurable security metrics.

## Files

- literature_analysis_table.md
- research_gap.md
'@ | Set-Content -Path "02_Literature_Review/README.md" -Encoding UTF8

# Step 5 - Check the files
Write-Host "`n[5/7] Checking updated files..." -ForegroundColor Yellow
Write-Host "`n--- 01_Research_Papers/README.md ---" -ForegroundColor Cyan
Get-Content "01_Research_Papers/README.md"

Write-Host "`n--- 02_Literature_Review/README.md ---" -ForegroundColor Cyan
Get-Content "02_Literature_Review/README.md"

Write-Host "`n--- 02_Literature_Review/research_gap.md ---" -ForegroundColor Cyan
Get-Content "02_Literature_Review/research_gap.md"

# Show exactly what will be committed
Write-Host "`nGit status:" -ForegroundColor Cyan
git status --short

# Step 6 - Commit and push
Write-Host "`n[6/7] Committing and pushing..." -ForegroundColor Yellow
git add 01_Research_Papers/README.md 02_Literature_Review/README.md 02_Literature_Review/research_gap.md

$changes = git diff --cached --name-only
if (-not $changes) {
    Write-Host "No changes to commit. Files may already be up to date." -ForegroundColor Yellow
} else {
    git commit -m "Update literature review and research gap documentation"
    git push origin main
}

# Step 7 - Proof
Write-Host "`n[7/7] Latest commit proof:" -ForegroundColor Yellow
git log -1 --oneline

Write-Host "`nDONE. Send the commit line above to Aleen." -ForegroundColor Green
