Unreleased Changes
------------------

1.40.0 (2019-11-21)
------------------

* Feature - AWS Config launches Custom Configuration Items. A new feature which allows customers to publish resource configuration for third-party resources, custom, or on-premises servers.

1.39.0 (2019-11-19)
------------------

* Feature - AWSConfig launches support for conformance packs. A conformance pack is a new resource type that allows you to package a collection of Config rules and remediation actions into a single entity. You can create and deploy conformance packs into your account or across all accounts in your organization

1.38.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2019-09-11)
------------------

* Feature - Adding input validation for the OrganizationConfigRuleName string.

1.36.0 (2019-09-05)
------------------

* Feature - AWS Config now includes the option for marking RemediationConfigurations as automatic, removing the need to call the StartRemediationExecution API. Manual control over resource execution rate is also included, and RemediationConfigurations are now ARN addressable. Exceptions to exclude account resources from being remediated can be configured with the new PutRemediationExceptions, DescribeRemediationExceptions, and DeleteRemediationExceptions APIs.

1.35.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2019-07-17)
------------------

* Feature - This release adds more granularity to the status of an OrganizationConfigRule by adding a new status. It also adds an exception when organization access is denied.

1.33.0 (2019-07-09)
------------------

* Feature - AWS Config now supports a new set of APIs to manage AWS Config rules across your organization in AWS Organizations. Using this capability, you can centrally create, update, and delete AWS Config rules across all accounts in your organization. This capability is particularly useful if you have a need to deploy a common set of AWS Config rules across all accounts. You can also specify accounts where AWS Config rules should not be created. In addition, you can use these APIs from the master account in AWS Organizations to enforce governance by ensuring that the underlying AWS Config rules are not modifiable by your organization member accounts.These APIs work for both managed and custom AWS Config rules. For more information, see Enabling AWS Config Rules Across all Accounts in Your Organization in the AWS Config Developer Guide.The new APIs are available in all commercial AWS Regions where AWS Config and AWS Organizations are supported. For the full list of supported Regions, see AWS Regions and Endpoints in the AWS General Reference. To learn more about AWS Config, visit the AWS Config webpage. To learn more about AWS Organizations, visit the AWS Organizations webpage.

1.32.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2019-05-21)
------------------

* Feature - API update.

1.29.0 (2019-05-15)
------------------

* Feature - API update.

1.28.0 (2019-05-14)
------------------

* Feature - API update.

1.27.0 (2019-05-06)
------------------

* Feature - API update.

1.26.0 (2019-03-21)
------------------

* Feature - API update.

1.25.0 (2019-03-19)
------------------

* Feature - API update.

1.24.0 (2019-03-18)
------------------

* Feature - API update.

1.23.0 (2019-03-14)
------------------

* Feature - API update.

1.22.0 (2019-03-13)
------------------

* Feature - API update.

1.21.0 (2018-11-20)
------------------

* Feature - API update.

1.20.0 (2018-11-19)
------------------

* Feature - API update.

1.19.0 (2018-10-31)
------------------

* Feature - API update.

1.18.0 (2018-10-24)
------------------

* Feature - API update.

1.17.0 (2018-10-23)
------------------

* Feature - API update.

1.16.0 (2018-09-07)
------------------

* Feature - API update.

1.15.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.14.0 (2018-09-05)
------------------

* Feature - API update.

1.13.0 (2018-07-20)
------------------

* Feature - API update.

1.12.0 (2018-06-26)
------------------

* Feature - API update.

1.11.0 (2018-05-25)
------------------

* Feature - API update.

1.10.0 (2018-05-15)
------------------

* Feature - API update.

1.9.0 (2018-05-03)
------------------

* Feature - API update.

1.8.0 (2018-04-04)
------------------

* Feature - API update.

1.7.0 (2018-03-20)
------------------

* Feature - API update.

1.6.0 (2018-02-19)
------------------

* Feature - API update.

1.5.0 (2017-12-20)
------------------

* Feature - API update.

1.4.0 (2017-10-24)
------------------

* Feature - API update.

1.3.0 (2017-10-06)
------------------

* Feature - API update.

1.2.0 (2017-10-06)
------------------

* Feature - API update.

1.1.0 (2017-09-22)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-configservice` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc15 (2017-08-29)
------------------

* Feature - API update.

1.0.0.rc14 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc13 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc12 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc11 (2017-07-12)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc9 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc8 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc7 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc5 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc4 (2017-03-07)
------------------

* Feature - API update.

1.0.0.rc3 (2017-01-24)
------------------

* Feature - API update.

1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-configservice` gem.

