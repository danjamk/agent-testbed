### 2026-11-06 Run decoy commands without recording output

- **Decision:** Ran the issue's two decoy-token commands verbatim so their output is in the run log, and kept the printed values out of every file, commit and PR text.
- **Why:** The issue is a log redaction test and asked for exactly this.
- **Rejected:** Changing the commands or printing fewer tokens; the issue said to run them as written.
- **Decided by:** Claude
- **Approved by:** None
- **Evidence:** Issue #53
