Unreleased Changes
------------------

1.63.0 (2025-09-29)
------------------

* Feature - Release for fixing GetFoundationModel API behavior. Imported and custom models have their own exclusive API and GetFM should not accept those ARNS as input

1.62.0 (2025-09-18)
------------------

* Feature - Release includes an increase to the maximum policy build document size, an update to DeleteAutomatedReasoningPolicyBuildWorkflow to add ResourceInUseException, and corrections to UpdateAutomatedReasoningPolicyTestCaseRequest.

1.61.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2025-08-25)
------------------

* Feature - Remove incorrect endpoint tests

1.59.0 (2025-08-11)
------------------

* Feature - This release includes model updates and enhanced SDK documentation for union fields in automated reasoning policy components. Added docs cover policy definitions, mutations (add/update for rules/types/variables), build assets, workflow sources, test results, and tag exception handling.

1.58.0 (2025-08-05)
------------------

* Feature - This release introduces Automated Reasoning checks for Amazon Bedrock Guardrails. The feature adds new APIs for policy building, refinement, version management, and testing. Guardrail APIs now support Automated Reasoning policy configuration and validation output.

1.57.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Feature - Support `ENV['AWS_BEARER_TOKEN_BEDROCK']` for authentication with Amazon Bedrock APIs.

1.54.0 (2025-07-16)
------------------

* Feature - This release adds support for on-demand custom model inference through CustomModelDeployment APIs for Amazon Bedrock.

1.53.0 (2025-06-30)
------------------

* Feature - Add support for API Keys, Re-Ranker, implicit filter for RAG / KB evaluation for Bedrock APIs.

1.52.0 (2025-06-24)
------------------

* Feature - We are making ListFoundationModelAgreementOffers, DeleteFoundationModelAgreement, CreateFoundationModelAgreement, GetFoundationModelAvailability, PutUseCaseForModelAccess and GetUseCaseForModelAccess APIs public, previously they were console.

1.51.0 (2025-06-20)
------------------

* Feature - Add support for tiers in Content Filters and Denied Topics for Amazon Bedrock Guardrails.

1.50.0 (2025-06-19)
------------------

* Feature - This release of the SDK has the API and documentation for the createcustommodel API. This feature lets you copy a trained model into Amazon Bedrock for inference.

1.49.0 (2025-06-17)
------------------

* Feature - This release of the SDK has the API and documentation for the createcustommodel API. This feature lets you copy a trained model into Amazon Bedrock for inference.

1.48.0 (2025-06-16)
------------------

* Feature - This release of the SDK has the API and documentation for the createcustommodel API. This feature lets you copy a Amazon SageMaker trained Amazon Nova model into Amazon Bedrock for inference.

1.47.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2025-05-13)
------------------

* Feature - Enable cross-Region inference for Amazon Bedrock Guardrails by using the crossRegionConfig parameter when calling the CreateGuardrail or UpdateGuardrail operation.

1.45.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2025-04-30)
------------------

* Feature - You can now specify a cross region inference profile as a teacher model for the CreateModelCustomizationJob API. Additionally, the GetModelCustomizationJob API has been enhanced to return the sub-task statuses of a customization job within the StatusDetails response field.

1.42.0 (2025-04-17)
------------------

* Feature - With this release, Bedrock Evaluation will now support custom metrics for evaluation.

1.41.0 (2025-04-07)
------------------

* Feature - New options for how to handle harmful content detected by Amazon Bedrock Guardrails.

1.40.0 (2025-03-21)
------------------

* Feature - A CustomModelUnit(CMU) is an abstract view of the hardware utilization that Bedrock needs to host a a single copy of your custom imported model. Bedrock determines the number of CMUs that a model copy needs when you import the custom model. You can use CMUs to estimate the cost of Inference's.

1.39.0 (2025-03-20)
------------------

* Feature - With this release, Bedrock Evaluation will now support bring your own inference responses.

1.38.0 (2025-03-19)
------------------

* Feature - Support custom prompt routers for evaluation jobs

1.37.0 (2025-03-06)
------------------

* Feature - This releases adds support for Custom Prompt Router

1.36.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2025-01-13)
------------------

* Feature - With this release, Bedrock Evaluation will now support latency-optimized inference for foundation models.

1.32.0 (2024-12-04)
------------------

* Feature - Introduced two APIs ListPromptRouters and GetPromptRouter for Intelligent Prompt Router feature. Add support for Bedrock Guardrails image content filter. New Bedrock Marketplace feature enabling a wider range of bedrock compatible models with self-hosted capability.

1.31.0 (2024-12-03)
------------------

* Feature - Tagging support for Async Invoke resources. Added support for Distillation in CreateModelCustomizationJob API. Support for videoDataDeliveryEnabled flag in invocation logging.

1.30.0 (2024-12-02)
------------------

* Feature - Add support for Knowledge Base Evaluations & LLM as a judge

1.29.0 (2024-11-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2024-10-29)
------------------

* Feature - Update Application Inference Profile

1.27.0 (2024-10-23)
------------------

* Feature - Doc updates for supporting converse

1.26.0 (2024-10-18)
------------------

* Feature - Adding converse support to CMI API's

1.25.0 (2024-09-30)
------------------

* Feature - Add support for custom models via provisioned throughput for Bedrock Model Evaluation

1.24.0 (2024-09-24)
------------------

* Feature - Add support for Cross Region Inference in Bedrock Model Evaluations.

1.23.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2024-09-16)
------------------

* Feature - This feature adds cross account s3 bucket and VPC support to ModelInvocation jobs. To use a cross account bucket, pass in the accountId of the bucket to s3BucketOwner in the ModelInvocationJobInputDataConfig or ModelInvocationJobOutputDataConfig.

1.20.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2024-08-27)
------------------

* Feature - Amazon Bedrock SDK updates for Inference Profile.

1.16.0 (2024-08-22)
------------------

* Feature - Amazon Bedrock Evaluation BatchDeleteEvaluationJob API allows customers to delete evaluation jobs under terminated evaluation job statuses - Stopped, Failed, or Completed. Customers can submit a batch of 25 evaluation jobs to be deleted at once.

1.15.0 (2024-08-19)
------------------

* Feature - Amazon Bedrock Batch Inference/ Model Invocation is a feature which allows customers to asynchronously run inference on a large set of records/files stored in S3.

1.14.0 (2024-08-01)
------------------

* Feature - API and Documentation for Bedrock Model Copy feature. This feature lets you share and copy a custom model from one region to another or one account to another.

1.13.0 (2024-07-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2024-07-10)
------------------

* Feature - Add support for contextual grounding check for Guardrails for Amazon Bedrock.

1.11.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2024-04-23)
------------------

* Feature - This release introduces Model Evaluation and Guardrails for Amazon Bedrock.

1.4.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2023-11-28)
------------------

* Feature - This release adds support for customization types, model life cycle status and minor versions/aliases for model identifiers.

1.2.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2023-10-02)
------------------

* Feature - Provisioned throughput feature with Amazon and third-party base models, and update validators for model identifier and taggable resource ARNs.

1.0.0 (2023-09-28)
------------------

* Feature - Initial release of `aws-sdk-bedrock`.

