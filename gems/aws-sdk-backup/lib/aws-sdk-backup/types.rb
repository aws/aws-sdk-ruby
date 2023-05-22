# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Backup
  module Types

    # A list of backup options for each resource type.
    #
    # @!attribute [rw] resource_type
    #   Specifies an object containing resource type and backup options. The
    #   only supported resource type is Amazon EC2 instances with Windows
    #   Volume Shadow Copy Service (VSS). For a CloudFormation example, see
    #   the [sample CloudFormation template to enable Windows VSS][1] in the
    #   *Backup User Guide*.
    #
    #   Valid values: `EC2`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/integrate-cloudformation-with-aws-backup.html
    #   @return [String]
    #
    # @!attribute [rw] backup_options
    #   Specifies the backup option for a selected resource. This option is
    #   only available for Windows VSS backup jobs.
    #
    #   Valid values:
    #
    #   Set to `"WindowsVSS":"enabled"` to enable the `WindowsVSS` backup
    #   option and create a Windows VSS backup.
    #
    #   Set to `"WindowsVSS":"disabled"` to create a regular backup. The
    #   `WindowsVSS` option is not enabled by default.
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
    #   Uniquely identifies a request to Backup to back up a resource.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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
    #   Specifies the IAM role ARN used to create the target recovery point.
    #   IAM roles other than the default role must include either
    #   `AWSBackup` or `AwsBackup` in the role name. For example,
    #   `arn:aws:iam::123456789012:role/AWSBackupRDSAccess`. Role names
    #   without those strings lack permissions to perform backup jobs.
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
    #   The type of Amazon Web Services resource to be backed up; for
    #   example, an Amazon Elastic Block Store (Amazon EBS) volume or an
    #   Amazon Relational Database Service (Amazon RDS) database. For
    #   Windows Volume Shadow Copy Service (VSS) backups, the only supported
    #   resource type is Amazon EC2.
    #   @return [String]
    #
    # @!attribute [rw] bytes_transferred
    #   The size in bytes transferred to a backup vault at the time that the
    #   job status was queried.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_options
    #   Specifies the backup option for a selected resource. This option is
    #   only available for Windows Volume Shadow Copy Service (VSS) backup
    #   jobs.
    #
    #   Valid values: Set to `"WindowsVSS":"enabled"` to enable the
    #   `WindowsVSS` backup option and create a Windows VSS backup. Set to
    #   `"WindowsVSS":"disabled"` to create a regular backup. If you specify
    #   an invalid option, you get an `InvalidParameterValueException`
    #   exception.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] backup_type
    #   Represents the type of backup for a backup job.
    #   @return [String]
    #
    # @!attribute [rw] parent_job_id
    #   This uniquely identifies a request to Backup to back up a resource.
    #   The return will be the parent (composite) job ID.
    #   @return [String]
    #
    # @!attribute [rw] is_parent
    #   This is a boolean value indicating this is a parent (composite)
    #   backup job.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_name
    #   This is the non-unique name of the resource that belongs to the
    #   specified backup.
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
      :backup_type,
      :parent_job_id,
      :is_parent,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an optional backup plan display name and an array of
    # `BackupRule` objects, each of which specifies a backup rule. Each rule
    # in a backup plan is a separate scheduled task and can back up a
    # different selection of Amazon Web Services resources.
    #
    # @!attribute [rw] backup_plan_name
    #   The display name of a backup plan. Must contain 1 to 50 alphanumeric
    #   or '-\_.' characters.
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
    # in a backup plan is a separate scheduled task.
    #
    # @!attribute [rw] backup_plan_name
    #   The display name of a backup plan. Must contain 1 to 50 alphanumeric
    #   or '-\_.' characters.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   An array of `BackupRule` objects, each of which specifies a
    #   scheduled task that is used to back up a selection of resources.
    #   @return [Array<Types::BackupRuleInput>]
    #
    # @!attribute [rw] advanced_backup_settings
    #   Specifies a list of `BackupOptions` for each resource type. These
    #   settings are only available for Windows Volume Shadow Copy Service
    #   (VSS) backup jobs.
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
    #   twice. This parameter is optional.
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or
    #   '-\_.' characters.
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
    #   A display name for a backup rule. Must contain 1 to 50 alphanumeric
    #   or '-\_.' characters.
    #   @return [String]
    #
    # @!attribute [rw] target_backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   A cron expression in UTC specifying when Backup initiates a backup
    #   job. For more information about Amazon Web Services cron
    #   expressions, see [Schedule Expressions for Rules][1] in the *Amazon
    #   CloudWatch Events User Guide.*. Two examples of Amazon Web Services
    #   cron expressions are ` 15 * ? * * *` (take a backup every hour at 15
    #   minutes past the hour) and `0 12 * * ? *` (take a backup every day
    #   at 12 noon UTC). For a table of examples, click the preceding link
    #   and scroll down the page.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
    #   @return [String]
    #
    # @!attribute [rw] start_window_minutes
    #   A value in minutes after a backup is scheduled before a job will be
    #   canceled if it doesn't start successfully. This value is optional.
    #   If this value is included, it must be at least 60 minutes to avoid
    #   errors.
    #
    #   During the start window, the backup job status remains in `CREATED`
    #   status until it has successfully begun or until the start window
    #   time has run out. If within the start window time Backup receives an
    #   error that allows the job to be retried, Backup will automatically
    #   retry to begin the job at least every 10 minutes until the backup
    #   successfully begins (the job status changes to `RUNNING`) or until
    #   the job status changes to `EXPIRED` (which is expected to occur when
    #   the start window time is over).
    #   @return [Integer]
    #
    # @!attribute [rw] completion_window_minutes
    #   A value in minutes after a backup job is successfully started before
    #   it must be completed or it will be canceled by Backup. This value is
    #   optional.
    #   @return [Integer]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “retention” setting must be
    #   90 days greater than the “transition to cold after days” setting.
    #   The “transition to cold after days” setting cannot be changed after
    #   a backup has been transitioned to cold.
    #
    #   Resource types that are able to be transitioned to cold storage are
    #   listed in the "Lifecycle to cold storage" section of the [ Feature
    #   availability by resource][1] table. Backup ignores this expression
    #   for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
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
    # @!attribute [rw] enable_continuous_backup
    #   Specifies whether Backup creates continuous backups. True causes
    #   Backup to create continuous backups capable of point-in-time restore
    #   (PITR). False (or not specified) causes Backup to create snapshot
    #   backups.
    #   @return [Boolean]
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
      :copy_actions,
      :enable_continuous_backup)
      SENSITIVE = [:recovery_point_tags]
      include Aws::Structure
    end

    # Specifies a scheduled task used to back up a selection of resources.
    #
    # @!attribute [rw] rule_name
    #   A display name for a backup rule. Must contain 1 to 50 alphanumeric
    #   or '-\_.' characters.
    #   @return [String]
    #
    # @!attribute [rw] target_backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   A CRON expression in UTC specifying when Backup initiates a backup
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] start_window_minutes
    #   A value in minutes after a backup is scheduled before a job will be
    #   canceled if it doesn't start successfully. This value is optional.
    #   If this value is included, it must be at least 60 minutes to avoid
    #   errors.
    #
    #   During the start window, the backup job status remains in `CREATED`
    #   status until it has successfully begun or until the start window
    #   time has run out. If within the start window time Backup receives an
    #   error that allows the job to be retried, Backup will automatically
    #   retry to begin the job at least every 10 minutes until the backup
    #   successfully begins (the job status changes to `RUNNING`) or until
    #   the job status changes to `EXPIRED` (which is expected to occur when
    #   the start window time is over).
    #   @return [Integer]
    #
    # @!attribute [rw] completion_window_minutes
    #   A value in minutes after a backup job is successfully started before
    #   it must be completed or it will be canceled by Backup. This value is
    #   optional.
    #   @return [Integer]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. Backup will transition and expire
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “retention” setting must be
    #   90 days greater than the “transition to cold after days” setting.
    #   The “transition to cold after days” setting cannot be changed after
    #   a backup has been transitioned to cold.
    #
    #   Resource types that are able to be transitioned to cold storage are
    #   listed in the "Lifecycle to cold storage" section of the [ Feature
    #   availability by resource][1] table. Backup ignores this expression
    #   for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
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
    # @!attribute [rw] enable_continuous_backup
    #   Specifies whether Backup creates continuous backups. True causes
    #   Backup to create continuous backups capable of point-in-time restore
    #   (PITR). False (or not specified) causes Backup to create snapshot
    #   backups.
    #   @return [Boolean]
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
      :copy_actions,
      :enable_continuous_backup)
      SENSITIVE = [:recovery_point_tags]
      include Aws::Structure
    end

    # Used to specify a set of resources to a backup plan.
    #
    # Specifying your desired `Conditions`, `ListOfTags`, `NotResources`,
    # and/or `Resources` is recommended. If none of these are specified,
    # Backup will attempt to select all supported and opted-in storage
    # resources, which could have unintended cost implications.
    #
    # @!attribute [rw] selection_name
    #   The display name of a resource selection document. Must contain 1 to
    #   50 alphanumeric or '-\_.' characters.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that Backup uses to authenticate when
    #   backing up the target resource; for example,
    #   `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   A list of Amazon Resource Names (ARNs) to assign to a backup plan.
    #   The maximum number of ARNs is 500 without wildcards, or 30 ARNs with
    #   wildcards.
    #
    #   If you need to assign many resources to a backup plan, consider a
    #   different resource selection strategy, such as assigning all
    #   resources of a resource type or refining your resource selection
    #   using tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_of_tags
    #   A list of conditions that you define to assign resources to your
    #   backup plans using tags. For example, `"StringEquals": \{
    #   "ConditionKey": "aws:ResourceTag/CreatedByCryo", "ConditionValue":
    #   "true" \},`. Condition operators are case sensitive.
    #
    #   `ListOfTags` differs from `Conditions` as follows:
    #
    #   * When you specify more than one condition, you assign all resources
    #     that match AT LEAST ONE condition (using OR logic).
    #
    #   * `ListOfTags` only supports `StringEquals`. `Conditions` supports
    #     `StringEquals`, `StringLike`, `StringNotEquals`, and
    #     `StringNotLike`.
    #   @return [Array<Types::Condition>]
    #
    # @!attribute [rw] not_resources
    #   A list of Amazon Resource Names (ARNs) to exclude from a backup
    #   plan. The maximum number of ARNs is 500 without wildcards, or 30
    #   ARNs with wildcards.
    #
    #   If you need to exclude many resources from a backup plan, consider a
    #   different resource selection strategy, such as assigning only one or
    #   a few resource types or refining your resource selection using tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] conditions
    #   A list of conditions that you define to assign resources to your
    #   backup plans using tags. For example, `"StringEquals": \{
    #   "ConditionKey": "aws:ResourceTag/CreatedByCryo", "ConditionValue":
    #   "true" \},`. Condition operators are case sensitive.
    #
    #   `Conditions` differs from `ListOfTags` as follows:
    #
    #   * When you specify more than one condition, you only assign the
    #     resources that match ALL conditions (using AND logic).
    #
    #   * `Conditions` supports `StringEquals`, `StringLike`,
    #     `StringNotEquals`, and `StringNotLike`. `ListOfTags` only supports
    #     `StringEquals`.
    #   @return [Types::Conditions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupSelection AWS API Documentation
    #
    class BackupSelection < Struct.new(
      :selection_name,
      :iam_role_arn,
      :resources,
      :list_of_tags,
      :not_resources,
      :conditions)
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
    #   twice. This parameter is optional.
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or
    #   '-\_.' characters.
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
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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
    #   A server-side encryption key you can specify to encrypt your backups
    #   from services that support full Backup management; for example,
    #   `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #   If you specify a key, you must specify its ARN, not its alias. If
    #   you do not specify a key, Backup creates a KMS key for you by
    #   default.
    #
    #   To learn which Backup services support full Backup management and
    #   how Backup handles encryption for backups from services that do not
    #   yet support full Backup, see [ Encryption for backups in Backup][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/encryption.html
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and allows failed
    #   requests to be retried without the risk of running the operation
    #   twice. This parameter is optional.
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or
    #   '-\_.' characters.
    #   @return [String]
    #
    # @!attribute [rw] number_of_recovery_points
    #   The number of recovery points that are stored in a backup vault.
    #   @return [Integer]
    #
    # @!attribute [rw] locked
    #   A Boolean value that indicates whether Backup Vault Lock applies to
    #   the selected backup vault. If `true`, Vault Lock prevents delete and
    #   update operations on the recovery points in the selected vault.
    #   @return [Boolean]
    #
    # @!attribute [rw] min_retention_days
    #   The Backup Vault Lock setting that specifies the minimum retention
    #   period that the vault retains its recovery points. If this parameter
    #   is not specified, Vault Lock does not enforce a minimum retention
    #   period.
    #
    #   If specified, any backup or copy job to the vault must have a
    #   lifecycle policy with a retention period equal to or longer than the
    #   minimum retention period. If the job's retention period is shorter
    #   than that minimum retention period, then the vault fails the backup
    #   or copy job, and you should either modify your lifecycle settings or
    #   use a different vault. Recovery points already stored in the vault
    #   prior to Vault Lock are not affected.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retention_days
    #   The Backup Vault Lock setting that specifies the maximum retention
    #   period that the vault retains its recovery points. If this parameter
    #   is not specified, Vault Lock does not enforce a maximum retention
    #   period on the recovery points in the vault (allowing indefinite
    #   storage).
    #
    #   If specified, any backup or copy job to the vault must have a
    #   lifecycle policy with a retention period equal to or shorter than
    #   the maximum retention period. If the job's retention period is
    #   longer than that maximum retention period, then the vault fails the
    #   backup or copy job, and you should either modify your lifecycle
    #   settings or use a different vault. Recovery points already stored in
    #   the vault prior to Vault Lock are not affected.
    #   @return [Integer]
    #
    # @!attribute [rw] lock_date
    #   The date and time when Backup Vault Lock configuration becomes
    #   immutable, meaning it cannot be changed or deleted.
    #
    #   If you applied Vault Lock to your vault without specifying a lock
    #   date, you can change your Vault Lock settings, or delete Vault Lock
    #   from the vault entirely, at any time.
    #
    #   This value is in Unix format, Coordinated Universal Time (UTC), and
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupVaultListMember AWS API Documentation
    #
    class BackupVaultListMember < Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :creation_date,
      :encryption_key_arn,
      :creator_request_id,
      :number_of_recovery_points,
      :locked,
      :min_retention_days,
      :max_retention_days,
      :lock_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains `DeleteAt` and `MoveToColdStorageAt` timestamps, which are
    # used to specify a lifecycle for a recovery point.
    #
    # The lifecycle defines when a protected resource is transitioned to
    # cold storage and when it expires. Backup transitions and expires
    # backups automatically according to the lifecycle that you define.
    #
    # Backups transitioned to cold storage must be stored in cold storage
    # for a minimum of 90 days. Therefore, the “retention” setting must be
    # 90 days greater than the “transition to cold after days” setting. The
    # “transition to cold after days” setting cannot be changed after a
    # backup has been transitioned to cold.
    #
    # Resource types that are able to be transitioned to cold storage are
    # listed in the "Lifecycle to cold storage" section of the [ Feature
    # availability by resource][1] table. Backup ignores this expression for
    # other resource types.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
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

    # @!attribute [rw] legal_hold_id
    #   Legal hold ID required to remove the specified legal hold on a
    #   recovery point.
    #   @return [String]
    #
    # @!attribute [rw] cancel_description
    #   String describing the reason for removing the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] retain_record_in_days
    #   The integer amount in days specifying amount of days after this API
    #   operation to remove legal hold.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CancelLegalHoldInput AWS API Documentation
    #
    class CancelLegalHoldInput < Struct.new(
      :legal_hold_id,
      :cancel_description,
      :retain_record_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CancelLegalHoldOutput AWS API Documentation
    #
    class CancelLegalHoldOutput < Aws::EmptyStructure; end

    # Contains an array of triplets made up of a condition type (such as
    # `StringEquals`), a key, and a value. Used to filter resources using
    # their tags and assign them to a backup plan. Case sensitive.
    #
    # @!attribute [rw] condition_type
    #   An operation applied to a key-value pair used to assign resources to
    #   your backup plan. Condition only supports `StringEquals`. For more
    #   flexible assignment options, including `StringLike` and the ability
    #   to exclude resources from your backup plan, use `Conditions` (with
    #   an "s" on the end) for your [ `BackupSelection` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BackupSelection.html
    #   @return [String]
    #
    # @!attribute [rw] condition_key
    #   The key in a key-value pair. For example, in the tag `Department:
    #   Accounting`, `Department` is the key.
    #   @return [String]
    #
    # @!attribute [rw] condition_value
    #   The value in a key-value pair. For example, in the tag `Department:
    #   Accounting`, `Accounting` is the value.
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

    # Includes information about tags you define to assign tagged resources
    # to a backup plan.
    #
    # @!attribute [rw] condition_key
    #   The key in a key-value pair. For example, in the tag `Department:
    #   Accounting`, `Department` is the key.
    #   @return [String]
    #
    # @!attribute [rw] condition_value
    #   The value in a key-value pair. For example, in the tag `Department:
    #   Accounting`, `Accounting` is the value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ConditionParameter AWS API Documentation
    #
    class ConditionParameter < Struct.new(
      :condition_key,
      :condition_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about which resources to include or exclude from
    # a backup plan using their tags. Conditions are case sensitive.
    #
    # @!attribute [rw] string_equals
    #   Filters the values of your tagged resources for only those resources
    #   that you tagged with the same value. Also called "exact matching."
    #   @return [Array<Types::ConditionParameter>]
    #
    # @!attribute [rw] string_not_equals
    #   Filters the values of your tagged resources for only those resources
    #   that you tagged that do not have the same value. Also called
    #   "negated matching."
    #   @return [Array<Types::ConditionParameter>]
    #
    # @!attribute [rw] string_like
    #   Filters the values of your tagged resources for matching tag values
    #   with the use of a wildcard character (*) anywhere in the string.
    #   For example, "prod*" or "*rod*" matches the tag value
    #   "production".
    #   @return [Array<Types::ConditionParameter>]
    #
    # @!attribute [rw] string_not_like
    #   Filters the values of your tagged resources for non-matching tag
    #   values with the use of a wildcard character (*) anywhere in the
    #   string.
    #   @return [Array<Types::ConditionParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/Conditions AWS API Documentation
    #
    class Conditions < Struct.new(
      :string_equals,
      :string_not_equals,
      :string_like,
      :string_not_like)
      SENSITIVE = []
      include Aws::Structure
    end

    # Backup can't perform the action that you requested until it finishes
    # performing a previous action. Try again later.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :message,
      :type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of parameters for a control. A control can have zero, one, or
    # more than one parameter. An example of a control with two parameters
    # is: "backup plan frequency is at least `daily` and the retention
    # period is at least `1 year`". The first parameter is `daily`. The
    # second parameter is `1 year`.
    #
    # @!attribute [rw] parameter_name
    #   The name of a parameter, for example, `BackupPlanFrequency`.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The value of parameter, for example, `hourly`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ControlInputParameter AWS API Documentation
    #
    class ControlInputParameter < Struct.new(
      :parameter_name,
      :parameter_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A framework consists of one or more controls. Each control has its own
    # control scope. The control scope can include one or more resource
    # types, a combination of a tag key and value, or a combination of one
    # resource type and one resource ID. If no scope is specified,
    # evaluations for the rule are triggered when any resource in your
    # recording group changes in configuration.
    #
    # <note markdown="1"> To set a control scope that includes all of a particular resource,
    # leave the `ControlScope` empty or do not pass it when calling
    # `CreateFramework`.
    #
    #  </note>
    #
    # @!attribute [rw] compliance_resource_ids
    #   The ID of the only Amazon Web Services resource that you want your
    #   control scope to contain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compliance_resource_types
    #   Describes whether the control scope includes one or more types of
    #   resources, such as `EFS` or `RDS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tag key-value pair applied to those Amazon Web Services
    #   resources that you want to trigger an evaluation for a rule. A
    #   maximum of one key-value pair can be provided. The tag value is
    #   optional, but it cannot be an empty string. The structure to assign
    #   a tag is: `[\{"Key":"string","Value":"string"\}]`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ControlScope AWS API Documentation
    #
    class ControlScope < Struct.new(
      :compliance_resource_ids,
      :compliance_resource_types,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the copy operation.
    #
    # @!attribute [rw] lifecycle
    #   Contains an array of `Transition` objects specifying how long in
    #   days before a recovery point transitions to cold storage or is
    #   deleted.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, on the console, the “retention”
    #   setting must be 90 days greater than the “transition to cold after
    #   days” setting. The “transition to cold after days” setting cannot be
    #   changed after a backup has been transitioned to cold.
    #
    #   Resource types that are able to be transitioned to cold storage are
    #   listed in the "Lifecycle to cold storage" section of the [ Feature
    #   availability by resource][1] table. Backup ignores this expression
    #   for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
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
    #   The Amazon Web Services resource to be copied; for example, an
    #   Amazon Elastic Block Store (Amazon EBS) volume or an Amazon
    #   Relational Database Service (Amazon RDS) database.
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
    #   Contains information about the backup plan and rule that Backup used
    #   to initiate the recovery point backup.
    #   @return [Types::RecoveryPointCreator]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource to be copied; for example,
    #   an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon
    #   Relational Database Service (Amazon RDS) database.
    #   @return [String]
    #
    # @!attribute [rw] parent_job_id
    #   This uniquely identifies a request to Backup to copy a resource. The
    #   return will be the parent (composite) job ID.
    #   @return [String]
    #
    # @!attribute [rw] is_parent
    #   This is a boolean value indicating this is a parent (composite) copy
    #   job.
    #   @return [Boolean]
    #
    # @!attribute [rw] composite_member_identifier
    #   This is the identifier of a resource within a composite group, such
    #   as nested (child) recovery point belonging to a composite (parent)
    #   stack. The ID is transferred from the [ logical ID][1] within a
    #   stack.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html#resources-section-structure-syntax
    #   @return [String]
    #
    # @!attribute [rw] number_of_child_jobs
    #   This is the number of child (nested) copy jobs.
    #   @return [Integer]
    #
    # @!attribute [rw] child_jobs_in_state
    #   This returns the statistics of the included child (nested) copy
    #   jobs.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] resource_name
    #   This is the non-unique name of the resource that belongs to the
    #   specified backup.
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
      :resource_type,
      :parent_job_id,
      :is_parent,
      :composite_member_identifier,
      :number_of_child_jobs,
      :child_jobs_in_state,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or
    #   '-\_.' characters.
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
    #   is only available for Windows Volume Shadow Copy Service (VSS)
    #   backup jobs.
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
    #   twice. This parameter is optional.
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or
    #   '-\_.' characters.
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

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of letters, numbers, and hyphens.
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
    #   twice. This parameter is optional.
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or
    #   '-\_.' characters.
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

    # @!attribute [rw] framework_name
    #   The unique name of the framework. The name must be between 1 and 256
    #   characters, starting with a letter, and consisting of letters (a-z,
    #   A-Z), numbers (0-9), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] framework_description
    #   An optional description of the framework with a maximum of 1,024
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] framework_controls
    #   A list of the controls that make up the framework. Each control in
    #   the list has a name, input parameters, and scope.
    #   @return [Array<Types::FrameworkControl>]
    #
    # @!attribute [rw] idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `CreateFrameworkInput`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] framework_tags
    #   Metadata that you can assign to help organize the frameworks that
    #   you create. Each tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateFrameworkInput AWS API Documentation
    #
    class CreateFrameworkInput < Struct.new(
      :framework_name,
      :framework_description,
      :framework_controls,
      :idempotency_token,
      :framework_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] framework_name
    #   The unique name of the framework. The name must be between 1 and 256
    #   characters, starting with a letter, and consisting of letters (a-z,
    #   A-Z), numbers (0-9), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] framework_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateFrameworkOutput AWS API Documentation
    #
    class CreateFrameworkOutput < Struct.new(
      :framework_name,
      :framework_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] title
    #   This is the string title of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   This is the string description of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   This is a user-chosen string used to distinguish between otherwise
    #   identical calls. Retrying a successful request with the same
    #   idempotency token results in a success message with no action taken.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_selection
    #   This specifies criteria to assign a set of resources, such as
    #   resource types or backup vaults.
    #   @return [Types::RecoveryPointSelection]
    #
    # @!attribute [rw] tags
    #   Optional tags to include. A tag is a key-value pair you can use to
    #   manage, filter, and search for your resources. Allowed characters
    #   include UTF-8 letters, numbers, spaces, and the following
    #   characters: + - = . \_ : /.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateLegalHoldInput AWS API Documentation
    #
    class CreateLegalHoldInput < Struct.new(
      :title,
      :description,
      :idempotency_token,
      :recovery_point_selection,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] title
    #   This is the string title of the legal hold returned after creating
    #   the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This displays the status of the legal hold returned after creating
    #   the legal hold. Statuses can be `ACTIVE`, `PENDING`, `CANCELED`,
    #   `CANCELING`, or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   This is the returned string description of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_id
    #   Legal hold ID returned for the specified legal hold on a recovery
    #   point.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_arn
    #   This is the ARN (Amazon Resource Number) of the created legal hold.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   Time in number format when legal hold was created.
    #   @return [Time]
    #
    # @!attribute [rw] recovery_point_selection
    #   This specifies criteria to assign a set of resources, such as
    #   resource types or backup vaults.
    #   @return [Types::RecoveryPointSelection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateLegalHoldOutput AWS API Documentation
    #
    class CreateLegalHoldOutput < Struct.new(
      :title,
      :status,
      :description,
      :legal_hold_id,
      :legal_hold_arn,
      :creation_date,
      :recovery_point_selection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_plan_name
    #   The unique name of the report plan. The name must be between 1 and
    #   256 characters, starting with a letter, and consisting of letters
    #   (a-z, A-Z), numbers (0-9), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] report_plan_description
    #   An optional description of the report plan with a maximum of 1,024
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] report_delivery_channel
    #   A structure that contains information about where and how to deliver
    #   your reports, specifically your Amazon S3 bucket name, S3 key
    #   prefix, and the formats of your reports.
    #   @return [Types::ReportDeliveryChannel]
    #
    # @!attribute [rw] report_setting
    #   Identifies the report template for the report. Reports are built
    #   using a report template. The report templates are:
    #
    #   `RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT |
    #   BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT`
    #
    #   If the report template is `RESOURCE_COMPLIANCE_REPORT` or
    #   `CONTROL_COMPLIANCE_REPORT`, this API resource also describes the
    #   report coverage by Amazon Web Services Regions and frameworks.
    #   @return [Types::ReportSetting]
    #
    # @!attribute [rw] report_plan_tags
    #   Metadata that you can assign to help organize the report plans that
    #   you create. Each tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `CreateReportPlanInput`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateReportPlanInput AWS API Documentation
    #
    class CreateReportPlanInput < Struct.new(
      :report_plan_name,
      :report_plan_description,
      :report_delivery_channel,
      :report_setting,
      :report_plan_tags,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_plan_name
    #   The unique name of the report plan.
    #   @return [String]
    #
    # @!attribute [rw] report_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time a backup vault is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateReportPlanOutput AWS API Documentation
    #
    class CreateReportPlanOutput < Struct.new(
      :report_plan_name,
      :report_plan_arn,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is a resource filter containing FromDate: DateTime and ToDate:
    # DateTime. Both values are required. Future DateTime values are not
    # permitted.
    #
    # The date and time are in Unix format and Coordinated Universal Time
    # (UTC), and it is accurate to milliseconds ((milliseconds are
    # optional). For example, the value 1516925490.087 represents Friday,
    # January 26, 2018 12:11:30.087 AM.
    #
    # @!attribute [rw] from_date
    #   This value is the beginning date, inclusive.
    #
    #   The date and time are in Unix format and Coordinated Universal Time
    #   (UTC), and it is accurate to milliseconds (milliseconds are
    #   optional).
    #   @return [Time]
    #
    # @!attribute [rw] to_date
    #   This value is the end date, inclusive.
    #
    #   The date and time are in Unix format and Coordinated Universal Time
    #   (UTC), and it is accurate to milliseconds (milliseconds are
    #   optional).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DateRange AWS API Documentation
    #
    class DateRange < Struct.new(
      :from_date,
      :to_date)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupVaultAccessPolicyInput AWS API Documentation
    #
    class DeleteBackupVaultAccessPolicyInput < Struct.new(
      :backup_vault_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupVaultInput AWS API Documentation
    #
    class DeleteBackupVaultInput < Struct.new(
      :backup_vault_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of the backup vault from which to delete Backup Vault Lock.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupVaultLockConfigurationInput AWS API Documentation
    #
    class DeleteBackupVaultLockConfigurationInput < Struct.new(
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteBackupVaultNotificationsInput AWS API Documentation
    #
    class DeleteBackupVaultNotificationsInput < Struct.new(
      :backup_vault_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] framework_name
    #   The unique name of a framework.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteFrameworkInput AWS API Documentation
    #
    class DeleteFrameworkInput < Struct.new(
      :framework_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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

    # @!attribute [rw] report_plan_name
    #   The unique name of a report plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteReportPlanInput AWS API Documentation
    #
    class DeleteReportPlanInput < Struct.new(
      :report_plan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dependent Amazon Web Services service or resource returned an error
    # to the Backup service, and the action cannot be completed.
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

    # @!attribute [rw] backup_job_id
    #   Uniquely identifies a request to Backup to back up a resource.
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
    #   Uniquely identifies a request to Backup to back up a resource.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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
    #   The type of Amazon Web Services resource to be backed up; for
    #   example, an Amazon Elastic Block Store (Amazon EBS) volume or an
    #   Amazon Relational Database Service (Amazon RDS) database.
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
    #   example, if a successful Windows Volume Shadow Copy Service (VSS)
    #   backup was taken, `BackupType` returns `"WindowsVSS"`. If
    #   `BackupType` is empty, then the backup type was a regular backup.
    #   @return [String]
    #
    # @!attribute [rw] parent_job_id
    #   This returns the parent (composite) resource backup job ID.
    #   @return [String]
    #
    # @!attribute [rw] is_parent
    #   This returns the boolean value that a backup job is a parent
    #   (composite) job.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_child_jobs
    #   This returns the number of child (nested) backup jobs.
    #   @return [Integer]
    #
    # @!attribute [rw] child_jobs_in_state
    #   This returns the statistics of the included child (nested) backup
    #   jobs.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] resource_name
    #   This is the non-unique name of the resource that belongs to the
    #   specified backup.
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
      :backup_type,
      :parent_job_id,
      :is_parent,
      :number_of_child_jobs,
      :child_jobs_in_state,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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
    # @!attribute [rw] locked
    #   A Boolean that indicates whether Backup Vault Lock is currently
    #   protecting the backup vault. `True` means that Vault Lock causes
    #   delete or update operations on the recovery points stored in the
    #   vault to fail.
    #   @return [Boolean]
    #
    # @!attribute [rw] min_retention_days
    #   The Backup Vault Lock setting that specifies the minimum retention
    #   period that the vault retains its recovery points. If this parameter
    #   is not specified, Vault Lock does not enforce a minimum retention
    #   period.
    #
    #   If specified, any backup or copy job to the vault must have a
    #   lifecycle policy with a retention period equal to or longer than the
    #   minimum retention period. If the job's retention period is shorter
    #   than that minimum retention period, then the vault fails the backup
    #   or copy job, and you should either modify your lifecycle settings or
    #   use a different vault. Recovery points already stored in the vault
    #   prior to Vault Lock are not affected.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retention_days
    #   The Backup Vault Lock setting that specifies the maximum retention
    #   period that the vault retains its recovery points. If this parameter
    #   is not specified, Vault Lock does not enforce a maximum retention
    #   period on the recovery points in the vault (allowing indefinite
    #   storage).
    #
    #   If specified, any backup or copy job to the vault must have a
    #   lifecycle policy with a retention period equal to or shorter than
    #   the maximum retention period. If the job's retention period is
    #   longer than that maximum retention period, then the vault fails the
    #   backup or copy job, and you should either modify your lifecycle
    #   settings or use a different vault. Recovery points already stored in
    #   the vault prior to Vault Lock are not affected.
    #   @return [Integer]
    #
    # @!attribute [rw] lock_date
    #   The date and time when Backup Vault Lock configuration cannot be
    #   changed or deleted.
    #
    #   If you applied Vault Lock to your vault without specifying a lock
    #   date, you can change any of your Vault Lock settings, or delete
    #   Vault Lock from the vault entirely, at any time.
    #
    #   This value is in Unix format, Coordinated Universal Time (UTC), and
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeBackupVaultOutput AWS API Documentation
    #
    class DescribeBackupVaultOutput < Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :encryption_key_arn,
      :creation_date,
      :creator_request_id,
      :number_of_recovery_points,
      :locked,
      :min_retention_days,
      :max_retention_days,
      :lock_date)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] framework_name
    #   The unique name of a framework.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeFrameworkInput AWS API Documentation
    #
    class DescribeFrameworkInput < Struct.new(
      :framework_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] framework_name
    #   The unique name of a framework.
    #   @return [String]
    #
    # @!attribute [rw] framework_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] framework_description
    #   An optional description of the framework.
    #   @return [String]
    #
    # @!attribute [rw] framework_controls
    #   A list of the controls that make up the framework. Each control in
    #   the list has a name, input parameters, and scope.
    #   @return [Array<Types::FrameworkControl>]
    #
    # @!attribute [rw] creation_time
    #   The date and time that a framework is created, in ISO 8601
    #   representation. The value of `CreationTime` is accurate to
    #   milliseconds. For example, 2020-07-10T15:00:00.000-08:00 represents
    #   the 10th of July 2020 at 3:00 PM 8 hours behind UTC.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_status
    #   The deployment status of a framework. The statuses are:
    #
    #   `CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS |
    #   COMPLETED | FAILED`
    #   @return [String]
    #
    # @!attribute [rw] framework_status
    #   A framework consists of one or more controls. Each control governs a
    #   resource, such as backup plans, backup selections, backup vaults, or
    #   recovery points. You can also turn Config recording on or off for
    #   each resource. The statuses are:
    #
    #   * `ACTIVE` when recording is turned on for all resources governed by
    #     the framework.
    #
    #   * `PARTIALLY_ACTIVE` when recording is turned off for at least one
    #     resource governed by the framework.
    #
    #   * `INACTIVE` when recording is turned off for all resources governed
    #     by the framework.
    #
    #   * `UNAVAILABLE` when Backup is unable to validate recording status
    #     at this time.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `DescribeFrameworkOutput`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeFrameworkOutput AWS API Documentation
    #
    class DescribeFrameworkOutput < Struct.new(
      :framework_name,
      :framework_arn,
      :framework_description,
      :framework_controls,
      :creation_time,
      :deployment_status,
      :framework_status,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeGlobalSettingsInput AWS API Documentation
    #
    class DescribeGlobalSettingsInput < Aws::EmptyStructure; end

    # @!attribute [rw] global_settings
    #   The status of the flag `isCrossAccountBackupEnabled`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_update_time
    #   The date and time that the flag `isCrossAccountBackupEnabled` was
    #   last updated. This update is in Unix format and Coordinated
    #   Universal Time (UTC). The value of `LastUpdateTime` is accurate to
    #   milliseconds. For example, the value 1516925490.087 represents
    #   Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeGlobalSettingsOutput AWS API Documentation
    #
    class DescribeGlobalSettingsOutput < Struct.new(
      :global_settings,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The type of Amazon Web Services resource saved as a recovery point;
    #   for example, an Amazon EBS volume or an Amazon RDS database.
    #   @return [String]
    #
    # @!attribute [rw] last_backup_time
    #   The date and time that a resource was last backed up, in Unix format
    #   and Coordinated Universal Time (UTC). The value of `LastBackupTime`
    #   is accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] resource_name
    #   This is the non-unique name of the resource that belongs to the
    #   specified backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeProtectedResourceOutput AWS API Documentation
    #
    class DescribeProtectedResourceOutput < Struct.new(
      :resource_arn,
      :resource_type,
      :last_backup_time,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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
    # @!attribute [rw] source_backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies the source
    #   vault where the resource was originally backed up in; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:BackupVault`. If the
    #   recovery is restored to the same Amazon Web Services account or
    #   Region, this value will be `null`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a saved resource. The format of the
    #   ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource to save as a recovery
    #   point; for example, an Amazon Elastic Block Store (Amazon EBS)
    #   volume or an Amazon Relational Database Service (Amazon RDS)
    #   database.
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
    #   `PARTIAL` status indicates Backup could not create the recovery
    #   point before the backup window closed. To increase your backup plan
    #   window using the API, see [UpdateBackupPlan][1]. You can also
    #   increase your backup plan window using the Console by choosing and
    #   editing your backup plan.
    #
    #   `EXPIRED` status indicates that the recovery point has exceeded its
    #   retention period, but Backup lacks permission or is otherwise unable
    #   to delete it. To manually delete these recovery points, see [ Step
    #   3: Delete the recovery points][2] in the *Clean up resources*
    #   section of *Getting started*.
    #
    #   `STOPPED` status occurs on a continuous backup where a user has
    #   taken some action that causes the continuous backup to be disabled.
    #   This can be caused by the removal of permissions, turning off
    #   versioning, turning off events being sent to EventBridge, or
    #   disabling the EventBridge rules that are put in place by Backup.
    #
    #   To resolve `STOPPED` status, ensure that all requested permissions
    #   are in place and that versioning is enabled on the S3 bucket. Once
    #   these conditions are met, the next instance of a backup rule running
    #   will result in a new continuous recovery point being created. The
    #   recovery points with STOPPED status do not need to be deleted.
    #
    #   For SAP HANA on Amazon EC2 `STOPPED` status occurs due to user
    #   action, application misconfiguration, or backup failure. To ensure
    #   that future continuous backups succeed, refer to the recovery point
    #   status and check SAP HANA for details.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateBackupPlan.html
    #   [2]: https://docs.aws.amazon.com/aws-backup/latest/devguide/gs-cleanup-resources.html#cleanup-backups
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A status message explaining the status of the recovery point.
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
    #   cold storage and when it expires. Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups that are transitioned to cold storage must be stored in cold
    #   storage for a minimum of 90 days. Therefore, the “retention” setting
    #   must be 90 days greater than the “transition to cold after days”
    #   setting. The “transition to cold after days” setting cannot be
    #   changed after a backup has been transitioned to cold.
    #
    #   Resource types that are able to be transitioned to cold storage are
    #   listed in the "Lifecycle to cold storage" section of the [ Feature
    #   availability by resource][1] table. Backup ignores this expression
    #   for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
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
    # @!attribute [rw] parent_recovery_point_arn
    #   This is an ARN that uniquely identifies a parent (composite)
    #   recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] composite_member_identifier
    #   This is the identifier of a resource within a composite group, such
    #   as nested (child) recovery point belonging to a composite (parent)
    #   stack. The ID is transferred from the [ logical ID][1] within a
    #   stack.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html#resources-section-structure-syntax
    #   @return [String]
    #
    # @!attribute [rw] is_parent
    #   This returns the boolean value that a recovery point is a parent
    #   (composite) job.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_name
    #   This is the non-unique name of the resource that belongs to the
    #   specified backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRecoveryPointOutput AWS API Documentation
    #
    class DescribeRecoveryPointOutput < Struct.new(
      :recovery_point_arn,
      :backup_vault_name,
      :backup_vault_arn,
      :source_backup_vault_arn,
      :resource_arn,
      :resource_type,
      :created_by,
      :iam_role_arn,
      :status,
      :status_message,
      :creation_date,
      :completion_date,
      :backup_size_in_bytes,
      :calculated_lifecycle,
      :lifecycle,
      :encryption_key_arn,
      :is_encrypted,
      :storage_class,
      :last_restore_time,
      :parent_recovery_point_arn,
      :composite_member_identifier,
      :is_parent,
      :resource_name)
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
    # @!attribute [rw] resource_type_management_preference
    #   Returns whether Backup fully manages the backups for a resource
    #   type.
    #
    #   For the benefits of full Backup management, see [ Full Backup
    #   management][1].
    #
    #   For a list of resource types and whether each supports full Backup
    #   management, see the [ Feature availability by resource][2] table.
    #
    #   If `"DynamoDB":false`, you can enable full Backup management for
    #   DynamoDB backup by enabling [ Backup's advanced DynamoDB backup
    #   features][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management
    #   [2]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
    #   [3]: https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli
    #   @return [Hash<String,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRegionSettingsOutput AWS API Documentation
    #
    class DescribeRegionSettingsOutput < Struct.new(
      :resource_type_opt_in_preference,
      :resource_type_management_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_job_id
    #   The identifier of the report job. A unique, randomly generated,
    #   Unicode, UTF-8 encoded string that is at most 1,024 bytes long. The
    #   report job ID cannot be edited.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeReportJobInput AWS API Documentation
    #
    class DescribeReportJobInput < Struct.new(
      :report_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_job
    #   A list of information about a report job, including its completion
    #   and creation times, report destination, unique report job ID, Amazon
    #   Resource Name (ARN), report template, status, and status message.
    #   @return [Types::ReportJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeReportJobOutput AWS API Documentation
    #
    class DescribeReportJobOutput < Struct.new(
      :report_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_plan_name
    #   The unique name of a report plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeReportPlanInput AWS API Documentation
    #
    class DescribeReportPlanInput < Struct.new(
      :report_plan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_plan
    #   Returns details about the report plan that is specified by its name.
    #   These details include the report plan's Amazon Resource Name (ARN),
    #   description, settings, delivery channel, deployment status, creation
    #   time, and last attempted and successful run times.
    #   @return [Types::ReportPlan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeReportPlanOutput AWS API Documentation
    #
    class DescribeReportPlanOutput < Struct.new(
      :report_plan)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   Status code specifying the state of the job that is initiated by
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

    # @!attribute [rw] backup_vault_name
    #   This is the name of a logical container where the child (nested)
    #   recovery point is stored. Backup vaults are identified by names that
    #   are unique to the account used to create them and the Amazon Web
    #   Services Region where they are created. They consist of lowercase
    #   letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   This is the Amazon Resource Name (ARN) that uniquely identifies the
    #   child (nested) recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DisassociateRecoveryPointFromParentInput AWS API Documentation
    #
    class DisassociateRecoveryPointFromParentInput < Struct.new(
      :backup_vault_name,
      :recovery_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The unique name of an Backup vault.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an Backup
    #   recovery point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DisassociateRecoveryPointInput AWS API Documentation
    #
    class DisassociateRecoveryPointInput < Struct.new(
      :backup_vault_name,
      :recovery_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Contains detailed information about a framework. Frameworks contain
    # controls, which evaluate and report on your backup events and
    # resources. Frameworks generate daily compliance results.
    #
    # @!attribute [rw] framework_name
    #   The unique name of a framework. This name is between 1 and 256
    #   characters, starting with a letter, and consisting of letters (a-z,
    #   A-Z), numbers (0-9), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] framework_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] framework_description
    #   An optional description of the framework with a maximum 1,024
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] number_of_controls
    #   The number of controls contained by the framework.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The date and time that a framework is created, in ISO 8601
    #   representation. The value of `CreationTime` is accurate to
    #   milliseconds. For example, 2020-07-10T15:00:00.000-08:00 represents
    #   the 10th of July 2020 at 3:00 PM 8 hours behind UTC.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_status
    #   The deployment status of a framework. The statuses are:
    #
    #   `CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS |
    #   COMPLETED | FAILED`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/Framework AWS API Documentation
    #
    class Framework < Struct.new(
      :framework_name,
      :framework_arn,
      :framework_description,
      :number_of_controls,
      :creation_time,
      :deployment_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about all of the controls of a
    # framework. Each framework must contain at least one control.
    #
    # @!attribute [rw] control_name
    #   The name of a control. This name is between 1 and 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] control_input_parameters
    #   A list of `ParameterName` and `ParameterValue` pairs.
    #   @return [Array<Types::ControlInputParameter>]
    #
    # @!attribute [rw] control_scope
    #   The scope of a control. The control scope defines what the control
    #   will evaluate. Three examples of control scopes are: a specific
    #   backup plan, all backup plans with a specific tag, or all backup
    #   plans. For more information, see [
    #   `ControlScope`.](aws-backup/latest/devguide/API_ControlScope.html)
    #   @return [Types::ControlScope]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/FrameworkControl AWS API Documentation
    #
    class FrameworkControl < Struct.new(
      :control_name,
      :control_input_parameters,
      :control_scope)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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

    # @!attribute [rw] legal_hold_id
    #   This is the ID required to use `GetLegalHold`. This unique ID is
    #   associated with a specific legal hold.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetLegalHoldInput AWS API Documentation
    #
    class GetLegalHoldInput < Struct.new(
      :legal_hold_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] title
    #   This is the string title of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This is the status of the legal hold. Statuses can be `ACTIVE`,
    #   `CREATING`, `CANCELED`, and `CANCELING`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   This is the returned string description of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] cancel_description
    #   String describing the reason for removing the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_id
    #   This is the returned ID associated with a specified legal hold.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_arn
    #   This is the returned framework ARN for the specified legal hold. An
    #   Amazon Resource Name (ARN) uniquely identifies a resource. The
    #   format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   Time in number format when legal hold was created.
    #   @return [Time]
    #
    # @!attribute [rw] cancellation_date
    #   Time in number when legal hold was cancelled.
    #   @return [Time]
    #
    # @!attribute [rw] retain_record_until
    #   This is the date and time until which the legal hold record will be
    #   retained.
    #   @return [Time]
    #
    # @!attribute [rw] recovery_point_selection
    #   This specifies criteria to assign a set of resources, such as
    #   resource types or backup vaults.
    #   @return [Types::RecoveryPointSelection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetLegalHoldOutput AWS API Documentation
    #
    class GetLegalHoldOutput < Struct.new(
      :title,
      :status,
      :description,
      :cancel_description,
      :legal_hold_id,
      :legal_hold_arn,
      :creation_date,
      :cancellation_date,
      :retain_record_until,
      :recovery_point_selection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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
    #   Contains a string with the supported Amazon Web Services resource
    #   types:
    #
    #   * `Aurora` for Amazon Aurora
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `FSX` for Amazon FSx
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `DocDB` for Amazon DocumentDB (with MongoDB compatibility)
    #
    #   * `Neptune` for Amazon Neptune
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

    # Backup is already performing an action on this recovery point. It
    # can't perform the action you requested until the first action
    # finishes. Try again later.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/InvalidResourceStateException AWS API Documentation
    #
    class InvalidResourceStateException < Struct.new(
      :code,
      :message,
      :type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # A legal hold is an administrative tool that helps prevent backups from
    # being deleted while under a hold. While the hold is in place, backups
    # under a hold cannot be deleted and lifecycle policies that would alter
    # the backup status (such as transition to cold storage) are delayed
    # until the legal hold is removed. A backup can have more than one legal
    # hold. Legal holds are applied to one or more backups (also known as
    # recovery points). These backups can be filtered by resource types and
    # by resource IDs.
    #
    # @!attribute [rw] title
    #   This is the title of a legal hold.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This is the status of the legal hold. Statuses can be `ACTIVE`,
    #   `CREATING`, `CANCELED`, and `CANCELING`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   This is the description of a legal hold.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_id
    #   ID of specific legal hold on one or more recovery points.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_arn
    #   This is an Amazon Resource Number (ARN) that uniquely identifies the
    #   legal hold; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   This is the time in number format when legal hold was created.
    #   @return [Time]
    #
    # @!attribute [rw] cancellation_date
    #   This is the time in number format when legal hold was cancelled.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/LegalHold AWS API Documentation
    #
    class LegalHold < Struct.new(
      :title,
      :status,
      :description,
      :legal_hold_id,
      :legal_hold_arn,
      :creation_date,
      :cancellation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an array of `Transition` objects specifying how long in days
    # before a recovery point transitions to cold storage or is deleted.
    #
    # Backups transitioned to cold storage must be stored in cold storage
    # for a minimum of 90 days. Therefore, on the console, the “retention”
    # setting must be 90 days greater than the “transition to cold after
    # days” setting. The “transition to cold after days” setting cannot be
    # changed after a backup has been transitioned to cold.
    #
    # Resource types that are able to be transitioned to cold storage are
    # listed in the "Lifecycle to cold storage" section of the [ Feature
    # availability by resource][1] table. Backup ignores this expression for
    # other resource types.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
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
    #   account used to create them and the Amazon Web Services Region where
    #   they are created. They consist of lowercase letters, numbers, and
    #   hyphens.
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
    #   * `Aurora` for Amazon Aurora
    #
    #   * `DocumentDB` for Amazon DocumentDB (with MongoDB compatibility)
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `FSx` for Amazon FSx
    #
    #   * `Neptune` for Amazon Neptune
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `S3` for Amazon S3
    #
    #   * `VirtualMachine` for virtual machines
    #   @return [String]
    #
    # @!attribute [rw] by_account_id
    #   The account ID to list the jobs from. Returns only backup jobs
    #   associated with the specified account ID.
    #
    #   If used from an Organizations management account, passing `*`
    #   returns all jobs across the organization.
    #   @return [String]
    #
    # @!attribute [rw] by_complete_after
    #   Returns only backup jobs completed after a date expressed in Unix
    #   format and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] by_complete_before
    #   Returns only backup jobs completed before a date expressed in Unix
    #   format and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] by_parent_job_id
    #   This is a filter to list child (nested) jobs based on parent job ID.
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
      :by_account_id,
      :by_complete_after,
      :by_complete_before,
      :by_parent_job_id)
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
    #   * `Aurora` for Amazon Aurora
    #
    #   * `DocumentDB` for Amazon DocumentDB (with MongoDB compatibility)
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `FSx` for Amazon FSx
    #
    #   * `Neptune` for Amazon Neptune
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `S3` for Amazon S3
    #
    #   * `VirtualMachine` for virtual machines
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
    # @!attribute [rw] by_complete_before
    #   Returns only copy jobs completed before a date expressed in Unix
    #   format and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] by_complete_after
    #   Returns only copy jobs completed after a date expressed in Unix
    #   format and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] by_parent_job_id
    #   This is a filter to list child (nested) jobs based on parent job ID.
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
      :by_account_id,
      :by_complete_before,
      :by_complete_after,
      :by_parent_job_id)
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

    # @!attribute [rw] max_results
    #   The number of desired results from 1 to 1000. Optional. If
    #   unspecified, the query will return 1 MB of data.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListFrameworksInput AWS API Documentation
    #
    class ListFrameworksInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] frameworks
    #   A list of frameworks with details for each framework, including the
    #   framework name, Amazon Resource Name (ARN), description, number of
    #   controls, creation time, and deployment status.
    #   @return [Array<Types::Framework>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListFrameworksOutput AWS API Documentation
    #
    class ListFrameworksOutput < Struct.new(
      :frameworks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource list items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListLegalHoldsInput AWS API Documentation
    #
    class ListLegalHoldsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] legal_holds
    #   This is an array of returned legal holds, both active and previous.
    #   @return [Array<Types::LegalHold>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListLegalHoldsOutput AWS API Documentation
    #
    class ListLegalHoldsOutput < Struct.new(
      :next_token,
      :legal_holds)
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
    #   An array of resources successfully backed up by Backup including the
    #   time the resource was saved, an Amazon Resource Name (ARN) of the
    #   resource, and a resource type.
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

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
    #
    #   <note markdown="1"> Backup vault name might not be available when a supported service
    #   creates the backup.
    #
    #    </note>
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
    # @!attribute [rw] by_parent_recovery_point_arn
    #   This returns only recovery points that match the specified parent
    #   (composite) recovery point Amazon Resource Name (ARN).
    #   @return [String]
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
      :by_created_after,
      :by_parent_recovery_point_arn)
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

    # @!attribute [rw] legal_hold_id
    #   This is the ID of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   This is the next item following a partial list of returned
    #   resources. For example, if a request is made to return `maxResults`
    #   number of resources, `NextToken` allows you to return more items in
    #   your list starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   This is the maximum number of resource list items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByLegalHoldInput AWS API Documentation
    #
    class ListRecoveryPointsByLegalHoldInput < Struct.new(
      :legal_hold_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recovery_points
    #   This is a list of the recovery points returned by
    #   `ListRecoveryPointsByLegalHold`.
    #   @return [Array<Types::RecoveryPointMember>]
    #
    # @!attribute [rw] next_token
    #   This return is the next item following a partial list of returned
    #   resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByLegalHoldOutput AWS API Documentation
    #
    class ListRecoveryPointsByLegalHoldOutput < Struct.new(
      :recovery_points,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #
    #   <note markdown="1"> Amazon RDS requires a value of at least 20.
    #
    #    </note>
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
    #
    #   <note markdown="1"> Only Amazon EFS and Amazon EC2 recovery points return
    #   BackupVaultName.
    #
    #    </note>
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

    # @!attribute [rw] by_report_plan_name
    #   Returns only report jobs with the specified report plan name.
    #   @return [String]
    #
    # @!attribute [rw] by_creation_before
    #   Returns only report jobs that were created before the date and time
    #   specified in Unix format and Coordinated Universal Time (UTC). For
    #   example, the value 1516925490 represents Friday, January 26, 2018
    #   12:11:30 AM.
    #   @return [Time]
    #
    # @!attribute [rw] by_creation_after
    #   Returns only report jobs that were created after the date and time
    #   specified in Unix format and Coordinated Universal Time (UTC). For
    #   example, the value 1516925490 represents Friday, January 26, 2018
    #   12:11:30 AM.
    #   @return [Time]
    #
    # @!attribute [rw] by_status
    #   Returns only report jobs that are in the specified status. The
    #   statuses are:
    #
    #   `CREATED | RUNNING | COMPLETED | FAILED`
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of desired results from 1 to 1000. Optional. If
    #   unspecified, the query will return 1 MB of data.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListReportJobsInput AWS API Documentation
    #
    class ListReportJobsInput < Struct.new(
      :by_report_plan_name,
      :by_creation_before,
      :by_creation_after,
      :by_status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_jobs
    #   Details about your report jobs in JSON format.
    #   @return [Array<Types::ReportJob>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListReportJobsOutput AWS API Documentation
    #
    class ListReportJobsOutput < Struct.new(
      :report_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The number of desired results from 1 to 1000. Optional. If
    #   unspecified, the query will return 1 MB of data.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListReportPlansInput AWS API Documentation
    #
    class ListReportPlansInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_plans
    #   A list of your report plans with detailed information for each plan.
    #   This information includes the Amazon Resource Name (ARN), report
    #   plan name, description, settings, delivery channel, deployment
    #   status, creation time, and last times the report plan attempted to
    #   and successfully ran.
    #   @return [Array<Types::ReportPlan>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListReportPlansOutput AWS API Documentation
    #
    class ListReportPlansOutput < Struct.new(
      :report_plans,
      :next_token)
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
    # @!attribute [rw] by_complete_before
    #   Returns only copy jobs completed before a date expressed in Unix
    #   format and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] by_complete_after
    #   Returns only copy jobs completed after a date expressed in Unix
    #   format and Coordinated Universal Time (UTC).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreJobsInput AWS API Documentation
    #
    class ListRestoreJobsInput < Struct.new(
      :next_token,
      :max_results,
      :by_account_id,
      :by_created_before,
      :by_created_after,
      :by_status,
      :by_complete_before,
      :by_complete_after)
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
    #   The type of Amazon Web Services resource; for example, an Amazon
    #   Elastic Block Store (Amazon EBS) volume or an Amazon Relational
    #   Database Service (Amazon RDS) database. For Windows Volume Shadow
    #   Copy Service (VSS) backups, the only supported resource type is
    #   Amazon EC2.
    #   @return [String]
    #
    # @!attribute [rw] last_backup_time
    #   The date and time a resource was last backed up, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `LastBackupTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] resource_name
    #   This is the non-unique name of the resource that belongs to the
    #   specified backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ProtectedResource AWS API Documentation
    #
    class ProtectedResource < Struct.new(
      :resource_arn,
      :resource_type,
      :last_backup_time,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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

    # @!attribute [rw] backup_vault_name
    #   The Backup Vault Lock configuration that specifies the name of the
    #   backup vault it protects.
    #   @return [String]
    #
    # @!attribute [rw] min_retention_days
    #   The Backup Vault Lock configuration that specifies the minimum
    #   retention period that the vault retains its recovery points. This
    #   setting can be useful if, for example, your organization's policies
    #   require you to retain certain data for at least seven years (2555
    #   days).
    #
    #   If this parameter is not specified, Vault Lock will not enforce a
    #   minimum retention period.
    #
    #   If this parameter is specified, any backup or copy job to the vault
    #   must have a lifecycle policy with a retention period equal to or
    #   longer than the minimum retention period. If the job's retention
    #   period is shorter than that minimum retention period, then the vault
    #   fails that backup or copy job, and you should either modify your
    #   lifecycle settings or use a different vault. The shortest minimum
    #   retention period you can specify is 1 day. Recovery points already
    #   saved in the vault prior to Vault Lock are not affected.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retention_days
    #   The Backup Vault Lock configuration that specifies the maximum
    #   retention period that the vault retains its recovery points. This
    #   setting can be useful if, for example, your organization's policies
    #   require you to destroy certain data after retaining it for four
    #   years (1460 days).
    #
    #   If this parameter is not included, Vault Lock does not enforce a
    #   maximum retention period on the recovery points in the vault. If
    #   this parameter is included without a value, Vault Lock will not
    #   enforce a maximum retention period.
    #
    #   If this parameter is specified, any backup or copy job to the vault
    #   must have a lifecycle policy with a retention period equal to or
    #   shorter than the maximum retention period. If the job's retention
    #   period is longer than that maximum retention period, then the vault
    #   fails the backup or copy job, and you should either modify your
    #   lifecycle settings or use a different vault. The longest maximum
    #   retention period you can specify is 36500 days (approximately 100
    #   years). Recovery points already saved in the vault prior to Vault
    #   Lock are not affected.
    #   @return [Integer]
    #
    # @!attribute [rw] changeable_for_days
    #   The Backup Vault Lock configuration that specifies the number of
    #   days before the lock date. For example, setting `ChangeableForDays`
    #   to 30 on Jan. 1, 2022 at 8pm UTC will set the lock date to Jan. 31,
    #   2022 at 8pm UTC.
    #
    #   Backup enforces a 72-hour cooling-off period before Vault Lock takes
    #   effect and becomes immutable. Therefore, you must set
    #   `ChangeableForDays` to 3 or greater.
    #
    #   Before the lock date, you can delete Vault Lock from the vault using
    #   `DeleteBackupVaultLockConfiguration` or change the Vault Lock
    #   configuration using `PutBackupVaultLockConfiguration`. On and after
    #   the lock date, the Vault Lock becomes immutable and cannot be
    #   changed or deleted.
    #
    #   If this parameter is not specified, you can delete Vault Lock from
    #   the vault using `DeleteBackupVaultLockConfiguration` or change the
    #   Vault Lock configuration using `PutBackupVaultLockConfiguration` at
    #   any time.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/PutBackupVaultLockConfigurationInput AWS API Documentation
    #
    class PutBackupVaultLockConfigurationInput < Struct.new(
      :backup_vault_name,
      :min_retention_days,
      :max_retention_days,
      :changeable_for_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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
    #
    #   For common use cases and code samples, see [Using Amazon SNS to
    #   track Backup events][1].
    #
    #   The following events are supported:
    #
    #   * `BACKUP_JOB_STARTED` \| `BACKUP_JOB_COMPLETED`
    #
    #   * `COPY_JOB_STARTED` \| `COPY_JOB_SUCCESSFUL` \| `COPY_JOB_FAILED`
    #
    #   * `RESTORE_JOB_STARTED` \| `RESTORE_JOB_COMPLETED` \|
    #     `RECOVERY_POINT_MODIFIED`
    #
    #   * `S3_BACKUP_OBJECT_FAILED` \| `S3_RESTORE_OBJECT_FAILED`
    #
    #   <note markdown="1"> The list below shows items that are deprecated events (for
    #   reference) and are no longer in use. They are no longer supported
    #   and will not return statuses or notifications. Refer to the list
    #   above for current supported events.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/sns-notifications.html
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
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An ARN that uniquely identifies a backup vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] source_backup_vault_arn
    #   The backup vault where the recovery point was originally copied
    #   from. If the recovery point is restored to the same account this
    #   value will be `null`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource saved as a recovery point;
    #   for example, an Amazon Elastic Block Store (Amazon EBS) volume or an
    #   Amazon Relational Database Service (Amazon RDS) database. For
    #   Windows Volume Shadow Copy Service (VSS) backups, the only supported
    #   resource type is Amazon EC2.
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
    # @!attribute [rw] status_message
    #   A message explaining the reason of the recovery point deletion
    #   failure.
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
    #   cold storage and when it expires. Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “retention” setting must be
    #   90 days greater than the “transition to cold after days” setting.
    #   The “transition to cold after days” setting cannot be changed after
    #   a backup has been transitioned to cold.
    #
    #   Resource types that are able to be transitioned to cold storage are
    #   listed in the "Lifecycle to cold storage" section of the [ Feature
    #   availability by resource][1] table. Backup ignores this expression
    #   for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
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
    # @!attribute [rw] parent_recovery_point_arn
    #   This is the Amazon Resource Name (ARN) of the parent (composite)
    #   recovery point.
    #   @return [String]
    #
    # @!attribute [rw] composite_member_identifier
    #   This is the identifier of a resource within a composite group, such
    #   as nested (child) recovery point belonging to a composite (parent)
    #   stack. The ID is transferred from the [ logical ID][1] within a
    #   stack.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html#resources-section-structure-syntax
    #   @return [String]
    #
    # @!attribute [rw] is_parent
    #   This is a boolean value indicating this is a parent (composite)
    #   recovery point.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_name
    #   This is the non-unique name of the resource that belongs to the
    #   specified backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RecoveryPointByBackupVault AWS API Documentation
    #
    class RecoveryPointByBackupVault < Struct.new(
      :recovery_point_arn,
      :backup_vault_name,
      :backup_vault_arn,
      :source_backup_vault_arn,
      :resource_arn,
      :resource_type,
      :created_by,
      :iam_role_arn,
      :status,
      :status_message,
      :creation_date,
      :completion_date,
      :backup_size_in_bytes,
      :calculated_lifecycle,
      :lifecycle,
      :encryption_key_arn,
      :is_encrypted,
      :last_restore_time,
      :parent_recovery_point_arn,
      :composite_member_identifier,
      :is_parent,
      :resource_name)
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
    # @!attribute [rw] status_message
    #   A message explaining the reason of the recovery point deletion
    #   failure.
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
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] is_parent
    #   This is a boolean value indicating this is a parent (composite)
    #   recovery point.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_recovery_point_arn
    #   This is the Amazon Resource Name (ARN) of the parent (composite)
    #   recovery point.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   This is the non-unique name of the resource that belongs to the
    #   specified backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RecoveryPointByResource AWS API Documentation
    #
    class RecoveryPointByResource < Struct.new(
      :recovery_point_arn,
      :creation_date,
      :status,
      :status_message,
      :encryption_key_arn,
      :backup_size_bytes,
      :backup_vault_name,
      :is_parent,
      :parent_recovery_point_arn,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the backup plan and rule that Backup used
    # to initiate the recovery point backup.
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

    # This is a recovery point which is a child (nested) recovery point of a
    # parent (composite) recovery point. These recovery points can be
    # disassociated from their parent (composite) recovery point, in which
    # case they will no longer be a member.
    #
    # @!attribute [rw] recovery_point_arn
    #   This is the Amazon Resource Name (ARN) of the parent (composite)
    #   recovery point.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   This is the Amazon Resource Name (ARN) that uniquely identifies a
    #   saved resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   This is the Amazon Web Services resource type that is saved as a
    #   recovery point.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   This is the name of the backup vault (the logical container in which
    #   backups are stored).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RecoveryPointMember AWS API Documentation
    #
    class RecoveryPointMember < Struct.new(
      :recovery_point_arn,
      :resource_arn,
      :resource_type,
      :backup_vault_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This specifies criteria to assign a set of resources, such as resource
    # types or backup vaults.
    #
    # @!attribute [rw] vault_names
    #   These are the names of the vaults in which the selected recovery
    #   points are contained.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_identifiers
    #   These are the resources included in the resource selection
    #   (including type of resources and vaults).
    #   @return [Array<String>]
    #
    # @!attribute [rw] date_range
    #   This is a resource filter containing FromDate: DateTime and ToDate:
    #   DateTime. Both values are required. Future DateTime values are not
    #   permitted.
    #
    #   The date and time are in Unix format and Coordinated Universal Time
    #   (UTC), and it is accurate to milliseconds ((milliseconds are
    #   optional). For example, the value 1516925490.087 represents Friday,
    #   January 26, 2018 12:11:30.087 AM.
    #   @return [Types::DateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RecoveryPointSelection AWS API Documentation
    #
    class RecoveryPointSelection < Struct.new(
      :vault_names,
      :resource_identifiers,
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information from your report plan about where to deliver your
    # reports, specifically your Amazon S3 bucket name, S3 key prefix, and
    # the formats of your reports.
    #
    # @!attribute [rw] s3_bucket_name
    #   The unique name of the S3 bucket that receives your reports.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The prefix for where Backup Audit Manager delivers your reports to
    #   Amazon S3. The prefix is this part of the following path:
    #   s3://your-bucket-name/`prefix`/Backup/us-west-2/year/month/day/report-name.
    #   If not specified, there is no prefix.
    #   @return [String]
    #
    # @!attribute [rw] formats
    #   A list of the format of your reports: `CSV`, `JSON`, or both. If not
    #   specified, the default format is `CSV`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ReportDeliveryChannel AWS API Documentation
    #
    class ReportDeliveryChannel < Struct.new(
      :s3_bucket_name,
      :s3_key_prefix,
      :formats)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information from your report job about your report
    # destination.
    #
    # @!attribute [rw] s3_bucket_name
    #   The unique name of the Amazon S3 bucket that receives your reports.
    #   @return [String]
    #
    # @!attribute [rw] s3_keys
    #   The object key that uniquely identifies your reports in your S3
    #   bucket.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ReportDestination AWS API Documentation
    #
    class ReportDestination < Struct.new(
      :s3_bucket_name,
      :s3_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about a report job. A report job
    # compiles a report based on a report plan and publishes it to Amazon
    # S3.
    #
    # @!attribute [rw] report_job_id
    #   The identifier for a report job. A unique, randomly generated,
    #   Unicode, UTF-8 encoded string that is at most 1,024 bytes long.
    #   Report job IDs cannot be edited.
    #   @return [String]
    #
    # @!attribute [rw] report_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] report_template
    #   Identifies the report template for the report. Reports are built
    #   using a report template. The report templates are:
    #
    #   `RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT |
    #   BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT`
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that a report job is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   The date and time that a report job is completed, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CompletionTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of a report job. The statuses are:
    #
    #   `CREATED | RUNNING | COMPLETED | FAILED`
    #
    #   `COMPLETED` means that the report is available for your review at
    #   your designated destination. If the status is `FAILED`, review the
    #   `StatusMessage` for the reason.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message explaining the status of the report job.
    #   @return [String]
    #
    # @!attribute [rw] report_destination
    #   The S3 bucket name and S3 keys for the destination where the report
    #   job publishes the report.
    #   @return [Types::ReportDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ReportJob AWS API Documentation
    #
    class ReportJob < Struct.new(
      :report_job_id,
      :report_plan_arn,
      :report_template,
      :creation_time,
      :completion_time,
      :status,
      :status_message,
      :report_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about a report plan.
    #
    # @!attribute [rw] report_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] report_plan_name
    #   The unique name of the report plan. This name is between 1 and 256
    #   characters starting with a letter, and consisting of letters (a-z,
    #   A-Z), numbers (0-9), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] report_plan_description
    #   An optional description of the report plan with a maximum 1,024
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] report_setting
    #   Identifies the report template for the report. Reports are built
    #   using a report template. The report templates are:
    #
    #   `RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT |
    #   BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT`
    #
    #   If the report template is `RESOURCE_COMPLIANCE_REPORT` or
    #   `CONTROL_COMPLIANCE_REPORT`, this API resource also describes the
    #   report coverage by Amazon Web Services Regions and frameworks.
    #   @return [Types::ReportSetting]
    #
    # @!attribute [rw] report_delivery_channel
    #   Contains information about where and how to deliver your reports,
    #   specifically your Amazon S3 bucket name, S3 key prefix, and the
    #   formats of your reports.
    #   @return [Types::ReportDeliveryChannel]
    #
    # @!attribute [rw] deployment_status
    #   The deployment status of a report plan. The statuses are:
    #
    #   `CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS |
    #   COMPLETED`
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that a report plan is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] last_attempted_execution_time
    #   The date and time that a report job associated with this report plan
    #   last attempted to run, in Unix format and Coordinated Universal Time
    #   (UTC). The value of `LastAttemptedExecutionTime` is accurate to
    #   milliseconds. For example, the value 1516925490.087 represents
    #   Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] last_successful_execution_time
    #   The date and time that a report job associated with this report plan
    #   last successfully ran, in Unix format and Coordinated Universal Time
    #   (UTC). The value of `LastSuccessfulExecutionTime` is accurate to
    #   milliseconds. For example, the value 1516925490.087 represents
    #   Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ReportPlan AWS API Documentation
    #
    class ReportPlan < Struct.new(
      :report_plan_arn,
      :report_plan_name,
      :report_plan_description,
      :report_setting,
      :report_delivery_channel,
      :deployment_status,
      :creation_time,
      :last_attempted_execution_time,
      :last_successful_execution_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about a report setting.
    #
    # @!attribute [rw] report_template
    #   Identifies the report template for the report. Reports are built
    #   using a report template. The report templates are:
    #
    #   `RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT |
    #   BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT`
    #   @return [String]
    #
    # @!attribute [rw] framework_arns
    #   The Amazon Resource Names (ARNs) of the frameworks a report covers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_of_frameworks
    #   The number of frameworks a report covers.
    #   @return [Integer]
    #
    # @!attribute [rw] accounts
    #   These are the accounts to be included in the report.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organization_units
    #   These are the Organizational Units to be included in the report.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   These are the Regions to be included in the report.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ReportSetting AWS API Documentation
    #
    class ReportSetting < Struct.new(
      :report_template,
      :framework_arns,
      :number_of_frameworks,
      :accounts,
      :organization_units,
      :regions)
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
    #   A status code specifying the state of the job initiated by Backup to
    #   restore a recovery point.
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
    #   Database Service (Amazon RDS) database. For Windows Volume Shadow
    #   Copy Service (VSS) backups, the only supported resource type is
    #   Amazon EC2.
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

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `StartBackupJob`. Retrying a successful
    #   request with the same idempotency token results in a success message
    #   with no action taken.
    #   @return [String]
    #
    # @!attribute [rw] start_window_minutes
    #   A value in minutes after a backup is scheduled before a job will be
    #   canceled if it doesn't start successfully. This value is optional,
    #   and the default is 8 hours. If this value is included, it must be at
    #   least 60 minutes to avoid errors.
    #
    #   During the start window, the backup job status remains in `CREATED`
    #   status until it has successfully begun or until the start window
    #   time has run out. If within the start window time Backup receives an
    #   error that allows the job to be retried, Backup will automatically
    #   retry to begin the job at least every 10 minutes until the backup
    #   successfully begins (the job status changes to `RUNNING`) or until
    #   the job status changes to `EXPIRED` (which is expected to occur when
    #   the start window time is over).
    #   @return [Integer]
    #
    # @!attribute [rw] complete_window_minutes
    #   A value in minutes during which a successfully started backup must
    #   complete, or else Backup will cancel the job. This value is
    #   optional. This value begins counting down from when the backup was
    #   scheduled. It does not add additional time for `StartWindowMinutes`,
    #   or if the backup started later than scheduled.
    #   @return [Integer]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle defines when a protected resource is transitioned to
    #   cold storage and when it expires. Backup will transition and expire
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “retention” setting must be
    #   90 days greater than the “transition to cold after days” setting.
    #   The “transition to cold after days” setting cannot be changed after
    #   a backup has been transitioned to cold.
    #
    #   Resource types that are able to be transitioned to cold storage are
    #   listed in the "Lifecycle to cold storage" section of the [ Feature
    #   availability by resource][1] table. Backup ignores this expression
    #   for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] recovery_point_tags
    #   To help organize your resources, you can assign your own metadata to
    #   the resources that you create. Each tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] backup_options
    #   Specifies the backup option for a selected resource. This option is
    #   only available for Windows Volume Shadow Copy Service (VSS) backup
    #   jobs.
    #
    #   Valid values: Set to `"WindowsVSS":"enabled"` to enable the
    #   `WindowsVSS` backup option and create a Windows VSS backup. Set to
    #   `"WindowsVSS""disabled"` to create a regular backup. The
    #   `WindowsVSS` option is not enabled by default.
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
    #   Uniquely identifies a request to Backup to back up a resource.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   *Note: This field is only returned for Amazon EFS and Advanced
    #   DynamoDB resources.*
    #
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time that a backup job is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] is_parent
    #   This is a returned boolean value indicating this is a parent
    #   (composite) backup job.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartBackupJobOutput AWS API Documentation
    #
    class StartBackupJobOutput < Struct.new(
      :backup_job_id,
      :recovery_point_arn,
      :creation_date,
      :is_parent)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point to use for the copy
    #   job; for example,
    #   arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
    #   @return [String]
    #
    # @!attribute [rw] source_backup_vault_name
    #   The name of a logical source container where backups are stored.
    #   Backup vaults are identified by names that are unique to the account
    #   used to create them and the Amazon Web Services Region where they
    #   are created. They consist of lowercase letters, numbers, and
    #   hyphens.
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
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `StartCopyJob`. Retrying a successful
    #   request with the same idempotency token results in a success message
    #   with no action taken.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   Contains an array of `Transition` objects specifying how long in
    #   days before a recovery point transitions to cold storage or is
    #   deleted.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, on the console, the “retention”
    #   setting must be 90 days greater than the “transition to cold after
    #   days” setting. The “transition to cold after days” setting cannot be
    #   changed after a backup has been transitioned to cold.
    #
    #   Resource types that are able to be transitioned to cold storage are
    #   listed in the "Lifecycle to cold storage" section of the [ Feature
    #   availability by resource][1] table. Backup ignores this expression
    #   for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
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
    #   The date and time that a copy job is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] is_parent
    #   This is a returned boolean value indicating this is a parent
    #   (composite) copy job.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartCopyJobOutput AWS API Documentation
    #
    class StartCopyJobOutput < Struct.new(
      :copy_job_id,
      :creation_date,
      :is_parent)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_plan_name
    #   The unique name of a report plan.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `StartReportJobInput`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartReportJobInput AWS API Documentation
    #
    class StartReportJobInput < Struct.new(
      :report_plan_name,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_job_id
    #   The identifier of the report job. A unique, randomly generated,
    #   Unicode, UTF-8 encoded string that is at most 1,024 bytes long. The
    #   report job ID cannot be edited.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartReportJobOutput AWS API Documentation
    #
    class StartReportJobOutput < Struct.new(
      :report_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   * `file-system-id`: The ID of the Amazon EFS file system that is
    #     backed up by Backup. Returned in
    #     `GetRecoveryPointRestoreMetadata`.
    #
    #   * `Encrypted`: A Boolean value that, if true, specifies that the
    #     file system is encrypted. If `KmsKeyId` is specified, `Encrypted`
    #     must be set to `true`.
    #
    #   * `KmsKeyId`: Specifies the Amazon Web Services KMS key that is used
    #     to encrypt the restored file system. You can specify a key from
    #     another Amazon Web Services account provided that key it is
    #     properly shared with your account via Amazon Web Services KMS.
    #
    #   * `PerformanceMode`: Specifies the throughput mode of the file
    #     system.
    #
    #   * `CreationToken`: A user-supplied value that ensures the uniqueness
    #     (idempotency) of the request.
    #
    #   * `newFileSystem`: A Boolean value that, if true, specifies that the
    #     recovery point is restored to a new Amazon EFS file system.
    #
    #   * `ItemsToRestore`: An array of one to five strings where each
    #     string is a file path. Use `ItemsToRestore` to restore specific
    #     files or directories rather than the entire file system. This
    #     parameter is optional. For example,
    #     `"itemsToRestore":"["/my.test"]"`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Backup uses to
    #   create the target resource; for example:
    #   `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `StartRestoreJob`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Starts a job to restore a recovery point for one of the following
    #   resources:
    #
    #   * `Aurora` for Amazon Aurora
    #
    #   * `DocumentDB` for Amazon DocumentDB (with MongoDB compatibility)
    #
    #   * `CloudFormation` for CloudFormation
    #
    #   * `DynamoDB` for Amazon DynamoDB
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `EC2` for Amazon Elastic Compute Cloud
    #
    #   * `EFS` for Amazon Elastic File System
    #
    #   * `FSx` for Amazon FSx
    #
    #   * `Neptune` for Amazon Neptune
    #
    #   * `RDS` for Amazon Relational Database Service
    #
    #   * `Redshift` for Amazon Redshift
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `S3` for Amazon S3
    #
    #   * `Timestream` for Amazon Timestream
    #
    #   * `VirtualMachine` for virtual machines
    #   @return [String]
    #
    # @!attribute [rw] copy_source_tags_to_restored_resource
    #   This is an optional parameter. If this equals `True`, tags included
    #   in the backup will be copied to the restored resource.
    #
    #   This can only be applied to backups created through Backup.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StartRestoreJobInput AWS API Documentation
    #
    class StartRestoreJobInput < Struct.new(
      :recovery_point_arn,
      :metadata,
      :iam_role_arn,
      :idempotency_token,
      :resource_type,
      :copy_source_tags_to_restored_resource)
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

    # @!attribute [rw] backup_job_id
    #   Uniquely identifies a request to Backup to back up a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/StopBackupJobInput AWS API Documentation
    #
    class StopBackupJobInput < Struct.new(
      :backup_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   An ARN that uniquely identifies a resource. The format of the ARN
    #   depends on the type of the tagged resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that are used to help organize your resources. You
    #   can assign your own metadata to the resources you create. For
    #   clarity, this is the structure to assign tags:
    #   `[\{"Key":"string","Value":"string"\}]`.
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
    #   The date and time a backup plan is created, in Unix format and
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

    # @!attribute [rw] framework_name
    #   The unique name of a framework. This name is between 1 and 256
    #   characters, starting with a letter, and consisting of letters (a-z,
    #   A-Z), numbers (0-9), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] framework_description
    #   An optional description of the framework with a maximum 1,024
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] framework_controls
    #   A list of the controls that make up the framework. Each control in
    #   the list has a name, input parameters, and scope.
    #   @return [Array<Types::FrameworkControl>]
    #
    # @!attribute [rw] idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `UpdateFrameworkInput`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateFrameworkInput AWS API Documentation
    #
    class UpdateFrameworkInput < Struct.new(
      :framework_name,
      :framework_description,
      :framework_controls,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] framework_name
    #   The unique name of a framework. This name is between 1 and 256
    #   characters, starting with a letter, and consisting of letters (a-z,
    #   A-Z), numbers (0-9), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] framework_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that a framework is created, in ISO 8601
    #   representation. The value of `CreationTime` is accurate to
    #   milliseconds. For example, 2020-07-10T15:00:00.000-08:00 represents
    #   the 10th of July 2020 at 3:00 PM 8 hours behind UTC.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateFrameworkOutput AWS API Documentation
    #
    class UpdateFrameworkOutput < Struct.new(
      :framework_name,
      :framework_arn,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_settings
    #   A value for `isCrossAccountBackupEnabled` and a Region. Example:
    #   `update-global-settings --global-settings
    #   isCrossAccountBackupEnabled=false --region us-west-2`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateGlobalSettingsInput AWS API Documentation
    #
    class UpdateGlobalSettingsInput < Struct.new(
      :global_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created. They consist of lowercase letters, numbers, and hyphens.
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
    #   cold storage and when it expires. Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “retention” setting must be
    #   90 days greater than the “transition to cold after days” setting.
    #   The “transition to cold after days” setting cannot be changed after
    #   a backup has been transitioned to cold.
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
    #   cold storage and when it expires. Backup transitions and expires
    #   backups automatically according to the lifecycle that you define.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, the “retention” setting must be
    #   90 days greater than the “transition to cold after days” setting.
    #   The “transition to cold after days” setting cannot be changed after
    #   a backup has been transitioned to cold.
    #
    #   Resource types that are able to be transitioned to cold storage are
    #   listed in the "Lifecycle to cold storage" section of the [ Feature
    #   availability by resource][1] table. Backup ignores this expression
    #   for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource
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

    # @!attribute [rw] resource_type_opt_in_preference
    #   Updates the list of services along with the opt-in preferences for
    #   the Region.
    #   @return [Hash<String,Boolean>]
    #
    # @!attribute [rw] resource_type_management_preference
    #   Enables or disables full Backup management of backups for a resource
    #   type. To enable full Backup management for DynamoDB along with [
    #   Backup's advanced DynamoDB backup features][1], follow the
    #   procedure to [ enable advanced DynamoDB backup programmatically][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html
    #   [2]: https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli
    #   @return [Hash<String,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRegionSettingsInput AWS API Documentation
    #
    class UpdateRegionSettingsInput < Struct.new(
      :resource_type_opt_in_preference,
      :resource_type_management_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_plan_name
    #   The unique name of the report plan. This name is between 1 and 256
    #   characters, starting with a letter, and consisting of letters (a-z,
    #   A-Z), numbers (0-9), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] report_plan_description
    #   An optional description of the report plan with a maximum 1,024
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] report_delivery_channel
    #   A structure that contains information about where to deliver your
    #   reports, specifically your Amazon S3 bucket name, S3 key prefix, and
    #   the formats of your reports.
    #   @return [Types::ReportDeliveryChannel]
    #
    # @!attribute [rw] report_setting
    #   Identifies the report template for the report. Reports are built
    #   using a report template. The report templates are:
    #
    #   `RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT |
    #   BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT`
    #
    #   If the report template is `RESOURCE_COMPLIANCE_REPORT` or
    #   `CONTROL_COMPLIANCE_REPORT`, this API resource also describes the
    #   report coverage by Amazon Web Services Regions and frameworks.
    #   @return [Types::ReportSetting]
    #
    # @!attribute [rw] idempotency_token
    #   A customer-chosen string that you can use to distinguish between
    #   otherwise identical calls to `UpdateReportPlanInput`. Retrying a
    #   successful request with the same idempotency token results in a
    #   success message with no action taken.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateReportPlanInput AWS API Documentation
    #
    class UpdateReportPlanInput < Struct.new(
      :report_plan_name,
      :report_plan_description,
      :report_delivery_channel,
      :report_setting,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_plan_name
    #   The unique name of the report plan.
    #   @return [String]
    #
    # @!attribute [rw] report_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a resource.
    #   The format of the ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that a report plan is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateReportPlanOutput AWS API Documentation
    #
    class UpdateReportPlanOutput < Struct.new(
      :report_plan_name,
      :report_plan_arn,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
