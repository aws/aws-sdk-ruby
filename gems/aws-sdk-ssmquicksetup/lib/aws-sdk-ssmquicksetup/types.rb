# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSMQuickSetup
  module Types

    # The requester has insufficient permissions to perform the operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of a Quick Setup configuration.
    #
    # @!attribute [rw] id
    #   The ID of the configuration definition.
    #   @return [String]
    #
    # @!attribute [rw] local_deployment_administration_role_arn
    #   The ARN of the IAM role used to administrate local configuration
    #   deployments.
    #   @return [String]
    #
    # @!attribute [rw] local_deployment_execution_role_name
    #   The name of the IAM role used to deploy local configurations.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of key-value pairs containing the required parameters for the
    #   configuration type.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the Quick Setup configuration.
    #   @return [String]
    #
    # @!attribute [rw] type_version
    #   The version of the Quick Setup type used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ConfigurationDefinition AWS API Documentation
    #
    class ConfigurationDefinition < Struct.new(
      :id,
      :local_deployment_administration_role_arn,
      :local_deployment_execution_role_name,
      :parameters,
      :type,
      :type_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the preferences and options for a configuration definition.
    #
    # @!attribute [rw] local_deployment_administration_role_arn
    #   The ARN of the IAM role used to administrate local configuration
    #   deployments.
    #   @return [String]
    #
    # @!attribute [rw] local_deployment_execution_role_name
    #   The name of the IAM role used to deploy local configurations.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the configuration definition type. Parameters for
    #   configuration definitions vary based the configuration type. The
    #   following tables outline the parameters for each configuration type.
    #
    #   OpsCenter (Type: Amazon Web ServicesQuickSetupType-SSMOpsCenter)
    #   : * `DelegatedAccountId`
    #
    #       * Description: (Required) The ID of the delegated administrator
    #         account.
    #
    #       ^
    #
    #     * `TargetOrganizationalUnits`
    #
    #       * Description: (Required) A comma separated list of
    #         organizational units (OUs) you want to deploy the
    #         configuration to.
    #
    #       ^
    #
    #     * `TargetRegions`
    #
    #       * Description: (Required) A comma separated list of Amazon Web
    #         Services Regions you want to deploy the configuration to.
    #
    #       ^
    #
    #   Resource Scheduler (Type: Amazon Web ServicesQuickSetupType-Scheduler)
    #   : * `TargetTagKey`
    #
    #       * Description: (Required) The tag key assigned to the instances
    #         you want to target.
    #
    #       ^
    #
    #     * `TargetTagValue`
    #
    #       * Description: (Required) The value of the tag key assigned to
    #         the instances you want to target.
    #
    #       ^
    #
    #     * `ICalendarString`
    #
    #       * Description: (Required) An iCalendar formatted string
    #         containing the schedule you want Change Manager to use.
    #
    #       ^
    #
    #     * `TargetAccounts`
    #
    #       * Description: (Optional) The ID of the Amazon Web Services
    #         account initiating the configuration deployment. You only need
    #         to provide a value for this parameter if you want to deploy
    #         the configuration locally. A value must be provided for either
    #         `TargetAccounts` or `TargetOrganizationalUnits`.
    #
    #       ^
    #
    #     * `TargetOrganizationalUnits`
    #
    #       * Description: (Optional) A comma separated list of
    #         organizational units (OUs) you want to deploy the
    #         configuration to.
    #
    #       ^
    #
    #     * `TargetRegions`
    #
    #       * Description: (Required) A comma separated list of Amazon Web
    #         Services Regions you want to deploy the configuration to.
    #
    #       ^
    #
    #   Default Host Management Configuration (Type: Amazon Web ServicesQuickSetupType-DHMC)
    #   : * `UpdateSSMAgent`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether the SSM Agent is updated on the target instances every
    #         2 weeks. The default value is "`true`".
    #
    #       ^
    #
    #     * `TargetOrganizationalUnits`
    #
    #       * Description: (Required) A comma separated list of
    #         organizational units (OUs) you want to deploy the
    #         configuration to.
    #
    #       ^
    #
    #     * `TargetRegions`
    #
    #       * Description: (Required) A comma separated list of Amazon Web
    #         Services Regions you want to deploy the configuration to.
    #
    #       ^
    #
    #   Resource Explorer (Type: Amazon Web ServicesQuickSetupType-ResourceExplorer)
    #   : * `SelectedAggregatorRegion`
    #
    #       * Description: (Required) The Amazon Web Services Region where
    #         you want to create the aggregator index.
    #
    #       ^
    #
    #     * `ReplaceExistingAggregator`
    #
    #       * Description: (Required) A boolean value that determines
    #         whether to demote an existing aggregator if it is in a Region
    #         that differs from the value you specify for the
    #         `SelectedAggregatorRegion`.
    #
    #       ^
    #
    #     * `TargetOrganizationalUnits`
    #
    #       * Description: (Required) A comma separated list of
    #         organizational units (OUs) you want to deploy the
    #         configuration to.
    #
    #       ^
    #
    #     * `TargetRegions`
    #
    #       * Description: (Required) A comma separated list of Amazon Web
    #         Services Regions you want to deploy the configuration to.
    #
    #       ^
    #
    #   Change Manager (Type: Amazon Web ServicesQuickSetupType-SSMChangeMgr)
    #   : * `DelegatedAccountId`
    #
    #       * Description: (Required) The ID of the delegated administrator
    #         account.
    #
    #       ^
    #
    #     * `JobFunction`
    #
    #       * Description: (Required) The name for the Change Manager job
    #         function.
    #
    #       ^
    #
    #     * `PermissionType`
    #
    #       * Description: (Optional) Specifies whether you want to use
    #         default administrator permissions for the job function role,
    #         or provide a custom IAM policy. The valid values are
    #         `CustomPermissions` and `AdminPermissions`. The default value
    #         for the parameter is `CustomerPermissions`.
    #
    #       ^
    #
    #     * `CustomPermissions`
    #
    #       * Description: (Optional) A JSON string containing the IAM
    #         policy you want your job function to use. You must provide a
    #         value for this parameter if you specify `CustomPermissions`
    #         for the `PermissionType` parameter.
    #
    #       ^
    #
    #     * `TargetOrganizationalUnits`
    #
    #       * Description: (Required) A comma separated list of
    #         organizational units (OUs) you want to deploy the
    #         configuration to.
    #
    #       ^
    #
    #     * `TargetRegions`
    #
    #       * Description: (Required) A comma separated list of Amazon Web
    #         Services Regions you want to deploy the configuration to.
    #
    #       ^
    #
    #   DevOps Guru (Type: Amazon Web ServicesQuickSetupType-DevOpsGuru)
    #   : * `AnalyseAllResources`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether DevOps Guru analyzes all CloudFormation stacks in the
    #         account. The default value is "`false`".
    #
    #       ^
    #
    #     * `EnableSnsNotifications`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether DevOps Guru sends notifications when an insight is
    #         created. The default value is "`true`".
    #
    #       ^
    #
    #     * `EnableSsmOpsItems`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether DevOps Guru creates an OpsCenter OpsItem when an
    #         insight is created. The default value is "`true`".
    #
    #       ^
    #
    #     * `EnableDriftRemediation`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether a drift remediation schedule is used. The default
    #         value is "`false`".
    #
    #       ^
    #
    #     * `RemediationSchedule`
    #
    #       * Description: (Optional) A rate expression that defines the
    #         schedule for drift remediation. The valid values are `rate(30
    #         days)`, `rate(14 days)`, `rate(1 days)`, and `none`. The
    #         default value is "`none`".
    #
    #       ^
    #
    #     * `TargetAccounts`
    #
    #       * Description: (Optional) The ID of the Amazon Web Services
    #         account initiating the configuration deployment. You only need
    #         to provide a value for this parameter if you want to deploy
    #         the configuration locally. A value must be provided for either
    #         `TargetAccounts` or `TargetOrganizationalUnits`.
    #
    #       ^
    #
    #     * `TargetOrganizationalUnits`
    #
    #       * Description: (Optional) A comma separated list of
    #         organizational units (OUs) you want to deploy the
    #         configuration to.
    #
    #       ^
    #
    #     * `TargetRegions`
    #
    #       * Description: (Required) A comma separated list of Amazon Web
    #         Services Regions you want to deploy the configuration to.
    #
    #       ^
    #
    #   Conformance Packs (Type: Amazon Web ServicesQuickSetupType-CFGCPacks)
    #   : * `DelegatedAccountId`
    #
    #       * Description: (Optional) The ID of the delegated administrator
    #         account. This parameter is required for Organization
    #         deployments.
    #
    #       ^
    #
    #     * `RemediationSchedule`
    #
    #       * Description: (Optional) A rate expression that defines the
    #         schedule for drift remediation. The valid values are `rate(30
    #         days)`, `rate(14 days)`, `rate(2 days)`, and `none`. The
    #         default value is "`none`".
    #
    #       ^
    #
    #     * `CPackNames`
    #
    #       * Description: (Required) A comma separated list of Config
    #         conformance packs.
    #
    #       ^
    #
    #     * `TargetAccounts`
    #
    #       * Description: (Optional) The ID of the Amazon Web Services
    #         account initiating the configuration deployment. You only need
    #         to provide a value for this parameter if you want to deploy
    #         the configuration locally. A value must be provided for either
    #         `TargetAccounts` or `TargetOrganizationalUnits`.
    #
    #       ^
    #
    #     * `TargetOrganizationalUnits`
    #
    #       * Description: (Optional) The ID of the root of your
    #         Organization. This configuration type doesn't currently
    #         support choosing specific OUs. The configuration will be
    #         deployed to all the OUs in the Organization.
    #
    #       ^
    #
    #     * `TargetRegions`
    #
    #       * Description: (Required) A comma separated list of Amazon Web
    #         Services Regions you want to deploy the configuration to.
    #
    #       ^
    #
    #   Config Recording (Type: Amazon Web ServicesQuickSetupType-CFGRecording)
    #   : * `RecordAllResources`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether all supported resources are recorded. The default
    #         value is "`true`".
    #
    #       ^
    #
    #     * `ResourceTypesToRecord`
    #
    #       * Description: (Optional) A comma separated list of resource
    #         types you want to record.
    #
    #       ^
    #
    #     * `RecordGlobalResourceTypes`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether global resources are recorded with all resource
    #         configurations. The default value is "`false`".
    #
    #       ^
    #
    #     * `GlobalResourceTypesRegion`
    #
    #       * Description: (Optional) Determines the Amazon Web Services
    #         Region where global resources are recorded.
    #
    #       ^
    #
    #     * `UseCustomBucket`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether a custom Amazon S3 bucket is used for delivery. The
    #         default value is "`false`".
    #
    #       ^
    #
    #     * `DeliveryBucketName`
    #
    #       * Description: (Optional) The name of the Amazon S3 bucket you
    #         want Config to deliver configuration snapshots and
    #         configuration history files to.
    #
    #       ^
    #
    #     * `DeliveryBucketPrefix`
    #
    #       * Description: (Optional) The key prefix you want to use in the
    #         custom Amazon S3 bucket.
    #
    #       ^
    #
    #     * `NotificationOptions`
    #
    #       * Description: (Optional) Determines the notification
    #         configuration for the recorder. The valid values are
    #         `NoStreaming`, `UseExistingTopic`, and `CreateTopic`. The
    #         default value is `NoStreaming`.
    #
    #       ^
    #
    #     * `CustomDeliveryTopicAccountId`
    #
    #       * Description: (Optional) The ID of the Amazon Web Services
    #         account where the Amazon SNS topic you want to use for
    #         notifications resides. You must specify a value for this
    #         parameter if you use the `UseExistingTopic` notification
    #         option.
    #
    #       ^
    #
    #     * `CustomDeliveryTopicName`
    #
    #       * Description: (Optional) The name of the Amazon SNS topic you
    #         want to use for notifications. You must specify a value for
    #         this parameter if you use the `UseExistingTopic` notification
    #         option.
    #
    #       ^
    #
    #     * `RemediationSchedule`
    #
    #       * Description: (Optional) A rate expression that defines the
    #         schedule for drift remediation. The valid values are `rate(30
    #         days)`, `rate(7 days)`, `rate(1 days)`, and `none`. The
    #         default value is "`none`".
    #
    #       ^
    #
    #     * `TargetAccounts`
    #
    #       * Description: (Optional) The ID of the Amazon Web Services
    #         account initiating the configuration deployment. You only need
    #         to provide a value for this parameter if you want to deploy
    #         the configuration locally. A value must be provided for either
    #         `TargetAccounts` or `TargetOrganizationalUnits`.
    #
    #       ^
    #
    #     * `TargetOrganizationalUnits`
    #
    #       * Description: (Optional) The ID of the root of your
    #         Organization. This configuration type doesn't currently
    #         support choosing specific OUs. The configuration will be
    #         deployed to all the OUs in the Organization.
    #
    #       ^
    #
    #     * `TargetRegions`
    #
    #       * Description: (Required) A comma separated list of Amazon Web
    #         Services Regions you want to deploy the configuration to.
    #
    #       ^
    #
    #   Host Management (Type: Amazon Web ServicesQuickSetupType-SSMHostMgmt)
    #   : * `UpdateSSMAgent`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether the SSM Agent is updated on the target instances every
    #         2 weeks. The default value is "`true`".
    #
    #       ^
    #
    #     * `UpdateEc2LaunchAgent`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether the EC2 Launch agent is updated on the target
    #         instances every month. The default value is "`false`".
    #
    #       ^
    #
    #     * `CollectInventory`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether the EC2 Launch agent is updated on the target
    #         instances every month. The default value is "`true`".
    #
    #       ^
    #
    #     * `ScanInstances`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether the target instances are scanned daily for available
    #         patches. The default value is "`true`".
    #
    #       ^
    #
    #     * `InstallCloudWatchAgent`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether the Amazon CloudWatch agent is installed on the target
    #         instances. The default value is "`false`".
    #
    #       ^
    #
    #     * `UpdateCloudWatchAgent`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether the Amazon CloudWatch agent is updated on the target
    #         instances every month. The default value is "`false`".
    #
    #       ^
    #
    #     * `IsPolicyAttachAllowed`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether Quick Setup attaches policies to instances profiles
    #         already associated with the target instances. The default
    #         value is "`false`".
    #
    #       ^
    #
    #     * `TargetType`
    #
    #       * Description: (Optional) Determines how instances are targeted
    #         for local account deployments. Don't specify a value for this
    #         parameter if you're deploying to OUs. The valid values are
    #         `*`, `InstanceIds`, `ResourceGroups`, and `Tags`. Use `*` to
    #         target all instances in the account.
    #
    #       ^
    #
    #     * `TargetInstances`
    #
    #       * Description: (Optional) A comma separated list of instance
    #         IDs. You must provide a value for this parameter if you
    #         specify `InstanceIds` for the `TargetType` parameter.
    #
    #       ^
    #
    #     * `TargetTagKey`
    #
    #       * Description: (Optional) The tag key assigned to the instances
    #         you want to target. You must provide a value for this
    #         parameter if you specify `Tags` for the `TargetType`
    #         parameter.
    #
    #       ^
    #
    #     * `TargetTagValue`
    #
    #       * Description: (Optional) The value of the tag key assigned to
    #         the instances you want to target. You must provide a value for
    #         this parameter if you specify `Tags` for the `TargetType`
    #         parameter.
    #
    #       ^
    #
    #     * `ResourceGroupName`
    #
    #       * Description: (Optional) The name of the resource group
    #         associated with the instances you want to target. You must
    #         provide a value for this parameter if you specify
    #         `ResourceGroups` for the `TargetType` parameter.
    #
    #       ^
    #
    #     * `TargetAccounts`
    #
    #       * Description: (Optional) The ID of the Amazon Web Services
    #         account initiating the configuration deployment. You only need
    #         to provide a value for this parameter if you want to deploy
    #         the configuration locally. A value must be provided for either
    #         `TargetAccounts` or `TargetOrganizationalUnits`.
    #
    #       ^
    #
    #     * `TargetOrganizationalUnits`
    #
    #       * Description: (Optional) A comma separated list of
    #         organizational units (OUs) you want to deploy the
    #         configuration to.
    #
    #       ^
    #
    #     * `TargetRegions`
    #
    #       * Description: (Required) A comma separated list of Amazon Web
    #         Services Regions you want to deploy the configuration to.
    #
    #       ^
    #
    #   Distributor (Type: Amazon Web ServicesQuickSetupType-Distributor)
    #   : * `PackagesToInstall`
    #
    #       * Description: (Required) A comma separated list of packages you
    #         want to install on the target instances. The valid values are
    #         `AWSEFSTools`, `AWSCWAgent`, and `AWSEC2LaunchAgent`.
    #
    #       ^
    #
    #     * `RemediationSchedule`
    #
    #       * Description: (Optional) A rate expression that defines the
    #         schedule for drift remediation. The valid values are `rate(30
    #         days)`, `rate(14 days)`, `rate(2 days)`, and `none`. The
    #         default value is "`rate(30 days)`".
    #
    #       ^
    #
    #     * `IsPolicyAttachAllowed`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether Quick Setup attaches policies to instances profiles
    #         already associated with the target instances. The default
    #         value is "`false`".
    #
    #       ^
    #
    #     * `TargetType`
    #
    #       * Description: (Optional) Determines how instances are targeted
    #         for local account deployments. Don't specify a value for this
    #         parameter if you're deploying to OUs. The valid values are
    #         `*`, `InstanceIds`, `ResourceGroups`, and `Tags`. Use `*` to
    #         target all instances in the account.
    #
    #       ^
    #
    #     * `TargetInstances`
    #
    #       * Description: (Optional) A comma separated list of instance
    #         IDs. You must provide a value for this parameter if you
    #         specify `InstanceIds` for the `TargetType` parameter.
    #
    #       ^
    #
    #     * `TargetTagKey`
    #
    #       * Description: (Required) The tag key assigned to the instances
    #         you want to target. You must provide a value for this
    #         parameter if you specify `Tags` for the `TargetType`
    #         parameter.
    #
    #       ^
    #
    #     * `TargetTagValue`
    #
    #       * Description: (Required) The value of the tag key assigned to
    #         the instances you want to target. You must provide a value for
    #         this parameter if you specify `Tags` for the `TargetType`
    #         parameter.
    #
    #       ^
    #
    #     * `ResourceGroupName`
    #
    #       * Description: (Required) The name of the resource group
    #         associated with the instances you want to target. You must
    #         provide a value for this parameter if you specify
    #         `ResourceGroups` for the `TargetType` parameter.
    #
    #       ^
    #
    #     * `TargetAccounts`
    #
    #       * Description: (Optional) The ID of the Amazon Web Services
    #         account initiating the configuration deployment. You only need
    #         to provide a value for this parameter if you want to deploy
    #         the configuration locally. A value must be provided for either
    #         `TargetAccounts` or `TargetOrganizationalUnits`.
    #
    #       ^
    #
    #     * `TargetOrganizationalUnits`
    #
    #       * Description: (Optional) A comma separated list of
    #         organizational units (OUs) you want to deploy the
    #         configuration to.
    #
    #       ^
    #
    #     * `TargetRegions`
    #
    #       * Description: (Required) A comma separated list of Amazon Web
    #         Services Regions you want to deploy the configuration to.
    #
    #       ^
    #
    #   Patch Policy (Type: Amazon Web ServicesQuickSetupType-PatchPolicy)
    #   : * `PatchPolicyName`
    #
    #       * Description: (Required) A name for the patch policy. The value
    #         you provide is applied to target Amazon EC2 instances as a
    #         tag.
    #
    #       ^
    #
    #     * `SelectedPatchBaselines`
    #
    #       * Description: (Required) An array of JSON objects containing
    #         the information for the patch baselines to include in your
    #         patch policy.
    #
    #       ^
    #
    #     * `PatchBaselineUseDefault`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether the selected patch baselines are all Amazon Web
    #         Services provided.
    #
    #       ^
    #
    #     * `ConfigurationOptionsPatchOperation`
    #
    #       * Description: (Optional) Determines whether target instances
    #         scan for available patches, or scan and install available
    #         patches. The valid values are `Scan` and `ScanAndInstall`. The
    #         default value for the parameter is `Scan`.
    #
    #       ^
    #
    #     * `ConfigurationOptionsScanValue`
    #
    #       * Description: (Optional) A cron expression that is used as the
    #         schedule for when instances scan for available patches.
    #
    #       ^
    #
    #     * `ConfigurationOptionsInstallValue`
    #
    #       * Description: (Optional) A cron expression that is used as the
    #         schedule for when instances install available patches.
    #
    #       ^
    #
    #     * `ConfigurationOptionsScanNextInterval`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether instances should scan for available patches at the
    #         next cron interval. The default value is "`false`".
    #
    #       ^
    #
    #     * `ConfigurationOptionsInstallNextInterval`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether instances should scan for available patches at the
    #         next cron interval. The default value is "`false`".
    #
    #       ^
    #
    #     * `RebootOption`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether instances are rebooted after patches are installed.
    #         The default value is "`false`".
    #
    #       ^
    #
    #     * `IsPolicyAttachAllowed`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether Quick Setup attaches policies to instances profiles
    #         already associated with the target instances. The default
    #         value is "`false`".
    #
    #       ^
    #
    #     * `OutputLogEnableS3`
    #
    #       * Description: (Optional) A boolean value that determines
    #         whether command output logs are sent to Amazon S3.
    #
    #       ^
    #
    #     * `OutputS3Location`
    #
    #       * Description: (Optional) A JSON string containing information
    #         about the Amazon S3 bucket where you want to store the output
    #         details of the request.
    #
    #         * `OutputS3BucketRegion`
    #
    #           * Description: (Optional) The Amazon Web Services Region
    #             where the Amazon S3 bucket you want Config to deliver
    #             command output to is located.
    #
    #           ^
    #
    #         * `OutputS3BucketName`
    #
    #           * Description: (Optional) The name of the Amazon S3 bucket
    #             you want Config to deliver command output to.
    #
    #           ^
    #
    #         * `OutputS3KeyPrefix`
    #
    #           * Description: (Optional) The key prefix you want to use in
    #             the custom Amazon S3 bucket.
    #
    #           ^
    #
    #     * `TargetType`
    #
    #       * Description: (Optional) Determines how instances are targeted
    #         for local account deployments. Don't specify a value for this
    #         parameter if you're deploying to OUs. The valid values are
    #         `*`, `InstanceIds`, `ResourceGroups`, and `Tags`. Use `*` to
    #         target all instances in the account.
    #
    #       ^
    #
    #     * `TargetInstances`
    #
    #       * Description: (Optional) A comma separated list of instance
    #         IDs. You must provide a value for this parameter if you
    #         specify `InstanceIds` for the `TargetType` parameter.
    #
    #       ^
    #
    #     * `TargetTagKey`
    #
    #       * Description: (Required) The tag key assigned to the instances
    #         you want to target. You must provide a value for this
    #         parameter if you specify `Tags` for the `TargetType`
    #         parameter.
    #
    #       ^
    #
    #     * `TargetTagValue`
    #
    #       * Description: (Required) The value of the tag key assigned to
    #         the instances you want to target. You must provide a value for
    #         this parameter if you specify `Tags` for the `TargetType`
    #         parameter.
    #
    #       ^
    #
    #     * `ResourceGroupName`
    #
    #       * Description: (Required) The name of the resource group
    #         associated with the instances you want to target. You must
    #         provide a value for this parameter if you specify
    #         `ResourceGroups` for the `TargetType` parameter.
    #
    #       ^
    #
    #     * `TargetAccounts`
    #
    #       * Description: (Optional) The ID of the Amazon Web Services
    #         account initiating the configuration deployment. You only need
    #         to provide a value for this parameter if you want to deploy
    #         the configuration locally. A value must be provided for either
    #         `TargetAccounts` or `TargetOrganizationalUnits`.
    #
    #       ^
    #
    #     * `TargetOrganizationalUnits`
    #
    #       * Description: (Optional) A comma separated list of
    #         organizational units (OUs) you want to deploy the
    #         configuration to.
    #
    #       ^
    #
    #     * `TargetRegions`
    #
    #       * Description: (Required) A comma separated list of Amazon Web
    #         Services Regions you want to deploy the configuration to.
    #
    #       ^
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the Quick Setup configuration.
    #   @return [String]
    #
    # @!attribute [rw] type_version
    #   The version of the Quick Setup type to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ConfigurationDefinitionInput AWS API Documentation
    #
    class ConfigurationDefinitionInput < Struct.new(
      :local_deployment_administration_role_arn,
      :local_deployment_execution_role_name,
      :parameters,
      :type,
      :type_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summarized definition of a Quick Setup configuration definition.
    #
    # @!attribute [rw] first_class_parameters
    #   The common parameters and values for the configuration definition.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] id
    #   The ID of the configuration definition.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Quick Setup configuration used by the configuration
    #   definition.
    #   @return [String]
    #
    # @!attribute [rw] type_version
    #   The version of the Quick Setup type used by the configuration
    #   definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ConfigurationDefinitionSummary AWS API Documentation
    #
    class ConfigurationDefinitionSummary < Struct.new(
      :first_class_parameters,
      :id,
      :type,
      :type_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a Quick Setup configuration manager.
    #
    # @!attribute [rw] configuration_definition_summaries
    #   A summary of the Quick Setup configuration definition.
    #   @return [Array<Types::ConfigurationDefinitionSummary>]
    #
    # @!attribute [rw] description
    #   The description of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] manager_arn
    #   The ARN of the Quick Setup configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configuration
    #   @return [String]
    #
    # @!attribute [rw] status_summaries
    #   Summaries of the state of the configuration manager. These summaries
    #   include an aggregate of the statuses from the configuration
    #   definition associated with the configuration manager. This includes
    #   deployment statuses, association statuses, drift statuses, health
    #   checks, and more.
    #   @return [Array<Types::StatusSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ConfigurationManagerSummary AWS API Documentation
    #
    class ConfigurationManagerSummary < Struct.new(
      :configuration_definition_summaries,
      :description,
      :manager_arn,
      :name,
      :status_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Another request is being processed. Wait a few minutes and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_definitions
    #   The definition of the Quick Setup configuration that the
    #   configuration manager deploys.
    #   @return [Array<Types::ConfigurationDefinitionInput>]
    #
    # @!attribute [rw] description
    #   A description of the configuration manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the configuration manager.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs of metadata to assign to the configuration manager.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/CreateConfigurationManagerInput AWS API Documentation
    #
    class CreateConfigurationManagerInput < Struct.new(
      :configuration_definitions,
      :description,
      :name,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] manager_arn
    #   The ARN for the newly created configuration manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/CreateConfigurationManagerOutput AWS API Documentation
    #
    class CreateConfigurationManagerOutput < Struct.new(
      :manager_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] manager_arn
    #   The ID of the configuration manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/DeleteConfigurationManagerInput AWS API Documentation
    #
    class DeleteConfigurationManagerInput < Struct.new(
      :manager_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair to filter results.
    #
    # @!attribute [rw] key
    #   The key for the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values for the filter keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] manager_arn
    #   The ARN of the configuration manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/GetConfigurationManagerInput AWS API Documentation
    #
    class GetConfigurationManagerInput < Struct.new(
      :manager_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_definitions
    #   The configuration definitions association with the configuration
    #   manager.
    #   @return [Array<Types::ConfigurationDefinition>]
    #
    # @!attribute [rw] created_at
    #   The datetime stamp when the configuration manager was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the configuration manager.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The datetime stamp when the configuration manager was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] manager_arn
    #   The ARN of the configuration manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the configuration manager.
    #   @return [String]
    #
    # @!attribute [rw] status_summaries
    #   A summary of the state of the configuration manager. This includes
    #   deployment statuses, association statuses, drift statuses, health
    #   checks, and more.
    #   @return [Array<Types::StatusSummary>]
    #
    # @!attribute [rw] tags
    #   Key-value pairs of metadata to assign to the configuration manager.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/GetConfigurationManagerOutput AWS API Documentation
    #
    class GetConfigurationManagerOutput < Struct.new(
      :configuration_definitions,
      :created_at,
      :description,
      :last_modified_at,
      :manager_arn,
      :name,
      :status_summaries,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] service_settings
    #   Returns details about the settings for Quick Setup in the requesting
    #   Amazon Web Services account and Amazon Web Services Region.
    #   @return [Types::ServiceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/GetServiceSettingsOutput AWS API Documentation
    #
    class GetServiceSettingsOutput < Struct.new(
      :service_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred on the server side.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters the results returned by the request.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_items
    #   Specifies the maximum number of configuration managers that are
    #   returned by the request.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_token
    #   The token to use when requesting a specific set of items from a
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ListConfigurationManagersInput AWS API Documentation
    #
    class ListConfigurationManagersInput < Struct.new(
      :filters,
      :max_items,
      :starting_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_managers_list
    #   The configuration managers returned by the request.
    #   @return [Array<Types::ConfigurationManagerSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of configuration
    #   managers. If there are no additional operations to return, the
    #   string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ListConfigurationManagersOutput AWS API Documentation
    #
    class ListConfigurationManagersOutput < Struct.new(
      :configuration_managers_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quick_setup_type_list
    #   An array of Quick Setup types.
    #   @return [Array<Types::QuickSetupTypeOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ListQuickSetupTypesOutput AWS API Documentation
    #
    class ListQuickSetupTypesOutput < Struct.new(
      :quick_setup_type_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource the tag is assigned to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Key-value pairs of metadata assigned to the resource.
    #   @return [Array<Types::TagEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Information about the Quick Setup type.
    #
    # @!attribute [rw] latest_version
    #   The latest version number of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Quick Setup configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/QuickSetupTypeOutput AWS API Documentation
    #
    class QuickSetupTypeOutput < Struct.new(
      :latest_version,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource couldn't be found. Check the ID or name and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings configured for Quick Setup.
    #
    # @!attribute [rw] explorer_enabling_role_arn
    #   The IAM role used to enable Explorer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ServiceSettings AWS API Documentation
    #
    class ServiceSettings < Struct.new(
      :explorer_enabling_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summarized description of the status.
    #
    # @!attribute [rw] last_updated_at
    #   The datetime stamp when the status was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details about the status.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status_message
    #   When applicable, returns an informational message relevant to the
    #   current status and status type of the status summary object. We
    #   don't recommend implementing parsing logic around this value since
    #   the messages returned can vary in format.
    #   @return [String]
    #
    # @!attribute [rw] status_type
    #   The type of a status summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/StatusSummary AWS API Documentation
    #
    class StatusSummary < Struct.new(
      :last_updated_at,
      :status,
      :status_details,
      :status_message,
      :status_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Key-value pairs of metadata.
    #
    # @!attribute [rw] key
    #   The key for the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/TagEntry AWS API Documentation
    #
    class TagEntry < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs of metadata to assign to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # The request or operation exceeds the maximum allowed request rate per
    # Amazon Web Services account and Amazon Web Services Region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the configuration definition you want to update.
    #   @return [String]
    #
    # @!attribute [rw] local_deployment_administration_role_arn
    #   The ARN of the IAM role used to administrate local configuration
    #   deployments.
    #   @return [String]
    #
    # @!attribute [rw] local_deployment_execution_role_name
    #   The name of the IAM role used to deploy local configurations.
    #   @return [String]
    #
    # @!attribute [rw] manager_arn
    #   The ARN of the configuration manager associated with the definition
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the configuration definition type.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type_version
    #   The version of the Quick Setup type to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/UpdateConfigurationDefinitionInput AWS API Documentation
    #
    class UpdateConfigurationDefinitionInput < Struct.new(
      :id,
      :local_deployment_administration_role_arn,
      :local_deployment_execution_role_name,
      :manager_arn,
      :parameters,
      :type_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the configuration manager.
    #   @return [String]
    #
    # @!attribute [rw] manager_arn
    #   The ARN of the configuration manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the configuration manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/UpdateConfigurationManagerInput AWS API Documentation
    #
    class UpdateConfigurationManagerInput < Struct.new(
      :description,
      :manager_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] explorer_enabling_role_arn
    #   The IAM role used to enable Explorer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/UpdateServiceSettingsInput AWS API Documentation
    #
    class UpdateServiceSettingsInput < Struct.new(
      :explorer_enabling_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is invalid. Verify the values provided for the request
    # parameters are accurate.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
