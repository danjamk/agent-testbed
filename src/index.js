// Hello-world Worker for testing secure-agent-workflow's deploy template.
// BUILD_ID is set by the deploy job (`--var BUILD_ID:<version>+<sha>`).
export default {
  async fetch(request, env) {
    const url = new URL(request.url);
    if (url.pathname === "/health") {
      return Response.json({ status: "ok", build: env.BUILD_ID ?? "unknown" });
    }
    return new Response(`agent-testbed ${env.BUILD_ID ?? "unknown"}\n`);
  },
};
