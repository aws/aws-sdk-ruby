Unreleased Changes
------------------

1.39.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2023-01-31)
------------------

* Feature - Enabled FIPS endpoints for GovCloud (US) regions in SDK.

1.33.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.32.0 (2022-11-30)
------------------

* Feature - This release adds support for S3 cross account access points. IAM Access Analyzer will now produce public or cross account findings when it detects bucket delegation to external account access points.

1.31.0 (2022-10-25)
------------------

* Feature - This release adds support for six new resource types in IAM Access Analyzer to help you easily identify public and cross-account access to your AWS resources. Updated service API, documentation, and paginators.

1.30.0 (2022-10-03)
------------------

* Feature - AWS IAM Access Analyzer policy validation introduces new checks for role trust policies. As customers author a policy, IAM Access Analyzer policy validation evaluates the policy for any issues to make it easier for customers to author secure policies.

1.29.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2021-11-30)
------------------

* Feature - AWS IAM Access Analyzer now supports policy validation for resource policies attached to S3 buckets and access points. You can run additional policy checks by specifying the S3 resource type you want to attach to your resource policy.

1.25.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2021-09-02)
------------------

* Feature - Updates service API, documentation, and paginators to support multi-region access points from Amazon S3.

1.22.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2021-04-07)
------------------

* Feature - IAM Access Analyzer now analyzes your CloudTrail events to identify actions and services that have been used by an IAM entity (user or role) and generates an IAM policy that is based on that activity.

1.18.0 (2021-03-16)
------------------

* Feature - This release adds support for the ValidatePolicy API. IAM Access Analyzer is adding over 100 policy checks and actionable recommendations that help you validate your policies during authoring.

1.17.0 (2021-03-10)
------------------

* Feature - This release adds support to preview IAM Access Analyzer findings for a resource before deploying resource permission changes.

1.16.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2021-01-27)
------------------

* Feature - This release adds Secrets Manager secrets as a supported resource in IAM Access Analyzer to help you identify secrets that can be accessed from outside your account or AWS organization.

1.14.0 (2020-10-22)
------------------

* Feature - API Documentation updates for IAM Access Analyzer.

1.13.0 (2020-10-15)
------------------

* Feature - This release adds support for the ApplyArchiveRule api in IAM Access Analyzer.  The ApplyArchiveRule api allows users to apply an archive rule retroactively to existing findings in an analyzer.

1.12.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.8.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2020-04-27)
------------------

* Feature - This release adds support for inclusion of S3 Access Point policies in IAM Access Analyzer evaluation of S3 bucket access. IAM Access Analyzer now reports findings for buckets shared through access points and identifies the access point that permits access.

1.4.0 (2020-03-30)
------------------

* Feature - This release adds support for the creation and management of IAM Access Analyzer analyzers with type organization. An analyzer with type organization continuously monitors all supported resources within the AWS organization and reports findings when they allow access from outside the organization.

1.3.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.1 (2020-03-02)
------------------

* Issue - Republish the previously yanked version.

1.2.0 (2020-02-28)
------------------

* Issue - This version has been yanked. (#2239)
* Feature - This release includes improvements and fixes bugs for the IAM Access Analyzer feature.

1.1.0 (2019-12-12)
------------------

* Feature - This release includes improvements and fixes bugs for the IAM Access Analyzer feature.

1.0.0 (2019-12-02)
------------------

* Feature - Initial release of `aws-sdk-accessanalyzer`.
