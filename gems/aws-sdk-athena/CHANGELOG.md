Unreleased Changes
------------------

1.74.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.72.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2023-06-08)
------------------

* Feature - You can now define custom spark properties at start of the session for use cases like cluster encryption, table formats, and general Spark tuning.

1.69.0 (2023-06-02)
------------------

* Feature - This release introduces the DeleteCapacityReservation API and the ability to manage capacity reservations using CloudFormation

1.68.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2023-05-18)
------------------

* Feature - Removing SparkProperties from EngineConfiguration object for StartSession API call

1.66.0 (2023-05-15)
------------------

* Feature - You can now define custom spark properties at start of the session for use cases like cluster encryption, table formats, and general Spark tuning.

1.65.0 (2023-04-28)
------------------

* Feature - You can now use capacity reservations on Amazon Athena to run SQL queries on fully-managed compute capacity.

1.64.0 (2023-03-30)
------------------

* Feature - Make DefaultExecutorDpuSize and CoordinatorDpuSize  fields optional  in StartSession

1.63.0 (2023-03-27)
------------------

* Feature - Enforces a minimal level of encryption for the workgroup for query and calculation results that are written to Amazon S3. When enabled, workgroup users can set encryption only to the minimum level set by the administrator or higher when they submit queries.

1.62.0 (2023-03-08)
------------------

* Feature - A new field SubstatementType is added to GetQueryExecution API, so customers have an error free way to detect the query type and interpret the result.

1.61.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.60.0 (2022-12-19)
------------------

* Feature - Add missed InvalidRequestException in GetCalculationExecutionCode,StopCalculationExecution APIs. Correct required parameters (Payload and Type) in UpdateNotebook API. Change Notebook size from 15 Mb to 10 Mb.

1.59.0 (2022-11-30)
------------------

* Feature - This release includes support for using Apache Spark in Amazon Athena.

1.58.0 (2022-11-07)
------------------

* Feature - Adds support for using Query Result Reuse

1.57.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2022-07-21)
------------------

* Feature - This feature allows customers to retrieve runtime statistics for completed queries

1.55.0 (2022-07-14)
------------------

* Feature - This release updates data types that contain either QueryExecutionId, NamedQueryId or ExpectedBucketOwner. Ids must be between 1 and 128 characters and contain only non-whitespace characters. ExpectedBucketOwner must be 12-digit string.

1.54.0 (2022-06-30)
------------------

* Feature - This feature introduces the API support for Athena's parameterized query and BatchGetPreparedStatement API.

1.53.0 (2022-04-15)
------------------

* Feature - This release adds subfields, ErrorMessage, Retryable, to the AthenaError response object in the GetQueryExecution API when a query fails.

1.52.0 (2022-03-02)
------------------

* Feature - This release adds support for S3 Object Ownership by allowing the S3 bucket owner full control canned ACL to be set when Athena writes query results to S3 buckets.

1.51.0 (2022-02-28)
------------------

* Feature - This release adds support for updating an existing named query.

1.50.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2022-02-14)
------------------

* Feature - This release adds a subfield, ErrorType, to the AthenaError response object in the GetQueryExecution API when a query fails.

1.48.0 (2022-02-04)
------------------

* Feature - You can now optionally specify the account ID that you expect to be the owner of your query results output location bucket in Athena. If the account ID of the query results bucket owner does not match the specified account ID, attempts to output to the bucket will fail with an S3 permissions error.

1.47.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2022-01-28)
------------------

* Feature - This release adds a field, AthenaError, to the GetQueryExecution response object when a query fails.

1.45.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2021-08-06)
------------------

* Feature - Documentation updates for Athena.

1.39.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2021-03-05)
------------------

* Feature - Adds APIs to create, list, update, and delete prepared SQL statements that have optional placeholder parameters. A prepared statement can use different values for these parameters each time it is run.

1.35.0 (2021-02-04)
------------------

* Feature - Adds the Athena ListEngineVersions action and the EngineVersion data type. ListEngineVersions returns the available Athena engine versions, including Auto, as a list of EngineVersion objects.

1.34.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.28.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2020-06-01)
------------------

* Feature - This release adds support for connecting Athena to your own Apache Hive Metastores in addition to the AWS Glue Data Catalog. For more information, please see https://docs.aws.amazon.com/athena/latest/ug/connect-to-data-source-hive.html

1.26.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2020-03-24)
------------------

* Feature - Documentation updates for Athena, including QueryExecutionStatus QUEUED and RUNNING states. QUEUED now indicates that the query has been submitted to the service. RUNNING indicates that the query is in execution phase.

1.23.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2019-11-25)
------------------

* Feature - This release adds additional query lifecycle metrics to the QueryExecutionStatistics object in GetQueryExecution response.

1.21.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2019-09-17)
------------------

* Feature - This release adds DataManifestLocation field indicating the location and file name of the data manifest file. Users can get a list of files that the Athena query wrote or intended to write from the manifest file.

1.19.0 (2019-08-15)
------------------

* Feature - This release adds support for querying S3 Requester Pays buckets. Users can enable this feature through their Workgroup settings.

1.18.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2019-05-21)
------------------

* Feature - API update.

1.14.0 (2019-05-15)
------------------

* Feature - API update.

1.13.0 (2019-05-14)
------------------

* Feature - API update.

1.12.0 (2019-03-21)
------------------

* Feature - API update.

1.11.0 (2019-03-18)
------------------

* Feature - API update.

1.10.0 (2019-03-14)
------------------

* Feature - API update.

1.9.0 (2019-02-22)
------------------

* Feature - API update.

1.8.0 (2019-02-18)
------------------

* Feature - API update.

1.7.0 (2018-11-20)
------------------

* Feature - API update.

1.6.0 (2018-10-24)
------------------

* Feature - API update.

1.5.0 (2018-10-23)
------------------

* Feature - API update.

1.4.0 (2018-10-11)
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

* Issue - Update `aws-sdk-athena` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc7 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc6 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc5 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc4 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc3 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc2 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc1 (2017-05-23)
------------------

* Feature - Initial release of `aws-sdk-athena`.
