Unreleased Changes
------------------

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
