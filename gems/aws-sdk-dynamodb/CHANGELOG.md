Unreleased Changes
------------------

1.136.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.135.0 (2025-01-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Allow other retry configs to influence DynamoDB extended retries.

1.134.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.133.0 (2025-01-07)
------------------

* Feature - This release makes Amazon DynamoDB point-in-time-recovery (PITR) to be configurable. You can set PITR recovery period for each table individually to between 1 and 35 days.

1.132.0 (2024-12-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Improve `SimpleAttributes` documentation.

1.131.0 (2024-12-03)
------------------

* Feature - This change adds support for global tables with multi-Region strong consistency (in preview). The UpdateTable API now supports a new attribute MultiRegionConsistency to set consistency when creating global tables. The DescribeTable output now optionally includes the MultiRegionConsistency attribute.

1.130.0 (2024-11-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.129.0 (2024-11-13)
------------------

* Feature - This release includes supports the new WarmThroughput feature for DynamoDB. You can now provide an optional WarmThroughput attribute for CreateTable or UpdateTable APIs to pre-warm your table or global secondary index. You can also use DescribeTable to see the latest WarmThroughput value.

1.128.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.127.0 (2024-11-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.126.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.125.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.124.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.123.0 (2024-09-20)
------------------

* Feature - Generate and use AWS-account-based endpoints for DynamoDB requests when the account ID is available. The new endpoint URL pattern will be https://<account-id>.ddb.<region>.amazonaws.com. See the documentation for details: https://docs.aws.amazon.com/sdkref/latest/guide/feature-account-endpoints.html

1.122.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.121.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.120.0 (2024-09-09)
------------------

* Feature - Doc-only update for DynamoDB. Added information about async behavior for TagResource and UntagResource APIs and updated the description of ResourceInUseException.

1.119.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.118.0 (2024-07-24)
------------------

* Feature - DynamoDB doc only update for July

1.117.0 (2024-07-12)
------------------

* Feature - Add v2 smoke tests and smithy smokeTests trait for SDK testing.

1.116.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.115.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.114.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.113.0 (2024-06-20)
------------------

* Feature - Doc-only update for DynamoDB. Fixed Important note in 6 Global table APIs - CreateGlobalTable, DescribeGlobalTable, DescribeGlobalTableSettings, ListGlobalTables, UpdateGlobalTable, and UpdateGlobalTableSettings.

1.112.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.111.0 (2024-05-28)
------------------

* Feature - Doc-only update for DynamoDB. Specified the IAM actions needed to authorize a user to create a table with a resource-based policy.

1.110.0 (2024-05-24)
------------------

* Feature - Documentation only updates for DynamoDB.

1.109.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.108.0 (2024-05-02)
------------------

* Feature - This release adds support to specify an optional, maximum OnDemandThroughput for DynamoDB tables and global secondary indexes in the CreateTable or UpdateTable APIs. You can also override the OnDemandThroughput settings by calling the ImportTable, RestoreFromPointInTime, or RestoreFromBackup APIs.

1.107.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.106.0 (2024-03-20)
------------------

* Feature - This release introduces 3 new APIs ('GetResourcePolicy', 'PutResourcePolicy' and 'DeleteResourcePolicy') and modifies the existing 'CreateTable' API for the resource-based policy support. It also modifies several APIs to accept a 'TableArn' for the 'TableName' parameter.

1.105.0 (2024-03-06)
------------------

* Feature - Doc only updates for DynamoDB documentation

1.104.0 (2024-02-20)
------------------

* Feature - Publishing quick fix for doc only update.

1.103.0 (2024-02-14)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.102.0 (2024-02-02)
------------------

* Feature - Any number of users can execute up to 50 concurrent restores (any type of restore) in a given account.

1.101.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.100.0 (2024-01-19)
------------------

* Feature - This release adds support for including ApproximateCreationDateTimePrecision configurations in EnableKinesisStreamingDestination API, adds the same as an optional field in the response of DescribeKinesisStreamingDestination, and adds support for a new UpdateKinesisStreamingDestination API.

1.99.0 (2024-01-17)
------------------

* Feature - Updating note for enabling streams for UpdateTable.

1.98.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.97.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.96.0 (2023-10-18)
------------------

* Feature - Updating descriptions for several APIs.

1.95.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Feature - Simple attributes conversion for item data returned in `ConditionalCheckFailedException` and other exceptions. (Breaking change / bug fix)

1.94.0 (2023-09-26)
------------------

* Feature - Amazon DynamoDB now supports Incremental Export as an enhancement to the existing Export Table

1.93.1 (2023-08-07)
------------------

* Issue - Fix inconsistent behavior of `stub_responses` when `simple_attributes` is disabled.

1.93.0 (2023-07-25)
------------------

* Feature - Documentation updates for DynamoDB

1.92.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.90.0 (2023-06-29)
------------------

* Feature - This release adds ReturnValuesOnConditionCheckFailure parameter to PutItem, UpdateItem, DeleteItem, ExecuteStatement, BatchExecuteStatement and ExecuteTransaction APIs. When set to ALL_OLD,  API returns a copy of the item as it was when a conditional write failed

1.89.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.88.0 (2023-06-21)
------------------

* Feature - Documentation updates for DynamoDB

1.87.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.0 (2023-06-12)
------------------

* Feature - Documentation updates for DynamoDB

1.85.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2023-04-17)
------------------

* Feature - Documentation updates for DynamoDB API

1.83.0 (2023-03-08)
------------------

* Feature - Adds deletion protection support to DynamoDB tables. Tables with deletion protection enabled cannot be deleted. Deletion protection is disabled by default, can be enabled via the CreateTable or UpdateTable APIs, and is visible in TableDescription. This setting is not replicated for Global Tables.

1.82.0 (2023-03-03)
------------------

* Feature - Documentation updates for DynamoDB.

1.81.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.80.0 (2022-12-06)
------------------

* Feature - Endpoint Ruleset update: Use http instead of https for the "local" region.

1.79.0 (2022-11-18)
------------------

* Feature - Updated minor fixes for DynamoDB documentation.

1.78.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2022-09-15)
------------------

* Feature - Increased DynamoDB transaction limit from 25 to 100.

1.76.0 (2022-08-18)
------------------

* Feature - This release adds support for importing data from S3 into a new DynamoDB table

1.75.0 (2022-06-17)
------------------

* Feature - Doc only update for DynamoDB service

1.74.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2022-02-21)
------------------

* Feature - DynamoDB ExecuteStatement API now supports Limit as a request parameter to specify the maximum number of items to evaluate. If specified, the service will process up to the Limit and the results will include a LastEvaluatedKey value to continue the read in a subsequent operation.

1.72.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2022-02-02)
------------------

* Feature - Documentation update for DynamoDB Java SDK.

1.70.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2021-12-01)
------------------

* Feature - Add support for Table Classes and introduce the Standard Infrequent Access table class.

1.68.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2021-11-23)
------------------

* Feature - DynamoDB PartiQL now supports ReturnConsumedCapacity, which returns capacity units consumed by PartiQL APIs if the request specified returnConsumedCapacity parameter. PartiQL APIs include ExecuteStatement, BatchExecuteStatement, and ExecuteTransaction.

1.66.0 (2021-11-11)
------------------

* Feature - Updated Help section for "dynamodb update-contributor-insights" API

1.65.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.61.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2020-11-23)
------------------

* Feature - With this release, you can capture data changes in any Amazon DynamoDB table as an Amazon Kinesis data stream. You also can use PartiQL (SQL-compatible language) to manipulate data in DynamoDB tables.

1.57.0 (2020-11-09)
------------------

* Feature - This release adds supports for exporting Amazon DynamoDB table data to Amazon S3 to perform analytics at any scale.

1.56.0 (2020-11-05)
------------------

* Feature - This release adds a new ReplicaStatus INACCESSIBLE_ENCRYPTION_CREDENTIALS for the Table description, indicating when a key used to encrypt a regional replica table is not accessible.

1.55.0 (2020-10-05)
------------------

* Feature - This release adds a new ReplicaStatus REGION DISABLED for the Table description. This state indicates that the AWS Region for the replica is inaccessible because the AWS Region is disabled.

1.54.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.49.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2020-05-18)
------------------

* Feature - Documentation updates for dynamodb

1.46.1 (2020-05-11)
------------------

* Issue - Allow simple attributes plugin to send empty sets, rejected by the server.

1.46.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2020-03-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-02-17)
------------------

* Feature - Amazon DynamoDB enables you to restore your DynamoDB backup or table data across AWS Regions such that the restored table is created in a different AWS Region from where the source table or backup resides. You can do cross-region restores between AWS commercial Regions, AWS China Regions, and AWS GovCloud (US) Regions.

1.42.0 (2020-02-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Feature - Allow objects responding to #to_h to be marshaled to DynamoDB as a Hash.

1.41.0 (2019-12-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2019-11-26)
------------------

* Feature - 1) Amazon Contributor Insights for Amazon DynamoDB is a diagnostic tool for identifying frequently accessed keys and understanding database traffic trends. 2) Support for displaying new fields when a table's encryption state is Inaccessible or the table have been Archived.

1.39.0 (2019-11-21)
------------------

* Feature - With this release, you can convert an existing Amazon DynamoDB table to a global table by adding replicas in other AWS Regions.

1.38.0 (2019-11-12)
------------------

* Feature - Amazon DynamoDB enables you to restore your data to a new DynamoDB table using a point-in-time or on-demand backup. You now can modify the settings on the new restored table. Specifically, you can exclude some or all of the local and global secondary indexes from being created with the restored table. In addition, you can change the billing mode and provisioned capacity settings.

1.37.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2019-10-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2019-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2019-06-27)
------------------

* Feature - Documentation updates for dynamodb

1.31.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2019-06-06)
------------------

* Feature - Documentation updates for dynamodb

1.29.0 (2019-05-21)
------------------

* Feature - API update.

1.28.0 (2019-05-15)
------------------

* Feature - API update.

1.27.0 (2019-05-14)
------------------

* Feature - API update.

1.26.0 (2019-04-25)
------------------

* Feature - API update.

1.25.0 (2019-03-22)
------------------

* Feature - API update.

1.24.0 (2019-03-21)
------------------

* Feature - API update.

1.23.0 (2019-03-18)
------------------

* Feature - API update.

1.22.0 (2019-03-14)
------------------

* Feature - API update.

1.21.0 (2019-02-13)
------------------

* Feature - API update.

1.20.0 (2019-01-16)
------------------

* Feature - API update.

1.19.0 (2018-12-21)
------------------

* Feature - API update.

1.18.1 (2018-12-17)
------------------

* Issue - Change `BigDecimal` usage to be compliant with Ruby 2.6.

1.18.0 (2018-11-28)
------------------

* Feature - API update.

1.17.0 (2018-11-20)
------------------

* Feature - API update.

1.16.0 (2018-11-08)
------------------

* Feature - Support `endpointdiscovery` for DynamoDB operations, set `:endpoint_discovery` to `true` to enable this feature

1.15.0 (2018-10-24)
------------------

* Feature - API update.

1.14.0 (2018-10-23)
------------------

* Feature - API update.

1.13.0 (2018-09-06)
------------------

* Feature - API update.

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.12.0 (2018-09-05)
------------------

* Feature - API update.

1.11.0 (2018-08-20)
------------------

* Feature - API update.

1.10.0 (2018-08-06)
------------------

* Feature - API update.

1.9.0 (2018-07-24)
------------------

* Feature - API update.

1.8.0 (2018-06-26)
------------------

* Feature - API update.

1.7.0 (2018-06-14)
------------------

* Feature - API update.

1.6.0 (2018-04-30)
------------------

* Feature - API update.

1.5.0 (2018-03-26)
------------------

* Feature - API update.

1.4.0 (2018-02-08)
------------------

* Feature - API update.

1.3.0 (2017-11-29)
------------------

* Feature - API update.

1.2.0 (2017-09-14)
------------------

* Feature - API update.

1.1.0 (2017-09-13)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-dynamodb` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc14 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc13 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc12 (2017-07-26)
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

* Feature - Initial preview release of the `aws-sdk-dynamodb` gem.
