Unreleased Changes
------------------

1.67.0 (2026-08-21)
------------------

* Feature - Update Dataset schema to THIRDPARTYEVALUATIONV1

1.66.0 (2026-08-19)
------------------

* Feature - AgentCore Memory now supports Flexible Namespaces

1.65.0 (2026-08-17)
------------------

* Feature - Adds implementations of third-party evaluators, both managed-as-a-service and as templates within custom evaluators.

1.64.0 (2026-08-14)
------------------

* Feature - Adds AgentCore Payments support for CMK, Marketplace Subscriptions and QuickCreate

1.63.0 (2026-08-06)
------------------

* Feature - Add support for Gateway rate limits and Runtime instances in Amazon Bedrock AgentCore. Customers can now configure rate limits scoped to control request rates, token consumption rates, and active connection rates. Customers can now create capacity providers to launch runtimes on their EC2 instances.

1.62.0 (2026-08-05)
------------------

* Feature - Adding support for fine-grained access control for AgentCore Memory through managed AgentCore Gateway HTTP Connectors.

1.61.0 (2026-07-30)
------------------

* Feature - Adds support for configuring models through the OpenResponses API for custom evaluators. CreateEvaluator and UpdateEvaluator now accept an OpenResponses model configuration for LLM-as-a-Judge evaluations.

1.60.0 (2026-07-28)
------------------

* Feature - AgentCore Identity now supports Private Key JWT client authentication for OAuth 2.0 credential providers. Agents can authenticate to identity provider token endpoints with a JWT client assertion signed by a customer-managed AWS KMS asymmetric key, eliminating the need for client secrets.

1.59.0 (2026-07-23)
------------------

* Feature - Adds support for the Bring Your Own Storage(BYOS) feature in AgentCore Browser and Code Interpreter. Enables mounting S3Files and EFS File Systems via Access points.

1.58.0 (2026-07-20)
------------------

* Feature - This release adds support for specifying a connector version on Gateway targets to pin the connector's tool schema. It also introduces web-search connector version 1.2.0, which adds agent-side domain filtering, published date range filtering, and admin-side domain allowlisting.

1.57.0 (2026-07-15)
------------------

* Feature - Fix HarnessEndpointArn pattern to match the actual service-emitted ARN format ('harness-endpoint' instead of 'endpoint'). Add additionalParams to Gemini model configuration for passing provider-specific parameters through to the model unchanged.

1.56.0 (2026-07-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2026-07-08)
------------------

* Feature - AgentCore Gateway now supports mapping allowed scopes to separate advertised scopes on the inbound authorizer.

1.54.0 (2026-06-17)
------------------

* Feature - AgentCore Gateway now supports inference targets to LLM providers (direct config or built-in connectors), HTTP passthrough targets with session stickiness, runtime target API schemas, AWS WAF web ACL association with configurable fail-open or fail-close modes, and interceptor payload filtering.

1.53.0 (2026-06-12)
------------------

* Feature - Added tagging and CMK support for optimizations and an insights feature to identify failure patterns, extract user intents, and summarize execution behavior

1.52.0 (2026-06-11)
------------------

* Feature - Supports deterministic metadata for AgentCore Memory

1.51.0 (2026-05-29)
------------------

* Feature - Reference your own AWS Secrets Manager secrets when configuring credential providers, giving you control over encryption, rotation, and access policies instead of using service-managed secrets.

1.50.0 (2026-05-28)
------------------

* Feature - Added Harness support for LiteLLM model configuration for third-party model providers. Added S3 and Git skill source types. Added Responses API format for OpenAI and Bedrock models. Added runtimeUserId parameter to InvokeHarness for end-user identification.

1.49.0 (2026-05-26)
------------------

* Feature - Adding new BDD representation of endpoint ruleset

1.48.0 (2026-05-21)
------------------

* Feature - Adds dataset management APIs for creating, versioning, and managing evaluation datasets.

1.47.0 (2026-05-19)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2026-05-13)
------------------

* Feature - Adds support for read-only summary APIs for Policy Engine, Policy, and Policy Generation resources, enabling metadata retrieval without KMS decryption for AWS Config integration.

1.45.0 (2026-05-07)
------------------

* Feature - Launching AgentCore payments - a capability that provides secure, instant microtransaction payments for AI agents to access paid APIs, MCP servers, and content. It handles payment processing for x402 protocol, payment limits, and 3P wallet integrations with Coinbase CDP and Stripe (Privy).

1.44.0 (2026-05-06)
------------------

* Feature - Adds support for bring-your-own file system in AgentCore Runtime. Developers can mount Amazon S3 Files and Amazon EFS access points directly into agent sessions using filesystemConfigurations.

1.43.0 (2026-05-04)
------------------

* Feature - Amazon Bedrock AgentCore gateways now support MCP Sessions and response streaming from MCP targets. Session timeouts can be set between 15 minutes and 8 hours, and response streaming enables forwarding stream events sent by MCP targets to gateway users.

1.42.0 (2026-04-30)
------------------

* Feature - AgentCore Identity now supports on-behalf-of token exchange OAuth2. AgentCore Memory now supports metadata for LongTerm Memory Records.

1.41.0 (2026-04-29)
------------------

* Feature - Adds configuration bundles for versioned, immutable agent configuration snapshots with branch-based lineage

1.40.0 (2026-04-24)
------------------

* Feature - Added support for configuring identity providers and inbound authorizers within a private VPC for AWS Bedrock AgentCore, enabling secure network connection without public internet access

1.39.0 (2026-04-22)
------------------

* Feature - Adds support for Amazon Bedrock AgentCore Harness control plane APIs, enabling customers to create, manage, and configure managed agent loops with customizable models, tools, memory, and isolated execution environments.

1.38.0 (2026-04-20)
------------------

* Feature - Supporting listingMode for AgentCore Gateway MCP server targets

1.37.0 (2026-04-09)
------------------

* Feature - Initial release for CRUDL in AgentCore Registry Service

1.36.0 (2026-04-03)
------------------

* Feature - Documentation Update for Adds support for three-legged (Authorization Code grant type) OAuth along with predefined MCP tool schema configuration for Amazon Bedrock AgentCore gateway MCP server targets.

1.35.0 (2026-04-02)
------------------

* Feature - Adds support for three-legged (Authorization Code grant type) OAuth along with predefined MCP tool schema configuration for Amazon Bedrock AgentCore gateway MCP server targets.

1.34.0 (2026-04-01)
------------------

* Feature - Adds support for VPC egress private endpoints for Amazon Bedrock AgentCore gateway targets, enabling private connectivity through managed VPC Lattice resources. Also adds IAM credential provider for gateway targets, enabling IAM-based authentication to target endpoints

1.33.0 (2026-03-27)
------------------

* Feature - Adds support for custom code-based evaluators using customer-managed Lambda functions.

1.32.0 (2026-03-24)
------------------

* Feature - Adds SDK support for 1) Persist session state in AgentCore Runtime via filesystemConfigurations in CreateAgentRuntime, UpdateAgentRuntime, and GetAgentRuntime APIs, 2) Optional name-based filtering on AgentCore ListBrowserProfiles API.

1.31.0 (2026-03-19)
------------------

* Feature - Adds support for the following new features. 1. Enterprise Policies support for AgentCore Browser Tool. 2. Root CA Configuration support for AgentCore Browser Tool and Code Interpreter.

1.30.0 (2026-03-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2026-03-17)
------------------

* Feature - Deprecating namespaces field and adding namespaceTemplates.

1.28.0 (2026-03-16)
------------------

* Feature - Supporting hosting of public ECR Container Images in AgentCore Runtime

1.27.0 (2026-03-10)
------------------

* Feature - Adding first class support for AG-UI protocol in AgentCore Runtime.

1.26.0 (2026-03-06)
------------------

* Feature - Adds support for streaming memory records in AgentCore Memory

1.25.0 (2026-03-03)
------------------

* Feature - Support for AgentCore Policy GA

1.24.0 (2026-02-05)
------------------

* Feature - Support Browser profile persistence (cookies and local storage) across sessions for AgentCore Browser.

1.23.0 (2026-02-02)
------------------

* Feature - Adds tagging support for AgentCore Evaluations (evaluator and online evaluation config)

1.22.0 (2026-01-16)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2026-01-09)
------------------

* Feature - Adds optional field "view" to GetMemory API input to give customers control over whether CMK encrypted data such as strategy decryption or override prompts is returned or not.

1.20.0 (2026-01-08)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2026-01-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2025-12-18)
------------------

* Feature - Feature to support header exchanges between Bedrock AgentCore Gateway Targets and client, along with propagating query parameter to the configured targets.

1.17.0 (2025-12-15)
------------------

* Feature - This release updates broken links for AgentCore Policy APIs in the AWS CLI and SDK resources.

1.16.0 (2025-12-02)
------------------

* Feature - Supports AgentCore Evaluations, Policy, Episodic Memory Strategy, Resource Based Policy for Runtime and Gateway APIs, API Gateway Rest API Targets and enhances JWT authorizer.

1.15.0 (2025-11-21)
------------------

* Feature - Support for agentcore gateway interceptor configurations and NONE authorizer type

1.14.0 (2025-11-03)
------------------

* Feature - Adds support for direct code deploy with CreateAgentRuntime and UpdateAgentRuntime

1.13.0 (2025-10-30)
------------------

* Feature - Web-Bot-Auth support for AgentCore Browser tool to help reduce captcha challenges.

1.12.0 (2025-10-23)
------------------

* Feature - Fixing the service documentation name

1.11.0 (2025-10-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2025-10-13)
------------------

* Feature - Updated http status code in control plane apis of agentcore runtime, tools and identity. Additional included provider types for AgentCore Identity

1.9.0 (2025-10-10)
------------------

* Feature - Bedrock AgentCore release for Gateway, and Memory including Self-Managed Strategies support for Memory.

1.8.0 (2025-10-08)
------------------

* Feature - Adding support for authorizer type AWS_IAM to AgentCore Control Gateway.

1.7.0 (2025-10-06)
------------------

* Feature - Add support for VM lifecycle configuration parameters and A2A protocol

1.6.0 (2025-09-30)
------------------

* Feature - Tagging support for AgentCore Gateway

1.5.0 (2025-09-19)
------------------

* Feature - Add tagging and VPC support to AgentCore Runtime, Code Interpreter, and Browser resources. Add support for configuring request headers in Runtime. Fix AgentCore Runtime shape names.

1.4.0 (2025-08-26)
------------------

* Feature - Remove incorrect endpoint tests

1.3.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2025-07-16)
------------------

* Feature - Initial release of `aws-sdk-bedrockagentcorecontrol`.

