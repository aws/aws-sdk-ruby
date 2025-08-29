Unreleased Changes
------------------

1.235.0 (2025-08-28)
------------------

* Feature - Adding support to fetch TargetDatabase field during GetDatabases with AttributesToGet

1.234.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.233.0 (2025-08-21)
------------------

* Feature - Added support for preprocessing queries in Data Quality operations through new DataQualityGlueTable structure.

1.232.0 (2025-08-15)
------------------

* Feature - AWS Glue Zero ETL now supports On-demand snapshot load

1.231.0 (2025-08-14)
------------------

* Feature - AWS Glue now supports Trusted Identity Propagation.

1.230.0 (2025-08-07)
------------------

* Feature - AWS Glue Data Catalog now supports Iceberg Optimization settings at the Catalog level, and supports new options to control the optimization job run rate.

1.229.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.228.0 (2025-07-31)
------------------

* Feature - Added support for Route node, S3 Iceberg sources/targets, catalog Iceberg sources, DynamoDB ELT connector, AutoDataQuality evaluation, enhanced PII detection with redaction, Kinesis fan-out support, and new R-series worker types.

1.227.0 (2025-07-23)
------------------

* Feature - AWS Glue now supports dynamic session policies for job executions. This feature allows you to specify custom, fine-grained permissions for each job run without creating multiple IAM roles.

1.226.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.225.0 (2025-07-16)
------------------

* Feature - AWS Glue now supports schema, partition and sort management of Apache Iceberg tables using Glue SDK

1.224.0 (2025-06-30)
------------------

* Feature - releasing source processing properties to support source properties for ODB integrations

1.223.0 (2025-06-27)
------------------

* Feature - AWS Glue now supports schema, partition and sort management of Apache Iceberg tables using Glue SDK

1.222.0 (2025-06-23)
------------------

* Feature - AWS Glue now supports sort and z-order strategy for managed automated compaction for Iceberg tables in addition to binpack.

1.221.0 (2025-06-20)
------------------

* Feature - AWS Glue Data Quality now provides aggregated metrics in evaluation results when publishAggregatedMetrics with row-level results are enabled. These metrics include summary statistics showing total counts of processed, passed, and failed rows and rules in a single view.

1.220.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.219.0 (2025-05-22)
------------------

* Feature - This release supports additional ConversionSpec parameter as part of IntegrationPartition Structure in CreateIntegrationTableProperty API. This parameter is referred to apply appropriate column transformation for columns that are used for timestamp based partitioning

1.218.0 (2025-05-20)
------------------

* Feature - Enhanced AWS Glue ListConnectionTypes API Model with additional metadata fields.

1.217.0 (2025-05-16)
------------------

* Feature - Changes include (1) Excel as S3 Source type and XML and Tableau's Hyper as S3 Sink types, (2) targeted number of partitions parameter in S3 sinks and (3) new compression types in CSV/JSON and Parquet S3 sinks.

1.216.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.215.0 (2025-05-08)
------------------

* Feature - This new release supports customizable RefreshInterval for all Saas ZETL integrations from 15 minutes to 6 days.

1.214.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.213.0 (2025-04-09)
------------------

* Feature - The TableOptimizer APIs in AWS Glue now return the DpuHours field in each TableOptimizerRun, providing clients visibility to the DPU-hours used for billing in managed Apache Iceberg table compaction optimization.

1.212.0 (2025-04-07)
------------------

* Feature - Add input validations for multiple Glue APIs

1.211.0 (2025-03-14)
------------------

* Feature - This release added AllowFullTableExternalDataAccess to glue catalog resource.

1.210.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.209.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.208.0 (2025-01-22)
------------------

* Feature - Docs Update for timeout changes

1.207.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.206.0 (2024-12-23)
------------------

* Feature - Add IncludeRoot parameters to GetCatalogs API to return root catalog.

1.205.0 (2024-12-12)
------------------

* Feature - To support customer-managed encryption in Data Quality to allow customers encrypt data with their own KMS key, we will add a DataQualityEncryption field to the SecurityConfiguration API where customers can provide their KMS keys.

1.204.0 (2024-12-03)
------------------

* Feature - This release includes(1)Zero-ETL integration to ingest data from 3P SaaS and DynamoDB to Redshift/Redlake (2)new properties on Connections to enable reuse; new connection APIs for retrieve/preview metadata (3)support of CRUD operations for Multi-catalog (4)support of automatic statistics collections

1.203.0 (2024-11-19)
------------------

* Feature - AWS Glue Data Catalog now enhances managed table optimizations of Apache Iceberg tables that can be accessed only from a specific Amazon Virtual Private Cloud (VPC) environment.

1.202.0 (2024-11-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.201.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.200.0 (2024-10-31)
------------------

* Feature - Add schedule support for AWS Glue column statistics

1.199.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.198.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.197.0 (2024-09-23)
------------------

* Feature - Added AthenaProperties parameter to Glue Connections, allowing Athena to store service specific properties on Glue Connections.

1.196.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.195.0 (2024-09-19)
------------------

* Feature - This change is for releasing TestConnection api SDK model

1.194.0 (2024-09-12)
------------------

* Feature - AWS Glue is introducing two new optimizers for Apache Iceberg tables: snapshot retention and orphan file deletion. Customers can enable these optimizers and customize their configurations to perform daily maintenance tasks on their Iceberg tables based on their specific requirements.

1.193.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.192.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.191.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.190.0 (2024-08-21)
------------------

* Feature - Add optional field JobRunQueuingEnabled to CreateJob and UpdateJob APIs.

1.189.0 (2024-08-13)
------------------

* Feature - Add AttributesToGet parameter support for Glue GetTables

1.188.0 (2024-08-08)
------------------

* Feature - This release adds support to retrieve the validation status when creating or updating Glue Data Catalog Views. Also added is support for BasicCatalogTarget partition keys.

1.187.0 (2024-08-07)
------------------

* Feature - Introducing AWS Glue Data Quality anomaly detection, a new functionality that uses ML-based solutions to detect data anomalies users have not explicitly defined rules for.

1.186.0 (2024-08-02)
------------------

* Feature - Add v2 smoke tests and smithy smokeTests trait for SDK testing.

1.185.0 (2024-07-10)
------------------

* Feature - Add recipe step support for recipe node

1.184.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.183.0 (2024-06-28)
------------------

* Feature - Added AttributesToGet parameter to Glue GetDatabases, allowing caller to limit output to include only the database name.

1.182.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.181.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.180.0 (2024-06-20)
------------------

* Feature - Fix Glue paginators for Jobs, JobRuns, Triggers, Blueprints and Workflows.

1.179.0 (2024-06-17)
------------------

* Feature - This release introduces a new feature, Usage profiles. Usage profiles allow the AWS Glue admin to create different profiles for various classes of users within the account, enforcing limits and defaults for jobs and sessions.

1.178.0 (2024-06-13)
------------------

* Feature - This release adds support for configuration of evaluation method for composite rules in Glue Data Quality rulesets.

1.177.0 (2024-06-06)
------------------

* Feature - This release adds support for creating and updating Glue Data Catalog Views.

1.176.0 (2024-06-05)
------------------

* Feature - AWS Glue now supports native SaaS connectivity: Salesforce connector available now

1.175.0 (2024-05-29)
------------------

* Feature - Add optional field JobMode to CreateJob and UpdateJob APIs.

1.174.0 (2024-05-21)
------------------

* Feature - Add Maintenance window to CreateJob and UpdateJob APIs and JobRun response. Add a new Job Run State for EXPIRED.

1.173.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.172.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.171.0 (2024-04-19)
------------------

* Feature - Adding RowFilter in the response for GetUnfilteredTableMetadata API

1.170.0 (2024-04-12)
------------------

* Feature - Modifying request for GetUnfilteredTableMetadata for view-related fields.

1.169.0 (2024-04-02)
------------------

* Feature - Adding View related fields to responses of read-only Table APIs.

1.168.0 (2024-02-05)
------------------

* Feature - Introduce Catalog Encryption Role within Glue Data Catalog Settings. Introduce SASL/PLAIN as an authentication method for Glue Kafka connections

1.167.0 (2024-01-31)
------------------

* Feature - Update page size limits for GetJobRuns and GetTriggers APIs.

1.166.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.165.0 (2023-12-22)
------------------

* Feature - This release adds additional configurations for Query Session Context on the following APIs: GetUnfilteredTableMetadata, GetUnfilteredPartitionMetadata, GetUnfilteredPartitionsMetadata.

1.164.0 (2023-11-30)
------------------

* Feature - Adds observation and analyzer support to the GetDataQualityResult and BatchGetDataQualityResult APIs.

1.163.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.162.0 (2023-11-27)
------------------

* Feature - add observations support to DQ CodeGen config model + update document for connectiontypes supported by ConnectorData entities

1.161.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.160.0 (2023-11-16)
------------------

* Feature - Introduces new column statistics APIs to support statistics generation for tables within the Glue Data Catalog.

1.159.0 (2023-11-14)
------------------

* Feature - Introduces new storage optimization APIs to support automatic compaction of Apache Iceberg tables.

1.158.0 (2023-11-02)
------------------

* Feature - This release introduces Google BigQuery Source and Target in AWS Glue CodeGenConfigurationNode.

1.157.0 (2023-10-12)
------------------

* Feature - Extending version control support to GitLab and Bitbucket from AWSGlue

1.156.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.155.0 (2023-08-24)
------------------

* Feature - Added API attributes that help in the monitoring of sessions.

1.154.0 (2023-08-15)
------------------

* Feature - AWS Glue Crawlers can now accept SerDe overrides from a custom csv classifier. The two SerDe options are LazySimpleSerDe and OpenCSVSerDe. In case, the user wants crawler to do the selection, "None" can be selected for this purpose.

1.153.0 (2023-08-02)
------------------

* Feature - This release includes additional Glue Streaming KAKFA SASL property types.

1.152.0 (2023-07-26)
------------------

* Feature - Release Glue Studio Snowflake Connector Node for SDK/CLI

1.151.0 (2023-07-24)
------------------

* Feature - Added support for Data Preparation Recipe node in Glue Studio jobs

1.150.0 (2023-07-21)
------------------

* Feature - This release adds support for AWS Glue Crawler with Apache Hudi Tables, allowing Crawlers to discover Hudi Tables in S3 and register them in Glue Data Catalog for query engines to query against.

1.149.0 (2023-07-17)
------------------

* Feature - Adding new supported permission type flags to get-unfiltered endpoints that callers may pass to indicate support for enforcing Lake Formation fine-grained access control on nested column attributes.

1.148.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.147.0 (2023-07-07)
------------------

* Feature - This release enables customers to create new Apache Iceberg tables and associated metadata in Amazon S3 by using native AWS Glue CreateTable operation.

1.146.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.145.0 (2023-06-29)
------------------

* Feature - This release adds support for AWS Glue Crawler with Iceberg Tables, allowing Crawlers to discover Iceberg Tables in S3 and register them in Glue Data Catalog for query engines to query against.

1.144.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.143.0 (2023-06-26)
------------------

* Feature - Timestamp Starting Position For Kinesis and Kafka Data Sources in a Glue Streaming Job

1.142.0 (2023-06-19)
------------------

* Feature - This release adds support for creating cross region table/database resource links

1.141.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.140.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.139.0 (2023-05-30)
------------------

* Feature - Added Runtime parameter to allow selection of Ray Runtime

1.138.0 (2023-05-25)
------------------

* Feature - Added ability to create data quality rulesets for shared, cross-account Glue Data Catalog tables. Added support for dataset comparison rules through a new parameter called AdditionalDataSources. Enhanced the data quality results with a map containing profiled metric values.

1.137.0 (2023-05-16)
------------------

* Feature - Add Support for Tags for Custom Entity Types

1.136.0 (2023-05-09)
------------------

* Feature - This release adds AmazonRedshift Source and Target nodes in addition to DynamicTransform OutputSchemas

1.135.0 (2023-05-08)
------------------

* Feature - Support large worker types G.4x and G.8x for Glue Spark.

1.134.0 (2023-04-03)
------------------

* Feature - Add support for database-level federation

1.133.0 (2023-03-30)
------------------

* Feature - This release adds support for AWS Glue Data Quality, which helps you evaluate and monitor the quality of your data and includes the API for creating, deleting, or updating data quality rulesets, runs and evaluations.

1.132.0 (2023-02-17)
------------------

* Feature - Release of Delta Lake Data Lake Format for Glue Studio Service

1.131.0 (2023-02-15)
------------------

* Feature - Fix DirectJDBCSource not showing up in CLI code gen

1.130.0 (2023-02-08)
------------------

* Feature - DirectJDBCSource + Glue 4.0 streaming options

1.129.0 (2023-01-19)
------------------

* Feature - Release Glue Studio Hudi Data Lake Format for SDK/CLI

1.128.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.127.0 (2022-12-15)
------------------

* Feature - This release adds support for AWS Glue Crawler with native DeltaLake tables, allowing Crawlers to classify Delta Lake format tables and catalog them for query engines to query against.

1.126.0 (2022-11-30)
------------------

* Feature - This release adds support for AWS Glue Data Quality, which helps you evaluate and monitor the quality of your data and includes the API for creating, deleting, or updating data quality rulesets, runs and evaluations.

1.125.0 (2022-11-29)
------------------

* Feature - This release allows the creation of Custom Visual Transforms (Dynamic Transforms) to be created via AWS Glue CLI/SDK.

1.124.0 (2022-11-18)
------------------

* Feature - AWSGlue Crawler - Adding support for Table and Column level Comments with database level datatypes for JDBC based crawler.

1.123.0 (2022-11-11)
------------------

* Feature - Added links related to enabling job bookmarks.

1.122.0 (2022-10-27)
------------------

* Feature - Added support for custom datatypes when using custom csv classifier.

1.121.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.120.0 (2022-10-05)
------------------

* Feature - This SDK release adds support to sync glue jobs with source control provider. Additionally, a new parameter called SourceControlDetails will be added to Job model.

1.119.0 (2022-09-22)
------------------

* Feature - Added support for S3 Event Notifications for Catalog Target Crawlers.

1.118.0 (2022-08-11)
------------------

* Feature - Add support for Python 3.9 AWS Glue Python Shell jobs

1.117.0 (2022-08-08)
------------------

* Feature - Add an option to run non-urgent or non-time sensitive Glue Jobs on spare capacity

1.116.0 (2022-07-19)
------------------

* Feature - Documentation updates for AWS Glue Job Timeout and Autoscaling

1.115.0 (2022-07-14)
------------------

* Feature - This release adds an additional worker type for Glue Streaming jobs.

1.114.0 (2022-06-30)
------------------

* Feature - This release adds tag as an input of CreateDatabase

1.113.0 (2022-06-24)
------------------

* Feature - This release enables the new ListCrawls API for viewing the AWS Glue Crawler run history.

1.112.0 (2022-05-17)
------------------

* Feature - This release adds a new optional parameter called codeGenNodeConfiguration to CRUD job APIs that allows users to manage visual jobs via APIs. The updated CreateJob and UpdateJob will create jobs that can be viewed in Glue Studio as a visual graph. GetJob can be used to get codeGenNodeConfiguration.

1.111.0 (2022-04-26)
------------------

* Feature - This release adds documentation for the APIs to create, read, delete, list, and batch read of AWS Glue custom patterns, and for Lake Formation configuration settings in the AWS Glue crawler.

1.110.0 (2022-04-21)
------------------

* Feature - This release adds APIs to create, read, delete, list, and batch read of Glue custom entity types

1.109.0 (2022-04-14)
------------------

* Feature - Auto Scaling for Glue version 3.0 and later jobs to dynamically scale compute resources. This SDK change provides customers with the auto-scaled DPU usage

1.108.0 (2022-03-18)
------------------

* Feature - Added 9 new APIs for AWS Glue Interactive Sessions: ListSessions, StopSession, CreateSession, GetSession, DeleteSession, RunStatement, GetStatement, ListStatements, CancelStatement

1.107.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.106.0 (2022-02-16)
------------------

* Feature - Support for optimistic locking in UpdateTable

1.105.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.104.0 (2022-02-02)
------------------

* Feature - Launch Protobuf support for AWS Glue Schema Registry

1.103.0 (2022-01-13)
------------------

* Feature - This SDK release adds support to pass run properties when starting a workflow run

1.102.0 (2022-01-05)
------------------

* Feature - Add Delta Lake target support for Glue Crawler and 3rd Party Support for Lake Formation

1.101.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.100.0 (2021-11-30)
------------------

* Feature - Support for DataLake transactions

1.99.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.98.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.97.0 (2021-10-15)
------------------

* Feature - Enable S3 event base crawler API.

1.96.0 (2021-10-05)
------------------

* Feature - This release adds tag as an input of CreateConnection

1.95.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.94.0 (2021-08-23)
------------------

* Feature - Add support for Custom Blueprints

1.93.0 (2021-08-03)
------------------

* Feature - Add ConcurrentModificationException to create-table, delete-table, create-database, update-database, delete-database

1.92.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.90.0 (2021-07-14)
------------------

* Feature - Add support for Event Driven Workflows

1.89.0 (2021-06-28)
------------------

* Feature - Add JSON Support for Glue Schema Registry

1.88.0 (2021-06-07)
------------------

* Feature - Add SampleSize variable to S3Target to enable s3-sampling feature through API.

1.87.0 (2021-04-26)
------------------

* Feature - Adding Kafka Client Auth Related Parameters

1.86.0 (2021-03-29)
------------------

* Feature - Allow Dots in Registry and Schema Names for CreateRegistry, CreateSchema; Fixed issue when duplicate keys are present and not returned as part of QuerySchemaVersionMetadata.

1.85.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2021-02-23)
------------------

* Feature - Updating the page size for Glue catalog getter APIs.

1.83.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2020-12-22)
------------------

* Feature - AWS Glue Find Matches machine learning transforms now support column importance scores.

1.81.0 (2020-12-21)
------------------

* Feature - Add 4 connection properties: SECRET_ID, CONNECTOR_URL, CONNECTOR_TYPE, CONNECTOR_CLASS_NAME. Add two connection types: MARKETPLACE, CUSTOM

1.80.0 (2020-11-23)
------------------

* Feature - Feature1 - Glue crawler adds data lineage configuration option. Feature2 - AWS Glue Data Catalog adds APIs for PartitionIndex creation and deletion as part of Enhancement Partition Management feature.

1.79.0 (2020-11-19)
------------------

* Feature - Adding support for Glue Schema Registry. The AWS Glue Schema Registry is a new feature that allows you to centrally discover, control, and evolve data stream schemas.

1.78.0 (2020-10-27)
------------------

* Feature - AWS Glue machine learning transforms now support encryption-at-rest for labels and trained models.

1.77.0 (2020-10-21)
------------------

* Feature - AWS Glue crawlers now support incremental crawls for the Amazon Simple Storage Service (Amazon S3) data source.

1.76.0 (2020-10-21)
------------------

* Feature - AWS Glue crawlers now support incremental crawls for the Amazon Simple Storage Service (Amazon S3) data source.

1.75.0 (2020-10-15)
------------------

* Feature - API Documentation updates for Glue Get-Plan API

1.74.0 (2020-10-05)
------------------

* Feature - AWS Glue crawlers now support Amazon DocumentDB (with MongoDB compatibility) and MongoDB collections. You can choose to crawl the entire data set or only a small sample to reduce crawl time.

1.73.0 (2020-10-01)
------------------

* Feature - Adding additional optional map parameter to get-plan api

1.72.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2020-09-21)
------------------

* Feature - Adding support to update multiple partitions of a table in a single request

1.70.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2020-09-09)
------------------

* Feature - Adding support for partitionIndexes to improve GetPartitions performance.

1.68.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2020-08-10)
------------------

* Feature - Starting today, you can further control orchestration of your ETL workloads in AWS Glue by specifying the maximum number of concurrent runs for a Glue workflow.

1.66.0 (2020-08-07)
------------------

* Feature - AWS Glue now adds support for Network connection type enabling you to access resources inside your VPC using Glue crawlers and Glue ETL jobs.

1.65.0 (2020-07-27)
------------------

* Feature - Add ability to manually resume workflows in AWS Glue providing customers further control over the orchestration of ETL workloads.

1.64.0 (2020-07-23)
------------------

* Feature - Added new ConnectionProperties: "KAFKA_SSL_ENABLED" (to toggle SSL connections) and "KAFKA_CUSTOM_CERT" (import CA certificate file)

1.63.0 (2020-07-07)
------------------

* Feature - AWS Glue Data Catalog supports cross account sharing of tables through AWS Lake Formation

1.62.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.61.0 (2020-06-25)
------------------

* Feature - This release adds new APIs to support column level statistics in AWS Glue Data Catalog

1.60.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2020-06-12)
------------------

* Feature - You can now choose to crawl the entire table or just a sample of records in DynamoDB when using AWS Glue crawlers. Additionally, you can also specify a scanning rate for crawling DynamoDB tables.

1.58.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.58.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2020-06-03)
------------------

* Feature - Adding databaseName in the response for GetUserDefinedFunctions() API.

1.56.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2020-05-15)
------------------

* Feature - Starting today, you can stop the execution of Glue workflows that are running. AWS Glue workflows are directed acyclic graphs (DAGs) of Glue triggers, crawlers and jobs. Using a workflow, you can design a complex multi-job extract, transform, and load (ETL) activity that AWS Glue can execute and track as single entity.

1.54.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2020-04-20)
------------------

* Feature - Added a new ConnectionType "KAFKA" and a ConnectionProperty "KAFKA_BOOTSTRAP_SERVERS" to support Kafka connection.

1.52.0 (2020-04-16)
------------------

* Feature - This release adds support for querying GetUserDefinedFunctions API without databaseName.

1.51.0 (2020-03-31)
------------------

* Feature - Add two enums for MongoDB connection: Added "CONNECTION_URL" to "ConnectionPropertyKey" and added "MONGODB" to "ConnectionType"

1.50.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.1 (2020-03-02)
------------------

* Issue - Republish the previously yanked version.

1.49.0 (2020-02-28)
------------------

* Issue - This version has been yanked. (#2239)
* Feature - AWS Glue adds resource tagging support for Machine Learning Transforms and adds a new API, ListMLTransforms to support tag filtering.  With this feature, customers can use tags in AWS Glue to organize and control access to Machine Learning Transforms.

1.48.0 (2020-02-12)
------------------

* Feature - Adding ability to add arguments that cannot be overridden to AWS Glue jobs

1.47.0 (2019-11-21)
------------------

* Feature - This release adds support for Glue 1.0 compatible ML Transforms.

1.46.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2019-10-07)
------------------

* Feature - AWS Glue now provides ability to use custom certificates for JDBC Connections.

1.44.0 (2019-09-19)
------------------

* Feature - AWS Glue DevEndpoints now supports GlueVersion, enabling you to choose Apache Spark 2.4.3 (in addition to Apache Spark 2.2.1). In addition to supporting the latest version of Spark, you will also have the ability to choose between Python 2 and Python 3.

1.43.0 (2019-08-15)
------------------

* Feature - GetJobBookmarks API is withdrawn.

1.42.0 (2019-08-08)
------------------

* Feature - You can now use AWS Glue to find matching records across dataset even without identifiers to join on by using the new FindMatches ML Transform. Find related products, places, suppliers, customers, and more by teaching a custom machine learning transformation that you can use to identify matching matching records as part of your analysis, data cleaning, or master data management project by adding the FindMatches transformation to your Glue ETL Jobs. If your problem is more along the lines of deduplication, you can use the FindMatches in much the same way to identify customers who have signed up more than ones, products that have accidentally been added to your product catalog more than once, and so forth. Using the FindMatches MLTransform, you can teach a Transform your definition of a duplicate through examples, and it will use machine learning to identify other potential duplicates in your dataset. As with data integration, you can then use your new Transform in your deduplication projects by adding the FindMatches transformation to your Glue ETL Jobs. This release also contains additional APIs that support AWS Lake Formation.

1.41.0 (2019-07-26)
------------------

* Feature - This release provides GetJobBookmark and GetJobBookmarks APIs. These APIs enable users to look at specific versions or all versions of the JobBookmark for a specific job. This release also enables resetting the job bookmark to a specific run via an enhancement of the ResetJobBookmark API.

1.40.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2019-07-24)
------------------

* Feature - This release provides GlueVersion option for Job APIs and WorkerType option for DevEndpoint APIs. Job APIs enable users to pick specific GlueVersion for a specific job and pin the job to a specific runtime environment. DevEndpoint APIs enable users to pick different WorkerType for memory intensive workload.

1.38.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2019-06-20)
------------------

* Feature - Starting today, you can now use workflows in AWS Glue to author directed acyclic graphs (DAGs) of Glue triggers, crawlers and jobs. Workflows enable orchestration of your ETL workloads by building dependencies between Glue entities (triggers, crawlers and jobs).  You can visually track status of the different nodes in the workflows on the console making it easier to monitor progress and troubleshoot issues. Also, you can share parameters across entities in the workflow.

1.36.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2019-06-05)
------------------

* Feature - Support specifying python version for Python shell jobs. A new parameter PythonVersion is added to the JobCommand data type.

1.34.0 (2019-05-21)
------------------

* Feature - API update.

1.33.0 (2019-05-15)
------------------

* Feature - API update.

1.32.0 (2019-05-14)
------------------

* Feature - API update.

1.31.0 (2019-05-10)
------------------

* Feature - API update.

1.30.0 (2019-04-05)
------------------

* Feature - API update.

1.29.0 (2019-03-26)
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

1.24.0 (2019-02-22)
------------------

* Feature - API update.

1.23.0 (2019-01-18)
------------------

* Feature - API update.

1.22.0 (2018-12-12)
------------------

* Feature - API update.

1.21.0 (2018-11-20)
------------------

* Feature - API update.

1.20.0 (2018-10-24)
------------------

* Feature - API update.

1.19.0 (2018-10-23)
------------------

* Feature - API update.

1.18.0 (2018-10-16)
------------------

* Feature - API update.

1.17.0 (2018-09-26)
------------------

* Feature - API update.

1.16.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.15.0 (2018-09-05)
------------------

* Feature - API update.

1.14.0 (2018-08-29)
------------------

* Feature - API update.

1.13.0 (2018-08-28)
------------------

* Feature - API update.

1.12.0 (2018-08-25)
------------------

* Feature - API update.

1.11.0 (2018-07-30)
------------------

* Feature - API update.

1.10.0 (2018-07-10)
------------------

* Feature - API update.

1.9.0 (2018-06-26)
------------------

* Feature - API update.

1.8.0 (2018-05-25)
------------------

* Feature - API update.

1.7.0 (2018-04-10)
------------------

* Feature - API update.

1.6.0 (2018-03-20)
------------------

* Feature - API update.

1.5.0 (2018-02-06)
------------------

* Feature - API update.

1.4.0 (2018-01-19)
------------------

* Feature - API update.

1.3.0 (2018-01-12)
------------------

* Feature - API update.

1.2.0 (2017-11-16)
------------------

* Feature - API update.

1.1.0 (2017-10-24)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-glue` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc1 (2017-08-14)
------------------

* Feature - Initial release of `aws-sdk-glue`.
