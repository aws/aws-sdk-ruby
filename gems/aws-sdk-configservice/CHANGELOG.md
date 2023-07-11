Unreleased Changes
------------------

1.96.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.95.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.94.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2023-06-20)
------------------

* Feature - Updated ResourceType enum with new resource types onboarded by AWS Config in May 2023.

1.92.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2023-05-31)
------------------

* Feature - Resource Types Exclusion feature launch by AWS Config

1.90.0 (2023-05-04)
------------------

* Feature - Updated ResourceType enum with new resource types onboarded by AWS Config in April 2023.

1.89.0 (2023-04-05)
------------------

* Feature - This release adds resourceType enums for types released in March 2023.

1.88.0 (2023-03-17)
------------------

* Feature - This release adds resourceType enums for types released from October 2022 through February 2023.

1.87.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.86.0 (2022-11-29)
------------------

* Feature - With this release, you can use AWS Config to evaluate your resources for compliance with Config rules before they are created or updated. Using Config rules in proactive mode enables you to test and build compliant resource templates or check resource configurations at the time they are provisioned.

1.85.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2022-10-19)
------------------

* Feature - This release adds resourceType enums for AppConfig, AppSync, DataSync, EC2, EKS, Glue, GuardDuty, SageMaker, ServiceDiscovery, SES, Route53 types.

1.83.0 (2022-08-24)
------------------

* Feature - AWS Config now supports ConformancePackTemplate documents in SSM Docs for the deployment and update of conformance packs.

1.82.0 (2022-08-04)
------------------

* Feature - Add resourceType enums for Athena, GlobalAccelerator, Detective and EC2 types

1.81.0 (2022-08-01)
------------------

* Feature - Documentation update for PutConfigRule and PutOrganizationConfigRule

1.80.0 (2022-07-27)
------------------

* Feature - This release adds ListConformancePackComplianceScores API to support the new compliance score feature, which provides a percentage of the number of compliant rule-resource combinations in a conformance pack compared to the number of total possible rule-resource combinations in the conformance pack.

1.79.0 (2022-07-14)
------------------

* Feature - Update ResourceType enum with values for Route53Resolver, Batch, DMS, Workspaces, Stepfunctions, SageMaker, ElasticLoadBalancingV2, MSK types

1.78.0 (2022-07-05)
------------------

* Feature - Updating documentation service limits

1.77.0 (2022-04-06)
------------------

* Feature - Add resourceType enums for AWS::EMR::SecurityConfiguration and AWS::SageMaker::CodeRepository

1.76.0 (2022-03-24)
------------------

* Feature - Added new APIs GetCustomRulePolicy and GetOrganizationCustomRulePolicy, and updated existing APIs PutConfigRule, DescribeConfigRule, DescribeConfigRuleEvaluationStatus, PutOrganizationConfigRule, DescribeConfigRule to support a new feature for building AWS Config rules with AWS CloudFormation Guard

1.75.0 (2022-03-14)
------------------

* Feature - Add resourceType enums for AWS::ECR::PublicRepository and AWS::EC2::LaunchTemplate

1.74.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.72.0 (2022-01-14)
------------------

* Feature - Update ResourceType enum with values for CodeDeploy, EC2 and Kinesis resources

1.71.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2021-10-13)
------------------

* Feature - Adding Config support for AWS::OpenSearch::Domain

1.66.0 (2021-09-01)
------------------

* Feature - Documentation updates for config

1.65.0 (2021-08-16)
------------------

* Feature - Update ResourceType enum with values for Backup Plan, Selection, Vault, RecoveryPoint; ECS Cluster, Service, TaskDefinition; EFS AccessPoint, FileSystem; EKS Cluster; ECR Repository resources

1.64.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2021-05-10)
------------------

* Feature - Adds paginator to multiple APIs: By default, the paginator allows user to iterate over the results and allows the CLI to return up to 1000 results.

1.61.0 (2021-04-14)
------------------

* Feature - Add exception for DeleteRemediationConfiguration and DescribeRemediationExecutionStatus

1.60.0 (2021-03-30)
------------------

* Feature - Adding new APIs to support ConformancePack Compliance CI in Aggregators

1.59.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2021-02-17)
------------------

* Feature - Added INSUFFICIENT_DATA in ConformancePackComplianceType.

1.57.0 (2021-02-15)
------------------

* Feature - Added option to provide KMS key to AWS Config DeliveryChannel

1.56.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2020-12-21)
------------------

* Feature - AWS Config adds support to save advanced queries. New API operations - GetStoredQuery, PutStoredQuery, ListStoredQueries, DeleteStoredQuery

1.54.0 (2020-12-17)
------------------

* Feature - Adding PutExternalEvaluation API which grants permission to deliver evaluation result to AWS Config

1.53.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2020-09-25)
------------------

* Feature - Make the delivery-s3-bucket as an optional parameter for conformance packs and organizational conformance packs

1.51.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2020-07-23)
------------------

* Feature - Adding service linked configuration aggregation support along with new enums for config resource coverage

1.48.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.47.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.46.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.1 (2020-03-02)
------------------

* Issue - Republish the previously yanked versions.

1.42.0 (2020-02-29)
------------------

* Issue - This version has been yanked. (#2239)
* Feature - Correcting list of supported resource types.

1.41.0 (2020-02-28)
------------------

* Issue - This version has been yanked. (#2239)
* Feature - Accepts a structured query language (SQL) SELECT command and an aggregator name, performs the corresponding search on resources aggregated by the aggregator, and returns resource configurations matching the properties.

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
