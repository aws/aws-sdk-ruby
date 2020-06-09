Unreleased Changes
------------------

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

