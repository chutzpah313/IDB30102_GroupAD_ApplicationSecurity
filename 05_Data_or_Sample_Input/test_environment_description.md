# Controlled Test Environment

## What we're testing against

Since we can't (and shouldn't) run scans against a real vehicle's software, we're planning to evaluate the prototype using a controlled, automotive-oriented application testbed instead — something that mimics the kind of software actually running in modern cars without carrying any of the real-world risk.

The testbed is expected to represent functions similar to:

- Infotainment services
- Vehicle information services
- Telematics-related APIs

These were chosen because they reflect the connected, API-driven parts of automotive software that our Problem Statement 2 specifically calls out — the parts where security testing tends to be treated as a separate, bolted-on activity rather than something integrated into development from the start.

## How it will run

The application will run locally inside Docker. This keeps the environment fully isolated, reproducible on any team member's machine, and easy to reset between test runs — which matters since we're repeating each configuration (SAST-only, DAST-only, integrated) more than once to check the results hold up.

## Why deliberately vulnerable software

Known vulnerabilities will be intentionally included in the test environment so that detection coverage can actually be measured against something concrete, rather than hoping the tools happen to find something. Without a known ground truth, "detection coverage" wouldn't be measurable at all.

## What this environment will never touch

To keep this firmly within ethical and legal bounds, the environment will not interact with:

- Live vehicles
- Production systems
- Manufacturer infrastructure
- Third-party services

Everything stays inside our own local, authorised academic setup.
