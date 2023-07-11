Unreleased Changes
------------------

1.103.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.102.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.101.0 (2023-06-28)
------------------

* Feature - Surface ResourceConflictException in DeleteEventSourceMapping

1.100.0 (2023-06-20)
------------------

* Feature - This release adds RecursiveInvocationException to the Invoke API and InvokeWithResponseStream API.

1.99.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.98.0 (2023-06-05)
------------------

* Feature - Add Ruby 3.2 (ruby3.2) Runtime support to AWS Lambda.

1.97.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.96.0 (2023-04-27)
------------------

* Feature - Add Java 17 (java17) support to AWS Lambda

1.95.0 (2023-04-17)
------------------

* Feature - Add Python 3.10 (python3.10) support to AWS Lambda

1.94.0 (2023-04-14)
------------------

* Feature - This release adds SnapStart related exceptions to InvokeWithResponseStream API. IAM access related documentation is also added for this API.

1.93.0 (2023-04-07)
------------------

* Feature - This release adds a new Lambda InvokeWithResponseStream API to support streaming Lambda function responses. The release also adds a new InvokeMode parameter to Function Url APIs to control whether the response will be streamed or buffered.

1.92.0 (2023-02-27)
------------------

* Feature - This release adds the ability to create ESMs with Document DB change streams as event source. For more information see  https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html.

1.91.0 (2023-01-23)
------------------

* Feature - Release Lambda RuntimeManagementConfig, enabling customers to better manage runtime updates to their Lambda functions. This release adds two new APIs, GetRuntimeManagementConfig and PutRuntimeManagementConfig, as well as support on existing Create/Get/Update function APIs.

1.90.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.89.0 (2023-01-12)
------------------

* Feature - Add support for MaximumConcurrency parameter for SQS event source. Customers can now limit the maximum concurrent invocations for their SQS Event Source Mapping.

1.88.0 (2022-11-29)
------------------

* Feature - Adds support for Lambda SnapStart, which helps improve the startup performance of functions. Customers can now manage SnapStart based functions via CreateFunction and UpdateFunctionConfiguration APIs

1.87.0 (2022-11-17)
------------------

* Feature - Add Node 18 (nodejs18.x) support to AWS Lambda.

1.86.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2022-08-17)
------------------

* Feature - Added support for customization of Consumer Group ID for MSK and Kafka Event Source Mappings.

1.84.0 (2022-05-12)
------------------

* Feature - Lambda releases NodeJs 16 managed runtime to be available in all commercial regions.

1.83.0 (2022-04-06)
------------------

* Feature - This release adds new APIs for creating and managing Lambda Function URLs and adds a new FunctionUrlAuthType parameter to the AddPermission API. Customers can use Function URLs to create built-in HTTPS endpoints on their functions.

1.82.0 (2022-03-24)
------------------

* Feature - Adds support for increased ephemeral storage (/tmp) up to 10GB for Lambda functions. Customers can now provision up to 10 GB of ephemeral storage per function instance, a 20x increase over the previous limit of 512 MB.

1.81.0 (2022-03-11)
------------------

* Feature - Adds PrincipalOrgID support to AddPermission API. Customers can use it to manage permissions to lambda functions at AWS Organizations level.

1.80.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2022-02-23)
------------------

* Feature - Lambda releases .NET 6 managed runtime to be available in all commercial regions.

1.78.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.75.0 (2021-11-24)
------------------

* Feature - Remove Lambda function url apis

1.74.0 (2021-11-23)
------------------

* Feature - Release Lambda event source filtering for SQS, Kinesis Streams, and DynamoDB Streams.

1.73.0 (2021-11-19)
------------------

* Feature - Add support for Lambda Function URLs. Customers can use Function URLs to create built-in HTTPS endpoints on their functions.

1.72.0 (2021-11-18)
------------------

* Feature - Added support for CLIENT_CERTIFICATE_TLS_AUTH and SERVER_ROOT_CA_CERTIFICATE as SourceAccessType for MSK and Kafka event source mappings.

1.71.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2021-09-29)
------------------

* Feature - Adds support for Lambda functions powered by AWS Graviton2 processors. Customers can now select the CPU architecture for their functions.

1.68.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2021-08-12)
------------------

* Feature - Lambda Python 3.9 runtime launch

1.66.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2021-07-21)
------------------

* Feature - New ResourceConflictException error code for PutFunctionEventInvokeConfig, UpdateFunctionEventInvokeConfig, and DeleteFunctionEventInvokeConfig operations.

1.63.0 (2021-07-06)
------------------

* Feature - Added support for AmazonMQRabbitMQ as an event source. Added support for VIRTUAL_HOST as SourceAccessType for streams event source mappings.

1.62.0 (2021-03-16)
------------------

* Feature - Allow empty list for function response types

1.61.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2021-03-08)
------------------

* Feature - Documentation updates for Lambda. Constraint updates to AddLayerVersionPermission's Action and OrganizationId parameters, and AddPermission's Principal and SourceAccount parameters.

1.59.0 (2021-02-03)
------------------

* Feature - Support for creating Lambda Functions using 'nodejs14.x'

1.58.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2020-12-15)
------------------

* Feature - Added support for Apache Kafka as a event source. Added support for TumblingWindowInSeconds for streams event source mappings. Added support for FunctionResponseTypes for streams event source mappings

1.56.0 (2020-12-04)
------------------

* Feature - Added the additional enum InvalidImage to StateReasonCode and LastUpdateStatusReasonCode fields.

1.55.0 (2020-12-01)
------------------

* Feature - This release includes support for a new feature: Container images support in AWS Lambda. This adds APIs for deploying functions as container images. AWS Lambda now supports memory up to 10240MB.

1.54.0 (2020-11-23)
------------------

* Feature - This release includes support for new feature: Code Signing for AWS Lambda. This adds new resources and APIs to configure Lambda functions to accept and verify signed code artifacts at deployment.

1.53.0 (2020-11-19)
------------------

* Feature - Added the starting position and starting position timestamp to ESM Configuration. Now customers will be able to view these fields for their ESM.

1.52.0 (2020-11-05)
------------------

* Feature - Support Amazon MQ as an Event Source.

1.51.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2020-08-12)
------------------

* Feature - Support for creating Lambda Functions using 'java8.al2' and 'provided.al2'

1.47.0 (2020-08-11)
------------------

* Feature - Support Managed Streaming for Kafka as an Event Source. Support retry until record expiration for Kinesis and Dynamodb streams event source mappings.

1.46.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2020-06-16)
------------------

* Feature - Adds support for using Amazon Elastic File System (persistent storage) with AWS Lambda. This enables customers to share data across function invocations, read large reference data files, and write function output to a persistent and shared store.

1.43.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.43.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2020-04-30)
------------------

* Feature - Documentation updates for Lambda

1.39.0 (2020-04-16)
------------------

* Feature - Sample code for AWS Lambda operations

1.38.0 (2020-03-31)
------------------

* Feature - AWS Lambda now supports .NET Core 3.1

1.37.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2020-02-19)
------------------

* Feature - AWS Lambda now supports Ruby 2.7

1.35.0 (2020-01-20)
------------------

* Feature - Added reason codes to StateReasonCode (InvalidSubnet, InvalidSecurityGroup) and LastUpdateStatusReasonCode (SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup) for functions that connect to a VPC.

1.34.0 (2019-12-04)
------------------

* Feature - Added the ProvisionedConcurrency type and operations. Allocate provisioned concurrency to enable your function to scale up without fluctuations in latency. Use PutProvisionedConcurrencyConfig to configure provisioned concurrency on a version of a function, or on an alias.

1.33.0 (2019-11-25)
------------------

* Feature - Added the function state and update status to the output of GetFunctionConfiguration and other actions. Check the state information to ensure that a function is ready before you perform operations on it. Functions take time to become ready when you connect them to a VPC.Added the EventInvokeConfig type and operations to configure error handling options for asynchronous invocation. Use PutFunctionEventInvokeConfig to configure the number of retries and the maximum age of events when you invoke the function asynchronously.Added on-failure and on-success destination settings for asynchronous invocation. Configure destinations to send an invocation record to an SNS topic, an SQS queue, an EventBridge event bus, or a Lambda function.Added error handling options to event source mappings. This enables you to configure the number of retries, configure the maximum age of records, or retry with smaller batches when an error occurs when a function processes a Kinesis or DynamoDB stream.Added the on-failure destination setting to event source mappings. This enables you to send discarded events to an SNS topic or SQS queue when all retries fail or when the maximum record age is exceeded when a function processes a Kinesis or DynamoDB stream.Added the ParallelizationFactor option to event source mappings to increase concurrency per shard when a function processes a Kinesis or DynamoDB stream.

1.32.0 (2019-11-19)
------------------

* Feature - This release provides three new runtimes to support Node.js 12 (initially 12.13.0), Python 3.8 and Java 11.

1.31.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2019-08-29)
------------------

* Feature - Adds a "MaximumBatchingWindowInSeconds" parameter to event source mapping api's. Usable by Dynamodb and Kinesis event sources.

1.29.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2019-05-21)
------------------

* Feature - API update.

1.25.0 (2019-05-15)
------------------

* Feature - API update.

1.24.0 (2019-05-14)
------------------

* Feature - API update.

1.23.0 (2019-05-13)
------------------

* Feature - API update.

1.22.0 (2019-04-25)
------------------

* Feature - API update.

1.21.0 (2019-03-21)
------------------

* Feature - API update.

1.20.0 (2019-03-18)
------------------

* Feature - API update.

1.19.0 (2019-03-14)
------------------

* Feature - API update.

1.18.0 (2019-02-12)
------------------

* Feature - API update.

1.17.0 (2019-01-17)
------------------

* Feature - API update.

1.16.0 (2018-11-29)
------------------

* Feature - API update.

1.15.0 (2018-11-20)
------------------

* Feature - API update.

1.14.0 (2018-11-19)
------------------

* Feature - API update.

1.13.0 (2018-10-24)
------------------

* Feature - API update.

1.12.0 (2018-10-23)
------------------

* Feature - API update.

1.11.0 (2018-10-15)
------------------

* Feature - API update.

1.10.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.9.0 (2018-09-05)
------------------

* Feature - API update.

1.8.0 (2018-07-09)
------------------

* Feature - API update.

1.7.0 (2018-06-28)
------------------

* Feature - API update.

1.6.0 (2018-06-26)
------------------

* Feature - API update.

1.5.0 (2018-04-03)
------------------

* Feature - API update.

1.4.0 (2018-01-25)
------------------

* Feature - API update.

1.3.0 (2018-01-15)
------------------

* Feature - API update.

1.2.0 (2017-11-30)
------------------

* Feature - API update.

1.1.0 (2017-11-29)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-lambda` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc16 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc15 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc14 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc13 (2017-07-17)
------------------

* Feature - API update.

1.0.0.rc12 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc11 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc10 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc9 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc8 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc7 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-05)
------------------

* Feature - API update.

1.0.0.rc4 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc3 (2017-01-24)
------------------

* Feature - API update.

1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-lambda` gem.
