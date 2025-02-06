Unreleased Changes
------------------

1.43.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2025-01-31)
------------------

* Feature - This change is to deprecate the existing citation field under RetrieveAndGenerateStream API response in lieu of GeneratedResponsePart and RetrievedReferences

1.41.0 (2025-01-30)
------------------

* Feature - Add a 'reason' field to InternalServerException

1.40.0 (2025-01-22)
------------------

* Feature - Adds multi-turn input support for an Agent node in an Amazon Bedrock Flow

1.39.0 (2025-01-15)
------------------

* Feature - Now supports streaming for inline agents.

1.38.0 (2024-12-20)
------------------

* Feature - bedrock agents now supports long term memory and performance configs. Invokeflow supports performance configs. RetrieveAndGenerate performance configs

1.37.0 (2024-12-04)
------------------

* Feature - This release introduces the ability to generate SQL using natural language, through a new GenerateQuery API (with native integration into Knowledge Bases); ability to ingest and retrieve images through Bedrock Data Automation; and ability to create a Knowledge Base backed by Kendra GenAI Index.

1.36.0 (2024-12-03)
------------------

* Feature - Releasing SDK for multi agent collaboration

1.35.0 (2024-12-02)
------------------

* Feature - This release introduces a new Rerank API to leverage reranking models (with integration into Knowledge Bases); APIs to upload documents directly into Knowledge Base; RetrieveAndGenerateStream API for streaming response; Guardrails on Retrieve API; and ability to automatically generate filters

1.34.0 (2024-11-26)
------------------

* Feature - Custom Orchestration and Streaming configurations API release for AWSBedrockAgents.

1.33.0 (2024-11-22)
------------------

* Feature - InvokeInlineAgent API release to help invoke runtime agents without any dependency on preconfigured agents.

1.32.0 (2024-11-20)
------------------

* Feature - Releasing new Prompt Optimization to enhance your prompts for improved performance

1.31.0 (2024-11-08)
------------------

* Feature - This release adds trace functionality to Bedrock Prompt Flows

1.30.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2024-10-21)
------------------

* Feature - Knowledge Bases for Amazon Bedrock now supports custom prompts and model parameters in the orchestrationConfiguration of the RetrieveAndGenerate API. The modelArn field accepts Custom Models and Imported Models ARNs.

1.28.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2024-10-02)
------------------

* Feature - Added raw model response and usage metrics to PreProcessing and PostProcessing Trace

1.26.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2024-09-11)
------------------

* Feature - Amazon Bedrock Knowledge Bases now supports using inference profiles to increase throughput and improve resilience.

1.22.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2024-08-29)
------------------

* Feature - Lifting the maximum length on Bedrock KnowledgeBase RetrievalFilter array

1.19.0 (2024-08-23)
------------------

* Feature - Releasing the support for Action User Confirmation.

1.18.0 (2024-08-06)
------------------

* Feature - Introduce model invocation output traces for orchestration traces, which contain the model's raw response and usage.

1.17.0 (2024-07-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2024-07-10)
------------------

* Feature - Introduces query decomposition, enhanced Agents integration with Knowledge bases, session summary generation, and code interpretation (preview) for Claude V3 Sonnet and Haiku models. Also introduces Prompt Flows (preview) to link prompts, foundational models, and resources for end-to-end solutions.

1.15.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2024-05-20)
------------------

* Feature - This release adds support for using Guardrails with Bedrock Agents.

1.10.0 (2024-05-15)
------------------

* Feature - Updating Bedrock Knowledge Base Metadata & Filters feature with two new filters listContains and stringContains

1.9.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2024-05-09)
------------------

* Feature - This release adds support to provide guardrail configuration and modify inference parameters that are then used in RetrieveAndGenerate API in Agents for Amazon Bedrock.

1.7.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2024-04-23)
------------------

* Feature - This release introduces zero-setup file upload support for the RetrieveAndGenerate API. This allows you to chat with your data without setting up a Knowledge Base.

1.5.0 (2024-03-27)
------------------

* Feature - This release introduces filtering support on Retrieve and RetrieveAndGenerate APIs.

1.4.0 (2024-03-26)
------------------

* Feature - This release adds support to customize prompts sent through the RetrieveAndGenerate API in Agents for Amazon Bedrock.

1.3.0 (2024-03-08)
------------------

* Feature - Documentation update for Bedrock Runtime Agent

1.2.0 (2024-02-28)
------------------

* Feature - This release adds support to override search strategy performed by the Retrieve and RetrieveAndGenerate APIs for Amazon Bedrock Agents

1.1.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2023-11-28)
------------------

* Feature - Initial release of `aws-sdk-bedrockagentruntime`.

