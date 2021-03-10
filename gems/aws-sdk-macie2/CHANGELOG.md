Unreleased Changes
------------------

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