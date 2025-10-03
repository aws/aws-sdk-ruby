Unreleased Changes
------------------

1.60.0 (2025-09-29)
------------------

* Feature - New stop reason for Converse and ConverseStream

1.59.0 (2025-08-29)
------------------

* Feature - Fixed stop sequence limit for converse API.

1.58.0 (2025-08-28)
------------------

* Feature - Remove incorrect endpoint tests

1.57.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2025-08-20)
------------------

* Feature - Launch CountTokens API to allow token counting

1.55.0 (2025-08-05)
------------------

* Feature - This release adds support for Automated Reasoning checks output models for the Amazon Bedrock Guardrails ApplyGuardrail API.

1.54.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Feature - Support `ENV['AWS_BEARER_TOKEN_BEDROCK']` for authentication with Amazon Bedrock APIs.

1.51.0 (2025-07-16)
------------------

* Feature - document update to support on demand custom model.

1.50.0 (2025-06-30)
------------------

* Feature - Add API Key and document citations support for Bedrock Runtime APIs

1.49.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2025-04-28)
------------------

* Feature - This release adds native h2 support for the bedrock runtime API, the support is only limited to SDKs that support h2 requests natively.

1.45.0 (2025-04-25)
------------------

* Feature - You can now reference images and documents stored in Amazon S3 when using InvokeModel and Converse APIs with Amazon Nova Lite and Nova Pro. This enables direct integration of S3-stored multimedia assets in your model requests without manual downloading or base64 encoding.

1.44.0 (2025-04-08)
------------------

* Feature - This release introduces our latest bedrock runtime API, InvokeModelWithBidirectionalStream. The API supports both input and output streams and is supported by only HTTP2.0.

1.43.0 (2025-04-07)
------------------

* Feature - New options for how to handle harmful content detected by Amazon Bedrock Guardrails.

1.42.0 (2025-03-31)
------------------

* Feature - Add Prompt Caching support to Converse and ConverseStream APIs

1.41.0 (2025-03-28)
------------------

* Feature - Launching Multi-modality Content Filter for Amazon Bedrock Guardrails.

1.40.0 (2025-03-05)
------------------

* Feature - This releases adds support for Custom Prompt Router ARN

1.39.0 (2025-02-24)
------------------

* Feature - This release adds Reasoning Content support to Converse and ConverseStream APIs

1.38.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2025-01-17)
------------------

* Feature - Allow hyphens in tool name for Converse and ConverseStream APIs

1.35.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2024-12-04)
------------------

* Feature - Added support for Intelligent Prompt Router in Invoke, InvokeStream, Converse and ConverseStream. Add support for Bedrock Guardrails image content filter. New Bedrock Marketplace feature enabling a wider range of bedrock compatible models with self-hosted capability.

1.33.0 (2024-12-03)
------------------

* Feature - Added support for Async Invoke Operations Start, List and Get. Support for invocation logs with `requestMetadata` field in Converse, ConverseStream, Invoke and InvokeStream. Video content blocks in Converse/ConverseStream accept raw bytes or S3 URI.

1.32.0 (2024-12-03)
------------------

* Feature - Add an API parameter that allows customers to set performance configuration for invoking a model.

1.31.0 (2024-11-07)
------------------

* Feature - Add Prompt management support to Bedrock runtime APIs: Converse, ConverseStream, InvokeModel, InvokeModelWithStreamingResponse

1.30.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2024-10-29)
------------------

* Feature - Update Application Inference Profile

1.28.0 (2024-10-22)
------------------

* Feature - Updating invoke regex to support imported models for converse API

1.27.0 (2024-10-18)
------------------

* Feature - Added converse support for custom imported models

1.26.0 (2024-10-02)
------------------

* Feature - Added new fields to Amazon Bedrock Guardrails trace

1.25.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2024-08-29)
------------------

* Feature - Add support for imported-model in invokeModel and InvokeModelWithResponseStream.

1.18.0 (2024-08-27)
------------------

* Feature - Amazon Bedrock SDK updates for Inference Profile.

1.17.0 (2024-07-25)
------------------

* Feature - Provides ServiceUnavailableException error message

1.16.0 (2024-07-10)
------------------

* Feature - Add support for contextual grounding check and ApplyGuardrail API for Guardrails for Amazon Bedrock.

1.15.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2024-06-24)
------------------

* Feature - Increases Converse API's document name length

1.12.0 (2024-06-20)
------------------

* Feature - This release adds document support to Converse and ConverseStream APIs

1.11.0 (2024-06-18)
------------------

* Feature - This release adds support for using Guardrails with the Converse and ConverseStream APIs.

1.10.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2024-05-30)
------------------

* Feature - This release adds Converse and ConverseStream APIs to Bedrock Runtime

1.8.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2024-04-23)
------------------

* Feature - This release introduces Guardrails for Amazon Bedrock.

1.5.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2023-11-28)
------------------

* Feature - This release adds support for minor versions/aliases for invoke model identifier.

1.3.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2023-11-14)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Fix exception handling with event streaming operations.

1.1.0 (2023-10-02)
------------------

* Feature - Add model timeout exception for InvokeModelWithResponseStream API and update validator for invoke model identifier.

1.0.0 (2023-09-28)
------------------

* Feature - Initial release of `aws-sdk-bedrockruntime`.

