Unreleased Changes
------------------

1.84.0 (2023-07-13)
------------------

* Feature - Enhanced PostgreSQL target endpoint settings for providing Babelfish support.

1.83.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2023-07-07)
------------------

* Feature - Releasing DMS Serverless. Adding support for PostgreSQL 15.x as source and target endpoint. Adding support for DocDB Elastic Clusters with sharded collections, PostgreSQL datatype mapping customization and disabling hostname validation of the certificate authority in Kafka endpoint settings

1.81.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.78.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2023-03-17)
------------------

* Feature - S3 setting to create AWS Glue Data Catalog. Oracle setting to control conversion of timestamp column. Support for Kafka SASL Plain authentication. Setting to map boolean from PostgreSQL to Redshift. SQL Server settings to force lob lookup on inline LOBs and to control access of database logs.

1.76.0 (2023-03-07)
------------------

* Feature - This release adds DMS Fleet Advisor Target Recommendation APIs and exposes functionality for DMS Fleet Advisor. It adds functionality to start Target Recommendation calculation.

1.75.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.74.0 (2022-11-17)
------------------

* Feature - Adds support for Internet Protocol Version 6 (IPv6) on DMS Replication Instances

1.73.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.72.0 (2022-08-04)
------------------

* Feature - Documentation updates for Database Migration Service (DMS).

1.71.0 (2022-07-21)
------------------

* Feature - Documentation updates for Database Migration Service (DMS).

1.70.0 (2022-07-07)
------------------

* Feature - New api to migrate event subscriptions to event bridge rules

1.69.0 (2022-07-01)
------------------

* Feature - Added new features for AWS DMS version 3.4.7 that includes new endpoint settings for S3, OpenSearch, Postgres, SQLServer and Oracle.

1.68.0 (2022-06-08)
------------------

* Feature - This release adds DMS Fleet Advisor APIs and exposes functionality for DMS Fleet Advisor. It adds functionality to create and modify fleet advisor instances, and to collect and analyze information about the local data infrastructure.

1.67.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.66.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2021-11-22)
------------------

* Feature - Added new S3 endpoint settings to allow to convert the current UTC time into a specified time zone when a date partition folder is created. Using with 'DatePartitionedEnabled'.

1.62.0 (2021-11-15)
------------------

* Feature - Add Settings in JSON format for the source GCP MySQL endpoint

1.61.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2021-09-17)
------------------

* Feature - Optional flag force-planned-failover added to reboot-replication-instance API call. This flag can be used to test a planned failover scenario used during some maintenance operations.

1.58.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2021-08-23)
------------------

* Feature - Amazon AWS DMS service now support Redis target endpoint migration. Now S3 endpoint setting is capable to setup features which are used to be configurable only in extract connection attributes.

1.56.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2021-07-14)
------------------

* Feature - Release of feature needed for ECA-Endpoint settings. This allows customer to delete a field in endpoint settings by using --exact-settings flag in modify-endpoint api. This also displays default values for certain required fields of endpoint settings in describe-endpoint-settings api.

1.53.0 (2021-04-15)
------------------

* Feature - AWS DMS added support of TLS for Kafka endpoint. Added Describe endpoint setting API for DMS endpoints.

1.52.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2020-12-23)
------------------

* Feature - AWS DMS launches support for AWS Secrets Manager to manage Oracle ASM Database credentials

1.49.0 (2020-12-21)
------------------

* Feature - AWS DMS launches support for AWS Secrets Manager to manage source and target database credentials.

1.48.0 (2020-12-07)
------------------

* Feature - Added PreserveTransaction setting to preserve order of CDC for S3 as target. Added CsvNoSupValue setting to replace empty value for columns not included in the supplemental log for S3 as target.

1.47.0 (2020-11-16)
------------------

* Feature - Adding MoveReplicationTask feature to move replication tasks between instances

1.46.0 (2020-10-30)
------------------

* Feature - Adding DocDbSettings to support DocumentDB as a source.

1.45.0 (2020-10-15)
------------------

* Feature - When creating Endpoints, Replication Instances, and Replication Tasks, the feature provides you the option to specify friendly name to the resources.

1.44.0 (2020-10-06)
------------------

* Feature - Added new S3 endpoint settings to allow partitioning CDC data by date for S3 as target. Exposed some Extra Connection Attributes as endpoint settings for relational databases as target.

1.43.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2020-08-24)
------------------

* Feature - Added new endpoint settings to include columns with Null and Empty value when using Kinesis and Kafka as target. Added a new endpoint setting to set maximum message size when using Kafka as target.

1.39.0 (2020-07-27)
------------------

* Feature - Basic endpoint settings for relational databases, Preflight validation API.

1.38.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2020-06-26)
------------------

* Feature - This release contains miscellaneous API documentation updates for AWS DMS in response to several customer reported issues.

1.36.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.35.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2020-04-27)
------------------

* Feature - Adding minimum replication engine version for describe-endpoint-types api.

1.31.0 (2020-03-09)
------------------

* Feature - Added new settings for Kinesis target to include detailed transaction info; to capture table DDL details; to use single-line unformatted json, which can be directly queried by AWS Athena if data is streamed into S3 through AWS Kinesis Firehose. Added CdcInsertsAndUpdates in S3 target settings to allow capture ongoing insertions and updates only.

1.30.0 (2019-11-01)
------------------

* Feature - This release contains task timeline attributes in replication task statistics. This release also adds a note to the documentation for the CdcStartPosition task request parameter. This note describes how to enable the use of native CDC start points for a PostgreSQL source by setting the new slotName extra connection attribute on the source endpoint to the name of an existing logical replication slot.

1.29.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2019-09-25)
------------------

* Feature - This release adds a new DeleteConnection API to delete the connection between a replication instance and an endpoint. It also adds an optional S3 setting to specify the precision of any TIMESTAMP column values written to an S3 object file in .parquet format.

1.27.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2019-07-17)
------------------

* Feature - S3 endpoint settings update: 1) Option to append operation column to full-load files. 2) Option to add a commit timestamp column to full-load and cdc files. Updated DescribeAccountAttributes to include UniqueAccountIdentifier.

1.25.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2019-05-21)
------------------

* Feature - API update.

1.22.0 (2019-05-15)
------------------

* Feature - API update.

1.21.0 (2019-05-14)
------------------

* Feature - API update.

1.20.0 (2019-03-22)
------------------

* Feature - API update.

1.19.0 (2019-03-21)
------------------

* Feature - API update.

1.18.0 (2019-03-18)
------------------

* Feature - API update.

1.17.0 (2019-03-14)
------------------

* Feature - API update.

1.16.0 (2019-01-21)
------------------

* Feature - API update.

1.15.0 (2018-11-20)
------------------

* Feature - API update.

1.14.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.14.0 (2018-11-15)
------------------

* Feature - API update.

1.13.0 (2018-11-07)
------------------

* Feature - API update.

1.12.0 (2018-10-30)
------------------

* Feature - API update.

1.11.0 (2018-10-24)
------------------

* Feature - API update.

1.10.0 (2018-10-23)
------------------

* Feature - API update.

1.9.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.8.0 (2018-09-05)
------------------

* Feature - API update.

1.7.0 (2018-07-09)
------------------

* Feature - API update.

1.6.0 (2018-06-26)
------------------

* Feature - API update.

1.5.0 (2018-04-10)
------------------

* Feature - API update.

1.4.0 (2018-02-08)
------------------

* Feature - API update.

1.3.0 (2017-11-17)
------------------

* Feature - API update.

1.2.0 (2017-10-12)
------------------

* Feature - API update.

1.1.0 (2017-09-13)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-databasemigrationservice` gemspec metadata.

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

1.0.0.rc7 (2017-06-26)
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

* Feature - Initial preview release of the `aws-sdk-databasemigrationservice` gem.
