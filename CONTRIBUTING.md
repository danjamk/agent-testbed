# Contributing

## Proposing a change

Open a GitHub issue describing the change, then send a pull request that
closes it. Work on a branch, keep the PR to one issue, and say in the PR
description which tier it falls under (`standards/tier-map.yml`).

## Running `make check`

Run `make check` from the repo root. The gate runs the same command on every
PR, and it must pass before a PR merges. The testbed has nothing to test yet,
so it only prints a message.

## Who reviews

`@danjamk` reviews and approves. Tier 1 PRs merge once checks pass. Tier 2 PRs
also need their approval, and tier 3 paths (`.github/`, `CODEOWNERS`,
`standards/tier-map.yml`) need the owner and can't come from a bot.
