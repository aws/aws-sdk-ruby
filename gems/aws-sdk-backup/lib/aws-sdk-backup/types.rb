# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Backup
  module Types

    # The backup options for each resource type.
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
    #   available for Windows VSS backup jobs and S3 backups.
    #
    #   Valid values:
    #
    #   Set to `"WindowsVSS":"enabled"` to enable the `WindowsVSS` backup
    #   option and create a Windows VSS backup.
    #
    #   Set to `"WindowsVSS":"disabled"` to create a regular backup. The
    #   `WindowsVSS` option is not enabled by default.
    #
    #   For S3 backups, set to `"S3BackupACLs":"disabled"` to exclude ACLs
    #   from the backup, or `"S3BackupObjectTags":"disabled"` to exclude
    #   object tags from the backup. By default, both ACLs and object tags
    #   are included in S3 backups.
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

    # @!attribute [rw] backup_vault_name
    #   The name of the backup vault to associate with the MPA approval
    #   team.
    #   @return [String]
    #
    # @!attribute [rw] mpa_approval_team_arn
    #   The Amazon Resource Name (ARN) of the MPA approval team to associate
    #   with the backup vault.
    #   @return [String]
    #
    # @!attribute [rw] requester_comment
    #   A comment provided by the requester explaining the association
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/AssociateBackupVaultMpaApprovalTeamInput AWS API Documentation
    #
    class AssociateBackupVaultMpaApprovalTeamInput < Struct.new(
      :backup_vault_name,
      :mpa_approval_team_arn,
      :requester_comment)
      SENSITIVE = [:requester_comment]
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
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] vault_type
    #   The type of backup vault where the recovery point is stored. Valid
    #   values are `BACKUP_VAULT` for standard backup vaults and
    #   `LOGICALLY_AIR_GAPPED_BACKUP_VAULT` for logically air-gapped vaults.
    #   @return [String]
    #
    # @!attribute [rw] vault_lock_state
    #   The lock state of the backup vault. For logically air-gapped vaults,
    #   this indicates whether the vault is locked in compliance mode. Valid
    #   values include `LOCKED` and `UNLOCKED`.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_lifecycle
    #   Specifies the time period, in days, before a recovery point
    #   transitions to cold storage or is deleted.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, on the console, the retention
    #   setting must be 90 days greater than the transition to cold after
    #   days setting. The transition to cold after days setting can't be
    #   changed after a backup has been transitioned to cold.
    #
    #   Resource types that can transition to cold storage are listed in the
    #   [Feature availability by resource][1] table. Backup ignores this
    #   expression for other resource types.
    #
    #   To remove the existing lifecycle and retention periods and keep your
    #   recovery points indefinitely, specify -1 for
    #   `MoveToColdStorageAfterDays` and `DeleteAfterDays`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   backup. This can be a customer-managed key or an Amazon Web Services
    #   managed key, depending on the vault configuration.
    #   @return [String]
    #
    # @!attribute [rw] is_encrypted
    #   A boolean value indicating whether the backup is encrypted. All
    #   backups in Backup are encrypted, but this field indicates the
    #   encryption status for transparency.
    #   @return [Boolean]
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
    #   The current state of a backup job.
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
    #   The size, in bytes, of a backup (recovery point).
    #
    #   This value can render differently depending on the resource type as
    #   Backup pulls in data information from other Amazon Web Services
    #   services. For example, the value returned may show a value of `0`,
    #   which may differ from the anticipated value.
    #
    #   The expected behavior for values by resource type are described as
    #   follows:
    #
    #   * Amazon Aurora, Amazon DocumentDB, and Amazon Neptune do not have
    #     this value populate from the operation `GetBackupJobStatus`.
    #
    #   * For Amazon DynamoDB with advanced features, this value refers to
    #     the size of the recovery point (backup).
    #
    #   * Amazon EC2 and Amazon EBS show volume size (provisioned storage)
    #     returned as part of this value. Amazon EBS does not return backup
    #     size information; snapshot size will have the same value as the
    #     original resource that was backed up.
    #
    #   * For Amazon EFS, this value refers to the delta bytes transferred
    #     during a backup.
    #
    #   * Amazon FSx does not populate this value from the operation
    #     `GetBackupJobStatus` for FSx file systems.
    #
    #   * An Amazon RDS instance will show as `0`.
    #
    #   * For virtual machines running VMware, this value is passed to
    #     Backup through an asynchronous workflow, which can mean this
    #     displayed value can under-represent the actual backup size.
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
    #   The non-unique name of the resource that belongs to the specified
    #   backup.
    #   @return [String]
    #
    # @!attribute [rw] initiation_date
    #   The date on which the backup job was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] message_category
    #   This parameter is the job count for the specified message category.
    #
    #   Example strings may include `AccessDenied`, `SUCCESS`,
    #   `AGGREGATE_ALL`, and `INVALIDPARAMETERS`. See [Monitoring][1] for a
    #   list of MessageCategory strings.
    #
    #   The the value ANY returns count of all message categories.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all message categories and
    #   returns the sum.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupJob AWS API Documentation
    #
    class BackupJob < Struct.new(
      :account_id,
      :backup_job_id,
      :backup_vault_name,
      :backup_vault_arn,
      :vault_type,
      :vault_lock_state,
      :recovery_point_arn,
      :recovery_point_lifecycle,
      :encryption_key_arn,
      :is_encrypted,
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
      :resource_name,
      :initiation_date,
      :message_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is a summary of jobs created or running within the most recent 30
    # days.
    #
    # The returned summary may contain the following: Region, Account,
    # State, RestourceType, MessageCategory, StartTime, EndTime, and Count
    # of included jobs.
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Regions within the job summary.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID that owns the jobs within the summary.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   This value is job count for jobs with the specified state.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   This value is the job count for the specified resource type. The
    #   request `GetSupportedResourceTypes` returns strings for supported
    #   resource types.
    #   @return [String]
    #
    # @!attribute [rw] message_category
    #   This parameter is the job count for the specified message category.
    #
    #   Example strings include `AccessDenied`, `Success`, and
    #   `InvalidParameters`. See [Monitoring][1] for a list of
    #   MessageCategory strings.
    #
    #   The the value ANY returns count of all message categories.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all message categories and
    #   returns the sum.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The value as a number of jobs in a job summary.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The value of time in number format of a job start time.
    #
    #   This value is the time in Unix format, Coordinated Universal Time
    #   (UTC), and accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The value of time in number format of a job end time.
    #
    #   This value is the time in Unix format, Coordinated Universal Time
    #   (UTC), and accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/BackupJobSummary AWS API Documentation
    #
    class BackupJobSummary < Struct.new(
      :region,
      :account_id,
      :state,
      :resource_type,
      :message_category,
      :count,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an optional backup plan display name and an array of
    # `BackupRule` objects, each of which specifies a backup rule. Each rule
    # in a backup plan is a separate scheduled task and can back up a
    # different selection of Amazon Web Services resources.
    #
    # @!attribute [rw] backup_plan_name
    #   The display name of a backup plan. Must contain only alphanumeric or
    #   '-\_.' special characters.
    #
    #   If this is set in the console, it can contain 1 to 50 characters; if
    #   this is set through CLI or API, it can contain 1 to 200 characters.
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
    #   The last time this backup plan was run. A date and time, in Unix
    #   format and Coordinated Universal Time (UTC). The value of
    #   `LastExecutionDate` is accurate to milliseconds. For example, the
    #   value 1516925490.087 represents Friday, January 26, 2018
    #   12:11:30.087 AM.
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
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   A cron expression in UTC specifying when Backup initiates a backup
    #   job. When no CRON expression is provided, Backup will use the
    #   default expression `cron(0 5 ? * * *)`.
    #
    #   For more information about Amazon Web Services cron expressions, see
    #   [Schedule Expressions for Rules][1] in the *Amazon CloudWatch Events
    #   User Guide*.
    #
    #   Two examples of Amazon Web Services cron expressions are ` 15 * ? *
    #   * *` (take a backup every hour at 15 minutes past the hour) and `0
    #   12 * * ? *` (take a backup every day at 12 noon UTC).
    #
    #   For a table of examples, click the preceding link and scroll down
    #   the page.
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
    #   Resource types that can transition to cold storage are listed in the
    #   [Feature availability by resource][1] table. Backup ignores this
    #   expression for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] recovery_point_tags
    #   The tags that are assigned to resources that are associated with
    #   this rule when restored from backup.
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
    # @!attribute [rw] schedule_expression_timezone
    #   The timezone in which the schedule expression is set. By default,
    #   ScheduleExpressions are in UTC. You can modify this to a specified
    #   timezone.
    #   @return [String]
    #
    # @!attribute [rw] index_actions
    #   IndexActions is an array you use to specify how backup data should
    #   be indexed.
    #
    #   eEach BackupRule can have 0 or 1 IndexAction, as each backup can
    #   have up to one index associated with it.
    #
    #   Within the array is ResourceType. Only one will be accepted for each
    #   BackupRule.
    #   @return [Array<Types::IndexAction>]
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
      :enable_continuous_backup,
      :schedule_expression_timezone,
      :index_actions)
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
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   A CRON expression in UTC specifying when Backup initiates a backup
    #   job. When no CRON expression is provided, Backup will use the
    #   default expression `cron(0 5 ? * * *)`.
    #   @return [String]
    #
    # @!attribute [rw] start_window_minutes
    #   A value in minutes after a backup is scheduled before a job will be
    #   canceled if it doesn't start successfully. This value is optional.
    #   If this value is included, it must be at least 60 minutes to avoid
    #   errors.
    #
    #   This parameter has a maximum value of 100 years (52,560,000
    #   minutes).
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
    #   a backup has been transitioned to cold storage.
    #
    #   Resource types that can transition to cold storage are listed in the
    #   [Feature availability by resource][1] table. Backup ignores this
    #   expression for other resource types.
    #
    #   This parameter has a maximum value of 100 years (36,500 days).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] recovery_point_tags
    #   The tags to assign to the resources.
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
    # @!attribute [rw] schedule_expression_timezone
    #   The timezone in which the schedule expression is set. By default,
    #   ScheduleExpressions are in UTC. You can modify this to a specified
    #   timezone.
    #   @return [String]
    #
    # @!attribute [rw] index_actions
    #   There can up to one IndexAction in each BackupRule, as each backup
    #   can have 0 or 1 backup index associated with it.
    #
    #   Within the array is ResourceTypes. Only 1 resource type will be
    #   accepted for each BackupRule. Valid values:
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `S3` for Amazon Simple Storage Service (Amazon S3)
    #   @return [Array<Types::IndexAction>]
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
      :enable_continuous_backup,
      :schedule_expression_timezone,
      :index_actions)
      SENSITIVE = [:recovery_point_tags]
      include Aws::Structure
    end

    # Used to specify a set of resources to a backup plan.
    #
    # We recommend that you specify conditions, tags, or resources to
    # include or exclude. Otherwise, Backup attempts to select all supported
    # and opted-in storage resources, which could have unintended cost
    # implications.
    #
    # For more information, see [Assigning resources programmatically][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html#assigning-resources-json
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
    #   The Amazon Resource Names (ARNs) of the resources to assign to a
    #   backup plan. The maximum number of ARNs is 500 without wildcards, or
    #   30 ARNs with wildcards.
    #
    #   If you need to assign many resources to a backup plan, consider a
    #   different resource selection strategy, such as assigning all
    #   resources of a resource type or refining your resource selection
    #   using tags.
    #
    #   If you specify multiple ARNs, the resources much match any of the
    #   ARNs (OR logic).
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_of_tags
    #   The conditions that you define to assign resources to your backup
    #   plans using tags. For example, `"StringEquals": { "ConditionKey":
    #   "backup", "ConditionValue": "daily"}`.
    #
    #   `ListOfTags` supports only `StringEquals`. Condition operators are
    #   case sensitive.
    #
    #   If you specify multiple conditions, the resources much match any of
    #   the conditions (OR logic).
    #   @return [Array<Types::Condition>]
    #
    # @!attribute [rw] not_resources
    #   The Amazon Resource Names (ARNs) of the resources to exclude from a
    #   backup plan. The maximum number of ARNs is 500 without wildcards, or
    #   30 ARNs with wildcards.
    #
    #   If you need to exclude many resources from a backup plan, consider a
    #   different resource selection strategy, such as assigning only one or
    #   a few resource types or refining your resource selection using tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] conditions
    #   The conditions that you define to assign resources to your backup
    #   plans using tags. For example, `"StringEquals": { "ConditionKey":
    #   "aws:ResourceTag/backup", "ConditionValue": "daily" }`.
    #
    #   `Conditions` supports `StringEquals`, `StringLike`,
    #   `StringNotEquals`, and `StringNotLike`. Condition operators are case
    #   sensitive.
    #
    #   If you specify multiple conditions, the resources much match all
    #   conditions (AND logic).
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
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] vault_type
    #   The type of vault in which the described recovery point is stored.
    #   @return [String]
    #
    # @!attribute [rw] vault_state
    #   The current state of the vault.
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
      :vault_type,
      :vault_state,
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
    # Resource types that can transition to cold storage are listed in the
    # [Feature availability by resource][1] table. Backup ignores this
    # expression for other resource types.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
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
    #   The ID of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] cancel_description
    #   A string the describes the reason for removing the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] retain_record_in_days
    #   The integer amount, in days, after which to remove legal hold.
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
    # Include the prefix `aws:ResourceTag` in your tags. For example,
    # `"aws:ResourceTag/TagKey1": "Value1"`.
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

    # The parameters for a control. A control can have zero, one, or more
    # than one parameter. An example of a control with two parameters is:
    # "backup plan frequency is at least `daily` and the retention period
    # is at least `1 year`". The first parameter is `daily`. The second
    # parameter is `1 year`.
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
    #   optional, but it cannot be an empty string if you are creating or
    #   editing a framework from the console (though the value can be an
    #   empty string when included in a CloudFormation template).
    #
    #   The structure to assign a tag is:
    #   `[{"Key":"string","Value":"string"}]`.
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
    #   Specifies the time period, in days, before a recovery point
    #   transitions to cold storage or is deleted.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, on the console, the retention
    #   setting must be 90 days greater than the transition to cold after
    #   days setting. The transition to cold after days setting can't be
    #   changed after a backup has been transitioned to cold.
    #
    #   Resource types that can transition to cold storage are listed in the
    #   [Feature availability by resource][1] table. Backup ignores this
    #   expression for other resource types.
    #
    #   To remove the existing lifecycle and retention periods and keep your
    #   recovery points indefinitely, specify -1 for
    #   `MoveToColdStorageAfterDays` and `DeleteAfterDays`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] destination_backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies the
    #   destination backup vault for the copied backup. For example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
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
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
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
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] destination_vault_type
    #   The type of destination backup vault where the copied recovery point
    #   is stored. Valid values are `BACKUP_VAULT` for standard backup
    #   vaults and `LOGICALLY_AIR_GAPPED_BACKUP_VAULT` for logically
    #   air-gapped vaults.
    #   @return [String]
    #
    # @!attribute [rw] destination_vault_lock_state
    #   The lock state of the destination backup vault. For logically
    #   air-gapped vaults, this indicates whether the vault is locked in
    #   compliance mode. Valid values include `LOCKED` and `UNLOCKED`.
    #   @return [String]
    #
    # @!attribute [rw] destination_recovery_point_arn
    #   An ARN that uniquely identifies a destination recovery point; for
    #   example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] destination_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   copied backup in the destination vault. This can be a
    #   customer-managed key or an Amazon Web Services managed key.
    #   @return [String]
    #
    # @!attribute [rw] destination_recovery_point_lifecycle
    #   Specifies the time period, in days, before a recovery point
    #   transitions to cold storage or is deleted.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, on the console, the retention
    #   setting must be 90 days greater than the transition to cold after
    #   days setting. The transition to cold after days setting can't be
    #   changed after a backup has been transitioned to cold.
    #
    #   Resource types that can transition to cold storage are listed in the
    #   [Feature availability by resource][1] table. Backup ignores this
    #   expression for other resource types.
    #
    #   To remove the existing lifecycle and retention periods and keep your
    #   recovery points indefinitely, specify -1 for
    #   `MoveToColdStorageAfterDays` and `DeleteAfterDays`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
    #   @return [Types::Lifecycle]
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
    #   The identifier of a resource within a composite group, such as
    #   nested (child) recovery point belonging to a composite (parent)
    #   stack. The ID is transferred from the [ logical ID][1] within a
    #   stack.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html#resources-section-structure-syntax
    #   @return [String]
    #
    # @!attribute [rw] number_of_child_jobs
    #   The number of child (nested) copy jobs.
    #   @return [Integer]
    #
    # @!attribute [rw] child_jobs_in_state
    #   This returns the statistics of the included child (nested) copy
    #   jobs.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] resource_name
    #   The non-unique name of the resource that belongs to the specified
    #   backup.
    #   @return [String]
    #
    # @!attribute [rw] message_category
    #   This parameter is the job count for the specified message category.
    #
    #   Example strings may include `AccessDenied`, `SUCCESS`,
    #   `AGGREGATE_ALL`, and `InvalidParameters`. See [Monitoring][1] for a
    #   list of MessageCategory strings.
    #
    #   The the value ANY returns count of all message categories.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all message categories and
    #   returns the sum
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html
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
      :destination_vault_type,
      :destination_vault_lock_state,
      :destination_recovery_point_arn,
      :destination_encryption_key_arn,
      :destination_recovery_point_lifecycle,
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
      :resource_name,
      :message_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is a summary of copy jobs created or running within the most
    # recent 30 days.
    #
    # The returned summary may contain the following: Region, Account,
    # State, RestourceType, MessageCategory, StartTime, EndTime, and Count
    # of included jobs.
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Regions within the job summary.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID that owns the jobs within the summary.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   This value is job count for jobs with the specified state.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   This value is the job count for the specified resource type. The
    #   request `GetSupportedResourceTypes` returns strings for supported
    #   resource types
    #   @return [String]
    #
    # @!attribute [rw] message_category
    #   This parameter is the job count for the specified message category.
    #
    #   Example strings include `AccessDenied`, `Success`, and
    #   `InvalidParameters`. See [Monitoring][1] for a list of
    #   MessageCategory strings.
    #
    #   The the value ANY returns count of all message categories.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all message categories and
    #   returns the sum.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The value as a number of jobs in a job summary.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The value of time in number format of a job start time.
    #
    #   This value is the time in Unix format, Coordinated Universal Time
    #   (UTC), and accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The value of time in number format of a job end time.
    #
    #   This value is the time in Unix format, Coordinated Universal Time
    #   (UTC), and accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CopyJobSummary AWS API Documentation
    #
    class CopyJobSummary < Struct.new(
      :region,
      :account_id,
      :state,
      :resource_type,
      :message_category,
      :count,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_plan
    #   The body of a backup plan. Includes a `BackupPlanName` and one or
    #   more sets of `Rules`.
    #   @return [Types::BackupPlanInput]
    #
    # @!attribute [rw] backup_plan_tags
    #   The tags to assign to the backup plan.
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
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
    #   The ID of the backup plan.
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
    #   The settings for a resource type. This option is only available for
    #   Windows Volume Shadow Copy Service (VSS) backup jobs.
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
    #   The ID of the backup plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_selection
    #   The body of a request to assign a set of resources to a backup plan.
    #   @return [Types::BackupSelection]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and allows failed
    #   requests to be retried without the risk of running the operation
    #   twice. This parameter is optional.
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or
    #   '-\_.' characters.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
    #   The ID of the backup plan.
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
    #   The tags to assign to the backup vault.
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
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
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
    #   The controls that make up the framework. Each control in the list
    #   has a name, input parameters, and scope.
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
    #   The tags to assign to the framework.
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
    #   The title of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   This is a user-chosen string used to distinguish between otherwise
    #   identical calls. Retrying a successful request with the same
    #   idempotency token results in a success message with no action taken.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_selection
    #   The criteria to assign a set of resources, such as resource types or
    #   backup vaults.
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
    #   The title of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_id
    #   The ID of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_arn
    #   The Amazon Resource Name (ARN) of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The time when the legal hold was created.
    #   @return [Time]
    #
    # @!attribute [rw] recovery_point_selection
    #   The criteria to assign to a set of resources, such as resource types
    #   or backup vaults.
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

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Logically
    #   air-gapped backup vaults are identified by names that are unique to
    #   the account used to create them and the Region where they are
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_tags
    #   The tags to assign to the vault.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] creator_request_id
    #   The ID of the creation request.
    #
    #   This parameter is optional. If used, this parameter must contain 1
    #   to 50 alphanumeric or '-\_.' characters.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] min_retention_days
    #   This setting specifies the minimum retention period that the vault
    #   retains its recovery points.
    #
    #   The minimum value accepted is 7 days.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retention_days
    #   The maximum retention period that the vault retains its recovery
    #   points.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateLogicallyAirGappedBackupVaultInput AWS API Documentation
    #
    class CreateLogicallyAirGappedBackupVaultInput < Struct.new(
      :backup_vault_name,
      :backup_vault_tags,
      :creator_request_id,
      :min_retention_days,
      :max_retention_days)
      SENSITIVE = [:backup_vault_tags]
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Logically
    #   air-gapped backup vaults are identified by names that are unique to
    #   the account used to create them and the Region where they are
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   The ARN (Amazon Resource Name) of the vault.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the vault was created.
    #
    #   This value is in Unix format, Coordinated Universal Time (UTC), and
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] vault_state
    #   The current state of the vault.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateLogicallyAirGappedBackupVaultOutput AWS API Documentation
    #
    class CreateLogicallyAirGappedBackupVaultOutput < Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :creation_date,
      :vault_state)
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
    #   The tags to assign to the report plan.
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

    # @!attribute [rw] source_backup_vault_arn
    #   The ARN of the source backup vault containing the recovery points to
    #   which temporary access is requested.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of the backup vault to associate with an MPA approval team.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_tags
    #   Optional tags to assign to the restore access backup vault.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and allows failed
    #   requests to be retried without the risk of executing the operation
    #   twice.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] requester_comment
    #   A comment explaining the reason for requesting restore access to the
    #   backup vault.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateRestoreAccessBackupVaultInput AWS API Documentation
    #
    class CreateRestoreAccessBackupVaultInput < Struct.new(
      :source_backup_vault_arn,
      :backup_vault_name,
      :backup_vault_tags,
      :creator_request_id,
      :requester_comment)
      SENSITIVE = [:backup_vault_tags, :requester_comment]
      include Aws::Structure
    end

    # @!attribute [rw] restore_access_backup_vault_arn
    #   The ARN that uniquely identifies the created restore access backup
    #   vault.
    #   @return [String]
    #
    # @!attribute [rw] vault_state
    #   The current state of the restore access backup vault.
    #   @return [String]
    #
    # @!attribute [rw] restore_access_backup_vault_name
    #   The name of the created restore access backup vault.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   &gt;The date and time when the restore access backup vault was
    #   created, in Unix format and Coordinated Universal Time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateRestoreAccessBackupVaultOutput AWS API Documentation
    #
    class CreateRestoreAccessBackupVaultOutput < Struct.new(
      :restore_access_backup_vault_arn,
      :vault_state,
      :restore_access_backup_vault_name,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creator_request_id
    #   This is a unique string that identifies the request and allows
    #   failed requests to be retriedwithout the risk of running the
    #   operation twice. This parameter is optional. If used, this parameter
    #   must contain 1 to 50 alphanumeric or '-\_.' characters.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_plan
    #   A restore testing plan must contain a unique
    #   `RestoreTestingPlanName` string you create and must contain a
    #   `ScheduleExpression` cron. You may optionally include a
    #   `StartWindowHours` integer and a `CreatorRequestId` string.
    #
    #   The `RestoreTestingPlanName` is a unique string that is the name of
    #   the restore testing plan. This cannot be changed after creation, and
    #   it must consist of only alphanumeric characters and underscores.
    #   @return [Types::RestoreTestingPlanForCreate]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the restore testing plan.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateRestoreTestingPlanInput AWS API Documentation
    #
    class CreateRestoreTestingPlanInput < Struct.new(
      :creator_request_id,
      :restore_testing_plan,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The date and time a restore testing plan was created, in Unix format
    #   and Coordinated Universal Time (UTC). The value of `CreationTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087AM.
    #   @return [Time]
    #
    # @!attribute [rw] restore_testing_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies the created
    #   restore testing plan.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   This unique string is the name of the restore testing plan.
    #
    #   The name cannot be changed after creation. The name consists of only
    #   alphanumeric characters and underscores. Maximum length is 50.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateRestoreTestingPlanOutput AWS API Documentation
    #
    class CreateRestoreTestingPlanOutput < Struct.new(
      :creation_time,
      :restore_testing_plan_arn,
      :restore_testing_plan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creator_request_id
    #   This is an optional unique string that identifies the request and
    #   allows failed requests to be retried without the risk of running the
    #   operation twice. If used, this parameter must contain 1 to 50
    #   alphanumeric or '-\_.' characters.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   Input the restore testing plan name that was returned from the
    #   related CreateRestoreTestingPlan request.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_selection
    #   This consists of `RestoreTestingSelectionName`,
    #   `ProtectedResourceType`, and one of the following:
    #
    #   * `ProtectedResourceArns`
    #
    #   * `ProtectedResourceConditions`
    #
    #   Each protected resource type can have one single value.
    #
    #   A restore testing selection can include a wildcard value ("*")
    #   for `ProtectedResourceArns` along with
    #   `ProtectedResourceConditions`. Alternatively, you can include up to
    #   30 specific protected resource ARNs in `ProtectedResourceArns`.
    #   @return [Types::RestoreTestingSelectionForCreate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateRestoreTestingSelectionInput AWS API Documentation
    #
    class CreateRestoreTestingSelectionInput < Struct.new(
      :creator_request_id,
      :restore_testing_plan_name,
      :restore_testing_selection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time that the resource testing selection was created.
    #   @return [Time]
    #
    # @!attribute [rw] restore_testing_plan_arn
    #   The ARN of the restore testing plan with which the restore testing
    #   selection is associated.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   The name of the restore testing plan.
    #
    #   The name cannot be changed after creation. The name consists of only
    #   alphanumeric characters and underscores. Maximum length is 50.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_selection_name
    #   The name of the restore testing selection for the related restore
    #   testing plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/CreateRestoreTestingSelectionOutput AWS API Documentation
    #
    class CreateRestoreTestingSelectionOutput < Struct.new(
      :creation_time,
      :restore_testing_plan_arn,
      :restore_testing_plan_name,
      :restore_testing_selection_name)
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
    #   created.
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
    #   to create them and the Region where they are created.
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
    #   created.
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

    # @!attribute [rw] restore_testing_plan_name
    #   Required unique name of the restore testing plan you wish to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteRestoreTestingPlanInput AWS API Documentation
    #
    class DeleteRestoreTestingPlanInput < Struct.new(
      :restore_testing_plan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] restore_testing_plan_name
    #   Required unique name of the restore testing plan that contains the
    #   restore testing selection you wish to delete.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_selection_name
    #   Required unique name of the restore testing selection you wish to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DeleteRestoreTestingSelectionInput AWS API Documentation
    #
    class DeleteRestoreTestingSelectionInput < Struct.new(
      :restore_testing_plan_name,
      :restore_testing_selection_name)
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
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_lifecycle
    #   Specifies the time period, in days, before a recovery point
    #   transitions to cold storage or is deleted.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, on the console, the retention
    #   setting must be 90 days greater than the transition to cold after
    #   days setting. The transition to cold after days setting can't be
    #   changed after a backup has been transitioned to cold.
    #
    #   Resource types that can transition to cold storage are listed in the
    #   [Feature availability by resource][1] table. Backup ignores this
    #   expression for other resource types.
    #
    #   To remove the existing lifecycle and retention periods and keep your
    #   recovery points indefinitely, specify -1 for
    #   `MoveToColdStorageAfterDays` and `DeleteAfterDays`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] vault_type
    #   The type of backup vault where the recovery point is stored. Valid
    #   values are `BACKUP_VAULT` for standard backup vaults and
    #   `LOGICALLY_AIR_GAPPED_BACKUP_VAULT` for logically air-gapped vaults.
    #   @return [String]
    #
    # @!attribute [rw] vault_lock_state
    #   The lock state of the backup vault. For logically air-gapped vaults,
    #   this indicates whether the vault is locked in compliance mode. Valid
    #   values include `LOCKED` and `UNLOCKED`.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   backup. This can be a customer-managed key or an Amazon Web Services
    #   managed key, depending on the vault configuration.
    #   @return [String]
    #
    # @!attribute [rw] is_encrypted
    #   A boolean value indicating whether the backup is encrypted. All
    #   backups in Backup are encrypted, but this field indicates the
    #   encryption status for transparency.
    #   @return [Boolean]
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
    #   The current state of a backup job.
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
    #   The size, in bytes, of a backup (recovery point).
    #
    #   This value can render differently depending on the resource type as
    #   Backup pulls in data information from other Amazon Web Services
    #   services. For example, the value returned may show a value of `0`,
    #   which may differ from the anticipated value.
    #
    #   The expected behavior for values by resource type are described as
    #   follows:
    #
    #   * Amazon Aurora, Amazon DocumentDB, and Amazon Neptune do not have
    #     this value populate from the operation `GetBackupJobStatus`.
    #
    #   * For Amazon DynamoDB with advanced features, this value refers to
    #     the size of the recovery point (backup).
    #
    #   * Amazon EC2 and Amazon EBS show volume size (provisioned storage)
    #     returned as part of this value. Amazon EBS does not return backup
    #     size information; snapshot size will have the same value as the
    #     original resource that was backed up.
    #
    #   * For Amazon EFS, this value refers to the delta bytes transferred
    #     during a backup.
    #
    #   * Amazon FSx does not populate this value from the operation
    #     `GetBackupJobStatus` for FSx file systems.
    #
    #   * An Amazon RDS instance will show as `0`.
    #
    #   * For virtual machines running VMware, this value is passed to
    #     Backup through an asynchronous workflow, which can mean this
    #     displayed value can under-represent the actual backup size.
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
    #   The non-unique name of the resource that belongs to the specified
    #   backup.
    #   @return [String]
    #
    # @!attribute [rw] initiation_date
    #   The date a backup job was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] message_category
    #   The job count for the specified message category.
    #
    #   Example strings may include `AccessDenied`, `SUCCESS`,
    #   `AGGREGATE_ALL`, and `INVALIDPARAMETERS`. View [Monitoring][1] for a
    #   list of accepted MessageCategory strings.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeBackupJobOutput AWS API Documentation
    #
    class DescribeBackupJobOutput < Struct.new(
      :account_id,
      :backup_job_id,
      :backup_vault_name,
      :recovery_point_lifecycle,
      :backup_vault_arn,
      :vault_type,
      :vault_lock_state,
      :recovery_point_arn,
      :encryption_key_arn,
      :is_encrypted,
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
      :resource_name,
      :initiation_date,
      :message_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_account_id
    #   The account ID of the specified backup vault.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeBackupVaultInput AWS API Documentation
    #
    class DescribeBackupVaultInput < Struct.new(
      :backup_vault_name,
      :backup_vault_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Region where they are created.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] vault_type
    #   The type of vault described.
    #   @return [String]
    #
    # @!attribute [rw] vault_state
    #   The current state of the vault.-&gt;
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
    #   twice. This parameter is optional. If used, this parameter must
    #   contain 1 to 50 alphanumeric or '-\_.' characters.
    #   @return [String]
    #
    # @!attribute [rw] number_of_recovery_points
    #   The number of recovery points that are stored in a backup vault.
    #
    #   Recovery point count value displayed in the console can be an
    #   approximation. Use [ `ListRecoveryPointsByBackupVault` ][1] API to
    #   obtain the exact count.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_ListRecoveryPointsByBackupVault.html
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
    #   is not specified, Vault Lock will not enforce a minimum retention
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
    # @!attribute [rw] source_backup_vault_arn
    #   The ARN of the source backup vault from which this restore access
    #   backup vault was created.
    #   @return [String]
    #
    # @!attribute [rw] mpa_approval_team_arn
    #   The ARN of the MPA approval team associated with this backup vault.
    #   @return [String]
    #
    # @!attribute [rw] mpa_session_arn
    #   The ARN of the MPA session associated with this backup vault.
    #   @return [String]
    #
    # @!attribute [rw] latest_mpa_approval_team_update
    #   Information about the latest update to the MPA approval team
    #   association for this backup vault.
    #   @return [Types::LatestMpaApprovalTeamUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeBackupVaultOutput AWS API Documentation
    #
    class DescribeBackupVaultOutput < Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :vault_type,
      :vault_state,
      :encryption_key_arn,
      :creation_date,
      :creator_request_id,
      :number_of_recovery_points,
      :locked,
      :min_retention_days,
      :max_retention_days,
      :lock_date,
      :source_backup_vault_arn,
      :mpa_approval_team_arn,
      :mpa_session_arn,
      :latest_mpa_approval_team_update)
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
    #   The controls that make up the framework. Each control in the list
    #   has a name, input parameters, and scope.
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
    #   The status of the flags `isCrossAccountBackupEnabled` and
    #   `isMpaEnabled` ('Mpa' refers to multi-party approval).
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
    #   The name of the resource that belongs to the specified backup.
    #   @return [String]
    #
    # @!attribute [rw] last_backup_vault_arn
    #   The ARN (Amazon Resource Name) of the backup vault that contains the
    #   most recent backup recovery point.
    #   @return [String]
    #
    # @!attribute [rw] last_recovery_point_arn
    #   The ARN (Amazon Resource Name) of the most recent recovery point.
    #   @return [String]
    #
    # @!attribute [rw] latest_restore_execution_time_minutes
    #   The time, in minutes, that the most recent restore job took to
    #   complete.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_restore_job_creation_date
    #   The creation date of the most recent restore job.
    #   @return [Time]
    #
    # @!attribute [rw] latest_restore_recovery_point_creation_date
    #   The date the most recent recovery point was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeProtectedResourceOutput AWS API Documentation
    #
    class DescribeProtectedResourceOutput < Struct.new(
      :resource_arn,
      :resource_type,
      :last_backup_time,
      :resource_name,
      :last_backup_vault_arn,
      :last_recovery_point_arn,
      :latest_restore_execution_time_minutes,
      :latest_restore_job_creation_date,
      :latest_restore_recovery_point_creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_account_id
    #   The account ID of the specified backup vault.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRecoveryPointInput AWS API Documentation
    #
    class DescribeRecoveryPointInput < Struct.new(
      :backup_vault_name,
      :recovery_point_arn,
      :backup_vault_account_id)
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
    #   to create them and the Region where they are created.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An ARN that uniquely identifies a backup vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] source_backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies the source
    #   vault where the resource was originally backed up in; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
    #   If the recovery is restored to the same Amazon Web Services account
    #   or Region, this value will be `null`.
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
    #   A status code specifying the state of the recovery point. For more
    #   information, see [ Recovery point status][1] in the *Backup
    #   Developer Guide*.
    #
    #   * `CREATING` status indicates that an Backup job has been initiated
    #     for a resource. The backup process has started and is actively
    #     processing a backup job for the associated recovery point.
    #
    #   * `AVAILABLE` status indicates that the backup was successfully
    #     created for the recovery point. The backup process has completed
    #     without any issues, and the recovery point is now ready for use.
    #
    #   * `PARTIAL` status indicates a composite recovery point has one or
    #     more nested recovery points that were not in the backup.
    #
    #   * `EXPIRED` status indicates that the recovery point has exceeded
    #     its retention period, but Backup lacks permission or is otherwise
    #     unable to delete it. To manually delete these recovery points, see
    #     [ Step 3: Delete the recovery points][2] in the *Clean up
    #     resources* section of *Getting started*.
    #
    #   * `STOPPED` status occurs on a continuous backup where a user has
    #     taken some action that causes the continuous backup to be
    #     disabled. This can be caused by the removal of permissions,
    #     turning off versioning, turning off events being sent to
    #     EventBridge, or disabling the EventBridge rules that are put in
    #     place by Backup. For recovery points of Amazon S3, Amazon RDS, and
    #     Amazon Aurora resources, this status occurs when the retention
    #     period of a continuous backup rule is changed.
    #
    #     To resolve `STOPPED` status, ensure that all requested permissions
    #     are in place and that versioning is enabled on the S3 bucket. Once
    #     these conditions are met, the next instance of a backup rule
    #     running will result in a new continuous recovery point being
    #     created. The recovery points with STOPPED status do not need to be
    #     deleted.
    #
    #     For SAP HANA on Amazon EC2 `STOPPED` status occurs due to user
    #     action, application misconfiguration, or backup failure. To ensure
    #     that future continuous backups succeed, refer to the recovery
    #     point status and check SAP HANA for details.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/applicationstackbackups.html#cfnrecoverypointstatus
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
    # @!attribute [rw] initiation_date
    #   The date and time when the backup job that created this recovery
    #   point was initiated, in Unix format and Coordinated Universal Time
    #   (UTC).
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
    #   Resource types that can transition to cold storage are listed in the
    #   [Feature availability by resource][1] table. Backup ignores this
    #   expression for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
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
    #   The identifier of a resource within a composite group, such as
    #   nested (child) recovery point belonging to a composite (parent)
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
    #   The name of the resource that belongs to the specified backup.
    #   @return [String]
    #
    # @!attribute [rw] vault_type
    #   The type of vault in which the described recovery point is stored.
    #   @return [String]
    #
    # @!attribute [rw] index_status
    #   This is the current status for the backup index associated with the
    #   specified recovery point.
    #
    #   Statuses are: `PENDING` \| `ACTIVE` \| `FAILED` \| `DELETING`
    #
    #   A recovery point with an index that has the status of `ACTIVE` can
    #   be included in a search.
    #   @return [String]
    #
    # @!attribute [rw] index_status_message
    #   A string in the form of a detailed message explaining the status of
    #   a backup index associated with the recovery point.
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
      :initiation_date,
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
      :resource_name,
      :vault_type,
      :index_status,
      :index_status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRegionSettingsInput AWS API Documentation
    #
    class DescribeRegionSettingsInput < Aws::EmptyStructure; end

    # @!attribute [rw] resource_type_opt_in_preference
    #   The services along with the opt-in preferences in the Region.
    #   @return [Hash<String,Boolean>]
    #
    # @!attribute [rw] resource_type_management_preference
    #   Returns whether Backup fully manages the backups for a resource
    #   type.
    #
    #   For the benefits of full Backup management, see [Full Backup
    #   management][1].
    #
    #   For a list of resource types and whether each supports full Backup
    #   management, see the [Feature availability by resource][2] table.
    #
    #   If `"DynamoDB":false`, you can enable full Backup management for
    #   DynamoDB backup by enabling [ Backup's advanced DynamoDB backup
    #   features][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management
    #   [2]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
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
    #   The information about a report job, including its completion and
    #   creation times, report destination, unique report job ID, Amazon
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
    # @!attribute [rw] source_resource_arn
    #   The Amazon Resource Name (ARN) of the original resource that was
    #   backed up. This provides context about what resource is being
    #   restored.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   The Amazon Resource Name (ARN) of the backup vault containing the
    #   recovery point being restored. This helps identify vault access
    #   policies and permissions.
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
    #   The Amazon Resource Name (ARN) of the resource that was created by
    #   the restore job.
    #
    #   The format of the ARN depends on the resource type of the backed-up
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Returns metadata associated with a restore job listed by resource
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_creation_date
    #   The creation date of the recovery point made by the specifed restore
    #   job.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Contains identifying information about the creation of a restore
    #   job.
    #   @return [Types::RestoreJobCreator]
    #
    # @!attribute [rw] validation_status
    #   The status of validation run on the indicated restore job.
    #   @return [String]
    #
    # @!attribute [rw] validation_status_message
    #   The status message.
    #   @return [String]
    #
    # @!attribute [rw] deletion_status
    #   The status of the data generated by the restore test.
    #   @return [String]
    #
    # @!attribute [rw] deletion_status_message
    #   This describes the restore job deletion status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DescribeRestoreJobOutput AWS API Documentation
    #
    class DescribeRestoreJobOutput < Struct.new(
      :account_id,
      :restore_job_id,
      :recovery_point_arn,
      :source_resource_arn,
      :backup_vault_arn,
      :creation_date,
      :completion_date,
      :status,
      :status_message,
      :percent_done,
      :backup_size_in_bytes,
      :iam_role_arn,
      :expected_completion_time_minutes,
      :created_resource_arn,
      :resource_type,
      :recovery_point_creation_date,
      :created_by,
      :validation_status,
      :validation_status_message,
      :deletion_status,
      :deletion_status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of the backup vault from which to disassociate the MPA
    #   approval team.
    #   @return [String]
    #
    # @!attribute [rw] requester_comment
    #   An optional comment explaining the reason for disassociating the MPA
    #   approval team from the backup vault.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/DisassociateBackupVaultMpaApprovalTeamInput AWS API Documentation
    #
    class DisassociateBackupVaultMpaApprovalTeamInput < Struct.new(
      :backup_vault_name,
      :requester_comment)
      SENSITIVE = [:requester_comment]
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where the child (nested) recovery
    #   point is stored. Backup vaults are identified by names that are
    #   unique to the account used to create them and the Amazon Web
    #   Services Region where they are created.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the child
    #   (nested) recovery point; for example,
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
    #   The name/value pairs.
    #   @return [Array<Types::ControlInputParameter>]
    #
    # @!attribute [rw] control_scope
    #   The scope of a control. The control scope defines what the control
    #   will evaluate. Three examples of control scopes are: a specific
    #   backup plan, all backup plans with a specific tag, or all backup
    #   plans.
    #
    #   For more information, see [ `ControlScope`.][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_ControlScope.html
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
    # @!attribute [rw] max_scheduled_runs_preview
    #   Number of future scheduled backup runs to preview. When set to 0
    #   (default), no scheduled runs preview is included in the response.
    #   Valid range is 0-10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetBackupPlanInput AWS API Documentation
    #
    class GetBackupPlanInput < Struct.new(
      :backup_plan_id,
      :version_id,
      :max_scheduled_runs_preview)
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
    #   The last time this backup plan was run. A date and time, in Unix
    #   format and Coordinated Universal Time (UTC). The value of
    #   `LastExecutionDate` is accurate to milliseconds. For example, the
    #   value 1516925490.087 represents Friday, January 26, 2018
    #   12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] advanced_backup_settings
    #   Contains a list of `BackupOptions` for each resource type. The list
    #   is populated only if the advanced option is set for the backup plan.
    #   @return [Array<Types::AdvancedBackupSetting>]
    #
    # @!attribute [rw] scheduled_runs_preview
    #   List of upcoming scheduled backup runs. Only included when
    #   `MaxScheduledRunsPreview` parameter is greater than 0. Contains up
    #   to 10 future backup executions with their scheduled times, execution
    #   types, and associated rule IDs.
    #   @return [Array<Types::ScheduledPlanExecutionMember>]
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
      :advanced_backup_settings,
      :scheduled_runs_preview)
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
    #   created.
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
    #   to create them and the Region where they are created.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
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
    #   created.
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
    #   to create them and the Region where they are created.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a backup
    #   vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
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
    #   The ID of the legal hold.
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
    #   The title of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] cancel_description
    #   The reason for removing the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_id
    #   The ID of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_arn
    #   The framework ARN for the specified legal hold. The format of the
    #   ARN depends on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The time when the legal hold was created.
    #   @return [Time]
    #
    # @!attribute [rw] cancellation_date
    #   The time when the legal hold was cancelled.
    #   @return [Time]
    #
    # @!attribute [rw] retain_record_until
    #   The date and time until which the legal hold record is retained.
    #   @return [Time]
    #
    # @!attribute [rw] recovery_point_selection
    #   The criteria to assign a set of resources, such as resource types or
    #   backup vaults.
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
    #   to create them and the Region where they are created.
    #
    #   Accepted characters include lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRecoveryPointIndexDetailsInput AWS API Documentation
    #
    class GetRecoveryPointIndexDetailsInput < Struct.new(
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
    # @!attribute [rw] backup_vault_arn
    #   An ARN that uniquely identifies the backup vault where the recovery
    #   point index is stored.
    #
    #   For example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
    #   @return [String]
    #
    # @!attribute [rw] source_resource_arn
    #   A string of the Amazon Resource Name (ARN) that uniquely identifies
    #   the source resource.
    #   @return [String]
    #
    # @!attribute [rw] index_creation_date
    #   The date and time that a backup index was created, in Unix format
    #   and Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] index_deletion_date
    #   The date and time that a backup index was deleted, in Unix format
    #   and Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] index_completion_date
    #   The date and time that a backup index finished creation, in Unix
    #   format and Coordinated Universal Time (UTC). The value of
    #   `CreationDate` is accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] index_status
    #   This is the current status for the backup index associated with the
    #   specified recovery point.
    #
    #   Statuses are: `PENDING` \| `ACTIVE` \| `FAILED` \| `DELETING`
    #
    #   A recovery point with an index that has the status of `ACTIVE` can
    #   be included in a search.
    #   @return [String]
    #
    # @!attribute [rw] index_status_message
    #   A detailed message explaining the status of a backup index
    #   associated with the recovery point.
    #   @return [String]
    #
    # @!attribute [rw] total_items_indexed
    #   Count of items within the backup index associated with the recovery
    #   point.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRecoveryPointIndexDetailsOutput AWS API Documentation
    #
    class GetRecoveryPointIndexDetailsOutput < Struct.new(
      :recovery_point_arn,
      :backup_vault_arn,
      :source_resource_arn,
      :index_creation_date,
      :index_deletion_date,
      :index_completion_date,
      :index_status,
      :index_status_message,
      :total_items_indexed)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_account_id
    #   The account ID of the specified backup vault.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRecoveryPointRestoreMetadataInput AWS API Documentation
    #
    class GetRecoveryPointRestoreMetadataInput < Struct.new(
      :backup_vault_name,
      :recovery_point_arn,
      :backup_vault_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_arn
    #   An ARN that uniquely identifies a backup vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
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
    # @!attribute [rw] resource_type
    #   The resource type of the recovery point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRecoveryPointRestoreMetadataOutput AWS API Documentation
    #
    class GetRecoveryPointRestoreMetadataOutput < Struct.new(
      :backup_vault_arn,
      :recovery_point_arn,
      :restore_metadata,
      :resource_type)
      SENSITIVE = [:restore_metadata]
      include Aws::Structure
    end

    # @!attribute [rw] restore_job_id
    #   This is a unique identifier of a restore job within Backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRestoreJobMetadataInput AWS API Documentation
    #
    class GetRestoreJobMetadataInput < Struct.new(
      :restore_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] restore_job_id
    #   This is a unique identifier of a restore job within Backup.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   This contains the metadata of the specified backup job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRestoreJobMetadataOutput AWS API Documentation
    #
    class GetRestoreJobMetadataOutput < Struct.new(
      :restore_job_id,
      :metadata)
      SENSITIVE = [:metadata]
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_account_id
    #   The account ID of the specified backup vault.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web ServicesRegion where they are
    #   created. They consist of letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a recovery
    #   point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRestoreTestingInferredMetadataInput AWS API Documentation
    #
    class GetRestoreTestingInferredMetadataInput < Struct.new(
      :backup_vault_account_id,
      :backup_vault_name,
      :recovery_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inferred_metadata
    #   This is a string map of the metadata inferred from the request.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRestoreTestingInferredMetadataOutput AWS API Documentation
    #
    class GetRestoreTestingInferredMetadataOutput < Struct.new(
      :inferred_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] restore_testing_plan_name
    #   Required unique name of the restore testing plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRestoreTestingPlanInput AWS API Documentation
    #
    class GetRestoreTestingPlanInput < Struct.new(
      :restore_testing_plan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] restore_testing_plan
    #   Specifies the body of a restore testing plan. Includes
    #   `RestoreTestingPlanName`.
    #   @return [Types::RestoreTestingPlanForGet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRestoreTestingPlanOutput AWS API Documentation
    #
    class GetRestoreTestingPlanOutput < Struct.new(
      :restore_testing_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] restore_testing_plan_name
    #   Required unique name of the restore testing plan.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_selection_name
    #   Required unique name of the restore testing selection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRestoreTestingSelectionInput AWS API Documentation
    #
    class GetRestoreTestingSelectionInput < Struct.new(
      :restore_testing_plan_name,
      :restore_testing_selection_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] restore_testing_selection
    #   Unique name of the restore testing selection.
    #   @return [Types::RestoreTestingSelectionForGet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetRestoreTestingSelectionOutput AWS API Documentation
    #
    class GetRestoreTestingSelectionOutput < Struct.new(
      :restore_testing_selection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_types
    #   Contains a string with the supported Amazon Web Services resource
    #   types:
    #
    #   * `Aurora` for Amazon Aurora
    #
    #   * `CloudFormation` for CloudFormation
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
    #   * `Redshift` for Amazon Redshift
    #
    #   * `S3` for Amazon Simple Storage Service (Amazon S3)
    #
    #   * `SAP HANA on Amazon EC2` for SAP HANA databases on Amazon Elastic
    #     Compute Cloud instances
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `Timestream` for Amazon Timestream
    #
    #   * `VirtualMachine` for VMware virtual machines
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/GetSupportedResourceTypesOutput AWS API Documentation
    #
    class GetSupportedResourceTypesOutput < Struct.new(
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is an optional array within a BackupRule.
    #
    # IndexAction consists of one ResourceTypes.
    #
    # @!attribute [rw] resource_types
    #   0 or 1 index action will be accepted for each BackupRule.
    #
    #   Valid values:
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `S3` for Amazon Simple Storage Service (Amazon S3)
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/IndexAction AWS API Documentation
    #
    class IndexAction < Struct.new(
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is a recovery point that has an associated backup index.
    #
    # Only recovery points with a backup index can be included in a search.
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`
    #   @return [String]
    #
    # @!attribute [rw] source_resource_arn
    #   A string of the Amazon Resource Name (ARN) that uniquely identifies
    #   the source resource.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   This specifies the IAM role ARN used for this operation.
    #
    #   For example, arn:aws:iam::123456789012:role/S3Access
    #   @return [String]
    #
    # @!attribute [rw] backup_creation_date
    #   The date and time that a backup was created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the indexed recovery point.
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `S3` for Amazon Simple Storage Service (Amazon S3)
    #   @return [String]
    #
    # @!attribute [rw] index_creation_date
    #   The date and time that a backup index was created, in Unix format
    #   and Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] index_status
    #   This is the current status for the backup index associated with the
    #   specified recovery point.
    #
    #   Statuses are: `PENDING` \| `ACTIVE` \| `FAILED` \| `DELETING`
    #
    #   A recovery point with an index that has the status of `ACTIVE` can
    #   be included in a search.
    #   @return [String]
    #
    # @!attribute [rw] index_status_message
    #   A string in the form of a detailed message explaining the status of
    #   a backup index associated with the recovery point.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An ARN that uniquely identifies the backup vault where the recovery
    #   point index is stored.
    #
    #   For example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/IndexedRecoveryPoint AWS API Documentation
    #
    class IndexedRecoveryPoint < Struct.new(
      :recovery_point_arn,
      :source_resource_arn,
      :iam_role_arn,
      :backup_creation_date,
      :resource_type,
      :index_creation_date,
      :index_status,
      :index_status_message,
      :backup_vault_arn)
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

    # Pair of two related strings. Allowed characters are letters, white
    # space, and numbers that can be represented in UTF-8 and the following
    # characters: ` + - = . _ : /`
    #
    # @!attribute [rw] key
    #   The tag key (String). The key can't start with `aws:`.
    #
    #   Length Constraints: Minimum length of 1. Maximum length of 128.
    #
    #   Pattern: `^(?![aA]{1}[wW]{1}[sS]{1}:)([\p{L}\p{Z}\p{N}_.:/=+\-@]+)$`
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the key.
    #
    #   Length Constraints: Maximum length of 256.
    #
    #   Pattern: `^([\p{L}\p{Z}\p{N}_.:/=+\-@]*)$`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/KeyValue AWS API Documentation
    #
    class KeyValue < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the latest update to an MPA approval team
    # association.
    #
    # @!attribute [rw] mpa_session_arn
    #   The ARN of the MPA session associated with this update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the MPA approval team update.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message describing the current status of the MPA approval team
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] initiation_date
    #   The date and time when the MPA approval team update was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] expiry_date
    #   The date and time when the MPA approval team update will expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/LatestMpaApprovalTeamUpdate AWS API Documentation
    #
    class LatestMpaApprovalTeamUpdate < Struct.new(
      :mpa_session_arn,
      :status,
      :status_message,
      :initiation_date,
      :expiry_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the latest request to revoke access to a
    # backup vault.
    #
    # @!attribute [rw] mpa_session_arn
    #   The ARN of the MPA session associated with this revoke request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the revoke request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message describing the current status of the revoke request.
    #   @return [String]
    #
    # @!attribute [rw] initiation_date
    #   The date and time when the revoke request was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] expiry_date
    #   The date and time when the revoke request will expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/LatestRevokeRequest AWS API Documentation
    #
    class LatestRevokeRequest < Struct.new(
      :mpa_session_arn,
      :status,
      :status_message,
      :initiation_date,
      :expiry_date)
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
    #   The title of a legal hold.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a legal hold.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_id
    #   The ID of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] legal_hold_arn
    #   The Amazon Resource Name (ARN) of the legal hold; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The time when the legal hold was created.
    #   @return [Time]
    #
    # @!attribute [rw] cancellation_date
    #   The time when the legal hold was cancelled.
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

    # Specifies the time period, in days, before a recovery point
    # transitions to cold storage or is deleted.
    #
    # Backups transitioned to cold storage must be stored in cold storage
    # for a minimum of 90 days. Therefore, on the console, the retention
    # setting must be 90 days greater than the transition to cold after days
    # setting. The transition to cold after days setting can't be changed
    # after a backup has been transitioned to cold.
    #
    # Resource types that can transition to cold storage are listed in the
    # [Feature availability by resource][1] table. Backup ignores this
    # expression for other resource types.
    #
    # To remove the existing lifecycle and retention periods and keep your
    # recovery points indefinitely, specify -1 for
    # `MoveToColdStorageAfterDays` and `DeleteAfterDays`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
    #
    # @!attribute [rw] move_to_cold_storage_after_days
    #   The number of days after creation that a recovery point is moved to
    #   cold storage.
    #   @return [Integer]
    #
    # @!attribute [rw] delete_after_days
    #   The number of days after creation that a recovery point is deleted.
    #   This value must be at least 90 days after the number of days
    #   specified in `MoveToColdStorageAfterDays`.
    #   @return [Integer]
    #
    # @!attribute [rw] opt_in_to_archive_for_supported_resources
    #   If the value is true, your backup plan transitions supported
    #   resources to archive (cold) storage tier in accordance with your
    #   lifecycle settings.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/Lifecycle AWS API Documentation
    #
    class Lifecycle < Struct.new(
      :move_to_cold_storage_after_days,
      :delete_after_days,
      :opt_in_to_archive_for_supported_resources)
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

    # @!attribute [rw] account_id
    #   Returns the job count for the specified account.
    #
    #   If the request is sent from a member account or an account not part
    #   of Amazon Web Services Organizations, jobs within requestor's
    #   account will be returned.
    #
    #   Root, admin, and delegated administrator accounts can use the value
    #   ANY to return job counts from every account in the organization.
    #
    #   `AGGREGATE_ALL` aggregates job counts from all accounts within the
    #   authenticated organization, then returns the sum.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   This parameter returns the job count for jobs with the specified
    #   state.
    #
    #   The the value ANY returns count of all states.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all states and returns the
    #   sum.
    #
    #   `Completed with issues` is a status found only in the Backup
    #   console. For API, this status refers to jobs with a state of
    #   `COMPLETED` and a `MessageCategory` with a value other than
    #   `SUCCESS`; that is, the status is completed but comes with a status
    #   message. To obtain the job count for `Completed with issues`, run
    #   two GET requests, and subtract the second, smaller number:
    #
    #   GET
    #   /audit/backup-job-summaries?AggregationPeriod=FOURTEEN\_DAYS&amp;State=COMPLETED
    #
    #   GET
    #   /audit/backup-job-summaries?AggregationPeriod=FOURTEEN\_DAYS&amp;MessageCategory=SUCCESS&amp;State=COMPLETED
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Returns the job count for the specified resource type. Use request
    #   `GetSupportedResourceTypes` to obtain strings for supported resource
    #   types.
    #
    #   The the value ANY returns count of all resource types.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all resource types and
    #   returns the sum.
    #
    #   The type of Amazon Web Services resource to be backed up; for
    #   example, an Amazon Elastic Block Store (Amazon EBS) volume or an
    #   Amazon Relational Database Service (Amazon RDS) database.
    #   @return [String]
    #
    # @!attribute [rw] message_category
    #   This parameter returns the job count for the specified message
    #   category.
    #
    #   Example accepted strings include `AccessDenied`, `Success`, and
    #   `InvalidParameters`. See [Monitoring][1] for a list of accepted
    #   MessageCategory strings.
    #
    #   The the value ANY returns count of all message categories.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all message categories and
    #   returns the sum.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html
    #   @return [String]
    #
    # @!attribute [rw] aggregation_period
    #   The period for the returned results.
    #
    #   * `ONE_DAY` - The daily job count for the prior 14 days.
    #
    #   * `SEVEN_DAYS` - The aggregated job count for the prior 7 days.
    #
    #   * `FOURTEEN_DAYS` - The aggregated job count for prior 14 days.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #
    #   The value is an integer. Range of accepted values is from 1 to 500.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `MaxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupJobSummariesInput AWS API Documentation
    #
    class ListBackupJobSummariesInput < Struct.new(
      :account_id,
      :state,
      :resource_type,
      :message_category,
      :aggregation_period,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_job_summaries
    #   The summary information.
    #   @return [Array<Types::BackupJobSummary>]
    #
    # @!attribute [rw] aggregation_period
    #   The period for the returned results.
    #
    #   * `ONE_DAY` - The daily job count for the prior 14 days.
    #
    #   * `SEVEN_DAYS` - The aggregated job count for the prior 7 days.
    #
    #   * `FOURTEEN_DAYS` - The aggregated job count for prior 14 days.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `MaxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListBackupJobSummariesOutput AWS API Documentation
    #
    class ListBackupJobSummariesOutput < Struct.new(
      :backup_job_summaries,
      :aggregation_period,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
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
    #
    #   `Completed with issues` is a status found only in the Backup
    #   console. For API, this status refers to jobs with a state of
    #   `COMPLETED` and a `MessageCategory` with a value other than
    #   `SUCCESS`; that is, the status is completed but comes with a status
    #   message.
    #
    #   To obtain the job count for `Completed with issues`, run two GET
    #   requests, and subtract the second, smaller number:
    #
    #   GET /backup-jobs/?state=COMPLETED
    #
    #   GET /backup-jobs/?messageCategory=SUCCESS&amp;state=COMPLETED
    #   @return [String]
    #
    # @!attribute [rw] by_backup_vault_name
    #   Returns only backup jobs that will be stored in the specified backup
    #   vault. Backup vaults are identified by names that are unique to the
    #   account used to create them and the Amazon Web Services Region where
    #   they are created.
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
    #   * `CloudFormation` for CloudFormation
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
    #   * `Redshift` for Amazon Redshift
    #
    #   * `S3` for Amazon Simple Storage Service (Amazon S3)
    #
    #   * `SAP HANA on Amazon EC2` for SAP HANA databases on Amazon Elastic
    #     Compute Cloud instances
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `Timestream` for Amazon Timestream
    #
    #   * `VirtualMachine` for VMware virtual machines
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
    # @!attribute [rw] by_message_category
    #   This is an optional parameter that can be used to filter out jobs
    #   with a MessageCategory which matches the value you input.
    #
    #   Example strings may include `AccessDenied`, `SUCCESS`,
    #   `AGGREGATE_ALL`, and `InvalidParameters`.
    #
    #   View [Monitoring][1]
    #
    #   The wildcard () returns count of all message categories.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all message categories and
    #   returns the sum.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html
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
      :by_parent_job_id,
      :by_message_category)
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
    #   example, if a request is made to return `MaxResults` number of
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
    #   example, if a request is made to return `MaxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return.
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
    #   example, if a request is made to return `MaxResults` number of
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
    #   example, if a request is made to return `MaxResults` number of
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
    #   example, if a request is made to return `MaxResults` number of
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
    #   example, if a request is made to return `MaxResults` number of
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
    #   example, if a request is made to return `MaxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] backup_plans_list
    #   Information about the backup plans.
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
    #   example, if a request is made to return `MaxResults` number of
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
    #   example, if a request is made to return `MaxResults` number of
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

    # @!attribute [rw] by_vault_type
    #   This parameter will sort the list of vaults by vault type.
    #   @return [String]
    #
    # @!attribute [rw] by_shared
    #   This parameter will sort the list of vaults by shared vaults.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
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
      :by_vault_type,
      :by_shared,
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
    #   example, if a request is made to return `MaxResults` number of
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

    # @!attribute [rw] account_id
    #   Returns the job count for the specified account.
    #
    #   If the request is sent from a member account or an account not part
    #   of Amazon Web Services Organizations, jobs within requestor's
    #   account will be returned.
    #
    #   Root, admin, and delegated administrator accounts can use the value
    #   ANY to return job counts from every account in the organization.
    #
    #   `AGGREGATE_ALL` aggregates job counts from all accounts within the
    #   authenticated organization, then returns the sum.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   This parameter returns the job count for jobs with the specified
    #   state.
    #
    #   The the value ANY returns count of all states.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all states and returns the
    #   sum.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Returns the job count for the specified resource type. Use request
    #   `GetSupportedResourceTypes` to obtain strings for supported resource
    #   types.
    #
    #   The the value ANY returns count of all resource types.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all resource types and
    #   returns the sum.
    #
    #   The type of Amazon Web Services resource to be backed up; for
    #   example, an Amazon Elastic Block Store (Amazon EBS) volume or an
    #   Amazon Relational Database Service (Amazon RDS) database.
    #   @return [String]
    #
    # @!attribute [rw] message_category
    #   This parameter returns the job count for the specified message
    #   category.
    #
    #   Example accepted strings include `AccessDenied`, `Success`, and
    #   `InvalidParameters`. See [Monitoring][1] for a list of accepted
    #   MessageCategory strings.
    #
    #   The the value ANY returns count of all message categories.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all message categories and
    #   returns the sum.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html
    #   @return [String]
    #
    # @!attribute [rw] aggregation_period
    #   The period for the returned results.
    #
    #   * `ONE_DAY` - The daily job count for the prior 14 days.
    #
    #   * `SEVEN_DAYS` - The aggregated job count for the prior 7 days.
    #
    #   * `FOURTEEN_DAYS` - The aggregated job count for prior 14 days.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   This parameter sets the maximum number of items to be returned.
    #
    #   The value is an integer. Range of accepted values is from 1 to 500.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `MaxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListCopyJobSummariesInput AWS API Documentation
    #
    class ListCopyJobSummariesInput < Struct.new(
      :account_id,
      :state,
      :resource_type,
      :message_category,
      :aggregation_period,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] copy_job_summaries
    #   This return shows a summary that contains Region, Account, State,
    #   ResourceType, MessageCategory, StartTime, EndTime, and Count of
    #   included jobs.
    #   @return [Array<Types::CopyJobSummary>]
    #
    # @!attribute [rw] aggregation_period
    #   The period for the returned results.
    #
    #   * `ONE_DAY` - The daily job count for the prior 14 days.
    #
    #   * `SEVEN_DAYS` - The aggregated job count for the prior 7 days.
    #
    #   * `FOURTEEN_DAYS` - The aggregated job count for prior 14 days.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `MaxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListCopyJobSummariesOutput AWS API Documentation
    #
    class ListCopyJobSummariesOutput < Struct.new(
      :copy_job_summaries,
      :aggregation_period,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return MaxResults number of items,
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
    #   * `CloudFormation` for CloudFormation
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
    #   * `Redshift` for Amazon Redshift
    #
    #   * `S3` for Amazon Simple Storage Service (Amazon S3)
    #
    #   * `SAP HANA on Amazon EC2` for SAP HANA databases on Amazon Elastic
    #     Compute Cloud instances
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `Timestream` for Amazon Timestream
    #
    #   * `VirtualMachine` for VMware virtual machines
    #   @return [String]
    #
    # @!attribute [rw] by_destination_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a source
    #   backup vault to copy from; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
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
    # @!attribute [rw] by_message_category
    #   This is an optional parameter that can be used to filter out jobs
    #   with a MessageCategory which matches the value you input.
    #
    #   Example strings may include `AccessDenied`, `SUCCESS`,
    #   `AGGREGATE_ALL`, and `INVALIDPARAMETERS`.
    #
    #   View [Monitoring][1] for a list of accepted strings.
    #
    #   The the value ANY returns count of all message categories.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all message categories and
    #   returns the sum.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html
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
      :by_parent_job_id,
      :by_message_category)
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
    #   example, if a request is made to return MaxResults number of items,
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
    #   The frameworks with details for each framework, including the
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
    #   The next item following a partial list of returned recovery points.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   indexed recovery points, `NextToken` allows you to return more items
    #   in your list starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource list items to be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] source_resource_arn
    #   A string of the Amazon Resource Name (ARN) that uniquely identifies
    #   the source resource.
    #   @return [String]
    #
    # @!attribute [rw] created_before
    #   Returns only indexed recovery points that were created before the
    #   specified date.
    #   @return [Time]
    #
    # @!attribute [rw] created_after
    #   Returns only indexed recovery points that were created after the
    #   specified date.
    #   @return [Time]
    #
    # @!attribute [rw] resource_type
    #   Returns a list of indexed recovery points for the specified resource
    #   type(s).
    #
    #   Accepted values include:
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `S3` for Amazon Simple Storage Service (Amazon S3)
    #   @return [String]
    #
    # @!attribute [rw] index_status
    #   Include this parameter to filter the returned list by the indicated
    #   statuses.
    #
    #   Accepted values: `PENDING` \| `ACTIVE` \| `FAILED` \| `DELETING`
    #
    #   A recovery point with an index that has the status of `ACTIVE` can
    #   be included in a search.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListIndexedRecoveryPointsInput AWS API Documentation
    #
    class ListIndexedRecoveryPointsInput < Struct.new(
      :next_token,
      :max_results,
      :source_resource_arn,
      :created_before,
      :created_after,
      :resource_type,
      :index_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] indexed_recovery_points
    #   This is a list of recovery points that have an associated index,
    #   belonging to the specified account.
    #   @return [Array<Types::IndexedRecoveryPoint>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned recovery points.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   indexed recovery points, `NextToken` allows you to return more items
    #   in your list starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListIndexedRecoveryPointsOutput AWS API Documentation
    #
    class ListIndexedRecoveryPointsOutput < Struct.new(
      :indexed_recovery_points,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `MaxResults` number of
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
    #   example, if a request is made to return `MaxResults` number of
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

    # @!attribute [rw] backup_vault_name
    #   The list of protected resources by backup vault within the vault(s)
    #   you specify by name.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_account_id
    #   The list of protected resources by backup vault within the vault(s)
    #   you specify by account ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListProtectedResourcesByBackupVaultInput AWS API Documentation
    #
    class ListProtectedResourcesByBackupVaultInput < Struct.new(
      :backup_vault_name,
      :backup_vault_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   These are the results returned for the request
    #   ListProtectedResourcesByBackupVault.
    #   @return [Array<Types::ProtectedResource>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListProtectedResourcesByBackupVaultOutput AWS API Documentation
    #
    class ListProtectedResourcesByBackupVaultOutput < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
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
    #   example, if a request is made to return `MaxResults` number of
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
    #   created.
    #
    #   <note markdown="1"> Backup vault name might not be available when a supported service
    #   creates the backup.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_account_id
    #   This parameter will sort the list of recovery points by account ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
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
    #   Returns only recovery points that match the specified resource
    #   type(s):
    #
    #   * `Aurora` for Amazon Aurora
    #
    #   * `CloudFormation` for CloudFormation
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
    #   * `Redshift` for Amazon Redshift
    #
    #   * `S3` for Amazon Simple Storage Service (Amazon S3)
    #
    #   * `SAP HANA on Amazon EC2` for SAP HANA databases on Amazon Elastic
    #     Compute Cloud instances
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `Timestream` for Amazon Timestream
    #
    #   * `VirtualMachine` for VMware virtual machines
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
      :backup_vault_account_id,
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
    #   example, if a request is made to return `MaxResults` number of
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
    #   The ID of the legal hold.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `MaxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource list items to be returned.
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
    #   The recovery points.
    #   @return [Array<Types::RecoveryPointMember>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources.
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
    #   example, if a request is made to return `MaxResults` number of
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
    # @!attribute [rw] managed_by_aws_backup_only
    #   This attribute filters recovery points based on ownership.
    #
    #   If this is set to `TRUE`, the response will contain recovery points
    #   associated with the selected resources that are managed by Backup.
    #
    #   If this is set to `FALSE`, the response will contain all recovery
    #   points associated with the selected resource.
    #
    #   Type: Boolean
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRecoveryPointsByResourceInput AWS API Documentation
    #
    class ListRecoveryPointsByResourceInput < Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      :managed_by_aws_backup_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
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
    #   The report plans with detailed information for each plan. This
    #   information includes the Amazon Resource Name (ARN), report plan
    #   name, description, settings, delivery channel, deployment status,
    #   creation time, and last times the report plan attempted to and
    #   successfully ran.
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

    # @!attribute [rw] backup_vault_name
    #   The name of the backup vault for which to list associated restore
    #   access backup vaults.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreAccessBackupVaultsInput AWS API Documentation
    #
    class ListRestoreAccessBackupVaultsInput < Struct.new(
      :backup_vault_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next set of results.
    #   @return [String]
    #
    # @!attribute [rw] restore_access_backup_vaults
    #   A list of restore access backup vaults associated with the specified
    #   backup vault.
    #   @return [Array<Types::RestoreAccessBackupVaultListMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreAccessBackupVaultsOutput AWS API Documentation
    #
    class ListRestoreAccessBackupVaultsOutput < Struct.new(
      :next_token,
      :restore_access_backup_vaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Returns the job count for the specified account.
    #
    #   If the request is sent from a member account or an account not part
    #   of Amazon Web Services Organizations, jobs within requestor's
    #   account will be returned.
    #
    #   Root, admin, and delegated administrator accounts can use the value
    #   ANY to return job counts from every account in the organization.
    #
    #   `AGGREGATE_ALL` aggregates job counts from all accounts within the
    #   authenticated organization, then returns the sum.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   This parameter returns the job count for jobs with the specified
    #   state.
    #
    #   The the value ANY returns count of all states.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all states and returns the
    #   sum.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Returns the job count for the specified resource type. Use request
    #   `GetSupportedResourceTypes` to obtain strings for supported resource
    #   types.
    #
    #   The the value ANY returns count of all resource types.
    #
    #   `AGGREGATE_ALL` aggregates job counts for all resource types and
    #   returns the sum.
    #
    #   The type of Amazon Web Services resource to be backed up; for
    #   example, an Amazon Elastic Block Store (Amazon EBS) volume or an
    #   Amazon Relational Database Service (Amazon RDS) database.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_period
    #   The period for the returned results.
    #
    #   * `ONE_DAY` - The daily job count for the prior 14 days.
    #
    #   * `SEVEN_DAYS` - The aggregated job count for the prior 7 days.
    #
    #   * `FOURTEEN_DAYS` - The aggregated job count for prior 14 days.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   This parameter sets the maximum number of items to be returned.
    #
    #   The value is an integer. Range of accepted values is from 1 to 500.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `MaxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreJobSummariesInput AWS API Documentation
    #
    class ListRestoreJobSummariesInput < Struct.new(
      :account_id,
      :state,
      :resource_type,
      :aggregation_period,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] restore_job_summaries
    #   This return contains a summary that contains Region, Account, State,
    #   ResourceType, MessageCategory, StartTime, EndTime, and Count of
    #   included jobs.
    #   @return [Array<Types::RestoreJobSummary>]
    #
    # @!attribute [rw] aggregation_period
    #   The period for the returned results.
    #
    #   * `ONE_DAY` - The daily job count for the prior 14 days.
    #
    #   * `SEVEN_DAYS` - The aggregated job count for the prior 7 days.
    #
    #   * `FOURTEEN_DAYS` - The aggregated job count for prior 14 days.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `MaxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreJobSummariesOutput AWS API Documentation
    #
    class ListRestoreJobSummariesOutput < Struct.new(
      :restore_job_summaries,
      :aggregation_period,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Returns only restore jobs that match the specified resource Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] by_status
    #   Returns only restore jobs associated with the specified job status.
    #   @return [String]
    #
    # @!attribute [rw] by_recovery_point_creation_date_after
    #   Returns only restore jobs of recovery points that were created after
    #   the specified date.
    #   @return [Time]
    #
    # @!attribute [rw] by_recovery_point_creation_date_before
    #   Returns only restore jobs of recovery points that were created
    #   before the specified date.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request ismade to return `MaxResults` number of items,
    #   `NextToken` allows you to return more items in your list starting at
    #   the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreJobsByProtectedResourceInput AWS API Documentation
    #
    class ListRestoreJobsByProtectedResourceInput < Struct.new(
      :resource_arn,
      :by_status,
      :by_recovery_point_creation_date_after,
      :by_recovery_point_creation_date_before,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] restore_jobs
    #   An array of objects that contain detailed information about jobs to
    #   restore saved resources.&gt;
    #   @return [Array<Types::RestoreJobsListMember>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
    #   items, `NextToken` allows youto return more items in your list
    #   starting at the location pointed to by the next token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreJobsByProtectedResourceOutput AWS API Documentation
    #
    class ListRestoreJobsByProtectedResourceOutput < Struct.new(
      :restore_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
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
    # @!attribute [rw] by_resource_type
    #   Include this parameter to return only restore jobs for the specified
    #   resources:
    #
    #   * `Aurora` for Amazon Aurora
    #
    #   * `CloudFormation` for CloudFormation
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
    #   * `Redshift` for Amazon Redshift
    #
    #   * `S3` for Amazon Simple Storage Service (Amazon S3)
    #
    #   * `SAP HANA on Amazon EC2` for SAP HANA databases on Amazon Elastic
    #     Compute Cloud instances
    #
    #   * `Storage Gateway` for Storage Gateway
    #
    #   * `Timestream` for Amazon Timestream
    #
    #   * `VirtualMachine` for VMware virtual machines
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
    # @!attribute [rw] by_restore_testing_plan_arn
    #   This returns only restore testing jobs that match the specified
    #   resource Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreJobsInput AWS API Documentation
    #
    class ListRestoreJobsInput < Struct.new(
      :next_token,
      :max_results,
      :by_account_id,
      :by_resource_type,
      :by_created_before,
      :by_created_after,
      :by_status,
      :by_complete_before,
      :by_complete_after,
      :by_restore_testing_plan_arn)
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
    #   example, if a request is made to return `MaxResults` number of
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

    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the nexttoken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreTestingPlansInput AWS API Documentation
    #
    class ListRestoreTestingPlansInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the nexttoken.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_plans
    #   This is a returned list of restore testing plans.
    #   @return [Array<Types::RestoreTestingPlanForList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreTestingPlansOutput AWS API Documentation
    #
    class ListRestoreTestingPlansOutput < Struct.new(
      :next_token,
      :restore_testing_plans)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the nexttoken.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   Returns restore testing selections by the specified restore testing
    #   plan name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreTestingSelectionsInput AWS API Documentation
    #
    class ListRestoreTestingSelectionsInput < Struct.new(
      :max_results,
      :next_token,
      :restore_testing_plan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned items. For
    #   example, if a request is made to return `MaxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the nexttoken.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_selections
    #   The returned restore testing selections associated with the restore
    #   testing plan.
    #   @return [Array<Types::RestoreTestingSelectionForList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ListRestoreTestingSelectionsOutput AWS API Documentation
    #
    class ListRestoreTestingSelectionsOutput < Struct.new(
      :next_token,
      :restore_testing_selections)
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
    #   example, if a request is made to return `MaxResults` number of
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
    #   example, if a request is made to return `MaxResults` number of
    #   items, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Information about the tags.
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
    #   The non-unique name of the resource that belongs to the specified
    #   backup.
    #   @return [String]
    #
    # @!attribute [rw] last_backup_vault_arn
    #   The ARN (Amazon Resource Name) of the backup vault that contains the
    #   most recent backup recovery point.
    #   @return [String]
    #
    # @!attribute [rw] last_recovery_point_arn
    #   The ARN (Amazon Resource Name) of the most recent recovery point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ProtectedResource AWS API Documentation
    #
    class ProtectedResource < Struct.new(
      :resource_arn,
      :resource_type,
      :last_backup_time,
      :resource_name,
      :last_backup_vault_arn,
      :last_recovery_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditions that you define for resources in your restore testing
    # plan using tags.
    #
    # @!attribute [rw] string_equals
    #   Filters the values of your tagged resources for only those resources
    #   that you tagged with the same value. Also called "exact matching."
    #   @return [Array<Types::KeyValue>]
    #
    # @!attribute [rw] string_not_equals
    #   Filters the values of your tagged resources for only those resources
    #   that you tagged that do not have the same value. Also called
    #   "negated matching."
    #   @return [Array<Types::KeyValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ProtectedResourceConditions AWS API Documentation
    #
    class ProtectedResourceConditions < Struct.new(
      :string_equals,
      :string_not_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created.
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
    #   This parameter is required when a vault lock is created through
    #   CloudFormation; otherwise, this parameter is optional. If this
    #   parameter is not specified, Vault Lock will not enforce a minimum
    #   retention period.
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
    #   created.
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
    #   resources to the backup vault. For the list of supported events,
    #   common use cases, and code samples, see [Notification options with
    #   Backup][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-notifications.html
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

    # @!attribute [rw] restore_job_id
    #   This is a unique identifier of a restore job within Backup.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   The status of your restore validation.
    #   @return [String]
    #
    # @!attribute [rw] validation_status_message
    #   This is an optional message string you can input to describe the
    #   validation status for the restore test validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/PutRestoreValidationResultInput AWS API Documentation
    #
    class PutRestoreValidationResultInput < Struct.new(
      :restore_job_id,
      :validation_status,
      :validation_status_message)
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
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   An ARN that uniquely identifies a backup vault; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
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
    #   A message explaining the current status of the recovery point.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time a recovery point is created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationDate` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] initiation_date
    #   The date and time when the backup job that created this recovery
    #   point was initiated, in Unix format and Coordinated Universal Time
    #   (UTC).
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
    #   Resource types that can transition to cold storage are listed in the
    #   [Feature availability by resource][1] table. Backup ignores this
    #   expression for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
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
    #   The Amazon Resource Name (ARN) of the parent (composite) recovery
    #   point.
    #   @return [String]
    #
    # @!attribute [rw] composite_member_identifier
    #   The identifier of a resource within a composite group, such as
    #   nested (child) recovery point belonging to a composite (parent)
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
    #   The non-unique name of the resource that belongs to the specified
    #   backup.
    #   @return [String]
    #
    # @!attribute [rw] vault_type
    #   The type of vault in which the described recovery point is stored.
    #   @return [String]
    #
    # @!attribute [rw] index_status
    #   This is the current status for the backup index associated with the
    #   specified recovery point.
    #
    #   Statuses are: `PENDING` \| `ACTIVE` \| `FAILED` \| `DELETING`
    #
    #   A recovery point with an index that has the status of `ACTIVE` can
    #   be included in a search.
    #   @return [String]
    #
    # @!attribute [rw] index_status_message
    #   A string in the form of a detailed message explaining the status of
    #   a backup index associated with the recovery point.
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
      :initiation_date,
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
      :resource_name,
      :vault_type,
      :index_status,
      :index_status_message)
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
    #   A message explaining the current status of the recovery point.
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
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] is_parent
    #   This is a boolean value indicating this is a parent (composite)
    #   recovery point.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_recovery_point_arn
    #   The Amazon Resource Name (ARN) of the parent (composite) recovery
    #   point.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The non-unique name of the resource that belongs to the specified
    #   backup.
    #   @return [String]
    #
    # @!attribute [rw] vault_type
    #   The type of vault in which the described recovery point is stored.
    #   @return [String]
    #
    # @!attribute [rw] index_status
    #   This is the current status for the backup index associated with the
    #   specified recovery point.
    #
    #   Statuses are: `PENDING` \| `ACTIVE` \| `FAILED` \| `DELETING`
    #
    #   A recovery point with an index that has the status of `ACTIVE` can
    #   be included in a search.
    #   @return [String]
    #
    # @!attribute [rw] index_status_message
    #   A string in the form of a detailed message explaining the status of
    #   a backup index associated with the recovery point.
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
      :resource_name,
      :vault_type,
      :index_status,
      :index_status_message)
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
    # @!attribute [rw] backup_plan_name
    #   The name of the backup plan that created this recovery point. This
    #   provides human-readable context about which backup plan was
    #   responsible for the backup job.
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
    # @!attribute [rw] backup_rule_name
    #   The name of the backup rule within the backup plan that created this
    #   recovery point. This helps identify which specific rule triggered
    #   the backup job.
    #   @return [String]
    #
    # @!attribute [rw] backup_rule_cron
    #   The cron expression that defines the schedule for the backup rule.
    #   This shows the frequency and timing of when backups are
    #   automatically triggered.
    #   @return [String]
    #
    # @!attribute [rw] backup_rule_timezone
    #   The timezone used for the backup rule schedule. This provides
    #   context for when backups are scheduled to run in the specified
    #   timezone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RecoveryPointCreator AWS API Documentation
    #
    class RecoveryPointCreator < Struct.new(
      :backup_plan_id,
      :backup_plan_arn,
      :backup_plan_name,
      :backup_plan_version,
      :backup_rule_id,
      :backup_rule_name,
      :backup_rule_cron,
      :backup_rule_timezone)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is a recovery point which is a child (nested) recovery point of a
    # parent (composite) recovery point. These recovery points can be
    # disassociated from their parent (composite) recovery point, in which
    # case they will no longer be a member.
    #
    # @!attribute [rw] recovery_point_arn
    #   The Amazon Resource Name (ARN) of the parent (composite) recovery
    #   point.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a saved
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The Amazon Web Services resource type that is saved as a recovery
    #   point.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of the backup vault (the logical container in which backups
    #   are stored).
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
    #   The format of your reports: `CSV`, `JSON`, or both. If not
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
    #
    #   Use string value of `ROOT` to include all organizational units.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organization_units
    #   These are the Organizational Units to be included in the report.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   These are the Regions to be included in the report.
    #
    #   Use the wildcard as the string value to include all Regions.
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

    # Contains information about a restore access backup vault.
    #
    # @!attribute [rw] restore_access_backup_vault_arn
    #   The ARN of the restore access backup vault.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the restore access backup vault was created.
    #   @return [Time]
    #
    # @!attribute [rw] approval_date
    #   The date and time when the restore access backup vault was approved.
    #   @return [Time]
    #
    # @!attribute [rw] vault_state
    #   The current state of the restore access backup vault.
    #   @return [String]
    #
    # @!attribute [rw] latest_revoke_request
    #   Information about the latest request to revoke access to this backup
    #   vault.
    #   @return [Types::LatestRevokeRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreAccessBackupVaultListMember AWS API Documentation
    #
    class RestoreAccessBackupVaultListMember < Struct.new(
      :restore_access_backup_vault_arn,
      :creation_date,
      :approval_date,
      :vault_state,
      :latest_revoke_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the restore testing plan that Backup used
    # to initiate the restore job.
    #
    # @!attribute [rw] restore_testing_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a restore
    #   testing plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreJobCreator AWS API Documentation
    #
    class RestoreJobCreator < Struct.new(
      :restore_testing_plan_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is a summary of restore jobs created or running within the most
    # recent 30 days.
    #
    # The returned summary may contain the following: Region, Account,
    # State, ResourceType, MessageCategory, StartTime, EndTime, and Count of
    # included jobs.
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Regions within the job summary.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID that owns the jobs within the summary.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   This value is job count for jobs with the specified state.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   This value is the job count for the specified resource type. The
    #   request `GetSupportedResourceTypes` returns strings for supported
    #   resource types.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The value as a number of jobs in a job summary.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The value of time in number format of a job start time.
    #
    #   This value is the time in Unix format, Coordinated Universal Time
    #   (UTC), and accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The value of time in number format of a job end time.
    #
    #   This value is the time in Unix format, Coordinated Universal Time
    #   (UTC), and accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreJobSummary AWS API Documentation
    #
    class RestoreJobSummary < Struct.new(
      :region,
      :account_id,
      :state,
      :resource_type,
      :count,
      :start_time,
      :end_time)
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
    # @!attribute [rw] source_resource_arn
    #   The Amazon Resource Name (ARN) of the original resource that was
    #   backed up. This provides context about what resource is being
    #   restored.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_arn
    #   The Amazon Resource Name (ARN) of the backup vault containing the
    #   recovery point being restored. This helps identify vault access
    #   policies and permissions.
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
    #   The IAM role ARN used to create the target recovery point; for
    #   example, `arn:aws:iam::123456789012:role/S3Access`.
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
    # @!attribute [rw] recovery_point_creation_date
    #   The date on which a recovery point was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   Contains identifying information about the creation of a restore
    #   job.
    #   @return [Types::RestoreJobCreator]
    #
    # @!attribute [rw] validation_status
    #   The status of validation run on the indicated restore job.
    #   @return [String]
    #
    # @!attribute [rw] validation_status_message
    #   This describes the status of validation run on the indicated restore
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] deletion_status
    #   This notes the status of the data generated by the restore test. The
    #   status may be `Deleting`, `Failed`, or `Successful`.
    #   @return [String]
    #
    # @!attribute [rw] deletion_status_message
    #   This describes the restore job deletion status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreJobsListMember AWS API Documentation
    #
    class RestoreJobsListMember < Struct.new(
      :account_id,
      :restore_job_id,
      :recovery_point_arn,
      :source_resource_arn,
      :backup_vault_arn,
      :creation_date,
      :completion_date,
      :status,
      :status_message,
      :percent_done,
      :backup_size_in_bytes,
      :iam_role_arn,
      :expected_completion_time_minutes,
      :created_resource_arn,
      :resource_type,
      :recovery_point_creation_date,
      :created_by,
      :validation_status,
      :validation_status_message,
      :deletion_status,
      :deletion_status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains metadata about a restore testing plan.
    #
    # @!attribute [rw] recovery_point_selection
    #   `RecoveryPointSelection` has five parameters (three required and two
    #   optional). The values you specify determine which recovery point is
    #   included in the restore test. You must indicate with `Algorithm` if
    #   you want the latest recovery point within your `SelectionWindowDays`
    #   or if you want a random recovery point, and you must indicate
    #   through `IncludeVaults` from which vaults the recovery points can be
    #   chosen.
    #
    #   `Algorithm` (*required*) Valid values: "`LATEST_WITHIN_WINDOW`" or
    #   "`RANDOM_WITHIN_WINDOW`".
    #
    #   `Recovery point types` (*required*) Valid values: "`SNAPSHOT`"
    #   and/or "`CONTINUOUS`". Include `SNAPSHOT` to restore only snapshot
    #   recovery points; include `CONTINUOUS` to restore continuous recovery
    #   points (point in time restore / PITR); use both to restore either a
    #   snapshot or a continuous recovery point. The recovery point will be
    #   determined by the value for `Algorithm`.
    #
    #   `IncludeVaults` (*required*). You must include one or more backup
    #   vaults. Use the wildcard \["*"\] or specific ARNs.
    #
    #   `SelectionWindowDays` (*optional*) Value must be an integer (in
    #   days) from 1 to 365. If not included, the value defaults to `30`.
    #
    #   `ExcludeVaults` (*optional*). You can choose to input one or more
    #   specific backup vault ARNs to exclude those vaults' contents from
    #   restore eligibility. Or, you can include a list of selectors. If
    #   this parameter and its value are not included, it defaults to empty
    #   list.
    #   @return [Types::RestoreTestingRecoveryPointSelection]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   The RestoreTestingPlanName is a unique string that is the name of
    #   the restore testing plan. This cannot be changed after creation, and
    #   it must consist of only alphanumeric characters and underscores.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   A CRON expression in specified timezone when a restore testing plan
    #   is executed. When no CRON expression is provided, Backup will use
    #   the default expression `cron(0 5 ? * * *)`.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression_timezone
    #   Optional. This is the timezone in which the schedule expression is
    #   set. By default, ScheduleExpressions are in UTC. You can modify this
    #   to a specified timezone.
    #   @return [String]
    #
    # @!attribute [rw] start_window_hours
    #   Defaults to 24 hours.
    #
    #   A value in hours after a restore test is scheduled before a job will
    #   be canceled if it doesn't start successfully. This value is
    #   optional. If this value is included, this parameter has a maximum
    #   value of 168 hours (one week).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreTestingPlanForCreate AWS API Documentation
    #
    class RestoreTestingPlanForCreate < Struct.new(
      :recovery_point_selection,
      :restore_testing_plan_name,
      :schedule_expression,
      :schedule_expression_timezone,
      :start_window_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains metadata about a restore testing plan.
    #
    # @!attribute [rw] creation_time
    #   The date and time that a restore testing plan was created, in Unix
    #   format and Coordinated Universal Time (UTC). The value of
    #   `CreationTime` is accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] creator_request_id
    #   This identifies the request and allows failed requests to be retried
    #   without the risk of running the operation twice. If the request
    #   includes a `CreatorRequestId` that matches an existing backup plan,
    #   that plan is returned. This parameter is optional.
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or
    #   '-\_.' characters.
    #   @return [String]
    #
    # @!attribute [rw] last_execution_time
    #   The last time a restore test was run with the specified restore
    #   testing plan. A date and time, in Unix format and Coordinated
    #   Universal Time (UTC). The value of `LastExecutionDate` is accurate
    #   to milliseconds. For example, the value 1516925490.087 represents
    #   Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The date and time that the restore testing plan was updated. This
    #   update is in Unix format and Coordinated Universal Time (UTC). The
    #   value of `LastUpdateTime` is accurate to milliseconds. For example,
    #   the value 1516925490.087 represents Friday, January 26, 2018
    #   12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] recovery_point_selection
    #   The specified criteria to assign a set of resources, such as
    #   recovery point types or backup vaults.
    #   @return [Types::RestoreTestingRecoveryPointSelection]
    #
    # @!attribute [rw] restore_testing_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a restore
    #   testing plan.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   The restore testing plan name.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   A CRON expression in specified timezone when a restore testing plan
    #   is executed. When no CRON expression is provided, Backup will use
    #   the default expression `cron(0 5 ? * * *)`.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression_timezone
    #   Optional. This is the timezone in which the schedule expression is
    #   set. By default, ScheduleExpressions are in UTC. You can modify this
    #   to a specified timezone.
    #   @return [String]
    #
    # @!attribute [rw] start_window_hours
    #   Defaults to 24 hours.
    #
    #   A value in hours after a restore test is scheduled before a job will
    #   be canceled if it doesn't start successfully. This value is
    #   optional. If this value is included, this parameter has a maximum
    #   value of 168 hours (one week).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreTestingPlanForGet AWS API Documentation
    #
    class RestoreTestingPlanForGet < Struct.new(
      :creation_time,
      :creator_request_id,
      :last_execution_time,
      :last_update_time,
      :recovery_point_selection,
      :restore_testing_plan_arn,
      :restore_testing_plan_name,
      :schedule_expression,
      :schedule_expression_timezone,
      :start_window_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains metadata about a restore testing plan.
    #
    # @!attribute [rw] creation_time
    #   The date and time that a restore testing plan was created, in Unix
    #   format and Coordinated Universal Time (UTC). The value of
    #   `CreationTime` is accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] last_execution_time
    #   The last time a restore test was run with the specified restore
    #   testing plan. A date and time, in Unix format and Coordinated
    #   Universal Time (UTC). The value of `LastExecutionDate` is accurate
    #   to milliseconds. For example, the value 1516925490.087 represents
    #   Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The date and time that the restore testing plan was updated. This
    #   update is in Unix format and Coordinated Universal Time (UTC). The
    #   value of `LastUpdateTime` is accurate to milliseconds. For example,
    #   the value 1516925490.087 represents Friday, January 26, 2018
    #   12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] restore_testing_plan_arn
    #   An Amazon Resource Name (ARN) that uniquely identifiesa restore
    #   testing plan.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   The restore testing plan name.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   A CRON expression in specified timezone when a restore testing plan
    #   is executed. When no CRON expression is provided, Backup will use
    #   the default expression `cron(0 5 ? * * *)`.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression_timezone
    #   Optional. This is the timezone in which the schedule expression is
    #   set. By default, ScheduleExpressions are in UTC. You can modify this
    #   to a specified timezone.
    #   @return [String]
    #
    # @!attribute [rw] start_window_hours
    #   Defaults to 24 hours.
    #
    #   A value in hours after a restore test is scheduled before a job will
    #   be canceled if it doesn't start successfully. This value is
    #   optional. If this value is included, this parameter has a maximum
    #   value of 168 hours (one week).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreTestingPlanForList AWS API Documentation
    #
    class RestoreTestingPlanForList < Struct.new(
      :creation_time,
      :last_execution_time,
      :last_update_time,
      :restore_testing_plan_arn,
      :restore_testing_plan_name,
      :schedule_expression,
      :schedule_expression_timezone,
      :start_window_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains metadata about a restore testing plan.
    #
    # @!attribute [rw] recovery_point_selection
    #   Required: `Algorithm`; `RecoveryPointTypes`; `IncludeVaults` (*one
    #   or more*).
    #
    #   Optional: *SelectionWindowDays* (*'30' if not specified*);
    #   `ExcludeVaults` (defaults to empty list if not listed).
    #   @return [Types::RestoreTestingRecoveryPointSelection]
    #
    # @!attribute [rw] schedule_expression
    #   A CRON expression in specified timezone when a restore testing plan
    #   is executed. When no CRON expression is provided, Backup will use
    #   the default expression `cron(0 5 ? * * *)`.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression_timezone
    #   Optional. This is the timezone in which the schedule expression is
    #   set. By default, ScheduleExpressions are in UTC. You can modify this
    #   to a specified timezone.
    #   @return [String]
    #
    # @!attribute [rw] start_window_hours
    #   Defaults to 24 hours.
    #
    #   A value in hours after a restore test is scheduled before a job will
    #   be canceled if it doesn't start successfully. This value is
    #   optional. If this value is included, this parameter has a maximum
    #   value of 168 hours (one week).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreTestingPlanForUpdate AWS API Documentation
    #
    class RestoreTestingPlanForUpdate < Struct.new(
      :recovery_point_selection,
      :schedule_expression,
      :schedule_expression_timezone,
      :start_window_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # `RecoveryPointSelection` has five parameters (three required and two
    # optional). The values you specify determine which recovery point is
    # included in the restore test. You must indicate with `Algorithm` if
    # you want the latest recovery point within your `SelectionWindowDays`
    # or if you want a random recovery point, and you must indicate through
    # `IncludeVaults` from which vaults the recovery points can be chosen.
    #
    # `Algorithm` (*required*) Valid values: "`LATEST_WITHIN_WINDOW`" or
    # "`RANDOM_WITHIN_WINDOW`".
    #
    # `Recovery point types` (*required*) Valid values: "`SNAPSHOT`"
    # and/or "`CONTINUOUS`". Include `SNAPSHOT` to restore only snapshot
    # recovery points; include `CONTINUOUS` to restore continuous recovery
    # points (point in time restore / PITR); use both to restore either a
    # snapshot or a continuous recovery point. The recovery point will be
    # determined by the value for `Algorithm`.
    #
    # `IncludeVaults` (*required*). You must include one or more backup
    # vaults. Use the wildcard \["*"\] or specific ARNs.
    #
    # `SelectionWindowDays` (*optional*) Value must be an integer (in days)
    # from 1 to 365. If not included, the value defaults to `30`.
    #
    # `ExcludeVaults` (*optional*). You can choose to input one or more
    # specific backup vault ARNs to exclude those vaults' contents from
    # restore eligibility. Or, you can include a list of selectors. If this
    # parameter and its value are not included, it defaults to empty list.
    #
    # @!attribute [rw] algorithm
    #   Acceptable values include "LATEST\_WITHIN\_WINDOW" or
    #   "RANDOM\_WITHIN\_WINDOW"
    #   @return [String]
    #
    # @!attribute [rw] exclude_vaults
    #   Accepted values include specific ARNs or list of selectors. Defaults
    #   to empty list if not listed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_vaults
    #   Accepted values include wildcard \["*"\] or by specific ARNs or
    #   ARN wilcard replacement
    #   \["arn:aws:backup:us-west-2:123456789012:backup-vault:asdf", ...\]
    #   \["arn:aws:backup:*:*:backup-vault:asdf-*", ...\]
    #   @return [Array<String>]
    #
    # @!attribute [rw] recovery_point_types
    #   These are the types of recovery points.
    #
    #   Include `SNAPSHOT` to restore only snapshot recovery points; include
    #   `CONTINUOUS` to restore continuous recovery points (point in time
    #   restore / PITR); use both to restore either a snapshot or a
    #   continuous recovery point. The recovery point will be determined by
    #   the value for `Algorithm`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selection_window_days
    #   Accepted values are integers from 1 to 365.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreTestingRecoveryPointSelection AWS API Documentation
    #
    class RestoreTestingRecoveryPointSelection < Struct.new(
      :algorithm,
      :exclude_vaults,
      :include_vaults,
      :recovery_point_types,
      :selection_window_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains metadata about a specific restore testing selection.
    #
    # ProtectedResourceType is required, such as Amazon EBS or Amazon EC2.
    #
    # This consists of `RestoreTestingSelectionName`,
    # `ProtectedResourceType`, and one of the following:
    #
    # * `ProtectedResourceArns`
    #
    # * `ProtectedResourceConditions`
    #
    # Each protected resource type can have one single value.
    #
    # A restore testing selection can include a wildcard value ("*") for
    # `ProtectedResourceArns` along with `ProtectedResourceConditions`.
    # Alternatively, you can include up to 30 specific protected resource
    # ARNs in `ProtectedResourceArns`.
    #
    # `ProtectedResourceConditions` examples include as `StringEquals` and
    # `StringNotEquals`.
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Backup uses to
    #   create the target resource; for example:
    #   `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] protected_resource_arns
    #   Each protected resource can be filtered by its specific ARNs, such
    #   as `ProtectedResourceArns: ["arn:aws:...", "arn:aws:..."]` or by a
    #   wildcard: `ProtectedResourceArns: ["*"]`, but not both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protected_resource_conditions
    #   If you have included the wildcard in ProtectedResourceArns, you can
    #   include resource conditions, such as `ProtectedResourceConditions: {
    #   StringEquals: [{ key: "XXXX", value: "YYYY" }]`.
    #   @return [Types::ProtectedResourceConditions]
    #
    # @!attribute [rw] protected_resource_type
    #   The type of Amazon Web Services resource included in a restore
    #   testing selection; for example, an Amazon EBS volume or an Amazon
    #   RDS database.
    #
    #   Supported resource types accepted include:
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
    #   * `S3` for Amazon S3
    #   @return [String]
    #
    # @!attribute [rw] restore_metadata_overrides
    #   You can override certain restore metadata keys by including the
    #   parameter `RestoreMetadataOverrides` in the body of
    #   `RestoreTestingSelection`. Key values are not case sensitive.
    #
    #   See the complete list of [restore testing inferred metadata][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] restore_testing_selection_name
    #   The unique name of the restore testing selection that belongs to the
    #   related restore testing plan.
    #   @return [String]
    #
    # @!attribute [rw] validation_window_hours
    #   This is amount of hours (0 to 168) available to run a validation
    #   script on the data. The data will be deleted upon the completion of
    #   the validation script or the end of the specified retention period,
    #   whichever comes first.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreTestingSelectionForCreate AWS API Documentation
    #
    class RestoreTestingSelectionForCreate < Struct.new(
      :iam_role_arn,
      :protected_resource_arns,
      :protected_resource_conditions,
      :protected_resource_type,
      :restore_metadata_overrides,
      :restore_testing_selection_name,
      :validation_window_hours)
      SENSITIVE = [:restore_metadata_overrides]
      include Aws::Structure
    end

    # This contains metadata about a restore testing selection.
    #
    # @!attribute [rw] creation_time
    #   The date and time that a restore testing selection was created, in
    #   Unix format and Coordinated Universal Time (UTC). The value of
    #   `CreationTime` is accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26, 201812:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] creator_request_id
    #   This identifies the request and allows failed requests to be retried
    #   without the risk of running the operation twice. If the request
    #   includes a `CreatorRequestId` that matches an existing backup plan,
    #   that plan is returned. This parameter is optional.
    #
    #   If used, this parameter must contain 1 to 50 alphanumeric or
    #   '-\_.' characters.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Backup uses to
    #   create the target resource; for
    #   example:`arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] protected_resource_arns
    #   You can include specific ARNs, such as `ProtectedResourceArns:
    #   ["arn:aws:...", "arn:aws:..."]` or you can include a wildcard:
    #   `ProtectedResourceArns: ["*"]`, but not both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protected_resource_conditions
    #   In a resource testing selection, this parameter filters by specific
    #   conditions such as `StringEquals` or `StringNotEquals`.
    #   @return [Types::ProtectedResourceConditions]
    #
    # @!attribute [rw] protected_resource_type
    #   The type of Amazon Web Services resource included in a resource
    #   testing selection; for example, an Amazon EBS volume or an Amazon
    #   RDS database.
    #   @return [String]
    #
    # @!attribute [rw] restore_metadata_overrides
    #   You can override certain restore metadata keys by including the
    #   parameter `RestoreMetadataOverrides` in the body of
    #   `RestoreTestingSelection`. Key values are not case sensitive.
    #
    #   See the complete list of [restore testing inferred metadata][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   The RestoreTestingPlanName is a unique string that is the name of
    #   the restore testing plan.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_selection_name
    #   The unique name of the restore testing selection that belongs to the
    #   related restore testing plan.
    #   @return [String]
    #
    # @!attribute [rw] validation_window_hours
    #   This is amount of hours (1 to 168) available to run a validation
    #   script on the data. The data will be deleted upon the completion of
    #   the validation script or the end of the specified retention period,
    #   whichever comes first.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreTestingSelectionForGet AWS API Documentation
    #
    class RestoreTestingSelectionForGet < Struct.new(
      :creation_time,
      :creator_request_id,
      :iam_role_arn,
      :protected_resource_arns,
      :protected_resource_conditions,
      :protected_resource_type,
      :restore_metadata_overrides,
      :restore_testing_plan_name,
      :restore_testing_selection_name,
      :validation_window_hours)
      SENSITIVE = [:restore_metadata_overrides]
      include Aws::Structure
    end

    # This contains metadata about a restore testing selection.
    #
    # @!attribute [rw] creation_time
    #   The date and time that a restore testing selection was created, in
    #   Unix format and Coordinated Universal Time (UTC). The value of
    #   `CreationTime` is accurate to milliseconds. For example, the value
    #   1516925490.087 represents Friday, January 26,2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Backup uses to
    #   create the target resource; for example:
    #   `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] protected_resource_type
    #   The type of Amazon Web Services resource included in a restore
    #   testing selection; for example, an Amazon EBS volume or an Amazon
    #   RDS database.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   Unique string that is the name of the restore testing plan.
    #
    #   The name cannot be changed after creation. The name must consist of
    #   only alphanumeric characters and underscores. Maximum length is 50.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_selection_name
    #   Unique name of a restore testing selection.
    #   @return [String]
    #
    # @!attribute [rw] validation_window_hours
    #   This value represents the time, in hours, data is retained after a
    #   restore test so that optional validation can be completed.
    #
    #   Accepted value is an integer between 0 and 168 (the hourly
    #   equivalent of seven days).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreTestingSelectionForList AWS API Documentation
    #
    class RestoreTestingSelectionForList < Struct.new(
      :creation_time,
      :iam_role_arn,
      :protected_resource_type,
      :restore_testing_plan_name,
      :restore_testing_selection_name,
      :validation_window_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains metadata about a restore testing selection.
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Backup uses to
    #   create the target resource; for example:
    #   `arn:aws:iam::123456789012:role/S3Access`.
    #   @return [String]
    #
    # @!attribute [rw] protected_resource_arns
    #   You can include a list of specific ARNs, such as
    #   `ProtectedResourceArns: ["arn:aws:...", "arn:aws:..."]` or you can
    #   include a wildcard: `ProtectedResourceArns: ["*"]`, but not both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protected_resource_conditions
    #   The conditions that you define for resources in your restore testing
    #   plan using tags.
    #   @return [Types::ProtectedResourceConditions]
    #
    # @!attribute [rw] restore_metadata_overrides
    #   You can override certain restore metadata keys by including the
    #   parameter `RestoreMetadataOverrides` in the body of
    #   `RestoreTestingSelection`. Key values are not case sensitive.
    #
    #   See the complete list of [restore testing inferred metadata][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] validation_window_hours
    #   This value represents the time, in hours, data is retained after a
    #   restore test so that optional validation can be completed.
    #
    #   Accepted value is an integer between 0 and 168 (the hourly
    #   equivalent of seven days).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RestoreTestingSelectionForUpdate AWS API Documentation
    #
    class RestoreTestingSelectionForUpdate < Struct.new(
      :iam_role_arn,
      :protected_resource_arns,
      :protected_resource_conditions,
      :restore_metadata_overrides,
      :validation_window_hours)
      SENSITIVE = [:restore_metadata_overrides]
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of the source backup vault associated with the restore
    #   access backup vault to be revoked.
    #   @return [String]
    #
    # @!attribute [rw] restore_access_backup_vault_arn
    #   The ARN of the restore access backup vault to revoke.
    #   @return [String]
    #
    # @!attribute [rw] requester_comment
    #   A comment explaining the reason for revoking access to the restore
    #   access backup vault.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/RevokeRestoreAccessBackupVaultInput AWS API Documentation
    #
    class RevokeRestoreAccessBackupVaultInput < Struct.new(
      :backup_vault_name,
      :restore_access_backup_vault_arn,
      :requester_comment)
      SENSITIVE = [:requester_comment]
      include Aws::Structure
    end

    # Contains information about a scheduled backup plan execution,
    # including the execution time, rule type, and associated rule
    # identifier.
    #
    # @!attribute [rw] execution_time
    #   The timestamp when the backup is scheduled to run, in Unix format
    #   and Coordinated Universal Time (UTC). The value is accurate to
    #   milliseconds.
    #   @return [Time]
    #
    # @!attribute [rw] rule_id
    #   The unique identifier of the backup rule that will execute at the
    #   scheduled time.
    #   @return [String]
    #
    # @!attribute [rw] rule_execution_type
    #   The type of backup rule execution. Valid values are `CONTINUOUS`
    #   (point-in-time recovery), `SNAPSHOTS` (snapshot backups), or
    #   `CONTINUOUS_AND_SNAPSHOTS` (both types combined).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/ScheduledPlanExecutionMember AWS API Documentation
    #
    class ScheduledPlanExecutionMember < Struct.new(
      :execution_time,
      :rule_id,
      :rule_execution_type)
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
    #   created.
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
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] start_window_minutes
    #   A value in minutes after a backup is scheduled before a job will be
    #   canceled if it doesn't start successfully. This value is optional,
    #   and the default is 8 hours. If this value is included, it must be at
    #   least 60 minutes to avoid errors.
    #
    #   This parameter has a maximum value of 100 years (52,560,000
    #   minutes).
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
    #
    #   Like `StartWindowMinutes`, this parameter has a maximum value of 100
    #   years (52,560,000 minutes).
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
    #   Resource types that can transition to cold storage are listed in the
    #   [Feature availability by resource][1] table. Backup ignores this
    #   expression for other resource types.
    #
    #   This parameter has a maximum value of 100 years (36,500 days).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
    #   @return [Types::Lifecycle]
    #
    # @!attribute [rw] recovery_point_tags
    #   The tags to assign to the resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] backup_options
    #   The backup option for a selected resource. This option is only
    #   available for Windows Volume Shadow Copy Service (VSS) backup jobs.
    #
    #   Valid values: Set to `"WindowsVSS":"enabled"` to enable the
    #   `WindowsVSS` backup option and create a Windows VSS backup. Set to
    #   `"WindowsVSS""disabled"` to create a regular backup. The
    #   `WindowsVSS` option is not enabled by default.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] index
    #   Include this parameter to enable index creation if your backup job
    #   has a resource type that supports backup indexes.
    #
    #   Resource types that support backup indexes include:
    #
    #   * `EBS` for Amazon Elastic Block Store
    #
    #   * `S3` for Amazon Simple Storage Service (Amazon S3)
    #
    #   Index can have 1 of 2 possible values, either `ENABLED` or
    #   `DISABLED`.
    #
    #   To create a backup index for an eligible `ACTIVE` recovery point
    #   that does not yet have a backup index, set value to `ENABLED`.
    #
    #   To delete a backup index, set value to `DISABLED`.
    #   @return [String]
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
      :backup_options,
      :index)
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
    #   are created.
    #   @return [String]
    #
    # @!attribute [rw] destination_backup_vault_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies a destination
    #   backup vault to copy to; for example,
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
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
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   Specifies the time period, in days, before a recovery point
    #   transitions to cold storage or is deleted.
    #
    #   Backups transitioned to cold storage must be stored in cold storage
    #   for a minimum of 90 days. Therefore, on the console, the retention
    #   setting must be 90 days greater than the transition to cold after
    #   days setting. The transition to cold after days setting can't be
    #   changed after a backup has been transitioned to cold.
    #
    #   Resource types that can transition to cold storage are listed in the
    #   [Feature availability by resource][1] table. Backup ignores this
    #   expression for other resource types.
    #
    #   To remove the existing lifecycle and retention periods and keep your
    #   recovery points indefinitely, specify -1 for
    #   `MoveToColdStorageAfterDays` and `DeleteAfterDays`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
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
    #   A set of metadata key-value pairs.
    #
    #   You can get configuration metadata about a resource at the time it
    #   was backed up by calling `GetRecoveryPointRestoreMetadata`. However,
    #   values in addition to those provided by
    #   `GetRecoveryPointRestoreMetadata` might be required to restore a
    #   resource. For example, you might need to provide a new resource name
    #   if the original already exists.
    #
    #   For more information about the metadata for each resource, see the
    #   following:
    #
    #   * [Metadata for Amazon Aurora][1]
    #
    #   * [Metadata for Amazon DocumentDB][2]
    #
    #   * [Metadata for CloudFormation][3]
    #
    #   * [Metadata for Amazon DynamoDB][4]
    #
    #   * [ Metadata for Amazon EBS][5]
    #
    #   * [Metadata for Amazon EC2][6]
    #
    #   * [Metadata for Amazon EFS][7]
    #
    #   * [Metadata for Amazon FSx][8]
    #
    #   * [Metadata for Amazon Neptune][9]
    #
    #   * [Metadata for Amazon RDS][10]
    #
    #   * [Metadata for Amazon Redshift][11]
    #
    #   * [Metadata for Storage Gateway][12]
    #
    #   * [Metadata for Amazon S3][13]
    #
    #   * [Metadata for Amazon Timestream][14]
    #
    #   * [Metadata for virtual machines][15]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-aur.html#aur-restore-cli
    #   [2]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-docdb.html#docdb-restore-cli
    #   [3]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-application-stacks.html#restoring-cfn-cli
    #   [4]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-dynamodb.html#ddb-restore-cli
    #   [5]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-ebs.html#ebs-restore-cli
    #   [6]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-ec2.html#restoring-ec2-cli
    #   [7]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-efs.html#efs-restore-cli
    #   [8]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-fsx.html#fsx-restore-cli
    #   [9]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-nep.html#nep-restore-cli
    #   [10]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-rds.html#rds-restore-cli
    #   [11]: https://docs.aws.amazon.com/aws-backup/latest/devguide/redshift-restores.html#redshift-restore-api
    #   [12]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-storage-gateway.html#restoring-sgw-cli
    #   [13]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-s3.html#s3-restore-cli
    #   [14]: https://docs.aws.amazon.com/aws-backup/latest/devguide/timestream-restore.html#timestream-restore-api
    #   [15]: https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-vm.html#vm-restore-cli
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
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Starts a job to restore a recovery point for one of the following
    #   resources:
    #
    #   * `Aurora` - Amazon Aurora
    #
    #   * `DocumentDB` - Amazon DocumentDB
    #
    #   * `CloudFormation` - CloudFormation
    #
    #   * `DynamoDB` - Amazon DynamoDB
    #
    #   * `EBS` - Amazon Elastic Block Store
    #
    #   * `EC2` - Amazon Elastic Compute Cloud
    #
    #   * `EFS` - Amazon Elastic File System
    #
    #   * `FSx` - Amazon FSx
    #
    #   * `Neptune` - Amazon Neptune
    #
    #   * `RDS` - Amazon Relational Database Service
    #
    #   * `Redshift` - Amazon Redshift
    #
    #   * `Storage Gateway` - Storage Gateway
    #
    #   * `S3` - Amazon Simple Storage Service
    #
    #   * `Timestream` - Amazon Timestream
    #
    #   * `VirtualMachine` - Virtual machines
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
    #   The ARN that uniquely identifies the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that are used to help organize your resources. You
    #   can assign your own metadata to the resources you create. For
    #   clarity, this is the structure to assign tags:
    #   `[{"Key":"string","Value":"string"}]`.
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
    #
    #   ARNs that do not include `backup` are incompatible with tagging.
    #   `TagResource` and `UntagResource` with invalid ARNs will result in
    #   an error. Acceptable ARN content can include
    #   `arn:aws:backup:us-east`. Invalid ARN content may look like
    #   `arn:aws:ec2:us-east`.
    #   @return [String]
    #
    # @!attribute [rw] tag_key_list
    #   The keys to identify which key-value tags to remove from a resource.
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
    #   The ID of the backup plan.
    #   @return [String]
    #
    # @!attribute [rw] backup_plan
    #   The body of a backup plan. Includes a `BackupPlanName` and one or
    #   more sets of `Rules`.
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
    #   The controls that make up the framework. Each control in the list
    #   has a name, input parameters, and scope.
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
    #   Inputs can include:
    #
    #   A value for `isCrossAccountBackupEnabled` and a Region. Example:
    #   `update-global-settings --global-settings
    #   isCrossAccountBackupEnabled=false --region us-west-2`.
    #
    #   A value for Multi-party approval, styled as "Mpa": `isMpaEnabled`.
    #   Values can be true or false. Example: `update-global-settings
    #   --global-settings isMpaEnabled=false --region us-west-2`.
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
    #   to create them and the Region where they are created.
    #
    #   Accepted characters include lowercase letters, numbers, and hyphens.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   This specifies the IAM role ARN used for this operation.
    #
    #   For example, arn:aws:iam::123456789012:role/S3Access
    #   @return [String]
    #
    # @!attribute [rw] index
    #   Index can have 1 of 2 possible values, either `ENABLED` or
    #   `DISABLED`.
    #
    #   To create a backup index for an eligible `ACTIVE` recovery point
    #   that does not yet have a backup index, set value to `ENABLED`.
    #
    #   To delete a backup index, set value to `DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRecoveryPointIndexSettingsInput AWS API Documentation
    #
    class UpdateRecoveryPointIndexSettingsInput < Struct.new(
      :backup_vault_name,
      :recovery_point_arn,
      :iam_role_arn,
      :index)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Region where they are created.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_arn
    #   An ARN that uniquely identifies a recovery point; for example,
    #   `arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45`.
    #   @return [String]
    #
    # @!attribute [rw] index_status
    #   This is the current status for the backup index associated with the
    #   specified recovery point.
    #
    #   Statuses are: `PENDING` \| `ACTIVE` \| `FAILED` \| `DELETING`
    #
    #   A recovery point with an index that has the status of `ACTIVE` can
    #   be included in a search.
    #   @return [String]
    #
    # @!attribute [rw] index
    #   Index can have 1 of 2 possible values, either `ENABLED` or
    #   `DISABLED`.
    #
    #   A value of `ENABLED` means a backup index for an eligible `ACTIVE`
    #   recovery point has been created.
    #
    #   A value of `DISABLED` means a backup index was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRecoveryPointIndexSettingsOutput AWS API Documentation
    #
    class UpdateRecoveryPointIndexSettingsOutput < Struct.new(
      :backup_vault_name,
      :recovery_point_arn,
      :index_status,
      :index)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_vault_name
    #   The name of a logical container where backups are stored. Backup
    #   vaults are identified by names that are unique to the account used
    #   to create them and the Amazon Web Services Region where they are
    #   created.
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
    #   `arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault`.
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
    #   Resource types that can transition to cold storage are listed in the
    #   [Feature availability by resource][1] table. Backup ignores this
    #   expression for other resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource
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
    #
    #   If resource assignments are only based on tags, then service opt-in
    #   settings are applied. If a resource type is explicitly assigned to a
    #   backup plan, such as Amazon S3, Amazon EC2, or Amazon RDS, it will
    #   be included in the backup even if the opt-in is not enabled for that
    #   particular service. If both a resource type and tags are specified
    #   in a resource assignment, the resource type specified in the backup
    #   plan takes priority over the tag condition. Service opt-in settings
    #   are disregarded in this situation.
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
    #   The information about where to deliver your reports, specifically
    #   your Amazon S3 bucket name, S3 key prefix, and the formats of your
    #   reports.
    #   @return [Types::ReportDeliveryChannel]
    #
    # @!attribute [rw] report_setting
    #   The report template for the report. Reports are built using a report
    #   template. The report templates are:
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

    # @!attribute [rw] restore_testing_plan
    #   Specifies the body of a restore testing plan.
    #   @return [Types::RestoreTestingPlanForUpdate]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   The name of the restore testing plan name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRestoreTestingPlanInput AWS API Documentation
    #
    class UpdateRestoreTestingPlanInput < Struct.new(
      :restore_testing_plan,
      :restore_testing_plan_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time the resource testing plan was created.
    #   @return [Time]
    #
    # @!attribute [rw] restore_testing_plan_arn
    #   Unique ARN (Amazon Resource Name) of the restore testing plan.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   The name cannot be changed after creation. The name consists of only
    #   alphanumeric characters and underscores. Maximum length is 50.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The time the update completed for the restore testing plan.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRestoreTestingPlanOutput AWS API Documentation
    #
    class UpdateRestoreTestingPlanOutput < Struct.new(
      :creation_time,
      :restore_testing_plan_arn,
      :restore_testing_plan_name,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] restore_testing_plan_name
    #   The restore testing plan name is required to update the indicated
    #   testing plan.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_selection
    #   To update your restore testing selection, you can use either
    #   protected resource ARNs or conditions, but not both. That is, if
    #   your selection has `ProtectedResourceArns`, requesting an update
    #   with the parameter `ProtectedResourceConditions` will be
    #   unsuccessful.
    #   @return [Types::RestoreTestingSelectionForUpdate]
    #
    # @!attribute [rw] restore_testing_selection_name
    #   The required restore testing selection name of the restore testing
    #   selection you wish to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRestoreTestingSelectionInput AWS API Documentation
    #
    class UpdateRestoreTestingSelectionInput < Struct.new(
      :restore_testing_plan_name,
      :restore_testing_selection,
      :restore_testing_selection_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time the resource testing selection was updated successfully.
    #   @return [Time]
    #
    # @!attribute [rw] restore_testing_plan_arn
    #   Unique string that is the name of the restore testing plan.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_plan_name
    #   The restore testing plan with which the updated restore testing
    #   selection is associated.
    #   @return [String]
    #
    # @!attribute [rw] restore_testing_selection_name
    #   The returned restore testing selection name.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The time the update completed for the restore testing selection.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-2018-11-15/UpdateRestoreTestingSelectionOutput AWS API Documentation
    #
    class UpdateRestoreTestingSelectionOutput < Struct.new(
      :creation_time,
      :restore_testing_plan_arn,
      :restore_testing_plan_name,
      :restore_testing_selection_name,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

