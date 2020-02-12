Unreleased Changes
------------------

1.77.0 (2020-02-07)
------------------

* Feature - Documentation updates for RDS: when restoring a DB cluster from a snapshot, must create DB instances

1.76.0 (2020-01-23)
------------------

* Feature - This SDK release introduces APIs that automate the export of Amazon RDS snapshot data to Amazon S3. The new APIs include: StartExportTask, CancelExportTask, DescribeExportTasks. These APIs automate the extraction of data from an RDS snapshot and export it to an Amazon S3 bucket. The data is stored in a compressed, consistent, and query-able format. After the data is exported, you can query it directly using tools such as Amazon Athena or Redshift Spectrum. You can also consume the data as part of a data lake solution. If you archive the data in S3 Infrequent Access or Glacier, you can reduce long term data storage costs by applying data lifecycle policies.

1.75.0 (2020-01-10)
------------------

* Feature - This release adds an operation that enables users to override the system-default SSL/TLS certificate for new Amazon RDS DB instances temporarily, or remove the customer override.

1.74.0 (2019-12-20)
------------------

* Feature - This release adds an operation that enables users to specify whether a database is restarted when its SSL/TLS certificate is rotated. Only customers who do not use SSL/TLS should use this operation.

1.73.0 (2019-12-04)
------------------

* Feature - This release adds support for the Amazon RDS Proxy

1.72.0 (2019-11-25)
------------------

* Feature - Cluster Endpoints can now be tagged by using --tags in the create-db-cluster-endpoint API

1.71.0 (2019-11-18)
------------------

* Feature - Documentation updates for rds

1.70.0 (2019-11-05)
------------------

* Feature - Documentation updates for Amazon RDS

1.69.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2019-10-17)
------------------

* Feature - Amazon RDS now supports Amazon RDS on VMware with the introduction of APIs related to Custom Availability Zones and Media installation.

1.67.0 (2019-09-30)
------------------

* Feature - This release adds support for creating a Read Replica with Active Directory domain information. This release updates RDS API to indicate whether an OrderableDBInstanceOption supports Kerberos Authentication.

1.66.0 (2019-09-20)
------------------

* Feature - Add a new LeaseID output field to DescribeReservedDBInstances, which shows the unique identifier for the lease associated with the reserved DB instance. AWS Support might request the lease ID for an issue related to a reserved DB instance.

1.65.0 (2019-09-11)
------------------

* Feature - This release allows customers to specify a custom parameter group when creating a Read Replica, for DB engines which support this feature.

1.64.0 (2019-08-22)
------------------

* Feature - This release allows users to enable RDS Data API while creating Aurora Serverless databases.

1.63.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2019-07-03)
------------------

* Feature - This release supports Cross-Account Cloning for Amazon Aurora clusters.

1.61.0 (2019-07-01)
------------------

* Feature - This release adds support for RDS DB Cluster major version upgrade

1.60.0 (2019-06-20)
------------------

* Feature - This release adds support for RDS storage autoscaling

1.59.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2019-06-03)
------------------

* Feature - Amazon RDS Data API is generally available. Removing beta notes in the documentation.

1.57.0 (2019-05-30)
------------------

* Feature - This release adds support for Activity Streams for database clusters.

1.56.0 (2019-05-29)
------------------

* Feature - Documentation updates for rds

1.55.0 (2019-05-28)
------------------

* Feature - Add a new output field Status to DBEngineVersion which shows the status of the engine version (either available or deprecated). Add a new parameter IncludeAll to DescribeDBEngineVersions to make it possible to return both available and deprecated engine versions. These changes enable a user to create a Read Replica of an DB instance on a deprecated engine version.

1.54.0 (2019-05-22)
------------------

* Feature - Documentation updates for rds

1.53.0 (2019-05-21)
------------------

* Feature - API update.

1.52.0 (2019-05-15)
------------------

* Feature - API update.

1.51.0 (2019-05-14)
------------------

* Feature - API update.

1.50.0 (2019-04-24)
------------------

* Feature - API update.

1.49.0 (2019-04-18)
------------------

* Feature - API update.

1.48.0 (2019-03-22)
------------------

* Feature - API update.

1.47.0 (2019-03-21)
------------------

* Feature - API update.

1.46.0 (2019-03-18)
------------------

* Feature - API update.

1.45.0 (2019-03-14)
------------------

* Feature - API update.

1.44.0 (2019-03-07)
------------------

* Feature - API update.

1.43.0 (2019-01-24)
------------------

* Feature - API update.

1.42.0 (2018-12-06)
------------------

* Feature - API update.

1.41.0 (2018-11-28)
------------------

* Feature - API update.

1.40.0 (2018-11-20)
------------------

* Feature - API update.

1.39.0 (2018-11-19)
------------------

* Feature - API update.

1.38.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.38.0 (2018-11-15)
------------------

* Feature - API update.

1.37.0 (2018-11-12)
------------------

* Feature - API update.

1.36.0 (2018-10-30)
------------------

* Feature - API update.

1.35.0 (2018-10-24)
------------------

* Feature - API update.

1.34.0 (2018-10-23)
------------------

* Feature - API update.

1.33.0 (2018-10-15)
------------------

* Feature - API update.

1.32.0 (2018-09-26)
------------------

* Feature - API update.

1.31.0 (2018-09-24)
------------------

* Feature - API update.

1.30.0 (2018-09-20)
------------------

* Feature - API update.

1.29.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.28.0 (2018-09-05)
------------------

* Feature - API update.

1.27.0 (2018-09-04)
------------------

* Feature - API update.

1.26.0 (2018-08-21)
------------------

* Feature - API update.

1.25.0 (2018-08-10)
------------------

* Feature - API update.

1.24.0 (2018-08-09)
------------------

* Feature - API update.

1.23.0 (2018-06-26)
------------------

* Feature - API update.

1.22.0 (2018-06-20)
------------------

* Feature - API update.

1.21.0 (2018-06-11)
------------------

* Feature - API update.

1.20.0 (2018-06-05)
------------------

* Feature - API update.

1.19.0 (2018-05-24)
------------------

* Feature - API update.

1.18.0 (2018-05-10)
------------------

* Feature - API update.

1.17.0 (2018-05-08)
------------------

* Feature - API update.

1.16.0 (2018-04-19)
------------------

* Feature - API update.

1.15.0 (2018-03-23)
------------------

* Feature - API update.

1.14.0 (2018-03-08)
------------------

* Feature - API update.

1.13.0 (2018-02-16)
------------------

* Feature - API update.

1.12.0 (2018-02-12)
------------------

* Feature - API update.

1.11.0 (2018-01-17)
------------------

* Feature - API update.

1.10.0 (2018-01-11)
------------------

* Feature - API update.

1.9.0 (2018-01-02)
------------------

* Feature - API update.

1.8.0 (2017-11-17)
------------------

* Feature - API update.

1.7.0 (2017-11-07)
------------------

* Feature - API update.

1.6.0 (2017-10-16)
------------------

* Feature - API update.

1.5.0 (2017-10-12)
------------------

* Feature - API update.

1.4.0 (2017-09-22)
------------------

* Feature - API update.

1.3.0 (2017-09-20)
------------------

* Feature - API update.

1.2.0 (2017-09-14)
------------------

* Feature - API update.

1.1.0 (2017-09-13)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-rds` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc18 (2017-08-25)
------------------

* Feature - API update.

1.0.0.rc17 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc16 (2017-08-09)
------------------

* Feature - API update.

1.0.0.rc15 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc14 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc13 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc12 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc11 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc10 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc9 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc8 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc7 (2017-05-09)
------------------

* Feature - API update.

* Issue - Fix resource model load path

1.0.0.rc6 (2017-05-05)
------------------

* Feature - API update.

1.0.0.rc5 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc4 (2017-03-08)
------------------

* Feature - API update.

1.0.0.rc3 (2017-03-07)
------------------

* Feature - API update.

1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-rds` gem.

