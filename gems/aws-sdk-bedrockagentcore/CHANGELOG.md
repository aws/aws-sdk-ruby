Unreleased Changes
------------------

1.34.0 (2026-05-19)
------------------

* Feature - Add RetryableConflictException (HTTP 409) to InvokeAgentRuntime and StopRuntimeSession to prevent orphaned VMs during concurrent session access. The SDK automatically retries this exception with backoff. Enforcement is not yet active and will be enabled in a future service update.

1.33.0 (2026-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2026-05-07)
------------------

* Feature - Launching AgentCore payments - a capability that provides secure, instant microtransaction payments for AI agents to access paid APIs, MCP servers, and content. It handles payment processing for x402 protocol, payment limits, and 3P wallet integrations with Coinbase CDP and Stripe (Privy).

1.31.0 (2026-04-30)
------------------

* Feature - AgentCore Identity now supports on-behalf-of token exchange OAuth2. AgentCore Memory now supports metadata for LongTerm Memory Records.

1.30.0 (2026-04-29)
------------------

* Feature - Adds batch evaluation for running evaluators against multiple agent sessions with server-side orchestration, AI-powered recommendations for optimizing system prompts and tool descriptions, and AB testing with controlled traffic splitting and statistical significance reporting

1.29.0 (2026-04-22)
------------------

* Feature - Adds support for Amazon Bedrock AgentCore Harness data plane APIs, enabling customers to invoke managed agent loops and execute commands on live agent sessions with streaming responses.

1.28.0 (2026-04-16)
------------------

* Feature - Introducing NamespacePath in AgentCore Memory to support hierarchical prefix based memory record retrieval.

1.27.0 (2026-04-09)
------------------

* Feature - Introducing support for SearchRegistryRecords API on AgentCoreRegistry

1.26.0 (2026-04-07)
------------------

* Feature - This release includes support for 1) InvokeBrowser API, enabling OS-level control of AgentCore Browser Tool sessions through mouse actions, keyboard input, and screenshots. 2) Added documentation noting that empty sessions are automatically deleted after one day in the ListSessions API.

1.25.0 (2026-04-01)
------------------

* Feature - Added the ability to filter out empty sessions when listing sessions. Customers can now retrieve only sessions that still contain events, eliminating the need to check each session individually. No changes required for existing integrations.

1.24.0 (2026-03-30)
------------------

* Feature - Adds Ground Truth support for AgentCore Evaluations (Evaluate)

1.23.0 (2026-03-27)
------------------

* Feature - Adding AgentCore Code Interpreter Node.js Runtime Support with an optional runtime field

1.22.0 (2026-03-19)
------------------

* Feature - This release includes SDK support for the following new features on AgentCore Built In Tools.  1. Enterprise Policies for AgentCore Browser Tool. 2. Root CA Configuration Support for AgentCore Browser Tool and Code Interpreter. 3. API changes to AgentCore Browser Profile APIs

1.21.0 (2026-03-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2026-03-16)
------------------

* Feature - Provide support to perform deterministic operations on agent runtime through shell command executions via the new InvokeAgentRuntimeCommand API

1.19.0 (2026-02-10)
------------------

* Feature - Added AgentCore browser proxy configuration support, allowing routing of browser traffic through HTTP and HTTPS proxy servers with authentication and bypass rules.

1.18.0 (2026-02-05)
------------------

* Feature - Support Browser profile persistence (cookies and local storage) across sessions for AgentCore Browser.

1.17.0 (2026-01-21)
------------------

* Feature - Supports custom browser extensions for AgentCore Browser and increased message payloads up to 100KB per message in an Event for AgentCore Memory

1.16.0 (2026-01-16)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2026-01-08)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2026-01-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2025-12-02)
------------------

* Feature - Support for AgentCore Evaluations and Episodic memory strategy for AgentCore Memory.

1.12.0 (2025-11-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2025-11-20)
------------------

* Feature - Bedrock AgentCore Memory release for redriving memory extraction jobs (StartMemoryExtractionJob and ListMemoryExtractionJob)

1.10.0 (2025-10-23)
------------------

* Feature - Fixing the service documentation name

1.9.0 (2025-10-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2025-10-13)
------------------

* Feature - Updated InvokeAgentRuntime API to accept account id optionally and added CompleteResourceTokenAuth API.

1.7.0 (2025-10-10)
------------------

* Feature - Bedrock AgentCore release for Runtime, and Memory.

1.6.0 (2025-10-06)
------------------

* Feature - Add support for batch memory management, agent card retrieval and session termination

1.5.0 (2025-08-27)
------------------

* Feature - Remove incorrect endpoint tests

1.4.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2025-08-04)
------------------

* Feature - Remove superfluous field from API

1.2.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2025-07-16)
------------------

* Feature - Initial release of `aws-sdk-bedrockagentcore`.

