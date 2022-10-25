Unreleased Changes
------------------

1.22.0 (2022-09-08)
------------------

* Feature - Release dimension value filtering feature to allow customers to define dimension filters for including only a subset of their dataset to be used by LookoutMetrics.

1.21.0 (2022-08-19)
------------------

* Feature - This release is to make GetDataQualityMetrics API publicly available.

1.20.0 (2022-06-14)
------------------

* Feature - Adding filters to Alert and adding new UpdateAlert API.

1.19.0 (2022-05-31)
------------------

* Feature - Adding backtest mode to detectors using the Cloudwatch data source.

1.18.0 (2022-05-25)
------------------

* Feature - Adding AthenaSourceConfig for MetricSet APIs to support Athena as a data source.

1.17.0 (2022-05-19)
------------------

* Feature - In this release we added SnsFormat to SNSConfiguration to support human readable alert.

1.16.0 (2022-04-21)
------------------

* Feature - Added DetectMetricSetConfig API for detecting configuration required for creating metric set from provided S3 data source.

1.15.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2022-01-14)
------------------

* Feature - This release adds a new DeactivateAnomalyDetector API operation.

1.12.0 (2022-01-10)
------------------

* Feature - This release adds FailureType in the response of DescribeAnomalyDetector.

1.11.0 (2021-12-21)
------------------

* Feature - This release adds support for Causal Relationships. Added new ListAnomalyGroupRelatedMetrics API operation and InterMetricImpactDetails API data type

1.10.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Remove a plugin that sets the `Content-Type` header and instead depend on a new version of `aws-sdk-core` that does.

1.7.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2021-06-14)
------------------

* Feature - Added "LEARNING" status for anomaly detector and updated description for "Offset" parameter in MetricSet APIs.

1.3.0 (2021-05-28)
------------------

* Feature - Allowing dot(.) character in table name for RDS and Redshift as source connector.

1.2.0 (2021-05-07)
------------------

* Feature - Enforcing UUID style for parameters that are already in UUID format today. Documentation specifying eventual consistency of lookoutmetrics resources.

1.1.0 (2021-03-26)
------------------

* Feature - Allowing uppercase alphabets for RDS and Redshift database names.

* Issue - Add a `Content-Type` header to mitigate a service side issue.

1.0.0 (2021-03-25)
------------------

* Feature - Initial release of `aws-sdk-lookoutmetrics`.
