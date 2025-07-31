Unreleased Changes
------------------

1.123.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.122.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.121.0 (2025-07-18)
------------------

* Feature - CloudWatchLogs launches GetLogObject API with streaming support for efficient log data retrieval. Logs added support for new AccountPolicy type METRIC_EXTRACTION_POLICY. For more information, see CloudWatch Logs API documentation

1.120.0 (2025-07-16)
------------------

* Feature - CloudWatch Logs updates: Added X-Ray tracing for Amazon Bedrock Agent resources. Logs introduced Log Group level resource policies (managed through Put/Delete/Describe Resource Policy APIs). For more information, see CloudWatch Logs API documentation.

1.119.0 (2025-06-30)
------------------

* Feature - Increase minimum length of queryId parameter to 1 character.

1.118.0 (2025-06-18)
------------------

* Feature - Added CloudWatch Logs Transformer support for converting CloudTrail, VPC Flow, EKS Audit, AWS WAF and Route53 Resolver logs to OCSF v1.1 format.

1.117.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.116.0 (2025-05-14)
------------------

* Feature - This release adds a new API "ListLogGroups" and an improvement in API "DescribeLogGroups"

1.115.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.114.0 (2025-05-09)
------------------

* Feature - We are pleased to announce limit increases to our grok processor logs transformation feature. Now you can define 20 Grok patterns in their configurations, with an expanded total pattern matching limit of 512 characters.

1.113.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.112.0 (2025-04-30)
------------------

* Feature - CloudWatch Logs supports "DELIVERY" log class. This log class is used only for delivering AWS Lambda logs to Amazon S3 or Amazon Data Firehose.

1.111.0 (2025-04-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.110.0 (2025-03-13)
------------------

* Feature - Updated CreateLogAnomalyDetector to accept only kms key arn

1.109.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.108.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.107.0 (2025-01-21)
------------------

* Feature - Documentation-only update to address doc errors

1.106.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.105.0 (2024-12-13)
------------------

* Feature - Limit PutIntegration IntegrationName and ListIntegrations IntegrationNamePrefix parameters to 50 characters

1.104.0 (2024-12-02)
------------------

* Feature - Adds PutIntegration, GetIntegration, ListIntegrations and DeleteIntegration APIs. Adds QueryLanguage support to StartQuery, GetQueryResults, DescribeQueries, DescribeQueryDefinitions, and PutQueryDefinition APIs.

1.103.0 (2024-11-21)
------------------

* Feature - Adds "Create field indexes to improve query performance and reduce scan volume" and "Transform logs during ingestion". Updates documentation for "PutLogEvents with Entity".

1.102.0 (2024-11-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.101.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.100.0 (2024-11-01)
------------------

* Feature - This release introduces an improvement in PutLogEvents

1.99.0 (2024-10-29)
------------------

* Feature - Added support for new optional baseline parameter in the UpdateAnomaly API. For UpdateAnomaly requests with baseline set to True, The anomaly behavior is then treated as baseline behavior. However, more severe occurrences of this behavior will still be reported as anomalies.

1.98.0 (2024-10-25)
------------------

* Feature - Adding inferred token name for dynamic tokens in Anomalies.

1.97.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.96.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.95.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.94.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.92.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2024-09-04)
------------------

* Feature - Update to support new APIs for delivery of logs from AWS services.

1.90.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.89.0 (2024-08-30)
------------------

* Feature - This release introduces a new optional parameter: Entity, in PutLogEvents request

1.88.0 (2024-07-30)
------------------

* Feature - Add v2 smoke tests and smithy smokeTests trait for SDK testing.

1.87.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.0 (2024-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.81.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2024-03-19)
------------------

* Feature - Update LogSamples field in Anomaly model to be a list of LogEvent

1.79.0 (2024-02-06)
------------------

* Feature - This release adds a new field, logGroupArn, to the response of the logs:DescribeLogGroups action.

1.78.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2024-01-10)
------------------

* Feature - Add support for account level subscription filter policies to PutAccountPolicy, DescribeAccountPolicies, and DeleteAccountPolicy APIs. Additionally, PutAccountPolicy has been modified with new optional "selectionCriteria" parameter for resource selection.

1.76.0 (2023-12-12)
------------------

* Feature - This release introduces the StartLiveTail API to tail ingested logs in near real time.

1.75.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2023-11-27)
------------------

* Feature - Added APIs to Create, Update, Get, List and Delete LogAnomalyDetectors and List and Update Anomalies in Detector. Added LogGroupClass attribute for LogGroups to classify loggroup as Standard loggroup with all capabilities or InfrequentAccess loggroup with limited capabilities.

1.73.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.72.0 (2023-11-09)
------------------

* Feature - Update to support new APIs for delivery of logs from AWS services.

1.71.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2023-09-20)
------------------

* Feature - Add ClientToken to QueryDefinition CFN Handler in CWL

1.69.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2023-07-07)
------------------

* Feature - Add CMK encryption support for CloudWatch Logs Insights query result data

1.67.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.66.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2023-06-07)
------------------

* Feature - This change adds support for account level data protection policies using 3 new APIs, PutAccountPolicy, DeleteAccountPolicy and DescribeAccountPolicy. DescribeLogGroup API has been modified to indicate if account level policy is applied to the LogGroup via "inheritedProperties" list in the response.

1.63.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2023-01-19)
------------------

* Feature - Bug fix - Removed the regex pattern validation from CoralModel to avoid potential security issue.

1.61.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.60.0 (2023-01-12)
------------------

* Feature - Bug fix: logGroupName is now not a required field in GetLogEvents, FilterLogEvents, GetLogGroupFields, and DescribeLogStreams APIs as logGroupIdentifier can be provided instead

1.59.0 (2023-01-04)
------------------

* Feature - Update to remove sequenceToken as a required field in PutLogEvents calls.

1.58.0 (2022-12-09)
------------------

* Feature - Doc-only update for CloudWatch Logs, for Tagging Permissions clarifications

1.57.0 (2022-11-28)
------------------

* Feature - Updates to support CloudWatch Logs data protection and CloudWatch cross-account observability

1.56.0 (2022-11-04)
------------------

* Feature - Doc-only update for bug fixes and support of export to buckets encrypted with SSE-KMS

1.55.0 (2022-10-31)
------------------

* Feature - SDK release to support tagging for destinations and log groups with TagResource. Also supports tag on create with PutDestination.

1.54.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2022-05-20)
------------------

* Feature - Doc-only update to publish the new valid values for log retention

1.52.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2021-12-08)
------------------

* Feature - This release adds AWS Organizations support as condition key in destination policy for cross account Subscriptions in CloudWatch Logs.

1.48.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2021-08-17)
------------------

* Feature - Documentation-only update for CloudWatch Logs

1.43.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2021-05-24)
------------------

* Feature - This release provides dimensions and unit support for metric filters.

1.40.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2020-08-24)
------------------

* Feature - Documentation updates for CloudWatch Logs

1.34.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.32.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2020-05-07)
------------------

* Feature - Amazon CloudWatch Logs now offers the ability to interact with Logs Insights queries via the new PutQueryDefinition, DescribeQueryDefinitions, and DeleteQueryDefinition APIs.

1.29.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2020-01-09)
------------------

* Feature - Documentation updates for logs

1.27.0 (2019-11-15)
------------------

* Feature - Documentation updates for logs

1.26.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2019-07-26)
------------------

* Feature - Allow for specifying multiple log groups in an Insights query, and deprecate storedByte field for LogStreams and interleaved field for FilterLogEventsRequest.

1.24.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2019-06-06)
------------------

* Feature - Documentation updates for logs

1.20.0 (2019-05-21)
------------------

* Feature - API update.

1.19.0 (2019-05-15)
------------------

* Feature - API update.

1.18.0 (2019-05-14)
------------------

* Feature - API update.

1.17.0 (2019-03-21)
------------------

* Feature - API update.

1.16.0 (2019-03-18)
------------------

* Feature - API update.

1.15.0 (2019-03-14)
------------------

* Feature - API update.

1.14.0 (2019-03-13)
------------------

* Feature - API update.

1.13.0 (2019-01-24)
------------------

* Feature - API update.

1.12.0 (2018-11-28)
------------------

* Feature - API update.

1.11.0 (2018-11-20)
------------------

* Feature - API update.

1.10.0 (2018-10-24)
------------------

* Feature - API update.

1.9.0 (2018-10-23)
------------------

* Feature - API update.

1.8.0 (2018-09-07)
------------------

* Feature - API update.

1.7.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.6.0 (2018-09-05)
------------------

* Feature - API update.

1.5.0 (2018-08-07)
------------------

* Feature - API update.

1.4.0 (2018-06-26)
------------------

* Feature - API update.

1.3.0 (2018-04-19)
------------------

* Feature - API update.

1.2.0 (2017-09-21)
------------------

* Feature - API update.

1.1.0 (2017-09-08)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-cloudwatchlogs` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc12 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc11 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc7 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc4 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc3 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc2 (2017-01-24)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-cloudwatchlogs` gem.
