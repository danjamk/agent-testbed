.PHONY: check build

# The gate runs `make check`. The testbed has nothing to test.
check:
	@echo "agent-testbed: nothing to check"

# The deploy workflow runs `make build`, with no credentials, and deploys
# dist/index.js. wrangler bundles without uploading here.
build:
	npm ci --no-audit --no-fund
	npx wrangler deploy --dry-run --outdir dist --env=""
