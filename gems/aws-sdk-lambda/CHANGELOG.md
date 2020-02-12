Unreleased Changes
------------------

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

