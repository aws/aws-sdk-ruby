Unreleased Changes
------------------

1.66.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2023-06-13)
------------------

* Feature - This feature allows users to view dashboards for CloudTrail Lake event data stores.

1.61.0 (2023-06-02)
------------------

* Feature - This feature allows users to start and stop event ingestion on a CloudTrail Lake event data store.

1.60.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2023-05-18)
------------------

* Feature - Add ConflictException to PutEventSelectors, add (Channel/EDS)ARNInvalidException to Tag APIs. These exceptions provide customers with more specific error messages instead of internal errors.

1.58.0 (2023-02-15)
------------------

* Feature - This release adds an InsufficientEncryptionPolicyException type to the StartImport endpoint

1.57.0 (2023-01-31)
------------------

* Feature - Add new "Channel" APIs to enable users to manage channels used for CloudTrail Lake integrations, and "Resource Policy" APIs to enable users to manage the resource-based permissions policy attached to a channel.

1.56.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.55.0 (2022-12-13)
------------------

* Feature - Merging mainline branch for service model into mainline release branch. There are no new APIs.

1.54.0 (2022-11-07)
------------------

* Feature - This release includes support for configuring a delegated administrator to manage an AWS Organizations organization CloudTrail trails and event data stores, and AWS Key Management Service encryption of CloudTrail Lake event data stores.

1.53.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2022-10-19)
------------------

* Feature - This release includes support for exporting CloudTrail Lake query results to an Amazon S3 bucket.

1.51.0 (2022-09-19)
------------------

* Feature - This release includes support for importing existing trails into CloudTrail Lake.

1.50.0 (2022-09-09)
------------------

* Feature - This release adds CloudTrail getChannel and listChannels APIs to allow customer to view the ServiceLinkedChannel configurations.

1.49.0 (2022-04-27)
------------------

* Feature - Increases the retention period maximum to 2557 days. Deprecates unused fields of the ListEventDataStores API response. Updates documentation.

1.48.0 (2022-03-02)
------------------

* Feature - Add bytesScanned field into responses of DescribeQuery and GetQueryResults.

1.47.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2022-01-18)
------------------

* Feature - This release fixes a documentation bug in the description for the readOnly field selector in advanced event selectors. The description now clarifies that users omit the readOnly field selector to select both Read and Write management events.

1.44.0 (2022-01-05)
------------------

* Feature - This release adds support for CloudTrail Lake, a new feature that lets you run SQL-based queries on events that you have aggregated into event data stores. New APIs have been added for creating and managing event data stores, and creating, running, and managing queries in CloudTrail Lake.

1.43.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2021-11-16)
------------------

* Feature - CloudTrail Insights now supports ApiErrorRateInsight, which enables customers to identify unusual activity in their AWS account based on API error codes and their rate.

1.40.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2021-09-01)
------------------

* Feature - Documentation updates for CloudTrail

1.37.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2021-06-04)
------------------

* Feature - AWS CloudTrail supports data events on new service resources, including Amazon DynamoDB tables and S3 Object Lambda access points.

1.34.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2021-02-08)
------------------

* Feature - ConflictException is now thrown when certain operations are called on resources before CloudTrail has time to load the resources. Two new exceptions have been added to the PutInsightSelectors API.

1.32.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2020-12-11)
------------------

* Feature - CloudTrailInvalidClientTokenIdException is now thrown when a call results in the InvalidClientTokenId error code. The Name parameter of the AdvancedEventSelector data type is now optional.

1.30.0 (2020-11-24)
------------------

* Feature - CloudTrail now includes advanced event selectors, which give you finer-grained control over the events that are logged to your trail.

1.29.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.24.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2019-11-20)
------------------

* Feature - 1. This release adds two new APIs, GetInsightSelectors and PutInsightSelectors, which let you configure CloudTrail Insights event delivery on a trail. An Insights event is a new type of event that is generated when CloudTrail detects unusual activity in your AWS account. In this release, only "ApiCallRateInsight" is a supported Insights event type. 2. This release also adds the new "ExcludeManagementEventSource" option to the existing PutEventSelectors API. This field currently supports only AWS Key Management Services.

1.19.0 (2019-11-01)
------------------

* Feature - This release adds two new APIs, GetTrail and ListTrails, and support for adding tags when you create a trail by using a new TagsList parameter on CreateTrail operations.

1.18.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2019-05-21)
------------------

* Feature - API update.

1.13.0 (2019-05-15)
------------------

* Feature - API update.

1.12.0 (2019-05-14)
------------------

* Feature - API update.

1.11.0 (2019-03-21)
------------------

* Feature - API update.

1.10.0 (2019-03-18)
------------------

* Feature - API update.

1.9.0 (2019-03-14)
------------------

* Feature - API update.

1.8.0 (2018-11-20)
------------------

* Feature - API update.

1.7.0 (2018-11-19)
------------------

* Feature - API update.

1.6.0 (2018-10-24)
------------------

* Feature - API update.

1.5.0 (2018-10-23)
------------------

* Feature - API update.

1.4.0 (2018-10-12)
------------------

* Feature - API update.

1.3.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.2.0 (2018-09-05)
------------------

* Feature - API update.

1.1.0 (2018-06-26)
------------------

* Feature - API update.

1.0.1 (2018-02-16)
------------------

* Issue - Update `aws-sdk-cloudtrail` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc13 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc12 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc11 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc8 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc7 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc4 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc3 (2017-03-07)
------------------

* Feature - API update.

1.0.0.rc2 (2017-01-24)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-cloudtrail` gem.
