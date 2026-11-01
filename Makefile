.PHONY: check build

# The gate runs `make check`. The testbed has nothing to test.
check:
	@echo "agent-testbed: nothing to check"

# The deploy workflow runs `make build`, with no credentials, and deploys
# dist/index.js. wrangler bundles without uploading here.
#
# The first line is a regression check for secure-agent-workflow #18: the
# build job runs PR code, so it must not be able to mint an OIDC token, which
# is what the broker's roles trust.
build:
	@if [ -n "$${ACTIONS_ID_TOKEN_REQUEST_URL:-}" ]; then echo "FAIL  the build job can mint OIDC tokens"; exit 1; fi
	npm ci --no-audit --no-fund
	npx wrangler deploy --dry-run --outdir dist --env=""
