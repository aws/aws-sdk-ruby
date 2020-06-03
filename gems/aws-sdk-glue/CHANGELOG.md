Unreleased Changes
------------------

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
