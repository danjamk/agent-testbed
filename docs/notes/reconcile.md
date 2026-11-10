# Reconciling

A system reconciles against its source of truth because event-driven signals such as webhooks can be dropped, delayed or switched off, leaving its own view of the world stale. Periodically comparing that view with the source and correcting any difference means missed events get caught up instead of being lost for good.
