Unreleased Changes
------------------

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

