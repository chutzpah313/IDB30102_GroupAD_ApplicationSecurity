# Data and Sample Input

This folder holds the sample data and test environment planning for our Automotive Application Security Testing System. Since this project is still at the proposal stage, nothing in here is a finished dataset yet — it's meant to show how we plan to generate ground-truth data once the prototype is actually built.

Our approach avoids testing anything remotely close to a real vehicle. Everything will run inside a controlled academic environment we set up ourselves, using a deliberately vulnerable or sample codebase rather than production automotive software. This matters both ethically (we're not authorized to touch manufacturer systems) and practically — we need known vulnerabilities in our test target so we actually have something concrete to measure detection against.

## What "ground truth" means for us

For our evaluation to mean anything (RO3 — testing the system's functionality and security performance), we need to know in advance exactly which vulnerabilities exist in our test target, where they are, and how severe they are. That's the whole point of `sample_vulnerability_data.json` in this folder — it's a small preview of how we'll structure that ground-truth list once the real testbed is finalized.

## Vulnerability categories we expect to include

- Insecure input handling
- Injection weaknesses (e.g. SQL/command injection)
- Exposed secrets (API keys, credentials left in code or config)
- Weak authentication
- Security misconfiguration

These map cleanly onto the kind of findings both SAST and DAST are known to catch, which lets us later compare how each method — and the combined approach — performs against the same known list.

## Files in this folder

- `sample_vulnerability_data.json` — a preview structure of our ground-truth vulnerability list
- `test_environment_description.md` — details on the controlled testbed we're planning to use

No confidential, private, or restricted data will ever be uploaded here.
