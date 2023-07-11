Unreleased Changes
------------------

1.185.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.184.0 (2023-07-06)
------------------

* Feature - Updates Amazon RDS documentation for creating DB instances and creating Aurora global clusters.

1.183.0 (2023-06-28)
------------------

* Feature - Amazon Relational Database Service (RDS) now supports joining a RDS for SQL Server instance to a self-managed Active Directory.

1.182.0 (2023-06-23)
------------------

* Feature - Documentation improvements for create, describe, and modify DB clusters and DB instances.

1.181.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.180.0 (2023-05-31)
------------------

* Feature - This release adds support for changing the engine for Oracle using the ModifyDbInstance API

1.179.0 (2023-05-18)
------------------

* Feature - RDS documentation update for the EngineVersion parameter of ModifyDBSnapshot

1.178.0 (2023-05-10)
------------------

* Feature - Amazon Relational Database Service (RDS) updates for the new Aurora I/O-Optimized storage type for Amazon Aurora DB clusters

1.177.0 (2023-04-19)
------------------

* Feature - Adds support for the ImageId parameter of CreateCustomDBEngineVersion to RDS Custom for Oracle

1.176.0 (2023-04-14)
------------------

* Feature - This release adds support of modifying the engine mode of database clusters.

1.175.0 (2023-04-06)
------------------

* Feature - Adds and updates the SDK examples

1.174.0 (2023-03-29)
------------------

* Feature - Add support for creating a read replica DB instance from a Multi-AZ DB cluster.

1.173.0 (2023-03-24)
------------------

* Feature - Added error code CreateCustomDBEngineVersionFault for when the create custom engine version for Custom engines fails.

1.172.0 (2023-02-15)
------------------

* Feature - Database Activity Stream support for RDS for SQL Server.

1.171.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.170.0 (2023-01-10)
------------------

* Feature - This release adds support for configuring allocated storage on the CreateDBInstanceReadReplica, RestoreDBInstanceFromDBSnapshot, and RestoreDBInstanceToPointInTime APIs.

1.169.0 (2023-01-05)
------------------

* Feature - This release adds support for specifying which certificate authority (CA) to use for a DB instance's server certificate during DB instance creation, as well as other CA enhancements.

1.168.0 (2022-12-28)
------------------

* Feature - This release adds support for Custom Engine Version (CEV) on RDS Custom SQL Server.

1.167.0 (2022-12-22)
------------------

* Feature - Add support for managing master user password in AWS Secrets Manager for the DBInstance and DBCluster.

1.166.0 (2022-12-19)
------------------

* Feature - Add support for --enable-customer-owned-ip to RDS create-db-instance-read-replica API for RDS on Outposts.

1.165.0 (2022-12-13)
------------------

* Feature - This deployment adds ClientPasswordAuthType field to the Auth structure of the DBProxy.

1.164.0 (2022-12-12)
------------------

* Feature - Update the RDS API model to support copying option groups during the CopyDBSnapshot operation

1.163.0 (2022-12-06)
------------------

* Feature - This release adds the BlueGreenDeploymentNotFoundFault to the AddTagsToResource, ListTagsForResource, and RemoveTagsFromResource operations.

1.162.0 (2022-12-05)
------------------

* Feature - This release adds the InvalidDBInstanceStateFault to the RestoreDBClusterFromSnapshot operation.

1.161.0 (2022-11-28)
------------------

* Feature - This release enables new Aurora and RDS feature called Blue/Green Deployments that makes updates to databases safer, simpler and faster.

1.160.0 (2022-11-16)
------------------

* Feature - This release adds support for container databases (CDBs) to Amazon RDS Custom for Oracle. A CDB contains one PDB at creation. You can add more PDBs using Oracle SQL. You can also customize your database installation by setting the Oracle base, Oracle home, and the OS user name and group.

1.159.0 (2022-11-14)
------------------

* Feature - This release adds support for restoring an RDS Multi-AZ DB cluster snapshot to a Single-AZ deployment or a Multi-AZ DB instance deployment.

1.158.0 (2022-11-01)
------------------

* Feature - Relational Database Service - This release adds support for configuring Storage Throughput on RDS database instances.

1.157.0 (2022-10-25)
------------------

* Feature - Relational Database Service - This release adds support for exporting DB cluster data to Amazon S3.

1.156.0 (2022-09-19)
------------------

* Feature - This release adds support for Amazon RDS Proxy with SQL Server compatibility.

1.155.0 (2022-08-26)
------------------

* Feature - Removes support for RDS Custom from DBInstanceClass in ModifyDBInstance

1.154.0 (2022-08-23)
------------------

* Feature - RDS for Oracle supports Oracle Data Guard switchover and read replica backups.

1.153.0 (2022-08-17)
------------------

* Feature - Adds support for Internet Protocol Version 6 (IPv6) for RDS Aurora database clusters.

1.152.0 (2022-08-12)
------------------

* Feature - Adds support for RDS Custom to DBInstanceClass in ModifyDBInstance

1.151.0 (2022-07-26)
------------------

* Feature - Adds support for using RDS Proxies with RDS for MariaDB databases.

1.150.0 (2022-07-22)
------------------

* Feature - This release adds the "ModifyActivityStream" API with support for audit policy state locking and unlocking.

1.149.0 (2022-07-21)
------------------

* Feature - Adds support for creating an RDS Proxy for an RDS for MariaDB database.

1.148.0 (2022-07-05)
------------------

* Feature - Adds waiters support for DBCluster.

1.147.0 (2022-07-01)
------------------

* Feature - Adds support for additional retention periods to Performance Insights.

1.146.0 (2022-05-06)
------------------

* Feature - Various documentation improvements.

1.145.0 (2022-04-29)
------------------

* Feature - Feature - Adds support for Internet Protocol Version 6 (IPv6) on RDS database instances.

1.144.0 (2022-04-20)
------------------

* Feature - Added a new cluster-level attribute to set the capacity range for Aurora Serverless v2 instances.

1.143.0 (2022-04-15)
------------------

* Feature - Removes Amazon RDS on VMware with the deletion of APIs related to Custom Availability Zones and Media installation

1.142.0 (2022-03-15)
------------------

* Feature - Various documentation improvements

1.141.0 (2022-03-01)
------------------

* Feature - Documentation updates for Multi-AZ DB clusters.

1.140.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.139.0 (2022-02-14)
------------------

* Feature - Adds support for determining which Aurora PostgreSQL versions support Babelfish.

1.138.0 (2022-02-04)
------------------

* Feature - updates for RDS Custom for Oracle 12.1 support

1.137.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.136.0 (2022-01-11)
------------------

* Feature - This release adds the db-proxy event type to support subscribing to RDS Proxy events.

1.135.0 (2022-01-03)
------------------

* Feature - Multiple doc-only updates for Relational Database Service (RDS)

1.134.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.133.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.132.0 (2021-11-23)
------------------

* Feature - Adds support for Multi-AZ DB clusters for RDS for MySQL and RDS for PostgreSQL.

1.131.0 (2021-11-22)
------------------

* Feature - Adds local backup support to Amazon RDS on AWS Outposts.

1.130.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.129.0 (2021-10-25)
------------------

* Feature - This release adds support for Amazon RDS Custom, which is a new RDS management type that gives you full access to your database and operating system. For more information, see https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-custom.html

1.128.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.127.0 (2021-09-10)
------------------

* Feature - This release adds support for providing a custom timeout value for finding a scaling point during autoscaling in Aurora Serverless v1.

1.126.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.125.0 (2021-08-04)
------------------

* Feature - This release adds AutomaticRestartTime to the DescribeDBInstances and DescribeDBClusters operations. AutomaticRestartTime indicates the time when a stopped DB instance or DB cluster is restarted automatically.

1.124.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.123.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.122.0 (2021-07-21)
------------------

* Feature - Adds the OriginalSnapshotCreateTime field to the DBSnapshot response object. This field timestamps the underlying data of a snapshot and doesn't change when the snapshot is copied.

1.121.0 (2021-06-17)
------------------

* Feature - This release enables Database Activity Streams for RDS Oracle

1.120.0 (2021-06-16)
------------------

* Feature - This release enables fast cloning in Aurora Serverless. You can now clone between Aurora Serverless clusters and Aurora Provisioned clusters.

1.119.0 (2021-06-04)
------------------

* Feature - Documentation updates for RDS: fixing an outdated link to the RDS documentation in DBInstance$DBInstanceStatus

1.118.0 (2021-04-13)
------------------

* Feature - Clarify that enabling or disabling automated backups causes a brief downtime, not an outage.

1.117.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.116.0 (2021-03-09)
------------------

* Feature - This release adds support for Amazon RDS Proxy endpoints.

1.115.0 (2021-02-19)
------------------

* Feature - Added awsBackupRecoveryPointArn in ModifyDBInstanceRequest and in the response of ModifyDBInstance.

1.114.0 (2021-02-12)
------------------

* Feature - EngineMode in the response of DescribeDBClusterSnapshots. SupportedEngineModes, SupportsParallelQuery and SupportsGlobalDatabases in ValidUpgradeTarget of DBEngineVersions in DescribeDBEngineVersions.

1.113.0 (2021-02-11)
------------------

* Feature - Adding support for RDS Aurora Global Database Failover

1.112.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.111.0 (2021-01-22)
------------------

* Feature - Documentation updates for Amazon RDS

1.110.0 (2021-01-11)
------------------

* Feature - This releases adds support for Major Version Upgrades on Aurora MySQL Global Clusters. Customers will be able to upgrade their whole Aurora MySQL Global Cluster to a new major engine version.

1.109.0 (2020-12-22)
------------------

* Feature - Adds customer-owned IP address (CoIP) support to Amazon RDS on AWS Outposts.

1.108.0 (2020-12-18)
------------------

* Feature - Adds IAM DB authentication information to the PendingModifiedValues output of the DescribeDBInstances API. Adds ClusterPendingModifiedValues information to the output of the DescribeDBClusters API.

1.107.0 (2020-12-04)
------------------

* Feature - Adds support for Amazon RDS Cross-Region Automated Backups, the ability to setup automatic replication of snapshots and transaction logs from a primary AWS Region to a secondary AWS Region.

* Feature - Support `pre_signed_url` generation for `StartDBInstanceAutomatedBackupsReplication`.

1.106.0 (2020-11-17)
------------------

* Feature - Support copy-db-snapshot in the one region on cross clusters and local cluster for RDSonVmware. Add target-custom-availability-zone parameter to specify where a snapshot should be copied.

1.105.0 (2020-11-05)
------------------

* Feature - Supports a new parameter to set the max allocated storage in gigabytes for the CreateDBInstanceReadReplica API.

1.104.0 (2020-10-15)
------------------

* Feature - Return tags for all resources in the output of DescribeDBInstances, DescribeDBSnapshots, DescribeDBClusters, and DescribeDBClusterSnapshots API operations.

1.103.0 (2020-10-08)
------------------

* Feature - Supports a new parameter to set the max allocated storage in gigabytes for restore database instance from S3 and restore database instance to a point in time APIs.

1.102.0 (2020-10-02)
------------------

* Feature - Adds the NCHAR Character Set ID parameter to the CreateDbInstance API for RDS Oracle.

1.101.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.100.0 (2020-09-28)
------------------

* Feature - This release adds the InsufficientAvailableIPsInSubnetFault error for RDS Proxy.

1.99.0 (2020-09-21)
------------------

* Feature - Documentation updates for the RDS DescribeExportTasks API

1.98.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.97.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.96.0 (2020-08-13)
------------------

* Feature - This release allows customers to specify a replica mode when creating or modifying a Read Replica, for DB engines which support this feature.

1.95.0 (2020-07-28)
------------------

* Feature - Adds reporting of manual cluster snapshot quota to DescribeAccountAttributes API

1.94.0 (2020-07-20)
------------------

* Feature - Add a new SupportsParallelQuery output field to DescribeDBEngineVersions. This field shows whether the engine version supports parallelquery. Add a new SupportsGlobalDatabases output field to DescribeDBEngineVersions and DescribeOrderableDBInstanceOptions. This field shows whether global database is supported by engine version or the combination of engine version and instance class.

1.93.0 (2020-07-06)
------------------

* Feature - Adds support for Amazon RDS on AWS Outposts.

1.92.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2020-07-01)
------------------

* Feature - This release adds the exceptions KMSKeyNotAccessibleFault and InvalidDBClusterStateFault to the Amazon RDS ModifyDBInstance API.

1.90.0 (2020-06-30)
------------------

* Feature - Documentation updates for rds

1.89.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.88.0 (2020-06-22)
------------------

* Feature - Added paginators for various APIs.

1.87.0 (2020-06-18)
------------------

* Feature - Adding support for global write forwarding on secondary clusters in an Aurora global database.

1.86.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.86.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2020-04-23)
------------------

* Feature - Adds support for AWS Local Zones, including a new optional parameter AvailabilityZoneGroup for the DescribeOrderableDBInstanceOptions operation.

1.82.0 (2020-04-16)
------------------

* Feature - This release adds support for Amazon RDS Proxy with PostgreSQL compatibility.

1.81.0 (2020-04-08)
------------------

* Feature - Documentation updates for RDS: creating read replicas is now supported for SQL Server DB instances

1.80.0 (2020-03-18)
------------------

* Feature - Updated the MaxRecords type in DescribeExportTasks to Integer.

1.79.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.78.0 (2020-02-18)
------------------

* Feature - This release supports Microsoft Active Directory authentication for Amazon Aurora.

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
