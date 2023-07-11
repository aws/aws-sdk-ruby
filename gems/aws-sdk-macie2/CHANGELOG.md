Unreleased Changes
------------------

1.59.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2023-06-27)
------------------

* Feature - This release adds support for configuring new classification jobs to use the set of managed data identifiers that we recommend for jobs. For the managed data identifier selection type (managedDataIdentifierSelector), specify RECOMMENDED.

1.55.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2023-03-03)
------------------

* Feature - Documentation updates for Amazon Macie

1.52.0 (2023-02-23)
------------------

* Feature - This release adds support for a new finding type, Policy:IAMUser/S3BucketSharedWithCloudFront, and S3 bucket metadata that indicates if a bucket is shared with an Amazon CloudFront OAI or OAC.

1.51.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.50.0 (2022-12-21)
------------------

* Feature - This release adds support for analyzing Amazon S3 objects that use the S3 Glacier Instant Retrieval (Glacier_IR) storage class.

1.49.0 (2022-11-29)
------------------

* Feature - Added support for configuring Macie to continually sample objects from S3 buckets and inspect them for sensitive data. Results appear in statistics, findings, and other data that Macie provides.

1.48.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2022-08-30)
------------------

* Feature - This release of the Amazon Macie API adds support for using allow lists to define specific text and text patterns to ignore when inspecting data sources for sensitive data.

1.46.0 (2022-07-26)
------------------

* Feature - This release adds support for retrieving (revealing) sample occurrences of sensitive data that Amazon Macie detects and reports in findings.

1.45.0 (2022-04-20)
------------------

* Feature - Sensitive data findings in Amazon Macie now indicate how Macie found the sensitive data that produced a finding (originType).

1.44.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2022-01-19)
------------------

* Feature - This release of the Amazon Macie API introduces stricter validation of requests to create custom data identifiers.

1.41.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2021-11-23)
------------------

* Feature - Documentation updates for Amazon Macie

1.38.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2021-11-03)
------------------

* Feature - This release adds support for specifying the severity of findings that a custom data identifier produces, based on the number of occurrences of text that matches the detection criteria.

1.36.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2021-09-30)
------------------

* Feature - Amazon S3 bucket metadata now indicates whether an error or a bucket's permissions settings prevented Amazon Macie from retrieving data about the bucket or the bucket's objects.

1.34.0 (2021-09-16)
------------------

* Feature - This release adds support for specifying which managed data identifiers are used by a classification job, and retrieving a list of managed data identifiers that are available.

1.33.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2021-07-06)
------------------

* Feature - Sensitive data findings in Amazon Macie now include enhanced location data for JSON and JSON Lines files

1.29.0 (2021-06-08)
------------------

* Feature - This release of the Amazon Macie API introduces stricter validation of S3 object criteria for classification jobs.

1.28.0 (2021-05-14)
------------------

* Feature - This release of the Amazon Macie API adds support for defining run-time, S3 bucket criteria for classification jobs. It also adds resources for querying data about AWS resources that Macie monitors.

1.27.0 (2021-04-29)
------------------

* Feature - The Amazon Macie API now provides S3 bucket metadata that indicates whether a bucket policy requires server-side encryption of objects when objects are uploaded to the bucket.

1.26.0 (2021-03-22)
------------------

* Feature - This release of the Amazon Macie API adds support for publishing sensitive data findings to AWS Security Hub and specifying which categories of findings to publish to Security Hub.

1.25.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2021-03-03)
------------------

* Feature - This release of the Amazon Macie API includes miscellaneous updates and improvements to the documentation.

1.23.0 (2021-02-12)
------------------

* Feature - This release of the Amazon Macie API replaces the term master account with the term administrator account, including deprecating APIs that use the previous term and adding APIs that use the new term.

1.22.0 (2021-02-08)
------------------

* Feature - This release of the Amazon Macie API adds support for specifying a time range in queries for usage data.

1.21.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2021-01-29)
------------------

* Feature - This release of the Amazon Macie API adds support for using object prefixes to refine the scope of a classification job.

1.19.0 (2020-12-30)
------------------

* Feature - This release of the Amazon Macie API includes miscellaneous updates and improvements to the documentation.

1.18.0 (2020-11-20)
------------------

* Feature - The Amazon Macie API now provides S3 bucket metadata that indicates whether any one-time or recurring classification jobs are configured to analyze data in a bucket.

1.17.0 (2020-11-17)
------------------

* Feature - The Amazon Macie API now has a lastRunErrorStatus property to indicate if account- or bucket-level errors occurred during the run of a one-time classification job or the latest run of a recurring job.

1.16.0 (2020-11-09)
------------------

* Feature - Sensitive data findings in Amazon Macie now include enhanced location data for Apache Avro object containers and Apache Parquet files.

1.15.0 (2020-10-30)
------------------

* Feature - This release of the Amazon Macie API adds an eqExactMatch operator for filtering findings. With this operator you can increase the precision of your finding filters and suppression rules.

1.14.0 (2020-10-23)
------------------

* Feature - This release of the Amazon Macie API includes miscellaneous updates and improvements to the documentation.

1.13.0 (2020-10-15)
------------------

* Feature - This release of the Amazon Macie API adds support for pausing and resuming classification jobs. Also, sensitive data findings now include location data for up to 15 occurrences of sensitive data.

1.12.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2020-09-02)
------------------

* Feature - This release of the Amazon Macie API introduces additional statistics for the size and count of Amazon S3 objects that Macie can analyze as part of a classification job.

1.9.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2020-08-13)
------------------

* Feature - This release of the Amazon Macie API includes miscellaneous updates and improvements to the documentation.

1.7.0 (2020-07-24)
------------------

* Feature - This release of the Amazon Macie API introduces additional criteria for sorting and filtering query results for account quotas and usage statistics.

1.6.0 (2020-07-17)
------------------

* Feature - This release of the Amazon Macie API includes miscellaneous updates and improvements to the documentation.

1.5.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2020-06-17)
------------------

* Feature - This is a documentation-only update to the Amazon Macie API. This update contains miscellaneous editorial improvements to various API descriptions.

1.3.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.3.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - This release of the Amazon Macie API removes support for the ArchiveFindings and UnarchiveFindings operations. This release also adds UNKNOWN as an encryption type for S3 bucket metadata.

1.2.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2020-05-18)
------------------

* Feature - Documentation updates for Amazon Macie

1.0.0 (2020-05-13)
------------------

* Feature - Initial release of `aws-sdk-macie2`.
