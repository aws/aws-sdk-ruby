Unreleased Changes
------------------

1.140.0 (2025-09-04)
------------------

* Feature - ListHookResults API now supports retrieving invocation results for all CloudFormation Hooks (previously limited to create change set and Cloud Control operations) with new optional parameters for filtering by Hook status and ARN.

1.139.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.138.0 (2025-08-25)
------------------

* Feature - Remove incorrect endpoint tests

1.137.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.136.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.135.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.134.0 (2025-06-30)
------------------

* Feature - Added support for UNKNOWN drift status.

1.133.0 (2025-06-05)
------------------

* Feature - Add new warning type 'EXCLUDED_PROPERTIES'

1.132.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.131.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.130.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.129.0 (2025-03-27)
------------------

* Feature - Adding support for the new parameter "ScanFilters" in the CloudFormation StartResourceScan API. When this parameter is included, the StartResourceScan API will initiate a scan limited to the resource types specified by the parameter.

1.128.0 (2025-03-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.127.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.126.0 (2025-02-06)
------------------

* Feature - We added 5 new stack refactoring APIs: CreateStackRefactor, ExecuteStackRefactor, ListStackRefactors, DescribeStackRefactor, ListStackRefactorActions.

1.125.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.124.0 (2024-11-18)
------------------

* Feature - This release adds a new API, ListHookResults, that allows retrieving CloudFormation Hooks invocation results for hooks invoked during a create change set operation or Cloud Control API operation

1.123.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.122.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.121.0 (2024-10-15)
------------------

* Feature - Documentation update for AWS CloudFormation API Reference.

1.120.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.119.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.118.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.117.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.116.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.115.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.114.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.113.0 (2024-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.112.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.111.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.110.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.109.0 (2024-05-22)
------------------

* Feature - Added DeletionMode FORCE_DELETE_STACK for deleting a stack that is stuck in DELETE_FAILED state due to resource deletion failure.

1.108.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.107.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.106.0 (2024-04-16)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.105.0 (2024-04-12)
------------------

* Feature - Adding support for the new parameter "IncludePropertyValues" in the CloudFormation DescribeChangeSet API. When this parameter is included, the DescribeChangeSet response will include more detailed information such as before and after values for the resource properties that will change.

1.104.0 (2024-04-03)
------------------

* Feature - This release would return a new field - PolicyAction in cloudformation's existed DescribeChangeSetResponse, showing actions we are going to apply on the physical resource (e.g., Delete, Retain) according to the user's template

1.103.0 (2024-03-19)
------------------

* Feature - Documentation update, March 2024. Corrects some formatting.

1.102.0 (2024-03-18)
------------------

* Feature - This release supports for a new API ListStackSetAutoDeploymentTargets, which provider auto-deployment configuration as a describable resource. Customers can now view the specific combinations of regions and OUs that are being auto-deployed.

1.101.0 (2024-03-12)
------------------

* Feature - CloudFormation documentation update for March, 2024

1.100.0 (2024-03-04)
------------------

* Feature - Add DetailedStatus field to DescribeStackEvents and DescribeStacks APIs

1.99.0 (2024-01-31)
------------------

* Feature - CloudFormation IaC generator allows you to scan existing resources in your account and select resources to generate a template for a new or existing CloudFormation stack.

1.98.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.97.0 (2023-12-05)
------------------

* Feature - Documentation update, December 2023

1.96.0 (2023-12-04)
------------------

* Feature - Including UPDATE_* states as a success status for CreateStack waiter.

1.95.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.94.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2023-11-17)
------------------

* Feature - This release adds a new flag ImportExistingResources to CreateChangeSet. Specify this parameter on a CREATE- or UPDATE-type change set to import existing resources with custom names instead of recreating them.

1.92.0 (2023-11-09)
------------------

* Feature - Added new ConcurrencyMode feature for AWS CloudFormation StackSets for faster deployments to target accounts.

1.91.0 (2023-10-16)
------------------

* Feature - SDK and documentation updates for UpdateReplacePolicy

1.90.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.89.0 (2023-09-14)
------------------

* Feature - Documentation updates for AWS CloudFormation

1.88.0 (2023-07-28)
------------------

* Feature - This SDK release is for the feature launch of AWS CloudFormation RetainExceptOnCreate. It adds a new parameter retainExceptOnCreate in the following APIs: CreateStack, UpdateStack, RollbackStack, ExecuteChangeSet.

1.87.0 (2023-07-24)
------------------

* Feature - This release supports filtering by DRIFT_STATUS for existing API ListStackInstances and adds support for a new API ListStackInstanceResourceDrifts. Customers can now view resource drift information from their StackSet management accounts.

1.86.0 (2023-07-19)
------------------

* Feature - SDK and documentation updates for GetTemplateSummary API (unrecognized resources)

1.85.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2023-06-19)
------------------

* Feature - Specify desired CloudFormation behavior in the event of ChangeSet execution failure using the CreateChangeSet OnStackFailure parameter

1.81.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2023-06-07)
------------------

* Feature - AWS CloudFormation StackSets is updating the deployment experience for all stackset operations to skip suspended AWS accounts during deployments. StackSets will skip target AWS accounts that are suspended and set the Detailed Status of the corresponding stack instances as SKIPPED_SUSPENDED_ACCOUNT

1.79.0 (2023-06-05)
------------------

* Feature - AWS CloudFormation StackSets provides customers with three new APIs to activate, deactivate, and describe AWS Organizations trusted access which is needed to get started with service-managed StackSets.

1.78.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2023-04-06)
------------------

* Feature - Including UPDATE_COMPLETE as a failed status for DeleteStack waiter.

1.76.0 (2023-01-30)
------------------

* Feature - This feature provides a method of obtaining which regions a stackset has stack instances deployed in.

1.75.0 (2023-01-25)
------------------

* Feature - Enabled FIPS aws-us-gov endpoints in SDK.

1.74.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.73.0 (2022-11-16)
------------------

* Feature - Added UnsupportedTarget HandlerErrorCode for use with CFN Resource Hooks

1.72.0 (2022-10-28)
------------------

* Feature - This release adds more fields to improves visibility of AWS CloudFormation StackSets information in following APIs: ListStackInstances, DescribeStackInstance, ListStackSetOperationResults, ListStackSetOperations, DescribeStackSetOperation.

1.71.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2022-07-06)
------------------

* Feature - My AWS Service (placeholder) - Add a new feature Account-level Targeting for StackSet operation

1.69.0 (2022-05-25)
------------------

* Feature - Add a new parameter statusReason to DescribeStackSetOperation output for additional details

1.68.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2022-02-10)
------------------

* Feature - This SDK release adds AWS CloudFormation Hooks HandlerErrorCodes

1.66.0 (2022-02-09)
------------------

* Feature - This SDK release is for the feature launch of AWS CloudFormation Hooks.

1.65.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2021-11-22)
------------------

* Feature - This release include SDK changes for the feature launch of Stack Import to Service Managed StackSet.

1.61.0 (2021-11-19)
------------------

* Feature - The StackSets ManagedExecution feature will allow concurrency for non-conflicting StackSet operations and queuing the StackSet operations that conflict at a given time for later execution.

1.60.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2021-09-10)
------------------

* Feature - Doc only update for CloudFormation that fixes several customer-reported issues.

1.57.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2021-08-30)
------------------

* Feature - AWS CloudFormation allows you to iteratively develop your applications when failures are encountered without rolling back successfully provisioned resources. By specifying stack failure options, you can troubleshoot resources in a CREATE_FAILED or UPDATE_FAILED status.

1.55.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2021-07-28)
------------------

* Feature - SDK update to support Importing existing Stacks to new/existing Self Managed StackSet - Stack Import feature.

1.53.0 (2021-06-21)
------------------

* Feature - CloudFormation registry service now supports 3rd party public type sharing

1.52.0 (2021-04-28)
------------------

* Feature - Add CallAs parameter to GetTemplateSummary to enable use with StackSets delegated administrator integration

1.51.0 (2021-04-21)
------------------

* Feature - Added support for creating and updating stack sets with self-managed permissions from templates that reference macros.

1.50.0 (2021-03-31)
------------------

* Feature - 1. Added a new parameter "RegionConcurrencyType" in OperationPreferences. 2. Changed the name of "AccountUrl" to "AccountsUrl" in "DeploymentTargets" parameter.

1.49.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2021-02-18)
------------------

* Feature - Adding the 'callAs' parameter to all CloudFormation StackSets APIs except getTemplateSummary to support creating and managing service-managed StackSets with AWS Organizations Delegated Administrators

1.47.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2020-11-24)
------------------

* Feature - Adds support for the new Modules feature for CloudFormation. A module encapsulates one or more resources and their respective configurations for reuse across your organization.

1.45.0 (2020-11-18)
------------------

* Feature - This release adds ChangeSets support for Nested Stacks. ChangeSets offer a preview of how proposed changes to a stack might impact existing resources or create new ones.

1.44.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2020-06-26)
------------------

* Feature - ListStackInstances and DescribeStackInstance now return a new `StackInstanceStatus` object that contains `DetailedStatus` values: a disambiguation of the more generic `Status` value. ListStackInstances output can now be filtered on `DetailedStatus` using the new `Filters` parameter.

1.39.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2020-06-12)
------------------

* Feature - The following parameters now return the organization root ID or organizational unit (OU) IDs that you specified for DeploymentTargets: the OrganizationalUnitIds parameter on StackSet and the OrganizationalUnitId parameter on StackInstance, StackInstanceSummary, and StackSetOperationResultSummary

1.37.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.37.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2020-05-15)
------------------

* Feature - This release adds support for the following features: 1. DescribeType and ListTypeVersions APIs now output a field IsDefaultVersion, indicating if a version is the default version for its type; 2. Add StackRollbackComplete waiter feature to wait until stack status is UPDATE_ROLLBACK_COMPLETE; 3. Add paginators in DescribeAccountLimits, ListChangeSets, ListStackInstances, ListStackSetOperationResults, ListStackSetOperations, ListStackSets APIs.

1.34.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-04-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2020-04-08)
------------------

* Feature - The OrganizationalUnitIds parameter on StackSet and the OrganizationalUnitId parameter on StackInstance, StackInstanceSummary, and StackSetOperationResultSummary are now reserved for internal use. No data is returned for this parameter.

1.31.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2020-02-11)
------------------

* Feature - This release of AWS CloudFormation StackSets allows you to centrally manage deployments to all the accounts in your organization or specific organizational units (OUs) in AWS Organizations. You will also be able to enable automatic deployments to any new accounts added to your organization or OUs. The permissions needed to deploy across accounts will automatically be taken care of by the StackSets service.

1.29.0 (2019-11-19)
------------------

* Feature - This release of AWS CloudFormation StackSets enables users to detect drift on a stack set and the stack instances that belong to that stack set.

1.28.0 (2019-11-18)
------------------

* Feature - This release introduces APIs for the CloudFormation Registry, a new service to submit and discover resource providers with which you can manage third-party resources natively in CloudFormation.

1.27.0 (2019-11-11)
------------------

* Feature - The Resource Import feature enables customers to import existing AWS resources into new or existing CloudFormation Stacks.

1.26.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2019-05-21)
------------------

* Feature - API update.

1.21.0 (2019-05-15)
------------------

* Feature - API update.

1.20.0 (2019-05-14)
------------------

* Feature - API update.

1.19.0 (2019-04-24)
------------------

* Feature - API update.

1.18.0 (2019-03-22)
------------------

* Feature - API update.

1.17.0 (2019-03-21)
------------------

* Feature - API update.

1.16.0 (2019-03-18)
------------------

* Feature - API update.

1.15.0 (2019-03-14)
------------------

* Feature - API update.

1.14.0 (2018-12-14)
------------------

* Feature - API update.

1.13.0 (2018-11-20)
------------------

* Feature - API update.

1.12.0 (2018-11-19)
------------------

* Feature - API update.

1.11.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.11.0 (2018-11-12)
------------------

* Feature - API update.

1.10.0 (2018-10-24)
------------------

* Feature - API update.

1.9.0 (2018-10-23)
------------------

* Feature - API update.

1.8.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.7.0 (2018-09-05)
------------------

* Feature - API update.

1.6.0 (2018-06-26)
------------------

* Feature - API update.

1.5.0 (2018-05-21)
------------------

* Feature - API update.

1.4.0 (2018-03-29)
------------------

* Feature - API update.

1.3.0 (2017-11-22)
------------------

* Feature - API update.

1.2.0 (2017-09-26)
------------------

* Feature - API update.

1.1.0 (2017-09-14)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-cloudformation` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc13 (2017-08-25)
------------------

* Feature - API update.

1.0.0.rc12 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc11 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc7 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc4 (2017-05-09)
------------------

* Feature - API update.

* Issue - Fix resource model load path

1.0.0.rc3 (2017-05-05)
------------------

* Feature - API update.

1.0.0.rc2 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-cloudformation` gem.
