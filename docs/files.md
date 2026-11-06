# Files under src and tools

## src/index.js

**What it does:** A hello-world Cloudflare Worker. `GET /health` returns JSON `{"status":"ok","build":<BUILD_ID>}`. Any other path returns the text `agent-testbed <BUILD_ID>`. `BUILD_ID` falls back to `unknown` when unset. The deploy job sets it with `--var BUILD_ID:<version>+<sha>`.

**Depends on:** The Workers runtime (`Request`, `Response`, `URL`) and the `BUILD_ID` variable from the environment. `wrangler.jsonc` configures it, and `wrangler` (in `package.json`) bundles it.

**How it's tested:** It has no tests. `make check` only prints "nothing to check". `make build` bundles it with `wrangler deploy --dry-run`, which checks that it builds.

## tools/package.json

**What it does:** A package manifest for the `tools/` directory. It names the package `agent-testbed`, version `0.1.1`, marked private. It pins `wrangler` 4.151.1 as a dev dependency and overrides `undici` to 7.30.1. `tools/` holds no other files.

**Depends on:** The npm registry, to resolve `wrangler` and `undici`.

**How it's tested:** It has no tests. Tier 2 of `standards/tier-map.yml` covers it, because it is a dependency manifest.
