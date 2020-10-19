# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Backup
  module Types

    # A list of backup options for each resource type.
    #
    # @note When making an API call, you may pass AdvancedBackupSetting
    #   data as a hash:
    #
    #       {
    #         resource_type: "ResourceType",
    #         backup_options: {
    #           "BackupOptionKey" => "BackupOptionValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource to be backed up. For VSS Windows backups,
    #   the only supported resource type is Amazon EC2.
    #
    #   Valid values: `EC2`.
    #   @return [String]
    #
    # @!attribute [rw] backup_options
    #   Specifies the backup option for a selected resource. This option is
    #   only available for Windows VSS backup jobs.
    #
    #   Valid values: Set to `"WindowsVSS”:“enabled"` to enable WindowsVSS
    #   backup option and create a VSS Windows backup. Set to
    #   “WindowsVSS”:”disabled” to create a regular backup. The WindowsVSS
    #   option is not enabled by default.
    #
    #   If you specify an invalid option, you get an
    #   `InvalidParameterValueException` exception.
    #
    #   For more information about Windows VSS backups, see [Creating a
    #   VSS-Enabled Windows Backup][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/windows-backups.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/AdvancedBackupSetting AWS API Documentation
    #
    class AdvancedBackupSetting < Struct.new(
      :resource_type,
      :backup_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The required resource already exists.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] context
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/AlreadyExistsException AWS API Documentation
    #
    class AlreadyExistsException < Struct.new(
      :code,
      :message,
      :creator_request_id,
      :arn,
      :type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about a backup job.
    #
    # @!attribute [rw] account_id
    #   The account ID that owns the backup job.
    #   @return [String]
    #
    # @!attribute [rw] backup_job_id
    #   Uniquely identifies a request to AWS Backup to back up a resource.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a backup job is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   The date and time a job to create a backup job is completed, in Unix
    #   format and Coordinated Universal Time (UTC). The value of
    #   `CompletionDate` is accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The current state of a resource recovery point.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed message explaining the status of the job to back up a
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] percent_done
    #   Contains an estimated percentage complete of a job at the time the
    #   job status was queried.
    #   @return [String]
    #
    # @!attribute [rw] backup_size_in_bytes
    #   The size, in bytes, of a backup.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role_arn
    #   Specifies the IAM role ARN used to create the target recovery point;
    #   for example, `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Contains identifying information about the creation of a backup job,
    #   including the `BackupPlanArn`, `BackupPlanId`, `BackupPlanVersion`,
    #   and `BackupRuleId` of the backup plan used to create it.
    #   @return [Types::RecoveryPointCreator]
    #
    # @!attribute [rw] expected_completion_date
    #   The date and time a job to back up resources is expected to be
    #   completed, in Unix format and Coordinated Universal Time (UTC). The
    #   value of `ExpectedCompletionDate` is accurate to milliseconds. For
    #   example, the value 1516925490.087 represents Friday, January 26,
    #   2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] start_by
    #   Specifies the time in Unix format and Coordinated Universal Time
    #   (UTC) when a backup job must be started before it is canceled. The
    #   value is calculated by adding the start window to the scheduled
    #   time. So if the scheduled time were 6:00 PM and the start window is
    #   2 hours, the `StartBy` time would be 8:00 PM on the date specified.
    #   The value of `StartBy` is accurate to milliseconds. For example, the
    #   value 1516925490.087 represents Friday, January 26, 2018
    #   12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource to be backed up; for example, an Amazon
    #   Elastic Block Store (Amazon EBS) volume or an Amazon Relational
    #   Database Service (Amazon RDS) database. For VSS Windows backups, the
    #   only supported resource type is Amazon EC2.
    #   @return [String]
    #
    # @!attribute [rw] bytes_transferred
    #   The size in bytes transferred to a backup vault at the time that the
    #   job status was queried.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_options
    #   Specifies the backup option for a selected resource. This option is
    #   only available for Windows VSS backup jobs.
    #
    #   Valid values: Set to `"WindowsVSS”:“enabled"` to enable WindowsVSS
    #   backup option and create a VSS Windows backup. Set to
    #   “WindowsVSS”:”disabled” to create a regular backup. If you specify
    #   an invalid option, you get an `InvalidParameterValueException`
    #   exception.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] backup_type
    #   Represents the type of backup for a backup job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupJob AWS API Documentation
    #
    class BackupJob < Struct.new(
      :account_id,
      :backup_job_id,
      :backup_vault_name,
      :backup_vault_arn,
      :recovery_point_arn,
      :resource_arn,
      :creation_date,
      :completion_date,
      :state,
      :status_message,
      :percent_done,
      :backup_size_in_bytes,
      :iam_role_arn,
      :created_by,
      :expected_completion_date,
      :start_by,
      :resource_type,
      :bytes_transferred,
      :backup_options,
      :backup_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an optional backup plan display name and an array of
    # `BackupRule` objects, each of which specifies a backup rule. Each rule
    # in a backup plan is a separate scheduled task and can back up a
    # different selection of AWS resources.
    #
    # @!attribute [rw] backup_plan_name
    #   The display name of a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   An array of `BackupRule` objects, each of which specifies a
    #   scheduled task that is used to back up a selection of resources.
    #   @return [Array<Types::BackupRule>]
    #
    # @!attribute [rw] advanced_backup_settings
    #   Contains a list of `BackupOptions` for each resource type.
    #   @return [Array<Types::AdvancedBackupSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupPlan AWS API Documentation
    #
    class BackupPlan < Struct.new(
      :backup_plan_name,
      :rules,
      :advanced_backup_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an optional backup plan display name and an array of
    # `BackupRule` objects, each of which specifies a backup rule. Each rule
    # in a backup plan is a separate scheduled task and can back up a
    # different selection of AWS resources.
    #
    # @note When making an API call, you may pass BackupPlanInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_name: "BackupPlanName", # required
    #         rules: [ # required
    #           {
    #             rule_name: "BackupRuleName", # required
    #             target_backup_vault_name: "BackupVaultName", # required
    #             schedule_expression: "CronExpression",
    #             start_window_minutes: 1,
    #             completion_window_minutes: 1,
    #             lifecycle: {
    #               move_to_cold_storage_after_days: 1,
    #               delete_after_days: 1,
    #             },
    #             recovery_point_tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             copy_actions: [
    #               {
    #                 lifecycle: {
    #                   move_to_cold_storage_after_days: 1,
    #                   delete_after_days: 1,
    #                 },
    #                 destination_backup_vault_arn: "ARN", # required
    #               },
    #             ],
    #           },
    #         ],
    #         advanced_backup_settings: [
    #           {
    #             resource_type: "ResourceType",
    #             backup_options: {
    #               "BackupOptionKey" => "BackupOptionValue",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] backup_plan_name
    #   The optional display name of a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   An array of `BackupRule` objects, each of which specifies a
    #   scheduled task that is used to back up a selection of resources.
    #   @return [Array<Types::BackupRuleInput>]
    #
    # @!attribute [rw] advanced_backup_settings
    #   Specifies a list of `BackupOptions` for each resource type. These
    #   settings are only available for Windows VSS backup jobs.
    #   @return [Array<Types::AdvancedBackupSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupPlanInput AWS API Documentation
    #
    class BackupPlanInput < Struct.new(
      :backup_plan_name,
      :rules,
      :advanced_backup_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object specifying metadata associated with a backup plan template.
    #
    # @!attribute [rw] backup_plan_template_id
    #   Uniquely identifies a stored backup plan template.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_template_name
    #   The optional display name of a backup plan template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupPlanTemplatesListMember AWS API Documentation
    #
    class BackupPlanTemplatesListMember < Struct.new(
      :backup_plan_template_id,
      :backup_plan_template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a backup plan.
    #
    # @!attribute [rw] backup_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   plan; for example,
    #   `arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50`.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a resource backup plan is created, in Unix format
    #   and Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] deletion_date
    #   The date and time a backup plan is deleted, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `DeletionDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] version_id
    #   Unique, randomly generated, Unicode, UTF-8 encoded strings that are
    #   at most 1,024 bytes long. Version IDs cannot be edited.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_name
    #   The display name of a saved backup plan.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and allows failed
    #   requests to be retried without the risk of running the operation
    #   twice.
    #   @return [String]
    #
    # @!attribute [rw] last_execution_date
    #   The last time a job to back up resources was run with this rule. A
    #   date and time, in Unix format and Coordinated Universal Time (UTC).
    #   The value of `LastExecutionDate` is accurate to milliseconds. For
    #   example, the value 1516925490.087 represents Friday, January 26,
    #   2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] advanced_backup_settings
    #   Contains a list of `BackupOptions` for a resource type.
    #   @return [Array<Types::AdvancedBackupSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupPlansListMember AWS API Documentation
    #
    class BackupPlansListMember < Struct.new(
      :backup_plan_arn,
      :backup_plan_id,
      :creation_date,
      :deletion_date,
      :version_id,
      :backup_plan_name,
      :creator_request_id,
      :last_execution_date,
      :advanced_backup_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a scheduled task used to back up a selection of resources.
    #
    # @!attribute [rw] rule_name
    #   An optional display name for a backup rule.
    #   @return [String]
    #
    # @!attribute [rw] target_backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   A CRON expression specifying when AWS Backup initiates a backup job.
    #   For more information about cron expressions, see [Schedule
    #   Expressions for Rules][1] in the *Amazon CloudWatch Events User
    #   Guide.*. Prior to specifying a value for this parameter, we
    #   recommend testing your cron expression using one of the many
    #   available cron generator and testing tools.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
    #   @return [String]
    #
    # @!attribute [rw] start_window_minutes
    #   A value in minutes after a backup is scheduled before a job will be
    #   canceled if it doesn't start successfully. This value is optional.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_window_minutes
    #   A value in minutes after a backup job is successfully started before
    #   it must be completed or it will be canceled by AWS Backup. This
    #   value is optional.
    #   @return [Integer]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. AWS Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “expire after days” setting
    #   must be 90 days greater than the “transition to cold after days”
    #   setting. The “transition to cold after days” setting cannot be
    #   changed after a backup has been transitioned to cold.
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] recovery_point_tags
    #   An array of key-value pair strings that are assigned to resources
    #   that are associated with this rule when restored from backup.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] rule_id
    #   Uniquely identifies a rule that is used to schedule the backup of a
    #   selection of resources.
    #   @return [String]
    #
    # @!attribute [rw] copy_actions
    #   An array of `CopyAction` objects, which contains the details of the
    #   copy operation.
    #   @return [Array<Types::CopyAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupRule AWS API Documentation
    #
    class BackupRule < Struct.new(
      :rule_name,
      :target_backup_vault_name,
      :schedule_expression,
      :start_window_minutes,
      :completion_window_minutes,
      :lifecycle,
      :recovery_point_tags,
      :rule_id,
      :copy_actions)
      SENSITIVE = [:recovery_point_tags]
      include Aws::Structure
    end

    # Specifies a scheduled task used to back up a selection of resources.
    #
    # @note When making an API call, you may pass BackupRuleInput
    #   data as a hash:
    #
    #       {
    #         rule_name: "BackupRuleName", # required
    #         target_backup_vault_name: "BackupVaultName", # required
    #         schedule_expression: "CronExpression",
    #         start_window_minutes: 1,
    #         completion_window_minutes: 1,
    #         lifecycle: {
    #           move_to_cold_storage_after_days: 1,
    #           delete_after_days: 1,
    #         },
    #         recovery_point_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         copy_actions: [
    #           {
    #             lifecycle: {
    #               move_to_cold_storage_after_days: 1,
    #               delete_after_days: 1,
    #             },
    #             destination_backup_vault_arn: "ARN", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rule_name
    #   An optional display name for a backup rule.
    #   @return [String]
    #
    # @!attribute [rw] target_backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   A CRON expression specifying when AWS Backup initiates a backup job.
    #   @return [String]
    #
    # @!attribute [rw] start_window_minutes
    #   A value in minutes after a backup is scheduled before a job will be
    #   canceled if it doesn't start successfully. This value is optional.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_window_minutes
    #   A value in minutes after a backup job is successfully started before
    #   it must be completed or it will be canceled by AWS Backup. This
    #   value is optional.
    #   @return [Integer]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. AWS Backup will transition and
    #   expire backups automatically according to the lifecycle that you
    #   define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “expire after days” setting
    #   must be 90 days greater than the “transition to cold after days”
    #   setting. The “transition to cold after days” setting cannot be
    #   changed after a backup has been transitioned to cold.
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] recovery_point_tags
    #   To help organize your resources, you can assign your own metadata to
    #   the resources that you create. Each tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] copy_actions
    #   An array of `CopyAction` objects, which contains the details of the
    #   copy operation.
    #   @return [Array<Types::CopyAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupRuleInput AWS API Documentation
    #
    class BackupRuleInput < Struct.new(
      :rule_name,
      :target_backup_vault_name,
      :schedule_expression,
      :start_window_minutes,
      :completion_window_minutes,
      :lifecycle,
      :recovery_point_tags,
      :copy_actions)
      SENSITIVE = [:recovery_point_tags]
      include Aws::Structure
    end

    # Used to specify a set of resources to a backup plan.
    #
    # @note When making an API call, you may pass BackupSelection
    #   data as a hash:
    #
    #       {
    #         selection_name: "BackupSelectionName", # required
    #         iam_role_arn: "IAMRoleArn", # required
    #         resources: ["ARN"],
    #         list_of_tags: [
    #           {
    #             condition_type: "STRINGEQUALS", # required, accepts STRINGEQUALS
    #             condition_key: "ConditionKey", # required
    #             condition_value: "ConditionValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] selection_name
    #   The display name of a resource selection document.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that AWS Backup uses to authenticate when
    #   backing up the target resource; for example,
    #   `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   An array of strings that contain Amazon Resource Names (ARNs) of
    #   resources to assign to a backup plan.
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_of_tags
    #   An array of conditions used to specify a set of resources to assign
    #   to a backup plan; for example, `"StringEquals":
    #   \{"ec2:ResourceTag/Department": "accounting"`.
    #   @return [Array<Types::Condition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupSelection AWS API Documentation
    #
    class BackupSelection < Struct.new(
      :selection_name,
      :iam_role_arn,
      :resources,
      :list_of_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a `BackupSelection` object.
    #
    # @!attribute [rw] selection_id
    #   Uniquely identifies a request to assign a set of resources to a
    #   backup plan.
    #   @return [String]
    #
    # @!attribute [rw] selection_name
    #   The display name of a resource selection document.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a backup plan is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and allows failed
    #   requests to be retried without the risk of running the operation
    #   twice.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   Specifies the IAM role Amazon Resource Name (ARN) to create the
    #   target recovery point; for example,
    #   `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupSelectionsListMember AWS API Documentation
    #
    class BackupSelectionsListMember < Struct.new(
      :selection_id,
      :selection_name,
      :backup_plan_id,
      :creation_date,
      :creator_request_id,
      :iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a backup vault.
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a resource backup is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] encryption_key_arn
    #   The server-side encryption key that is used to protect your backups;
    #   for example,
    #   `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and allows failed
    #   requests to be retried without the risk of running the operation
    #   twice.
    #   @return [String]
    #
    # @!attribute [rw] number_of_recovery_points
    #   The number of recovery points that are stored in a backup vault.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupVaultListMember AWS API Documentation
    #
    class BackupVaultListMember < Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :creation_date,
      :encryption_key_arn,
      :creator_request_id,
      :number_of_recovery_points)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains `DeleteAt` and `MoveToColdStorageAt` timestamps, which are
    # used to specify a lifecycle for a recovery point.
    #
    # The lifecycle defines when a protected resource is transitioned to
    # cold storage and when it expires. AWS Backup transitions and expires
    # backups automatically according to the lifecycle that you define.
    #
    # Backups transitioned to cold storage must be stored in cold storage
    # for a minimum of 90 days. Therefore, the “expire after days” setting
    # must be 90 days greater than the “transition to cold after days”
    # setting. The “transition to cold after days” setting cannot be changed
    # after a backup has been transitioned to cold.
    #
    # @!attribute [rw] move_to_cold_storage_at
    #   A timestamp that specifies when to transition a recovery point to
    #   cold storage.
    #   @return [Time]
    #
    # @!attribute [rw] delete_at
    #   A timestamp that specifies when to delete a recovery point.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CalculatedLifecycle AWS API Documentation
    #
    class CalculatedLifecycle < Struct.new(
      :move_to_cold_storage_at,
      :delete_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an array of triplets made up of a condition type (such as
    # `StringEquals`), a key, and a value. Conditions are used to filter
    # resources in a selection that is assigned to a backup plan.
    #
    # @note When making an API call, you may pass Condition
    #   data as a hash:
    #
    #       {
    #         condition_type: "STRINGEQUALS", # required, accepts STRINGEQUALS
    #         condition_key: "ConditionKey", # required
    #         condition_value: "ConditionValue", # required
    #       }
    #
    # @!attribute [rw] condition_type
    #   An operation, such as `StringEquals`, that is applied to a key-value
    #   pair used to filter resources in a selection.
    #   @return [String]
    #
    # @!attribute [rw] condition_key
    #   The key in a key-value pair. For example, in
    #   `"ec2:ResourceTag/Department": "accounting"`,
    #   `"ec2:ResourceTag/Department"` is the key.
    #   @return [String]
    #
    # @!attribute [rw] condition_value
    #   The value in a key-value pair. For example, in
    #   `"ec2:ResourceTag/Department": "accounting"`, `"accounting"` is the
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :condition_type,
      :condition_key,
      :condition_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the copy operation.
    #
    # @note When making an API call, you may pass CopyAction
    #   data as a hash:
    #
    #       {
    #         lifecycle: {
    #           move_to_cold_storage_after_days: 1,
    #           delete_after_days: 1,
    #         },
    #         destination_backup_vault_arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] lifecycle
    #   Contains an array of `Transition` objects specifying how long in
    #   days before a recovery point transitions to cold storage or is
    #   deleted.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, on the console, the “expire
    #   after days” setting must be 90 days greater than the “transition to
    #   cold after days” setting. The “transition to cold after days”
    #   setting cannot be changed after a backup has been transitioned to
    #   cold.
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] destination_backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies the
    #   destination backup vault for the copied backup. For example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CopyAction AWS API Documentation
    #
    class CopyAction < Struct.new(
      :lifecycle,
      :destination_backup_vault_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about a copy job.
    #
    # @!attribute [rw] account_id
    #   The account ID that owns the copy job.
    #   @return [String]
    #
    # @!attribute [rw] copy_job_id
    #   Uniquely identifies a copy job.
    #   @return [String]
    #
    # @!attribute [rw] source_backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a source copy
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] source_recovery_point_arn
    #   An ARN that uniquely identifies a source recovery point; for
    #   example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] destination_backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a destination
    #   copy vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] destination_recovery_point_arn
    #   An ARN that uniquely identifies a destination recovery point; for
    #   example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The AWS resource to be copied; for example, an Amazon Elastic Block
    #   Store (Amazon EBS) volume or an Amazon Relational Database Service
    #   (Amazon RDS) database.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a copy job is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   The date and time a copy job is completed, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CompletionDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The current state of a copy job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed message explaining the status of the job to copy a
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] backup_size_in_bytes
    #   The size, in bytes, of a copy job.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role_arn
    #   Specifies the IAM role ARN used to copy the target recovery point;
    #   for example, `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Contains information about the backup plan and rule that AWS Backup
    #   used to initiate the recovery point backup.
    #   @return [Types::RecoveryPointCreator]
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource to be copied; for example, an Amazon
    #   Elastic Block Store (Amazon EBS) volume or an Amazon Relational
    #   Database Service (Amazon RDS) database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CopyJob AWS API Documentation
    #
    class CopyJob < Struct.new(
      :account_id,
      :copy_job_id,
      :source_backup_vault_arn,
      :source_recovery_point_arn,
      :destination_backup_vault_arn,
      :destination_recovery_point_arn,
      :resource_arn,
      :creation_date,
      :completion_date,
      :state,
      :status_message,
      :backup_size_in_bytes,
      :iam_role_arn,
      :created_by,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBackupPlanInput
    #   data as a hash:
    #
    #       {
    #         backup_plan: { # required
    #           backup_plan_name: "BackupPlanName", # required
    #           rules: [ # required
    #             {
    #               rule_name: "BackupRuleName", # required
    #               target_backup_vault_name: "BackupVaultName", # required
    #               schedule_expression: "CronExpression",
    #               start_window_minutes: 1,
    #               completion_window_minutes: 1,
    #               lifecycle: {
    #                 move_to_cold_storage_after_days: 1,
    #                 delete_after_days: 1,
    #               },
    #               recovery_point_tags: {
    #                 "TagKey" => "TagValue",
    #               },
    #               copy_actions: [
    #                 {
    #                   lifecycle: {
    #                     move_to_cold_storage_after_days: 1,
    #                     delete_after_days: 1,
    #                   },
    #                   destination_backup_vault_arn: "ARN", # required
    #                 },
    #               ],
    #             },
    #           ],
    #           advanced_backup_settings: [
    #             {
    #               resource_type: "ResourceType",
    #               backup_options: {
    #                 "BackupOptionKey" => "BackupOptionValue",
    #               },
    #             },
    #           ],
    #         },
    #         backup_plan_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         creator_request_id: "string",
    #       }
    #
    # @!attribute [rw] backup_plan
    #   Specifies the body of a backup plan. Includes a `BackupPlanName` and
    #   one or more sets of `Rules`.
    #   @return [Types::BackupPlanInput]
    #
    # @!attribute [rw] backup_plan_tags
    #   To help organize your resources, you can assign your own metadata to
    #   the resources that you create. Each tag is a key-value pair. The
    #   specified tags are assigned to all backups created with this plan.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] creator_request_id
    #   Identifies the request and allows failed requests to be retried
    #   without the risk of running the operation twice. If the request
    #   includes a `CreatorRequestId` that matches an existing backup plan,
    #   that plan is returned. This parameter is optional.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateBackupPlanInput AWS API Documentation
    #
    class CreateBackupPlanInput < Struct.new(
      :backup_plan,
      :backup_plan_tags,
      :creator_request_id)
      SENSITIVE = [:backup_plan_tags]
      include Aws::Structure
    end

    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   plan; for example,
    #   `arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that a backup plan is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] version_id
    #   Unique, randomly generated, Unicode, UTF-8 encoded strings that are
    #   at most 1,024 bytes long. They cannot be edited.
    #   @return [String]
    #
    # @!attribute [rw] advanced_backup_settings
    #   A list of `BackupOptions` settings for a resource type. This option
    #   is only available for Windows VSS backup jobs.
    #   @return [Array<Types::AdvancedBackupSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateBackupPlanOutput AWS API Documentation
    #
    class CreateBackupPlanOutput < Struct.new(
      :backup_plan_id,
      :backup_plan_arn,
      :creation_date,
      :version_id,
      :advanced_backup_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBackupSelectionInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_id: "string", # required
    #         backup_selection: { # required
    #           selection_name: "BackupSelectionName", # required
    #           iam_role_arn: "IAMRoleArn", # required
    #           resources: ["ARN"],
    #           list_of_tags: [
    #             {
    #               condition_type: "STRINGEQUALS", # required, accepts STRINGEQUALS
    #               condition_key: "ConditionKey", # required
    #               condition_value: "ConditionValue", # required
    #             },
    #           ],
    #         },
    #         creator_request_id: "string",
    #       }
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies the backup plan to be associated with the
    #   selection of resources.
    #   @return [String]
    #
    # @!attribute [rw] backup_selection
    #   Specifies the body of a request to assign a set of resources to a
    #   backup plan.
    #   @return [Types::BackupSelection]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and allows failed
    #   requests to be retried without the risk of running the operation
    #   twice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateBackupSelectionInput AWS API Documentation
    #
    class CreateBackupSelectionInput < Struct.new(
      :backup_plan_id,
      :backup_selection,
      :creator_request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] selection_id
    #   Uniquely identifies the body of a request to assign a set of
    #   resources to a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a backup selection is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateBackupSelectionOutput AWS API Documentation
    #
    class CreateBackupSelectionOutput < Struct.new(
      :selection_id,
      :backup_plan_id,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBackupVaultInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #         backup_vault_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         encryption_key_arn: "ARN",
    #         creator_request_id: "string",
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_tags
    #   Metadata that you can assign to help organize the resources that you
    #   create. Each tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] encryption_key_arn
    #   The server-side encryption key that is used to protect your backups;
    #   for example,
    #   `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and allows failed
    #   requests to be retried without the risk of running the operation
    #   twice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateBackupVaultInput AWS API Documentation
    #
    class CreateBackupVaultInput < Struct.new(
      :backup_vault_name,
      :backup_vault_tags,
      :encryption_key_arn,
      :creator_request_id)
      SENSITIVE = [:backup_vault_tags]
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Region where they are created. They consist
    #   of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a backup vault is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateBackupVaultOutput AWS API Documentation
    #
    class CreateBackupVaultOutput < Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBackupPlanInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_id: "string", # required
    #       }
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupPlanInput AWS API Documentation
    #
    class DeleteBackupPlanInput < Struct.new(
      :backup_plan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   plan; for example,
    #   `arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50`.
    #   @return [String]
    #
    # @!attribute [rw] deletion_date
    #   The date and time a backup plan is deleted, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `DeletionDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] version_id
    #   Unique, randomly generated, Unicode, UTF-8 encoded strings that are
    #   at most 1,024 bytes long. Version IDs cannot be edited.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupPlanOutput AWS API Documentation
    #
    class DeleteBackupPlanOutput < Struct.new(
      :backup_plan_id,
      :backup_plan_arn,
      :deletion_date,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBackupSelectionInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_id: "string", # required
    #         selection_id: "string", # required
    #       }
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] selection_id
    #   Uniquely identifies the body of a request to assign a set of
    #   resources to a backup plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupSelectionInput AWS API Documentation
    #
    class DeleteBackupSelectionInput < Struct.new(
      :backup_plan_id,
      :selection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBackupVaultAccessPolicyInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupVaultAccessPolicyInput AWS API Documentation
    #
    class DeleteBackupVaultAccessPolicyInput < Struct.new(
      :backup_vault_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBackupVaultInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupVaultInput AWS API Documentation
    #
    class DeleteBackupVaultInput < Struct.new(
      :backup_vault_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBackupVaultNotificationsInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Region where they are created. They consist
    #   of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupVaultNotificationsInput AWS API Documentation
    #
    class DeleteBackupVaultNotificationsInput < Struct.new(
      :backup_vault_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRecoveryPointInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #         recovery_point_arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteRecoveryPointInput AWS API Documentation
    #
    class DeleteRecoveryPointInput < Struct.new(
      :backup_vault_name,
      :recovery_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dependent AWS service or resource returned an error to the AWS
    # Backup service, and the action cannot be completed.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] context
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DependencyFailureException AWS API Documentation
    #
    class DependencyFailureException < Struct.new(
      :code,
      :message,
      :type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeBackupJobInput
    #   data as a hash:
    #
    #       {
    #         backup_job_id: "string", # required
    #       }
    #
    # @!attribute [rw] backup_job_id
    #   Uniquely identifies a request to AWS Backup to back up a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeBackupJobInput AWS API Documentation
    #
    class DescribeBackupJobInput < Struct.new(
      :backup_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Returns the account ID that owns the backup job.
    #   @return [String]
    #
    # @!attribute [rw] backup_job_id
    #   Uniquely identifies a request to AWS Backup to back up a resource.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a saved resource. The format of the
    #   ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that a backup job is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   The date and time that a job to create a backup job is completed, in
    #   Unix format and Coordinated Universal Time (UTC). The value of
    #   `CompletionDate` is accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The current state of a resource recovery point.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed message explaining the status of the job to back up a
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] percent_done
    #   Contains an estimated percentage that is complete of a job at the
    #   time the job status was queried.
    #   @return [String]
    #
    # @!attribute [rw] backup_size_in_bytes
    #   The size, in bytes, of a backup.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role_arn
    #   Specifies the IAM role ARN used to create the target recovery point;
    #   for example, `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Contains identifying information about the creation of a backup job,
    #   including the `BackupPlanArn`, `BackupPlanId`, `BackupPlanVersion`,
    #   and `BackupRuleId` of the backup plan that is used to create it.
    #   @return [Types::RecoveryPointCreator]
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource to be backed up; for example, an Amazon
    #   Elastic Block Store (Amazon EBS) volume or an Amazon Relational
    #   Database Service (Amazon RDS) database.
    #   @return [String]
    #
    # @!attribute [rw] bytes_transferred
    #   The size in bytes transferred to a backup vault at the time that the
    #   job status was queried.
    #   @return [Integer]
    #
    # @!attribute [rw] expected_completion_date
    #   The date and time that a job to back up resources is expected to be
    #   completed, in Unix format and Coordinated Universal Time (UTC). The
    #   value of `ExpectedCompletionDate` is accurate to milliseconds. For
    #   example, the value 1516925490.087 represents Friday, January 26,
    #   2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] start_by
    #   Specifies the time in Unix format and Coordinated Universal Time
    #   (UTC) when a backup job must be started before it is canceled. The
    #   value is calculated by adding the start window to the scheduled
    #   time. So if the scheduled time were 6:00 PM and the start window is
    #   2 hours, the `StartBy` time would be 8:00 PM on the date specified.
    #   The value of `StartBy` is accurate to milliseconds. For example, the
    #   value 1516925490.087 represents Friday, January 26, 2018
    #   12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] backup_options
    #   Represents the options specified as part of backup plan or on-demand
    #   backup job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] backup_type
    #   Represents the actual backup type selected for a backup job. For
    #   example, if a successful WindowsVSS backup was taken, `BackupType`
    #   returns “WindowsVSS”. If `BackupType` is empty, then it is a regular
    #   backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeBackupJobOutput AWS API Documentation
    #
    class DescribeBackupJobOutput < Struct.new(
      :account_id,
      :backup_job_id,
      :backup_vault_name,
      :backup_vault_arn,
      :recovery_point_arn,
      :resource_arn,
      :creation_date,
      :completion_date,
      :state,
      :status_message,
      :percent_done,
      :backup_size_in_bytes,
      :iam_role_arn,
      :created_by,
      :resource_type,
      :bytes_transferred,
      :expected_completion_date,
      :start_by,
      :backup_options,
      :backup_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeBackupVaultInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "string", # required
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeBackupVaultInput AWS API Documentation
    #
    class DescribeBackupVaultInput < Struct.new(
      :backup_vault_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Region where they are created. They consist
    #   of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The server-side encryption key that is used to protect your backups;
    #   for example,
    #   `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that a backup vault is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and allows failed
    #   requests to be retried without the risk of running the operation
    #   twice.
    #   @return [String]
    #
    # @!attribute [rw] number_of_recovery_points
    #   The number of recovery points that are stored in a backup vault.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeBackupVaultOutput AWS API Documentation
    #
    class DescribeBackupVaultOutput < Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :encryption_key_arn,
      :creation_date,
      :creator_request_id,
      :number_of_recovery_points)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCopyJobInput
    #   data as a hash:
    #
    #       {
    #         copy_job_id: "string", # required
    #       }
    #
    # @!attribute [rw] copy_job_id
    #   Uniquely identifies a copy job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeCopyJobInput AWS API Documentation
    #
    class DescribeCopyJobInput < Struct.new(
      :copy_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] copy_job
    #   Contains detailed information about a copy job.
    #   @return [Types::CopyJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeCopyJobOutput AWS API Documentation
    #
    class DescribeCopyJobOutput < Struct.new(
      :copy_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProtectedResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeProtectedResourceInput AWS API Documentation
    #
    class DescribeProtectedResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource saved as a recovery point; for example, an
    #   EBS volume or an Amazon RDS database.
    #   @return [String]
    #
    # @!attribute [rw] last_backup_time
    #   The date and time that a resource was last backed up, in Unix format
    #   and Coordinated Universal Time (UTC). The value of `LastBackupTime`
    #   is accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeProtectedResourceOutput AWS API Documentation
    #
    class DescribeProtectedResourceOutput < Struct.new(
      :resource_arn,
      :resource_type,
      :last_backup_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRecoveryPointInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #         recovery_point_arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRecoveryPointInput AWS API Documentation
    #
    class DescribeRecoveryPointInput < Struct.new(
      :backup_vault_name,
      :recovery_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Region where they are created. They consist
    #   of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An ARN that uniquely identifies a backup vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a saved resource. The format of the
    #   ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource to save as a recovery point; for example,
    #   an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon
    #   Relational Database Service (Amazon RDS) database.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Contains identifying information about the creation of a recovery
    #   point, including the `BackupPlanArn`, `BackupPlanId`,
    #   `BackupPlanVersion`, and `BackupRuleId` of the backup plan used to
    #   create it.
    #   @return [Types::RecoveryPointCreator]
    #
    # @!attribute [rw] iam_role_arn
    #   Specifies the IAM role ARN used to create the target recovery point;
    #   for example, `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A status code specifying the state of the recovery point.
    #
    #   <note markdown="1"> A partial status indicates that the recovery point was not
    #   successfully re-created and must be retried.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that a recovery point is created, in Unix format
    #   and Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   The date and time that a job to create a recovery point is
    #   completed, in Unix format and Coordinated Universal Time (UTC). The
    #   value of `CompletionDate` is accurate to milliseconds. For example,
    #   the value 1516925490.087 represents Friday, January 26, 2018
    #   12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] backup_size_in_bytes
    #   The size, in bytes, of a backup.
    #   @return [Integer]
    #
    # @!attribute [rw] calculated_lifecycle
    #   A `CalculatedLifecycle` object containing `DeleteAt` and
    #   `MoveToColdStorageAt` timestamps.
    #   @return [Types::CalculatedLifecycle]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. AWS Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups that are transitioned to cold storage must be stored in cold
    #   storage for a minimum of 90 days. Therefore, the “expire after days”
    #   setting must be 90 days greater than the “transition to cold after
    #   days” setting. The “transition to cold after days” setting cannot be
    #   changed after a backup has been transitioned to cold.
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] encryption_key_arn
    #   The server-side encryption key used to protect your backups; for
    #   example,
    #   `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #   @return [String]
    #
    # @!attribute [rw] is_encrypted
    #   A Boolean value that is returned as `TRUE` if the specified recovery
    #   point is encrypted, or `FALSE` if the recovery point is not
    #   encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_class
    #   Specifies the storage class of the recovery point. Valid values are
    #   `WARM` or `COLD`.
    #   @return [String]
    #
    # @!attribute [rw] last_restore_time
    #   The date and time that a recovery point was last restored, in Unix
    #   format and Coordinated Universal Time (UTC). The value of
    #   `LastRestoreTime` is accurate to milliseconds. For example, the
    #   value 1516925490.087 represents Friday, January 26, 2018
    #   12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRecoveryPointOutput AWS API Documentation
    #
    class DescribeRecoveryPointOutput < Struct.new(
      :recovery_point_arn,
      :backup_vault_name,
      :backup_vault_arn,
      :resource_arn,
      :resource_type,
      :created_by,
      :iam_role_arn,
      :status,
      :creation_date,
      :completion_date,
      :backup_size_in_bytes,
      :calculated_lifecycle,
      :lifecycle,
      :encryption_key_arn,
      :is_encrypted,
      :storage_class,
      :last_restore_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRegionSettingsInput AWS API Documentation
    #
    class DescribeRegionSettingsInput < Aws::EmptyStructure; end

    # @!attribute [rw] resource_type_opt_in_preference
    #   Returns a list of all services along with the opt-in preferences in
    #   the Region.
    #   @return [Hash<String,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRegionSettingsOutput AWS API Documentation
    #
    class DescribeRegionSettingsOutput < Struct.new(
      :resource_type_opt_in_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRestoreJobInput
    #   data as a hash:
    #
    #       {
    #         restore_job_id: "RestoreJobId", # required
    #       }
    #
    # @!attribute [rw] restore_job_id
    #   Uniquely identifies the job that restores a recovery point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRestoreJobInput AWS API Documentation
    #
    class DescribeRestoreJobInput < Struct.new(
      :restore_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Returns the account ID that owns the restore job.
    #   @return [String]
    #
    # @!attribute [rw] restore_job_id
    #   Uniquely identifies the job that restores a recovery point.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that a restore job is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   The date and time that a job to restore a recovery point is
    #   completed, in Unix format and Coordinated Universal Time (UTC). The
    #   value of `CompletionDate` is accurate to milliseconds. For example,
    #   the value 1516925490.087 represents Friday, January 26, 2018
    #   12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status code specifying the state of the job that is initiated by AWS
    #   Backup to restore a recovery point.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message showing the status of a job to restore a recovery point.
    #   @return [String]
    #
    # @!attribute [rw] percent_done
    #   Contains an estimated percentage that is complete of a job at the
    #   time the job status was queried.
    #   @return [String]
    #
    # @!attribute [rw] backup_size_in_bytes
    #   The size, in bytes, of the restored resource.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role_arn
    #   Specifies the IAM role ARN used to create the target recovery point;
    #   for example, `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] expected_completion_time_minutes
    #   The amount of time in minutes that a job restoring a recovery point
    #   is expected to take.
    #   @return [Integer]
    #
    # @!attribute [rw] created_resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource
    #   whose recovery point is being restored. The format of the ARN
    #   depends on the resource type of the backed-up resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Returns metadata associated with a restore job listed by resource
    #   type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRestoreJobOutput AWS API Documentation
    #
    class DescribeRestoreJobOutput < Struct.new(
      :account_id,
      :restore_job_id,
      :recovery_point_arn,
      :creation_date,
      :completion_date,
      :status,
      :status_message,
      :percent_done,
      :backup_size_in_bytes,
      :iam_role_arn,
      :expected_completion_time_minutes,
      :created_resource_arn,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExportBackupPlanTemplateInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_id: "string", # required
    #       }
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ExportBackupPlanTemplateInput AWS API Documentation
    #
    class ExportBackupPlanTemplateInput < Struct.new(
      :backup_plan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_plan_template_json
    #   The body of a backup plan template in JSON format.
    #
    #   <note markdown="1"> This is a signed JSON document that cannot be modified before being
    #   passed to `GetBackupPlanFromJSON.`
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ExportBackupPlanTemplateOutput AWS API Documentation
    #
    class ExportBackupPlanTemplateOutput < Struct.new(
      :backup_plan_template_json)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBackupPlanFromJSONInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_template_json: "string", # required
    #       }
    #
    # @!attribute [rw] backup_plan_template_json
    #   A customer-supplied backup plan document in JSON format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupPlanFromJSONInput AWS API Documentation
    #
    class GetBackupPlanFromJSONInput < Struct.new(
      :backup_plan_template_json)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_plan
    #   Specifies the body of a backup plan. Includes a `BackupPlanName` and
    #   one or more sets of `Rules`.
    #   @return [Types::BackupPlan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupPlanFromJSONOutput AWS API Documentation
    #
    class GetBackupPlanFromJSONOutput < Struct.new(
      :backup_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBackupPlanFromTemplateInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_template_id: "string", # required
    #       }
    #
    # @!attribute [rw] backup_plan_template_id
    #   Uniquely identifies a stored backup plan template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupPlanFromTemplateInput AWS API Documentation
    #
    class GetBackupPlanFromTemplateInput < Struct.new(
      :backup_plan_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_plan_document
    #   Returns the body of a backup plan based on the target template,
    #   including the name, rules, and backup vault of the plan.
    #   @return [Types::BackupPlan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupPlanFromTemplateOutput AWS API Documentation
    #
    class GetBackupPlanFromTemplateOutput < Struct.new(
      :backup_plan_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBackupPlanInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_id: "string", # required
    #         version_id: "string",
    #       }
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Unique, randomly generated, Unicode, UTF-8 encoded strings that are
    #   at most 1,024 bytes long. Version IDs cannot be edited.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupPlanInput AWS API Documentation
    #
    class GetBackupPlanInput < Struct.new(
      :backup_plan_id,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_plan
    #   Specifies the body of a backup plan. Includes a `BackupPlanName` and
    #   one or more sets of `Rules`.
    #   @return [Types::BackupPlan]
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   plan; for example,
    #   `arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50`.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Unique, randomly generated, Unicode, UTF-8 encoded strings that are
    #   at most 1,024 bytes long. Version IDs cannot be edited.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and allows failed
    #   requests to be retried without the risk of running the operation
    #   twice.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that a backup plan is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] deletion_date
    #   The date and time that a backup plan is deleted, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `DeletionDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] last_execution_date
    #   The last time a job to back up resources was run with this backup
    #   plan. A date and time, in Unix format and Coordinated Universal Time
    #   (UTC). The value of `LastExecutionDate` is accurate to milliseconds.
    #   For example, the value 1516925490.087 represents Friday, January 26,
    #   2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] advanced_backup_settings
    #   Contains a list of `BackupOptions` for each resource type. The list
    #   is populated only if the advanced option is set for the backup plan.
    #   @return [Array<Types::AdvancedBackupSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupPlanOutput AWS API Documentation
    #
    class GetBackupPlanOutput < Struct.new(
      :backup_plan,
      :backup_plan_id,
      :backup_plan_arn,
      :version_id,
      :creator_request_id,
      :creation_date,
      :deletion_date,
      :last_execution_date,
      :advanced_backup_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBackupSelectionInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_id: "string", # required
    #         selection_id: "string", # required
    #       }
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] selection_id
    #   Uniquely identifies the body of a request to assign a set of
    #   resources to a backup plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupSelectionInput AWS API Documentation
    #
    class GetBackupSelectionInput < Struct.new(
      :backup_plan_id,
      :selection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_selection
    #   Specifies the body of a request to assign a set of resources to a
    #   backup plan.
    #   @return [Types::BackupSelection]
    #
    # @!attribute [rw] selection_id
    #   Uniquely identifies the body of a request to assign a set of
    #   resources to a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a backup selection is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and allows failed
    #   requests to be retried without the risk of running the operation
    #   twice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupSelectionOutput AWS API Documentation
    #
    class GetBackupSelectionOutput < Struct.new(
      :backup_selection,
      :selection_id,
      :backup_plan_id,
      :creation_date,
      :creator_request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBackupVaultAccessPolicyInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupVaultAccessPolicyInput AWS API Documentation
    #
    class GetBackupVaultAccessPolicyInput < Struct.new(
      :backup_vault_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Region where they are created. They consist
    #   of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The backup vault access policy document in JSON format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupVaultAccessPolicyOutput AWS API Documentation
    #
    class GetBackupVaultAccessPolicyOutput < Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBackupVaultNotificationsInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupVaultNotificationsInput AWS API Documentation
    #
    class GetBackupVaultNotificationsInput < Struct.new(
      :backup_vault_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Region where they are created. They consist
    #   of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   An ARN that uniquely identifies an Amazon Simple Notification
    #   Service (Amazon SNS) topic; for example,
    #   `arn:aws:sns:us-west-2:111122223333:MyTopic`.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_events
    #   An array of events that indicate the status of jobs to back up
    #   resources to the backup vault.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupVaultNotificationsOutput AWS API Documentation
    #
    class GetBackupVaultNotificationsOutput < Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :sns_topic_arn,
      :backup_vault_events)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRecoveryPointRestoreMetadataInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #         recovery_point_arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRecoveryPointRestoreMetadataInput AWS API Documentation
    #
    class GetRecoveryPointRestoreMetadataInput < Struct.new(
      :backup_vault_name,
      :recovery_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_arn
    #   An ARN that uniquely identifies a backup vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] restore_metadata
    #   The set of metadata key-value pairs that describe the original
    #   configuration of the backed-up resource. These values vary depending
    #   on the service that is being restored.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRecoveryPointRestoreMetadataOutput AWS API Documentation
    #
    class GetRecoveryPointRestoreMetadataOutput < Struct.new(
      :backup_vault_arn,
      :recovery_point_arn,
      :restore_metadata)
      SENSITIVE = [:restore_metadata]
      include Aws::Structure
    end

    # @!attribute [rw] resource_types
    #   Contains a string with the supported AWS resource types:
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for AWS Storage Gateway
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetSupportedResourceTypesOutput AWS API Documentation
    #
    class GetSupportedResourceTypesOutput < Struct.new(
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that something is wrong with a parameter's value. For
    # example, the value is out of range.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] context
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :code,
      :message,
      :type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that something is wrong with the input to the request. For
    # example, a parameter is of the wrong type.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] context
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :code,
      :message,
      :type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an array of `Transition` objects specifying how long in days
    # before a recovery point transitions to cold storage or is deleted.
    #
    # Backups transitioned to cold storage must be stored in cold storage
    # for a minimum of 90 days. Therefore, on the console, the “expire after
    # days” setting must be 90 days greater than the “transition to cold
    # after days” setting. The “transition to cold after days” setting
    # cannot be changed after a backup has been transitioned to cold.
    #
    # @note When making an API call, you may pass Lifecycle
    #   data as a hash:
    #
    #       {
    #         move_to_cold_storage_after_days: 1,
    #         delete_after_days: 1,
    #       }
    #
    # @!attribute [rw] move_to_cold_storage_after_days
    #   Specifies the number of days after creation that a recovery point is
    #   moved to cold storage.
    #   @return [Integer]
    #
    # @!attribute [rw] delete_after_days
    #   Specifies the number of days after creation that a recovery point is
    #   deleted. Must be greater than 90 days plus
    #   `MoveToColdStorageAfterDays`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/Lifecycle AWS API Documentation
    #
    class Lifecycle < Struct.new(
      :move_to_cold_storage_after_days,
      :delete_after_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # A limit in the request has been exceeded; for example, a maximum
    # number of items allowed in a request.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] context
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :code,
      :message,
      :type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBackupJobsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "string",
    #         max_results: 1,
    #         by_resource_arn: "ARN",
    #         by_state: "CREATED", # accepts CREATED, PENDING, RUNNING, ABORTING, ABORTED, COMPLETED, FAILED, EXPIRED
    #         by_backup_vault_name: "BackupVaultName",
    #         by_created_before: Time.now,
    #         by_created_after: Time.now,
    #         by_resource_type: "ResourceType",
    #         by_account_id: "AccountId",
    #       }
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] by_resource_arn
    #   Returns only backup jobs that match the specified resource Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] by_state
    #   Returns only backup jobs that are in the specified state.
    #   @return [String]
    #
    # @!attribute [rw] by_backup_vault_name
    #   Returns only backup jobs that will be stored in the specified backup
    #   vault. Backup vaults are identified by names that are unique to the
    #   account used to create them and the AWS Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] by_created_before
    #   Returns only backup jobs that were created before the specified
    #   date.
    #   @return [Time]
    #
    # @!attribute [rw] by_created_after
    #   Returns only backup jobs that were created after the specified date.
    #   @return [Time]
    #
    # @!attribute [rw] by_resource_type
    #   Returns only backup jobs for the specified resources:
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for AWS Storage Gateway
    #   @return [String]
    #
    # @!attribute [rw] by_account_id
    #   The account ID to list the jobs from. Returns only backup jobs
    #   associated with the specified account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupJobsInput AWS API Documentation
    #
    class ListBackupJobsInput < Struct.new(
      :next_token,
      :max_results,
      :by_resource_arn,
      :by_state,
      :by_backup_vault_name,
      :by_created_before,
      :by_created_after,
      :by_resource_type,
      :by_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_jobs
    #   An array of structures containing metadata about your backup jobs
    #   returned in JSON format.
    #   @return [Array<Types::BackupJob>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupJobsOutput AWS API Documentation
    #
    class ListBackupJobsOutput < Struct.new(
      :backup_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBackupPlanTemplatesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupPlanTemplatesInput AWS API Documentation
    #
    class ListBackupPlanTemplatesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_templates_list
    #   An array of template list items containing metadata about your saved
    #   templates.
    #   @return [Array<Types::BackupPlanTemplatesListMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupPlanTemplatesOutput AWS API Documentation
    #
    class ListBackupPlanTemplatesOutput < Struct.new(
      :next_token,
      :backup_plan_templates_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBackupPlanVersionsInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_id: "string", # required
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupPlanVersionsInput AWS API Documentation
    #
    class ListBackupPlanVersionsInput < Struct.new(
      :backup_plan_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_versions_list
    #   An array of version list items containing metadata about your backup
    #   plans.
    #   @return [Array<Types::BackupPlansListMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupPlanVersionsOutput AWS API Documentation
    #
    class ListBackupPlanVersionsOutput < Struct.new(
      :next_token,
      :backup_plan_versions_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBackupPlansInput
    #   data as a hash:
    #
    #       {
    #         next_token: "string",
    #         max_results: 1,
    #         include_deleted: false,
    #       }
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] include_deleted
    #   A Boolean value with a default value of `FALSE` that returns deleted
    #   backup plans when set to `TRUE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupPlansInput AWS API Documentation
    #
    class ListBackupPlansInput < Struct.new(
      :next_token,
      :max_results,
      :include_deleted)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] backup_plans_list
    #   An array of backup plan list items containing metadata about your
    #   saved backup plans.
    #   @return [Array<Types::BackupPlansListMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupPlansOutput AWS API Documentation
    #
    class ListBackupPlansOutput < Struct.new(
      :next_token,
      :backup_plans_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBackupSelectionsInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_id: "string", # required
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupSelectionsInput AWS API Documentation
    #
    class ListBackupSelectionsInput < Struct.new(
      :backup_plan_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] backup_selections_list
    #   An array of backup selection list items containing metadata about
    #   each resource in the list.
    #   @return [Array<Types::BackupSelectionsListMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupSelectionsOutput AWS API Documentation
    #
    class ListBackupSelectionsOutput < Struct.new(
      :next_token,
      :backup_selections_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBackupVaultsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupVaultsInput AWS API Documentation
    #
    class ListBackupVaultsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_list
    #   An array of backup vault list members containing vault metadata,
    #   including Amazon Resource Name (ARN), display name, creation date,
    #   number of saved recovery points, and encryption information if the
    #   resources saved in the backup vault are encrypted.
    #   @return [Array<Types::BackupVaultListMember>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupVaultsOutput AWS API Documentation
    #
    class ListBackupVaultsOutput < Struct.new(
      :backup_vault_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCopyJobsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "string",
    #         max_results: 1,
    #         by_resource_arn: "ARN",
    #         by_state: "CREATED", # accepts CREATED, RUNNING, COMPLETED, FAILED
    #         by_created_before: Time.now,
    #         by_created_after: Time.now,
    #         by_resource_type: "ResourceType",
    #         by_destination_vault_arn: "string",
    #         by_account_id: "AccountId",
    #       }
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return maxResults number of items,
    #   NextToken allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] by_resource_arn
    #   Returns only copy jobs that match the specified resource Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] by_state
    #   Returns only copy jobs that are in the specified state.
    #   @return [String]
    #
    # @!attribute [rw] by_created_before
    #   Returns only copy jobs that were created before the specified date.
    #   @return [Time]
    #
    # @!attribute [rw] by_created_after
    #   Returns only copy jobs that were created after the specified date.
    #   @return [Time]
    #
    # @!attribute [rw] by_resource_type
    #   Returns only backup jobs for the specified resources:
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for AWS Storage Gateway
    #   @return [String]
    #
    # @!attribute [rw] by_destination_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a source
    #   backup vault to copy from; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] by_account_id
    #   The account ID to list the jobs from. Returns only copy jobs
    #   associated with the specified account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListCopyJobsInput AWS API Documentation
    #
    class ListCopyJobsInput < Struct.new(
      :next_token,
      :max_results,
      :by_resource_arn,
      :by_state,
      :by_created_before,
      :by_created_after,
      :by_resource_type,
      :by_destination_vault_arn,
      :by_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] copy_jobs
    #   An array of structures containing metadata about your copy jobs
    #   returned in JSON format.
    #   @return [Array<Types::CopyJob>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return maxResults number of items,
    #   NextToken allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListCopyJobsOutput AWS API Documentation
    #
    class ListCopyJobsOutput < Struct.new(
      :copy_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProtectedResourcesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListProtectedResourcesInput AWS API Documentation
    #
    class ListProtectedResourcesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   An array of resources successfully backed up by AWS Backup including
    #   the time the resource was saved, an Amazon Resource Name (ARN) of
    #   the resource, and a resource type.
    #   @return [Array<Types::ProtectedResource>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListProtectedResourcesOutput AWS API Documentation
    #
    class ListProtectedResourcesOutput < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecoveryPointsByBackupVaultInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #         next_token: "string",
    #         max_results: 1,
    #         by_resource_arn: "ARN",
    #         by_resource_type: "ResourceType",
    #         by_backup_plan_id: "string",
    #         by_created_before: Time.now,
    #         by_created_after: Time.now,
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] by_resource_arn
    #   Returns only recovery points that match the specified resource
    #   Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] by_resource_type
    #   Returns only recovery points that match the specified resource type.
    #   @return [String]
    #
    # @!attribute [rw] by_backup_plan_id
    #   Returns only recovery points that match the specified backup plan
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] by_created_before
    #   Returns only recovery points that were created before the specified
    #   timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] by_created_after
    #   Returns only recovery points that were created after the specified
    #   timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByBackupVaultInput AWS API Documentation
    #
    class ListRecoveryPointsByBackupVaultInput < Struct.new(
      :backup_vault_name,
      :next_token,
      :max_results,
      :by_resource_arn,
      :by_resource_type,
      :by_backup_plan_id,
      :by_created_before,
      :by_created_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] recovery_points
    #   An array of objects that contain detailed information about recovery
    #   points saved in a backup vault.
    #   @return [Array<Types::RecoveryPointByBackupVault>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByBackupVaultOutput AWS API Documentation
    #
    class ListRecoveryPointsByBackupVaultOutput < Struct.new(
      :next_token,
      :recovery_points)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecoveryPointsByResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByResourceInput AWS API Documentation
    #
    class ListRecoveryPointsByResourceInput < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] recovery_points
    #   An array of objects that contain detailed information about recovery
    #   points of the specified resource type.
    #   @return [Array<Types::RecoveryPointByResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByResourceOutput AWS API Documentation
    #
    class ListRecoveryPointsByResourceOutput < Struct.new(
      :next_token,
      :recovery_points)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRestoreJobsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "string",
    #         max_results: 1,
    #         by_account_id: "AccountId",
    #         by_created_before: Time.now,
    #         by_created_after: Time.now,
    #         by_status: "PENDING", # accepts PENDING, RUNNING, COMPLETED, ABORTED, FAILED
    #       }
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] by_account_id
    #   The account ID to list the jobs from. Returns only restore jobs
    #   associated with the specified account ID.
    #   @return [String]
    #
    # @!attribute [rw] by_created_before
    #   Returns only restore jobs that were created before the specified
    #   date.
    #   @return [Time]
    #
    # @!attribute [rw] by_created_after
    #   Returns only restore jobs that were created after the specified
    #   date.
    #   @return [Time]
    #
    # @!attribute [rw] by_status
    #   Returns only restore jobs associated with the specified job status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreJobsInput AWS API Documentation
    #
    class ListRestoreJobsInput < Struct.new(
      :next_token,
      :max_results,
      :by_account_id,
      :by_created_before,
      :by_created_after,
      :by_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] restore_jobs
    #   An array of objects that contain detailed information about jobs to
    #   restore saved resources.
    #   @return [Array<Types::RestoreJobsListMember>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreJobsOutput AWS API Documentation
    #
    class ListRestoreJobsOutput < Struct.new(
      :restore_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the type of resource. Valid targets
    #   for `ListTags` are recovery points, backup plans, and backup vaults.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListTagsInput AWS API Documentation
    #
    class ListTagsInput < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `maxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   To help organize your resources, you can assign your own metadata to
    #   the resources you create. Each tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListTagsOutput AWS API Documentation
    #
    class ListTagsOutput < Struct.new(
      :next_token,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Indicates that a required parameter is missing.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] context
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/MissingParameterValueException AWS API Documentation
    #
    class MissingParameterValueException < Struct.new(
      :code,
      :message,
      :type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about a backed-up resource.
    #
    # @!attribute [rw] resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource; for example, an Amazon Elastic Block Store
    #   (Amazon EBS) volume or an Amazon Relational Database Service (Amazon
    #   RDS) database. For VSS Windows backups, the only supported resource
    #   type is Amazon EC2.
    #   @return [String]
    #
    # @!attribute [rw] last_backup_time
    #   The date and time a resource was last backed up, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `LastBackupTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ProtectedResource AWS API Documentation
    #
    class ProtectedResource < Struct.new(
      :resource_arn,
      :resource_type,
      :last_backup_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutBackupVaultAccessPolicyInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #         policy: "IAMPolicy",
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The backup vault access policy document in JSON format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/PutBackupVaultAccessPolicyInput AWS API Documentation
    #
    class PutBackupVaultAccessPolicyInput < Struct.new(
      :backup_vault_name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutBackupVaultNotificationsInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #         sns_topic_arn: "ARN", # required
    #         backup_vault_events: ["BACKUP_JOB_STARTED"], # required, accepts BACKUP_JOB_STARTED, BACKUP_JOB_COMPLETED, BACKUP_JOB_SUCCESSFUL, BACKUP_JOB_FAILED, BACKUP_JOB_EXPIRED, RESTORE_JOB_STARTED, RESTORE_JOB_COMPLETED, RESTORE_JOB_SUCCESSFUL, RESTORE_JOB_FAILED, COPY_JOB_STARTED, COPY_JOB_SUCCESSFUL, COPY_JOB_FAILED, RECOVERY_POINT_MODIFIED, BACKUP_PLAN_CREATED, BACKUP_PLAN_MODIFIED
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) that specifies the topic for a backup
    #   vault’s events; for example,
    #   `arn:aws:sns:us-west-2:111122223333:MyVaultTopic`.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_events
    #   An array of events that indicate the status of jobs to back up
    #   resources to the backup vault.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/PutBackupVaultNotificationsInput AWS API Documentation
    #
    class PutBackupVaultNotificationsInput < Struct.new(
      :backup_vault_name,
      :sns_topic_arn,
      :backup_vault_events)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about the recovery points stored in a
    # backup vault.
    #
    # @!attribute [rw] recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An ARN that uniquely identifies a backup vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource saved as a recovery point; for example, an
    #   Amazon Elastic Block Store (Amazon EBS) volume or an Amazon
    #   Relational Database Service (Amazon RDS) database. For VSS Windows
    #   backups, the only supported resource type is Amazon EC2.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Contains identifying information about the creation of a recovery
    #   point, including the `BackupPlanArn`, `BackupPlanId`,
    #   `BackupPlanVersion`, and `BackupRuleId` of the backup plan that is
    #   used to create it.
    #   @return [Types::RecoveryPointCreator]
    #
    # @!attribute [rw] iam_role_arn
    #   Specifies the IAM role ARN used to create the target recovery point;
    #   for example, `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A status code specifying the state of the recovery point.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a recovery point is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   The date and time a job to restore a recovery point is completed, in
    #   Unix format and Coordinated Universal Time (UTC). The value of
    #   `CompletionDate` is accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] backup_size_in_bytes
    #   The size, in bytes, of a backup.
    #   @return [Integer]
    #
    # @!attribute [rw] calculated_lifecycle
    #   A `CalculatedLifecycle` object containing `DeleteAt` and
    #   `MoveToColdStorageAt` timestamps.
    #   @return [Types::CalculatedLifecycle]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. AWS Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “expire after days” setting
    #   must be 90 days greater than the “transition to cold after days”
    #   setting. The “transition to cold after days” setting cannot be
    #   changed after a backup has been transitioned to cold.
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] encryption_key_arn
    #   The server-side encryption key that is used to protect your backups;
    #   for example,
    #   `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #   @return [String]
    #
    # @!attribute [rw] is_encrypted
    #   A Boolean value that is returned as `TRUE` if the specified recovery
    #   point is encrypted, or `FALSE` if the recovery point is not
    #   encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_restore_time
    #   The date and time a recovery point was last restored, in Unix format
    #   and Coordinated Universal Time (UTC). The value of `LastRestoreTime`
    #   is accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RecoveryPointByBackupVault AWS API Documentation
    #
    class RecoveryPointByBackupVault < Struct.new(
      :recovery_point_arn,
      :backup_vault_name,
      :backup_vault_arn,
      :resource_arn,
      :resource_type,
      :created_by,
      :iam_role_arn,
      :status,
      :creation_date,
      :completion_date,
      :backup_size_in_bytes,
      :calculated_lifecycle,
      :lifecycle,
      :encryption_key_arn,
      :is_encrypted,
      :last_restore_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about a saved recovery point.
    #
    # @!attribute [rw] recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a recovery point is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   A status code specifying the state of the recovery point.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The server-side encryption key that is used to protect your backups;
    #   for example,
    #   `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #   @return [String]
    #
    # @!attribute [rw] backup_size_bytes
    #   The size, in bytes, of a backup.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RecoveryPointByResource AWS API Documentation
    #
    class RecoveryPointByResource < Struct.new(
      :recovery_point_arn,
      :creation_date,
      :status,
      :encryption_key_arn,
      :backup_size_bytes,
      :backup_vault_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the backup plan and rule that AWS Backup
    # used to initiate the recovery point backup.
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   plan; for example,
    #   `arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50`.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_version
    #   Version IDs are unique, randomly generated, Unicode, UTF-8 encoded
    #   strings that are at most 1,024 bytes long. They cannot be edited.
    #   @return [String]
    #
    # @!attribute [rw] backup_rule_id
    #   Uniquely identifies a rule used to schedule the backup of a
    #   selection of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RecoveryPointCreator AWS API Documentation
    #
    class RecoveryPointCreator < Struct.new(
      :backup_plan_id,
      :backup_plan_arn,
      :backup_plan_version,
      :backup_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that is required for the action doesn't exist.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] context
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :code,
      :message,
      :type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a restore job.
    #
    # @!attribute [rw] account_id
    #   The account ID that owns the restore job.
    #   @return [String]
    #
    # @!attribute [rw] restore_job_id
    #   Uniquely identifies the job that restores a recovery point.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a restore job is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date
    #   The date and time a job to restore a recovery point is completed, in
    #   Unix format and Coordinated Universal Time (UTC). The value of
    #   `CompletionDate` is accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   A status code specifying the state of the job initiated by AWS
    #   Backup to restore a recovery point.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed message explaining the status of the job to restore a
    #   recovery point.
    #   @return [String]
    #
    # @!attribute [rw] percent_done
    #   Contains an estimated percentage complete of a job at the time the
    #   job status was queried.
    #   @return [String]
    #
    # @!attribute [rw] backup_size_in_bytes
    #   The size, in bytes, of the restored resource.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role_arn
    #   Specifies the IAM role ARN used to create the target recovery point;
    #   for example, `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] expected_completion_time_minutes
    #   The amount of time in minutes that a job restoring a recovery point
    #   is expected to take.
    #   @return [Integer]
    #
    # @!attribute [rw] created_resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the listed restore jobs; for example, an Amazon
    #   Elastic Block Store (Amazon EBS) volume or an Amazon Relational
    #   Database Service (Amazon RDS) database. For VSS Windows backups, the
    #   only supported resource type is Amazon EC2.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreJobsListMember AWS API Documentation
    #
    class RestoreJobsListMember < Struct.new(
      :account_id,
      :restore_job_id,
      :recovery_point_arn,
      :creation_date,
      :completion_date,
      :status,
      :status_message,
      :percent_done,
      :backup_size_in_bytes,
      :iam_role_arn,
      :expected_completion_time_minutes,
      :created_resource_arn,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed due to a temporary failure of the server.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] context
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :code,
      :message,
      :type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartBackupJobInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #         resource_arn: "ARN", # required
    #         iam_role_arn: "IAMRoleArn", # required
    #         idempotency_token: "string",
    #         start_window_minutes: 1,
    #         complete_window_minutes: 1,
    #         lifecycle: {
    #           move_to_cold_storage_after_days: 1,
    #           delete_after_days: 1,
    #         },
    #         recovery_point_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         backup_options: {
    #           "BackupOptionKey" => "BackupOptionValue",
    #         },
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   Specifies the IAM role ARN used to create the target recovery point;
    #   for example, `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A customer chosen string that can be used to distinguish between
    #   calls to `StartBackupJob`.
    #   @return [String]
    #
    # @!attribute [rw] start_window_minutes
    #   A value in minutes after a backup is scheduled before a job will be
    #   canceled if it doesn't start successfully. This value is optional.
    #   @return [Integer]
    #
    # @!attribute [rw] complete_window_minutes
    #   A value in minutes after a backup job is successfully started before
    #   it must be completed or it will be canceled by AWS Backup. This
    #   value is optional.
    #   @return [Integer]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. AWS Backup will transition and
    #   expire backups automatically according to the lifecycle that you
    #   define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “expire after days” setting
    #   must be 90 days greater than the “transition to cold after days”
    #   setting. The “transition to cold after days” setting cannot be
    #   changed after a backup has been transitioned to cold.
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] recovery_point_tags
    #   To help organize your resources, you can assign your own metadata to
    #   the resources that you create. Each tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] backup_options
    #   Specifies the backup option for a selected resource. This option is
    #   only available for Windows VSS backup jobs.
    #
    #   Valid values: Set to `"WindowsVSS”:“enabled"` to enable WindowsVSS
    #   backup option and create a VSS Windows backup. Set to
    #   “WindowsVSS”:”disabled” to create a regular backup. The WindowsVSS
    #   option is not enabled by default.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartBackupJobInput AWS API Documentation
    #
    class StartBackupJobInput < Struct.new(
      :backup_vault_name,
      :resource_arn,
      :iam_role_arn,
      :idempotency_token,
      :start_window_minutes,
      :complete_window_minutes,
      :lifecycle,
      :recovery_point_tags,
      :backup_options)
      SENSITIVE = [:recovery_point_tags]
      include Aws::Structure
    end

    # @!attribute [rw] backup_job_id
    #   Uniquely identifies a request to AWS Backup to back up a resource.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that a backup job is started, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartBackupJobOutput AWS API Documentation
    #
    class StartBackupJobOutput < Struct.new(
      :backup_job_id,
      :recovery_point_arn,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartCopyJobInput
    #   data as a hash:
    #
    #       {
    #         recovery_point_arn: "ARN", # required
    #         source_backup_vault_name: "BackupVaultName", # required
    #         destination_backup_vault_arn: "ARN", # required
    #         iam_role_arn: "IAMRoleArn", # required
    #         idempotency_token: "string",
    #         lifecycle: {
    #           move_to_cold_storage_after_days: 1,
    #           delete_after_days: 1,
    #         },
    #       }
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point to use for the copy
    #   job; for example,
    #   arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
    #   @return [String]
    #
    # @!attribute [rw] source_backup_vault_name
    #   The name of a logical source container where backups are stored.
    #   Backup vaults are identified by names that are unique to the account
    #   used to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] destination_backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a destination
    #   backup vault to copy to; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   Specifies the IAM role ARN used to copy the target recovery point;
    #   for example, `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A customer chosen string that can be used to distinguish between
    #   calls to `StartCopyJob`.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   Contains an array of `Transition` objects specifying how long in
    #   days before a recovery point transitions to cold storage or is
    #   deleted.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, on the console, the “expire
    #   after days” setting must be 90 days greater than the “transition to
    #   cold after days” setting. The “transition to cold after days”
    #   setting cannot be changed after a backup has been transitioned to
    #   cold.
    #   @return [Types::Lifecycle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartCopyJobInput AWS API Documentation
    #
    class StartCopyJobInput < Struct.new(
      :recovery_point_arn,
      :source_backup_vault_name,
      :destination_backup_vault_arn,
      :iam_role_arn,
      :idempotency_token,
      :lifecycle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] copy_job_id
    #   Uniquely identifies a copy job.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that a copy job is started, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartCopyJobOutput AWS API Documentation
    #
    class StartCopyJobOutput < Struct.new(
      :copy_job_id,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartRestoreJobInput
    #   data as a hash:
    #
    #       {
    #         recovery_point_arn: "ARN", # required
    #         metadata: { # required
    #           "MetadataKey" => "MetadataValue",
    #         },
    #         iam_role_arn: "IAMRoleArn", # required
    #         idempotency_token: "string",
    #         resource_type: "ResourceType",
    #       }
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A set of metadata key-value pairs. Contains information, such as a
    #   resource name, required to restore a recovery point.
    #
    #   You can get configuration metadata about a resource at the time it
    #   was backed up by calling `GetRecoveryPointRestoreMetadata`. However,
    #   values in addition to those provided by
    #   `GetRecoveryPointRestoreMetadata` might be required to restore a
    #   resource. For example, you might need to provide a new resource name
    #   if the original already exists.
    #
    #   You need to specify specific metadata to restore an Amazon Elastic
    #   File System (Amazon EFS) instance:
    #
    #   * `file-system-id`\: The ID of the Amazon EFS file system that is
    #     backed up by AWS Backup. Returned in
    #     `GetRecoveryPointRestoreMetadata`.
    #
    #   * `Encrypted`\: A Boolean value that, if true, specifies that the
    #     file system is encrypted. If `KmsKeyId` is specified, `Encrypted`
    #     must be set to `true`.
    #
    #   * `KmsKeyId`\: Specifies the AWS KMS key that is used to encrypt the
    #     restored file system. You can specify a key from another AWS
    #     account provided that key it is properly shared with your account
    #     via AWS KMS.
    #
    #   * `PerformanceMode`\: Specifies the throughput mode of the file
    #     system.
    #
    #   * `CreationToken`\: A user-supplied value that ensures the
    #     uniqueness (idempotency) of the request.
    #
    #   * `newFileSystem`\: A Boolean value that, if true, specifies that
    #     the recovery point is restored to a new Amazon EFS file system.
    #
    #   * `ItemsToRestore `\: A serialized list of up to five strings where
    #     each string is a file path. Use `ItemsToRestore` to restore
    #     specific files or directories rather than the entire file system.
    #     This parameter is optional.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that AWS Backup uses
    #   to create the target recovery point; for example,
    #   `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A customer chosen string that can be used to distinguish between
    #   calls to `StartRestoreJob`.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Starts a job to restore a recovery point for one of the following
    #   resources:
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for AWS Storage Gateway
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartRestoreJobInput AWS API Documentation
    #
    class StartRestoreJobInput < Struct.new(
      :recovery_point_arn,
      :metadata,
      :iam_role_arn,
      :idempotency_token,
      :resource_type)
      SENSITIVE = [:metadata]
      include Aws::Structure
    end

    # @!attribute [rw] restore_job_id
    #   Uniquely identifies the job that restores a recovery point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartRestoreJobOutput AWS API Documentation
    #
    class StartRestoreJobOutput < Struct.new(
      :restore_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopBackupJobInput
    #   data as a hash:
    #
    #       {
    #         backup_job_id: "string", # required
    #       }
    #
    # @!attribute [rw] backup_job_id
    #   Uniquely identifies a request to AWS Backup to back up a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StopBackupJobInput AWS API Documentation
    #
    class StopBackupJobInput < Struct.new(
      :backup_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the type of the tagged resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that are used to help organize your resources. You
    #   can assign your own metadata to the resources you create.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #         tag_key_list: ["string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the type of the tagged resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_key_list
    #   A list of keys to identify which key-value tags to remove from a
    #   resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_key_list)
      SENSITIVE = [:tag_key_list]
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateBackupPlanInput
    #   data as a hash:
    #
    #       {
    #         backup_plan_id: "string", # required
    #         backup_plan: { # required
    #           backup_plan_name: "BackupPlanName", # required
    #           rules: [ # required
    #             {
    #               rule_name: "BackupRuleName", # required
    #               target_backup_vault_name: "BackupVaultName", # required
    #               schedule_expression: "CronExpression",
    #               start_window_minutes: 1,
    #               completion_window_minutes: 1,
    #               lifecycle: {
    #                 move_to_cold_storage_after_days: 1,
    #                 delete_after_days: 1,
    #               },
    #               recovery_point_tags: {
    #                 "TagKey" => "TagValue",
    #               },
    #               copy_actions: [
    #                 {
    #                   lifecycle: {
    #                     move_to_cold_storage_after_days: 1,
    #                     delete_after_days: 1,
    #                   },
    #                   destination_backup_vault_arn: "ARN", # required
    #                 },
    #               ],
    #             },
    #           ],
    #           advanced_backup_settings: [
    #             {
    #               resource_type: "ResourceType",
    #               backup_options: {
    #                 "BackupOptionKey" => "BackupOptionValue",
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan
    #   Specifies the body of a backup plan. Includes a `BackupPlanName` and
    #   one or more sets of `Rules`.
    #   @return [Types::BackupPlanInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateBackupPlanInput AWS API Documentation
    #
    class UpdateBackupPlanInput < Struct.new(
      :backup_plan_id,
      :backup_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_plan_id
    #   Uniquely identifies a backup plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   plan; for example,
    #   `arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a backup plan is updated, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] version_id
    #   Unique, randomly generated, Unicode, UTF-8 encoded strings that are
    #   at most 1,024 bytes long. Version Ids cannot be edited.
    #   @return [String]
    #
    # @!attribute [rw] advanced_backup_settings
    #   Contains a list of `BackupOptions` for each resource type.
    #   @return [Array<Types::AdvancedBackupSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateBackupPlanOutput AWS API Documentation
    #
    class UpdateBackupPlanOutput < Struct.new(
      :backup_plan_id,
      :backup_plan_arn,
      :creation_date,
      :version_id,
      :advanced_backup_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRecoveryPointLifecycleInput
    #   data as a hash:
    #
    #       {
    #         backup_vault_name: "BackupVaultName", # required
    #         recovery_point_arn: "ARN", # required
    #         lifecycle: {
    #           move_to_cold_storage_after_days: 1,
    #           delete_after_days: 1,
    #         },
    #       }
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the AWS Region where they are created. They
    #   consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. AWS Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “expire after days” setting
    #   must be 90 days greater than the “transition to cold after days”
    #   setting. The “transition to cold after days” setting cannot be
    #   changed after a backup has been transitioned to cold.
    #   @return [Types::Lifecycle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRecoveryPointLifecycleInput AWS API Documentation
    #
    class UpdateRecoveryPointLifecycleInput < Struct.new(
      :backup_vault_name,
      :recovery_point_arn,
      :lifecycle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_arn
    #   An ARN that uniquely identifies a backup vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. AWS Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “expire after days” setting
    #   must be 90 days greater than the “transition to cold after days”
    #   setting. The “transition to cold after days” setting cannot be
    #   changed after a backup has been transitioned to cold.
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] calculated_lifecycle
    #   A `CalculatedLifecycle` object containing `DeleteAt` and
    #   `MoveToColdStorageAt` timestamps.
    #   @return [Types::CalculatedLifecycle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRecoveryPointLifecycleOutput AWS API Documentation
    #
    class UpdateRecoveryPointLifecycleOutput < Struct.new(
      :backup_vault_arn,
      :recovery_point_arn,
      :lifecycle,
      :calculated_lifecycle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRegionSettingsInput
    #   data as a hash:
    #
    #       {
    #         resource_type_opt_in_preference: {
    #           "ResourceType" => false,
    #         },
    #       }
    #
    # @!attribute [rw] resource_type_opt_in_preference
    #   Updates the list of services along with the opt-in preferences for
    #   the Region.
    #   @return [Hash<String,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRegionSettingsInput AWS API Documentation
    #
    class UpdateRegionSettingsInput < Struct.new(
      :resource_type_opt_in_preference)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
