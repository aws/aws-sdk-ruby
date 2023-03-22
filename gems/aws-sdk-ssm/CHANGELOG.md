Unreleased Changes
------------------

1.150.0 (2023-03-22)
------------------

* Feature - This Patch Manager release supports creating, updating, and deleting Patch Baselines for AmazonLinux2023, AlmaLinux.

1.149.0 (2023-02-22)
------------------

* Feature - Document only update for Feb 2023

1.148.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.147.0 (2023-01-04)
------------------

* Feature - Adding support for QuickSetup Document Type in Systems Manager

1.146.0 (2022-12-21)
------------------

* Feature - Doc-only updates for December 2022.

1.145.0 (2022-11-16)
------------------

* Feature - This release adds support for cross account access in CreateOpsItem, UpdateOpsItem and GetOpsItem. It introduces new APIs to setup resource policies for SSM resources: PutResourcePolicy, GetResourcePolicies and DeleteResourcePolicy.

1.144.0 (2022-11-07)
------------------

* Feature - This release includes support for applying a CloudWatch alarm to multi account multi region Systems Manager Automation

1.143.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.142.0 (2022-10-13)
------------------

* Feature - Support of AmazonLinux2022 by Patch Manager

1.141.0 (2022-09-26)
------------------

* Feature - This release includes support for applying a CloudWatch alarm to Systems Manager capabilities like Automation, Run Command, State Manager, and Maintenance Windows.

1.140.0 (2022-09-23)
------------------

* Feature - This release adds new SSM document types ConformancePackTemplate and CloudFormation

1.139.0 (2022-09-08)
------------------

* Feature - This release adds support for Systems Manager State Manager Association tagging.

1.138.0 (2022-07-27)
------------------

* Feature - Adding doc updates for OpsCenter support in Service Setting actions.

1.137.0 (2022-05-04)
------------------

* Feature - This release adds the TargetMaps parameter in SSM State Manager API.

1.136.0 (2022-04-29)
------------------

* Feature - Update the StartChangeRequestExecution, adding TargetMaps to the Runbook parameter

1.135.0 (2022-04-19)
------------------

* Feature - Added offset support for specifying the number of days to wait after the date and time specified by a CRON expression when creating SSM association.

1.134.0 (2022-03-25)
------------------

* Feature - This Patch Manager release supports creating, updating, and deleting Patch Baselines for Rocky Linux OS.

1.133.0 (2022-03-23)
------------------

* Feature - Update AddTagsToResource, ListTagsForResource, and RemoveTagsFromResource APIs to reflect the support for tagging Automation resources. Includes other minor documentation updates.

1.132.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.131.0 (2022-02-16)
------------------

* Feature - Assorted ticket fixes and updates for AWS Systems Manager.

1.130.0 (2022-02-11)
------------------

* Feature - Documentation updates for AWS Systems Manager.

1.129.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.128.0 (2022-01-13)
------------------

* Feature - AWS Systems Manager adds category support for DescribeDocument API

1.127.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.126.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.125.0 (2021-11-29)
------------------

* Feature - Added two new attributes to DescribeInstanceInformation called SourceId and SourceType along with new string filters SourceIds and SourceTypes to filter instance records.

1.124.0 (2021-11-22)
------------------

* Feature - Adds new parameter to CreateActivation API . This parameter is for "internal use only".

1.123.0 (2021-11-15)
------------------

* Feature - Adds support for Session Reason and Max Session Duration for Systems Manager Session Manager.

1.122.0 (2021-11-12)
------------------

* Feature - This Patch Manager release supports creating Patch Baselines for RaspberryPi OS (formerly Raspbian)

1.121.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.120.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.119.0 (2021-10-01)
------------------

* Feature - When "AutoApprovable" is true for a Change Template, then specifying --auto-approve (boolean) in Start-Change-Request-Execution will create a change request that bypasses approver review. (except for change calendar restrictions)

1.118.0 (2021-09-23)
------------------

* Feature - Added cutoff behavior support for preventing new task invocations from starting when the maintenance window cutoff time is reached.

1.117.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.116.0 (2021-08-24)
------------------

* Feature - Updated Parameter Store property for logging improvements.

1.115.0 (2021-08-09)
------------------

* Feature - Documentation updates for AWS Systems Manager.

1.114.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.113.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.112.0 (2021-07-13)
------------------

* Feature - Changes to OpsCenter APIs to support a new feature, operational insights.

1.111.0 (2021-06-03)
------------------

* Feature - Documentation updates for ssm to fix customer reported issue

1.110.0 (2021-05-10)
------------------

* Feature - This release adds new APIs to associate, disassociate and list related items in SSM OpsCenter; and this release adds DisplayName as a version-level attribute for SSM Documents and introduces two new document types: ProblemAnalysis, ProblemAnalysisTemplate.

1.109.0 (2021-05-06)
------------------

* Feature - SSM feature release - ChangeCalendar integration with StateManager.

1.108.0 (2021-04-06)
------------------

* Feature - Supports removing a label or labels from a parameter, enables ScheduledEndTime and ChangeDetails for StartChangeRequestExecution API, supports critical/security/other noncompliant count for patch API.

1.107.0 (2021-03-24)
------------------

* Feature - This release allows SSM Explorer customers to enable OpsData sources across their organization when creating a resource data sync.

1.106.0 (2021-03-10)
------------------

* Feature - Systems Manager support for tagging OpsMetadata.

1.105.0 (2021-03-01)
------------------

* Feature - Add Support for Patch Manger Baseline Override parameter.

1.104.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.103.0 (2021-01-22)
------------------

* Feature - Documentation updates for the ListDocumentFilters API action.

1.102.0 (2021-01-12)
------------------

* Feature - AWS Systems Manager adds pagination support for DescribeDocumentPermission API

1.101.0 (2020-12-22)
------------------

* Feature - SSM Maintenance Window support for registering/updating maintenance window tasks without targets.

1.100.0 (2020-12-15)
------------------

* Feature - Adding support for Change Manager API content

1.99.0 (2020-12-04)
------------------

* Feature - AWS Systems Manager Patch Manager MAC OS Support and OpsMetadata Store APIs to store operational metadata for an Application.

1.98.0 (2020-11-10)
------------------

* Feature - Add SessionId as a filter for DescribeSessions API

1.97.0 (2020-11-09)
------------------

* Feature - add a new filter to allow customer to filter automation executions by using resource-group which used for execute automation

1.96.0 (2020-11-06)
------------------

* Feature - Documentation updates for Systems Manager

1.95.0 (2020-10-19)
------------------

* Feature - This Patch Manager release now supports Common Vulnerabilities and Exposure (CVE) Ids for missing packages via the DescribeInstancePatches API.

1.94.0 (2020-10-15)
------------------

* Feature - This Patch Manager release now supports searching for available packages from Amazon Linux and Amazon Linux 2 via the DescribeAvailablePatches API.

1.93.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.92.0 (2020-09-29)
------------------

* Feature - Simple update to description of ComplianceItemStatus.

1.91.0 (2020-09-16)
------------------

* Feature - The ComplianceItemEntry Status description was updated to address Windows patches that aren't applicable.

1.90.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.89.0 (2020-09-04)
------------------

* Feature - Documentation-only updates for AWS Systems Manager

1.88.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.87.0 (2020-08-24)
------------------

* Feature - Add string length constraints to OpsDataAttributeName and OpsFilterValue.

1.86.0 (2020-08-03)
------------------

* Feature - Adds a waiter for CommandExecuted and paginators for various other APIs.

1.85.0 (2020-07-27)
------------------

* Feature - Assorted doc ticket-fix updates for Systems Manager.

1.84.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2020-06-18)
------------------

* Feature - Added offset support for specifying the number of days to wait after the date and time specified by a CRON expression before running the maintenance window.

1.81.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.81.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2020-06-04)
------------------

* Feature - SSM State Manager support for executing an association only at specified CRON schedule after creating/updating an association.

1.79.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.78.0 (2020-05-26)
------------------

* Feature - The AWS Systems Manager GetOpsSummary API action now supports multiple OpsResultAttributes in the request. Currently, this feature only supports OpsResultAttributes with the following TypeNames: [AWS:EC2InstanceComputeOptimizer] or [AWS:EC2InstanceInformation, AWS:EC2InstanceComputeOptimizer]. These TypeNames can be used along with either or both of the following: [AWS:EC2InstanceRecommendation, AWS:RecommendationSource]

1.77.0 (2020-05-07)
------------------

* Feature - This Patch Manager release supports creating patch baselines for Oracle Linux and Debian

1.76.0 (2020-05-05)
------------------

* Feature - AWS Systems Manager Parameter Store launches new data type to support aliases in EC2 APIs

1.75.0 (2020-05-01)
------------------

* Feature - Added TimeoutSeconds as part of ListCommands API response.

1.74.0 (2020-04-28)
------------------

* Feature - SSM State Manager support for adding list association filter for Resource Group and manual mode of managing compliance for an association.

1.73.0 (2020-03-16)
------------------

* Feature - Resource data sync for AWS Systems Manager Inventory now includes destination data sharing. This feature enables you to synchronize inventory data from multiple AWS accounts into a central Amazon S3 bucket. To use this feature, all AWS accounts must be listed in AWS Organizations.

1.72.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2020-02-04)
------------------

* Feature - This feature ensures that an instance is patched up to the available patches on a particular date. It can be enabled by selecting the 'ApproveUntilDate' option as the auto-approval rule while creating the patch baseline. ApproveUntilDate - The cutoff date for auto approval of released patches. Any patches released on or before this date will be installed automatically.

1.70.0 (2020-01-15)
------------------

* Feature - Document updates for Patch Manager 'NoReboot' feature.

1.69.0 (2019-12-20)
------------------

* Feature - This release updates the attachments support to include AttachmentReference source for Automation documents.

1.68.0 (2019-12-19)
------------------

* Feature - This release allows customers to add tags to Automation execution, enabling them to sort and filter executions in different ways, such as by resource, purpose, owner, or environment.

1.67.0 (2019-12-17)
------------------

* Feature - Added support for Cloud Watch Output and Document Version to the Run Command tasks in Maintenance Windows.

1.66.0 (2019-12-09)
------------------

* Feature - Adds the SSM GetCalendarState API and ChangeCalendar SSM Document type. These features enable the forthcoming Systems Manager Change Calendar feature, which will allow you to schedule events during which actions should (or should not) be performed.

1.65.0 (2019-11-25)
------------------

* Feature - AWS Systems Manager Documents now supports more Document Types: ApplicationConfiguration, ApplicationConfigurationSchema and DeploymentStrategy. This release also extends Document Permissions capabilities and introduces a new Force flag for DeleteDocument API.

1.64.0 (2019-11-22)
------------------

* Feature - Add RebootOption and LastNoRebootInstallOperationTime for DescribeInstancePatchStates and DescribeInstancePatchStatesForPatchGroup API

1.63.0 (2019-11-21)
------------------

* Feature - The release contains new API and API changes for AWS Systems Manager Explorer product.

1.62.0 (2019-11-18)
------------------

* Feature - The release contains new API and API changes for AWS Systems Manager Explorer product.

1.61.0 (2019-11-15)
------------------

* Feature - This release updates AWS Systems Manager Parameter Store documentation for the enhanced search capability.

1.60.0 (2019-11-14)
------------------

* Feature - Updates support for adding attachments to Systems Manager Automation documents

1.59.0 (2019-11-07)
------------------

* Feature - AWS Systems Manager Session Manager target length increased to 400.

1.58.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2019-10-04)
------------------

* Feature - Documentation updates for Systems Manager / StartSession.

1.56.0 (2019-09-26)
------------------

* Feature - This release updates the AWS Systems Manager Parameter Store PutParameter and LabelParameterVersion APIs to return the "Tier" of parameter created/updated and the "parameter version" labeled respectively.

1.55.0 (2019-08-26)
------------------

* Feature - This feature adds "default tier" to the AWS Systems Manager Parameter Store for parameter creation and update. AWS customers can now set the "default tier" to one of the following values: Standard (default), Advanced or Intelligent-Tiering.  This allows customers to create advanced parameters or parameters in corresponding tiers with one setting rather than code change to specify parameter tiers.

1.54.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2019-07-23)
------------------

* Feature - You can now use Maintenance Windows to select a resource group as the target. By selecting a resource group as the target of a Maintenance Window, customers can perform routine tasks across different resources such as Amazon Elastic Compute Cloud (AmazonEC2) instances, Amazon Elastic Block Store (Amazon EBS) volumes, and Amazon Simple Storage Service(Amazon S3) buckets within the same recurring time window.

1.52.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2019-06-24)
------------------

* Feature - AWS Systems Manager now supports deleting a specific version of a SSM Document.

1.50.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2019-06-06)
------------------

* Feature - OpsCenter is a new Systems Manager capability that allows you to view, diagnose, and remediate, operational issues, aka OpsItems, related to various AWS resources by bringing together contextually relevant investigation information. New APIs to create, update, describe, and get OpsItems as well as OpsItems summary API.

1.48.0 (2019-05-29)
------------------

* Feature - Systems Manager - Documentation updates

1.47.0 (2019-05-21)
------------------

* Feature - API update.

1.46.0 (2019-05-15)
------------------

* Feature - API update.

1.45.0 (2019-05-14)
------------------

* Feature - API update.

1.44.0 (2019-05-07)
------------------

* Feature - API update.

1.43.0 (2019-04-24)
------------------

* Feature - API update.

1.42.0 (2019-04-01)
------------------

* Feature - API update.

1.41.0 (2019-03-21)
------------------

* Feature - API update.

1.40.0 (2019-03-18)
------------------

* Feature - API update.

1.39.0 (2019-03-14)
------------------

* Feature - API update.

1.38.0 (2019-03-04)
------------------

* Feature - API update.

1.37.0 (2019-02-28)
------------------

* Feature - API update.

1.36.0 (2019-02-19)
------------------

* Feature - API update.

1.35.0 (2019-01-21)
------------------

* Feature - API update.

1.34.0 (2018-11-20)
------------------

* Feature - API update.

1.33.0 (2018-11-16)
------------------

* Feature - API update.

1.32.0 (2018-10-26)
------------------

* Feature - API update.

1.31.0 (2018-10-24)
------------------

* Feature - API update.

1.30.0 (2018-10-23)
------------------

* Feature - API update.

1.29.0 (2018-10-19)
------------------

* Feature - API update.

1.28.0 (2018-10-09)
------------------

* Feature - API update.

1.27.0 (2018-10-04)
------------------

* Feature - API update.

1.26.0 (2018-09-11)
------------------

* Feature - API update.

1.25.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.24.0 (2018-09-05)
------------------

* Feature - API update.

1.23.0 (2018-08-16)
------------------

* Feature - API update.

1.22.0 (2018-08-08)
------------------

* Feature - API update.

1.21.0 (2018-08-07)
------------------

* Feature - API update.

1.20.0 (2018-08-02)
------------------

* Feature - API update.

1.19.0 (2018-07-26)
------------------

* Feature - API update.

1.18.0 (2018-07-11)
------------------

* Feature - API update.

1.17.0 (2018-07-02)
------------------

* Feature - API update.

1.16.0 (2018-06-26)
------------------

* Feature - API update.

1.15.0 (2018-06-21)
------------------

* Feature - API update.

1.14.0 (2018-06-13)
------------------

* Feature - API update.

1.13.0 (2018-05-02)
------------------

* Feature - API update.

1.12.0 (2018-04-19)
------------------

* Feature - API update.

1.11.0 (2018-04-10)
------------------

* Feature - API update.

1.10.0 (2018-04-05)
------------------

* Feature - API update.

1.9.0 (2018-03-29)
------------------

* Feature - API update.

1.8.0 (2018-03-01)
------------------

* Feature - API update.

1.7.0 (2018-02-06)
------------------

* Feature - API update.

1.6.0 (2018-01-05)
------------------

* Feature - API update.

1.5.0 (2017-11-30)
------------------

* Feature - API update.

1.4.0 (2017-11-15)
------------------

* Feature - API update.

1.3.0 (2017-10-19)
------------------

* Feature - API update.

1.2.0 (2017-10-03)
------------------

* Feature - API update.

1.1.0 (2017-09-01)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-ssm` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc15 (2017-08-22)
------------------

* Feature - API update.

1.0.0.rc14 (2017-08-14)
------------------

* Feature - API update.

1.0.0.rc13 (2017-07-31)
------------------

* Feature - API update.

1.0.0.rc12 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc11 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc9 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc8 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc7 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc4 (2017-04-21)
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

* Feature - Initial preview release of the `aws-sdk-ssm` gem.
