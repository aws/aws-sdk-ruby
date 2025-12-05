Unreleased Changes
------------------

1.69.0 (2025-12-01)
------------------

* Feature - Support audio and video ingestion on Bedrock Knowledge Bases.

1.68.0 (2025-11-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2025-10-30)
------------------

* Feature - Update endpoint ruleset parameters casing

1.66.0 (2025-10-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2025-08-25)
------------------

* Feature - Remove incorrect endpoint tests

1.63.0 (2025-08-15)
------------------

* Feature - This release adds support for saving Bedrock Flows while node configuration is still in progress, even if the Flow is not yet able to be invoked

1.62.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.61.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2025-07-15)
------------------

* Feature - Add support for S3 Vectors as a vector store.

1.58.0 (2025-06-02)
------------------

* Feature - This release adds the Agent Lifecycle Paused State feature to Amazon Bedrock agents. By using an agent's alias, you can temporarily suspend agent operations during maintenance, updates, or other situations.

1.57.0 (2025-05-15)
------------------

* Feature - Amazon Bedrock Flows introduces DoWhile loops nodes, parallel node executions, and enhancements to knowledge base nodes.

1.56.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2025-04-30)
------------------

* Feature - Features:    Add inline code node to prompt flow

1.53.0 (2025-04-03)
------------------

* Feature - Added optional "customMetadataField" for Amazon Aurora knowledge bases, allowing single-column metadata. Also added optional "textIndexName" for MongoDB Atlas knowledge bases, enabling hybrid search support.

1.52.0 (2025-03-25)
------------------

* Feature - Adding support for Amazon OpenSearch Managed clusters as a vector database in Knowledge Bases for Amazon Bedrock

1.51.0 (2025-03-10)
------------------

* Feature - Add support for computer use tools

1.50.0 (2025-03-07)
------------------

* Feature - Introduces support for Neptune Analytics as a vector data store and adds Context Enrichment Configurations, enabling use cases such as GraphRAG.

1.49.0 (2025-02-28)
------------------

* Feature - This release lets Amazon Bedrock Flows support newer models by increasing the maximum length of output in a prompt configuration. This release also increases the maximum number of prompt variables to 20 and the maximum number of node inputs to 20.

1.48.0 (2025-02-24)
------------------

* Feature - This release improves support for newer models in Amazon Bedrock Flows.

1.47.0 (2025-02-21)
------------------

* Feature - Introduce a new parameter which represents the user-agent header value used by the Bedrock Knowledge Base Web Connector.

1.46.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2025-02-12)
------------------

* Feature - This releases adds the additionalModelRequestFields field to the CreateAgent and UpdateAgent operations. Use additionalModelRequestFields to specify  additional inference parameters for a model beyond the base inference parameters.

1.44.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2025-01-27)
------------------

* Feature - Add support for the prompt caching feature for Bedrock Prompt Management

1.42.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2024-12-20)
------------------

* Feature - Support for custom user agent and max web pages crawled for web connector. Support app only credentials for SharePoint connector. Increase agents memory duration limit to 365 days. Support to specify max number of session summaries to include in agent invocation context.

1.40.0 (2024-12-04)
------------------

* Feature - This release introduces the ability to generate SQL using natural language, through a new GenerateQuery API (with native integration into Knowledge Bases); ability to ingest and retrieve images through Bedrock Data Automation; and ability to create a Knowledge Base backed by Kendra GenAI Index.

1.39.0 (2024-12-03)
------------------

* Feature - Releasing SDK for Multi-Agent Collaboration.

1.38.0 (2024-12-02)
------------------

* Feature - This release introduces APIs to upload documents directly into a Knowledge Base

1.37.0 (2024-11-27)
------------------

* Feature - Add support for specifying embeddingDataType, either FLOAT32 or BINARY

1.36.0 (2024-11-26)
------------------

* Feature - Custom Orchestration API release for AWSBedrockAgents.

1.35.0 (2024-11-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2024-11-07)
------------------

* Feature - Add prompt support for chat template configuration and agent generative AI resource. Add support for configuring an optional guardrail in Prompt and Knowledge Base nodes in Prompt Flows. Add API to validate flow definition

1.33.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2024-11-01)
------------------

* Feature - Amazon Bedrock Knowledge Bases now supports using application inference profiles to increase throughput and improve resilience.

1.31.0 (2024-10-25)
------------------

* Feature - Add support of new model types for Bedrock Agents, Adding inference profile support for Flows and Prompt Management, Adding new field to configure additional inference configurations for Flows and Prompt Management

1.30.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2024-10-17)
------------------

* Feature - Removing support for topK property in PromptModelInferenceConfiguration object, Making PromptTemplateConfiguration property as required, Limiting the maximum PromptVariant to 1

1.28.0 (2024-10-01)
------------------

* Feature - This release adds support to stop an ongoing ingestion job using the StopIngestionJob API in Agents for Amazon Bedrock.

1.27.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2024-09-23)
------------------

* Feature - Amazon Bedrock Prompt Flows and Prompt Management now supports using inference profiles to increase throughput and improve resilience.

1.25.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2024-09-11)
------------------

* Feature - Amazon Bedrock Knowledge Bases now supports using inference profiles to increase throughput and improve resilience.

1.23.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2024-09-04)
------------------

* Feature - Add support for user metadata inside PromptVariant.

1.21.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2024-08-23)
------------------

* Feature - Releasing the support for Action User Confirmation.

1.19.0 (2024-07-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2024-07-10)
------------------

* Feature - Introduces new data sources and chunking strategies for Knowledge bases, advanced parsing logic using FMs, session summary generation, and code interpretation (preview) for Claude V3 Sonnet and Haiku models. Also introduces Prompt Flows (preview) to link prompts, foundational models, and resources.

1.17.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2024-05-30)
------------------

* Feature - With this release, Knowledge bases for Bedrock adds support for Titan Text Embedding v2.

1.12.0 (2024-05-20)
------------------

* Feature - This release adds support for using Guardrails with Bedrock Agents.

1.11.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2024-05-03)
------------------

* Feature - This release adds support for using Provisioned Throughput with Bedrock Agents.

1.9.0 (2024-05-01)
------------------

* Feature - This release adds support for using MongoDB Atlas as a vector store when creating a knowledge base.

1.8.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2024-04-23)
------------------

* Feature - Introducing the ability to create multiple data sources per knowledge base, specify S3 buckets as data sources from external accounts, and exposing levers to define the deletion behavior of the underlying vector store data.

1.6.0 (2024-04-22)
------------------

* Feature - Releasing the support for simplified configuration and return of control

1.5.0 (2024-04-16)
------------------

* Feature - For Create Agent API, the agentResourceRoleArn parameter is no longer required.

1.4.0 (2024-03-27)
------------------

* Feature - This changes introduces metadata documents statistics and also updates the documentation for bedrock agent.

1.3.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2023-12-22)
------------------

* Feature - Adding Claude 2.1 support to Bedrock Agents

1.1.0 (2023-12-21)
------------------

* Feature - This release introduces Amazon Aurora as a vector store on Knowledge Bases for Amazon Bedrock

1.0.0 (2023-11-28)
------------------

* Feature - Initial release of `aws-sdk-bedrockagent`.

