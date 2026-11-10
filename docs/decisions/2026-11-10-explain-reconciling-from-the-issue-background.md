### 2026-11-10 Explain reconciling from the issue background

- **Decision:** The reconcile note says a system reconciles because webhooks and other events can be missed, and a periodic comparison with the source of truth catches up what was lost.
- **Why:** The issue gave no wording and the README doesn't cover reconciling, so I used the issue's background, where the webhook is off and only the 5-minute reconciliation can start a run.
- **Decided by:** Build agent
- **Approved by:** None
- **Evidence:** Issue #61
