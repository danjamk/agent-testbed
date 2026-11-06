# Decisions

## CONTRIBUTING.md names the reviewer from CODEOWNERS (#40)

The issue asked for a "who reviews" section but not who. I named `@danjamk`,
the owner in `.github/CODEOWNERS`, and summarised the tiers from
`standards/tier-map.yml` rather than adding new policy.

Approved by: None

## 2026-11-06: License choice (issue #41)

- **Decision:** The repo uses the MIT license, with "danjamk" as copyright holder and 2026 as the year. The issue didn't name a license, so the agent asked first. The approver answered "Use MIT, with the copyright holder danjamk" on PR #43.
- **Rejected:** Defaulting to MIT before the approver answered. Choosing a license is the approver's call. Apache-2.0 was offered as the alternative if an explicit patent grant was wanted.
- **Approved by:** None

### 2026-11-06 Glossary terms chosen from the README (#46)

- **Decision:** The glossary defines "Testbed", "secure-agent-workflow" and "Red-team run". The README has no glossary-style terms, so I picked these three as its most specific phrases. "Red-team run" is defined by its common meaning, since the README doesn't explain it.
- **Why:** The issue asked for three README terms without naming them.
- **Rejected:** "App verification", because the README doesn't say enough to define it accurately.
- **Decided by:** Build agent
- **Approved by:** None
- **Evidence:** Issue #46
