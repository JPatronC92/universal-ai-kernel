# Checklist

1. [ ] Ensure the version number is bumped correctly in configuration files
       (e.g., `package.json`, `Cargo.toml`, `pyproject.toml`).
2. [ ] Verify that all end-to-end (E2E) and integration tests pass in a
       staging-like environment.
3. [ ] Generate or update production build artifacts (e.g., `npm run build`,
       `cargo build --release`).
4. [ ] Validate configuration files (Dockerfile, docker-compose.yml) for
       production readiness (e.g., non-root users, multi-stage builds).
5. [ ] Ensure environment variables mapped to infrastructure are documented.
6. [ ] Update the `CHANGELOG.md` with the new version and features/fixes.
7. [ ] Tag the release commit according to semantic versioning.
8. [ ] Record the release action, version, and artifact generation in the Tempus
       ledger using `tempus record`.
