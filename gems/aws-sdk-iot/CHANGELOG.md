Unreleased Changes
------------------

1.110.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.109.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.108.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.107.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.106.0 (2023-06-06)
------------------

* Feature - Adding IoT Device Management Software Package Catalog APIs to register, store, and report system software packages, along with their versions and metadata in a centralized location.

1.105.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.104.0 (2023-04-28)
------------------

* Feature - This release allows AWS IoT Core users to specify a TLS security policy when creating and updating AWS IoT Domain Configurations.

1.103.0 (2023-04-20)
------------------

* Feature - Support additional OTA states in GetOTAUpdate API

1.102.0 (2023-04-11)
------------------

* Feature - Re-release to remove unexpected API changes

1.101.0 (2023-03-02)
------------------

* Feature - A recurring maintenance window is an optional configuration used for rolling out the job document to all devices in the target group observing a predetermined start time, duration, and frequency that the maintenance window occurs.

1.100.0 (2023-01-31)
------------------

* Feature - Added support for IoT Rules Engine Cloudwatch Logs action batch mode.

1.99.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.98.0 (2022-11-28)
------------------

* Feature - Job scheduling enables the scheduled rollout of a Job with start and end times and a customizable end behavior when end time is reached. This is available for continuous and snapshot jobs. Added support for MQTT5 properties to AWS IoT TopicRule Republish Action.

1.97.0 (2022-11-11)
------------------

* Feature - This release add new api listRelatedResourcesForAuditFinding and new member type IssuerCertificates for Iot device device defender Audit.

1.96.0 (2022-10-31)
------------------

* Feature - This release adds the Amazon Location action to IoT Rules Engine.

1.95.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.94.0 (2022-08-04)
------------------

* Feature - The release is to support attach a provisioning template to CACert for JITP function,  Customer now doesn't have to hardcode a roleArn and templateBody during register a CACert to enable JITP.

1.93.0 (2022-07-20)
------------------

* Feature - GA release the ability to enable/disable IoT Fleet Indexing for Device Defender and Named Shadow information, and search them through IoT Fleet Indexing APIs. This includes Named Shadow Selection as a part of the UpdateIndexingConfiguration API.

1.92.0 (2022-07-07)
------------------

* Feature - This release adds support to register a CA certificate without having to provide a verification certificate. This also allows multiple AWS accounts to register the same CA in the same region.

1.91.0 (2022-06-27)
------------------

* Feature - This release ease the restriction for the input of tag value to align with AWS standard, now instead of min length 1, we change it to min length 0.

1.90.0 (2022-05-12)
------------------

* Feature - Documentation update for China region ListMetricValues for IoT

1.89.0 (2022-05-05)
------------------

* Feature - AWS IoT Jobs now allows you to create up to 100,000 active continuous and snapshot jobs by using concurrency control.

1.88.0 (2022-04-04)
------------------

* Feature - AWS IoT - AWS IoT Device Defender adds support to list metric datapoints collected for IoT devices through the ListMetricValues API

1.87.0 (2022-03-30)
------------------

* Feature - Doc only update for IoT that fixes customer-reported issues.

1.86.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2022-02-02)
------------------

* Feature - This release adds support for configuring AWS IoT logging level per client ID, source IP, or principal ID.

1.83.0 (2022-01-05)
------------------

* Feature - This release adds an automatic retry mechanism for AWS IoT Jobs. You can now define a maximum number of retries for each Job rollout, along with the criteria to trigger the retry for FAILED/TIMED_OUT/ALL(both FAILED an TIMED_OUT) job.

1.82.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.81.0 (2021-12-08)
------------------

* Feature - This release allows customer to enable caching of custom authorizer on HTTP protocol for clients that use persistent or Keep-Alive connection in order to reduce the number of Lambda invocations.

1.80.0 (2021-11-30)
------------------

* Feature - Added the ability to enable/disable IoT Fleet Indexing for Device Defender and Named Shadow information, and search them through IoT Fleet Indexing APIs.

1.79.0 (2021-11-23)
------------------

* Feature - This release introduces a new feature, Managed Job Template, for AWS IoT Jobs Service. Customers can now use service provided managed job templates to easily create jobs for supported standard job actions.

1.78.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2021-09-21)
------------------

* Feature - This release adds support for verifying, viewing and filtering AWS IoT Device Defender detect violations with four verification states.

1.75.0 (2021-09-13)
------------------

* Feature - AWS IoT Rules Engine adds OpenSearch action. The OpenSearch rule action lets you stream data from IoT sensors and applications to Amazon OpenSearch Service which is a successor to Amazon Elasticsearch Service.

1.74.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2021-08-31)
------------------

* Feature - Added Create/Update/Delete/Describe/List APIs for a new IoT resource named FleetMetric. Added a new Fleet Indexing query API named GetBucketsAggregation. Added a new field named DisconnectedReason in Fleet Indexing query response. Updated their related documentations.

1.72.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2021-07-29)
------------------

* Feature - Increase maximum credential duration of role alias to 12 hours.

1.70.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2021-05-25)
------------------

* Feature - This release includes support for a new feature: Job templates for AWS IoT Device Management Jobs. The release includes job templates as a new resource and APIs for managing job templates.

1.68.0 (2021-03-31)
------------------

* Feature - Added ability to prefix search on attribute value for ListThings API.

1.67.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.66.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2021-01-28)
------------------

* Feature - Documentation updates for IoT DeleteOTAUpdate API

1.64.0 (2020-12-15)
------------------

* Feature - AWS IoT Rules Engine adds Kafka Action that allows sending data to Apache Kafka clusters inside a VPC. AWS IoT Device Defender adds custom metrics and machine-learning based anomaly detection.

1.63.0 (2020-11-23)
------------------

* Feature - This release enables users to identify different file types in the over-the-air update (OTA) functionality using fileType parameter for CreateOTAUpdate API

1.62.0 (2020-11-12)
------------------

* Feature - This release adds a batchMode parameter to the IotEvents, IotAnalytics, and Firehose actions which allows customers to send an array of messages to the corresponding services

1.61.0 (2020-11-04)
------------------

* Feature - Updated API documentation and added paginator for AWS Iot Registry ListThingPrincipals API.

1.60.0 (2020-10-28)
------------------

* Feature - This release adds support for GG-Managed Job Namespace

1.59.0 (2020-10-15)
------------------

* Feature - Add new variable, lastStatusChangeDate, to DescribeDomainConfiguration  API

1.58.0 (2020-09-30)
------------------

* Feature - AWS IoT Rules Engine adds Timestream action. The Timestream rule action lets you stream time-series data from IoT sensors and applications to Amazon Timestream databases for time series analysis.

1.57.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2020-08-12)
------------------

* Feature - Audit finding suppressions: Device Defender enables customers to turn off non-compliant findings for specific resources on a per check basis.

1.54.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2020-06-15)
------------------

* Feature - Added support for job executions rollout configuration, job abort configuration, and job executions timeout configuration for AWS IoT Over-the-Air (OTA) Update Feature.

1.51.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.51.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2020-04-30)
------------------

* Feature - AWS IoT Core released Fleet Provisioning for scalable onboarding of IoT devices to the cloud. This release includes support for customer's Lambda functions to validate devices during onboarding. Fleet Provisioning also allows devices to send Certificate Signing Requests (CSR) to AWS IoT Core for signing and getting a unique certificate. Lastly,  AWS IoT Core added a feature to register the same certificate for multiple accounts in the same region without needing to register the certificate authority (CA).

1.47.0 (2020-04-24)
------------------

* Feature - This release adds a new exception type to the AWS IoT SetV2LoggingLevel API.

1.46.0 (2020-04-01)
------------------

* Feature - This release introduces Dimensions for AWS IoT Device Defender. Dimensions can be used in Security Profiles to collect and monitor fine-grained metrics.

1.45.0 (2020-03-12)
------------------

* Feature - As part of this release, we are extending capability of AWS IoT Rules Engine to support IoT Cloudwatch log action. The IoT Cloudwatch log rule action lets you send messages from IoT sensors and applications to Cloudwatch logs for troubleshooting and debugging.

1.44.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-02-04)
------------------

* Feature - Updated ThrottlingException documentation to report that the error code is 400, and not 429, to reflect actual system behaviour.

1.42.0 (2019-12-17)
------------------

* Feature - Added a new Over-the-Air (OTA) Update feature that allows you to use different, or multiple, protocols to transfer an image from the AWS cloud to IoT devices.

1.41.0 (2019-11-25)
------------------

* Feature - This release adds: 1) APIs for fleet provisioning claim and template, 2) endpoint configuration and custom domains, 3) support for enhanced custom authentication, d) support for 4 additional audit checks: Device and CA certificate key quality checks, IoT role alias over-permissive check and IoT role alias access to unused services check, 5) extended capability of AWS IoT Rules Engine to support IoT SiteWise rule action. The IoT SiteWise rule action lets you send messages from IoT sensors and applications to IoT SiteWise asset properties

1.40.0 (2019-11-19)
------------------

* Feature - As part of this release, we are extending the capability of AWS IoT Rules Engine to send messages directly to customer's own web services/applications. Customers can now create topic rules with HTTP actions to route messages from IoT Core directly to URL's that they own. Ownership is proved by creating and confirming topic rule destinations.

1.39.0 (2019-11-13)
------------------

* Feature - This release adds the custom fields definition support in the index definition for AWS IoT Fleet Indexing Service. Custom fields can be used as an aggregation field to run aggregations with both existing GetStatistics API and newly added GetCardinality, GetPercentiles APIs. GetStatistics will return all statistics (min/max/sum/avg/count...) with this release. For more information, please refer to our latest documentation: https://docs.aws.amazon.com/iot/latest/developerguide/iot-indexing.html

1.38.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2019-08-09)
------------------

* Feature - This release adds Quality of Service (QoS) support for AWS IoT rules engine republish action.

1.36.0 (2019-08-05)
------------------

* Feature - In this release, AWS IoT Device Defender introduces audit mitigation actions that can be applied to audit findings to help mitigate security issues.

1.35.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2019-05-21)
------------------

* Feature - API update.

1.31.0 (2019-05-15)
------------------

* Feature - API update.

1.30.0 (2019-05-14)
------------------

* Feature - API update.

1.29.0 (2019-03-21)
------------------

* Feature - API update.

1.28.0 (2019-03-21)
------------------

* Feature - API update.

1.27.0 (2019-03-18)
------------------

* Feature - API update.

1.26.0 (2019-03-14)
------------------

* Feature - API update.

1.25.0 (2019-03-11)
------------------

* Feature - API update.

1.24.0 (2019-02-19)
------------------

* Feature - API update.

1.23.0 (2019-02-15)
------------------

* Feature - API update.

1.22.0 (2019-01-10)
------------------

* Feature - API update.

1.21.0 (2018-11-27)
------------------

* Feature - API update.

1.20.0 (2018-11-20)
------------------

* Feature - API update.

1.19.0 (2018-11-19)
------------------

* Feature - API update.

1.18.0 (2018-10-24)
------------------

* Feature - API update.

1.17.0 (2018-10-23)
------------------

* Feature - API update.

1.16.0 (2018-10-08)
------------------

* Feature - API update.

1.15.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.14.0 (2018-09-05)
------------------

* Feature - API update.

1.13.0 (2018-08-27)
------------------

* Feature - API update.

1.12.0 (2018-08-23)
------------------

* Feature - API update.

1.11.0 (2018-07-31)
------------------

* Feature - API update.

1.10.0 (2018-07-30)
------------------

* Feature - API update.

1.9.0 (2018-06-26)
------------------

* Feature - API update.

1.8.0 (2018-06-01)
------------------

* Feature - API update.

1.7.0 (2018-05-25)
------------------

* Feature - API update.

1.6.0 (2018-05-18)
------------------

* Feature - API update.

1.5.0 (2018-04-23)
------------------

* Feature - API update.

1.4.0 (2018-03-12)
------------------

* Feature - API update.

1.3.0 (2017-12-20)
------------------

* Feature - API update.

1.2.0 (2017-12-05)
------------------

* Feature - API update.

1.1.0 (2017-11-29)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-iot` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc11 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc10 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-12)
------------------

* Feature - API update.

1.0.0.rc7 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc6 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc4 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc3 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc2 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-iot` gem.
