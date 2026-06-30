# Checklist

1. [ ] Run automated dependency scanners (e.g., `npm audit`, `cargo audit`,
       `safety`).
2. [ ] Identify and remove deprecated API calls or unused functions.
3. [ ] Review authentication boundaries and input validation for newly added
       features.
4. [ ] Refactor repetitive code blocks into shared modules/services.
5. [ ] Ensure environment variables and secrets are properly segregated and
       never hardcoded.
6. [ ] Execute the full test suite to ensure no regressions were introduced
       during hardening.
