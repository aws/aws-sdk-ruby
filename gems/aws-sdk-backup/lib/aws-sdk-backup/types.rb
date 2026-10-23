# frozen_string_literal: true

# This is generated code!

module Aws::Backup
  # This module contains the types returned by client operations.
  module Types

    # <p>The backup options for each resource type.</p>
    # @!attribute resource_type
    #   <p>Specifies an object containing resource type and backup options. The only supported
    #            resource type is Amazon EC2 instances with Windows Volume Shadow Copy Service
    #            (VSS). For a CloudFormation example, see the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/integrate-cloudformation-with-aws-backup.html">sample
    #               CloudFormation template to enable Windows VSS</a> in the <i>Backup User Guide</i>.</p>
    #            <p>Valid values: <code>EC2</code>.</p>
    #   @return [String]
    # @!attribute backup_options
    #   <p>Specifies the backup option for a selected resource. This option is only available for
    #            Windows VSS backup jobs.</p>
    #            <p>Valid values: </p>
    #            <p>Set to <code>"WindowsVSS":"enabled"</code> to enable the <code>WindowsVSS</code> backup
    #            option and create a Windows VSS backup. </p>
    #            <p>Set to <code>"WindowsVSS":"disabled"</code> to create a regular backup. The
    #               <code>WindowsVSS</code> option is not enabled by default.</p>
    #            <p>If you specify an invalid option, you get an <code>InvalidParameterValueException</code>
    #            exception.</p>
    #            <p>For more information about Windows VSS backups, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/windows-backups.html">Creating a VSS-Enabled Windows
    #               Backup</a>.</p>
    #   @return [Hash<String, String>]
    class AdvancedBackupSetting < Struct.new(
      nil,
      :resource_type,
      :backup_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The required resource already exists.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute creator_request_id
    #   <p></p>
    #   @return [String]
    # @!attribute arn
    #   <p></p>
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    # @!attribute context
    #   <p></p>
    #   @return [String]
    class AlreadyExistsException < Struct.new(
      nil,
      :code,
      :message,
      :creator_request_id,
      :arn,
      :type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of the backup vault to associate with the MPA approval team.</p>
    #   @return [String]
    # @!attribute mpa_approval_team_arn
    #   <p>The Amazon Resource Name (ARN) of the MPA approval team to associate with the backup vault.</p>
    #   @return [String]
    # @!attribute requester_comment
    #   <p>A comment provided by the requester explaining the association request.</p>
    #   @return [String]
    class AssociateBackupVaultMpaApprovalTeamInput < Struct.new(
      nil,
      :backup_vault_name,
      :mpa_approval_team_arn,
      :requester_comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about a backup job.</p>
    # @!attribute account_id
    #   <p>The account ID that owns the backup job.</p>
    #   @return [String]
    # @!attribute backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #   @return [String]
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
    #            resource type.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a backup job is created, in Unix format and Coordinated Universal Time
    #            (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For example, the
    #            value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute completion_date
    #   <p>The date and time a job to create a backup job is completed, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The current state of a backup job.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A detailed message explaining the status of the job to back up a resource.</p>
    #   @return [String]
    # @!attribute percent_done
    #   <p>Contains an estimated percentage complete of a job at the time the job status was
    #            queried.</p>
    #   @return [String]
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of a backup (recovery point).</p>
    #            <p>This value can render differently depending on the resource type as Backup pulls in data information from other Amazon Web Services services. For example, the 
    #            value returned may show a value of <code>0</code>, which may differ from the 
    #            anticipated value.</p>
    #            <p>The expected behavior for values by resource type are described as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Aurora, Amazon DocumentDB, and Amazon Neptune do
    #                  not have this value populate from the operation
    #                  <code>GetBackupJobStatus</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon DynamoDB with advanced features, this value refers to the size
    #                  of the recovery point (backup).</p>
    #               </li>
    #               <li>
    #                  <p>Amazon EC2 and Amazon EBS show volume size (provisioned storage)
    #                  returned as part of this value. Amazon EBS does not return backup size
    #                  information; snapshot size will have the same value as the original resource that was
    #                  backed up.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon EFS, this value refers to the delta bytes transferred during a
    #                  backup.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx does not populate this value from the operation
    #                  <code>GetBackupJobStatus</code> for FSx file systems.</p>
    #               </li>
    #               <li>
    #                  <p>An Amazon RDS instance will show as <code>0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For virtual machines running VMware, this value is passed to Backup
    #                  through an asynchronous workflow, which can mean this displayed value can
    #                  under-represent the actual backup size.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point. IAM roles other
    #            than the default role must include either <code>AWSBackup</code> or <code>AwsBackup</code>
    #            in the role name. For example,
    #               <code>arn:aws:iam::123456789012:role/AWSBackupRDSAccess</code>. Role names without those
    #            strings lack permissions to perform backup jobs.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Contains identifying information about the creation of a backup job, including the
    #               <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
    #            and <code>BackupRuleId</code> of the backup plan used to create it.</p>
    #   @return [Types::RecoveryPointCreator]
    # @!attribute expected_completion_date
    #   <p>The date and time a job to back up resources is expected to be completed, in Unix format
    #            and Coordinated Universal Time (UTC). The value of <code>ExpectedCompletionDate</code> is
    #            accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January
    #            26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute start_by
    #   <p>Specifies the time in Unix format and Coordinated Universal Time (UTC) when a backup job
    #            must be started before it is canceled. The value is calculated by adding the start window
    #            to the scheduled time. So if the scheduled time were 6:00 PM and the start window is 2
    #            hours, the <code>StartBy</code> time would be 8:00 PM on the date specified. The value of
    #               <code>StartBy</code> is accurate to milliseconds. For example, the value 1516925490.087
    #            represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database. For Windows Volume Shadow Copy Service (VSS) backups, the only
    #            supported resource type is Amazon EC2.</p>
    #   @return [String]
    # @!attribute bytes_transferred
    #   <p>The size in bytes transferred to a backup vault at the time that the job status was
    #            queried.</p>
    #   @return [Integer]
    # @!attribute backup_options
    #   <p>Specifies the backup option for a selected resource. This option is only available for
    #            Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
    #            <p>Valid values: Set to <code>"WindowsVSS":"enabled"</code> to enable the
    #               <code>WindowsVSS</code> backup option and create a Windows VSS backup. Set to
    #               <code>"WindowsVSS":"disabled"</code> to create a regular backup. If you specify an
    #            invalid option, you get an <code>InvalidParameterValueException</code> exception.</p>
    #   @return [Hash<String, String>]
    # @!attribute backup_type
    #   <p>Represents the type of backup for a backup job.</p>
    #   @return [String]
    # @!attribute parent_job_id
    #   <p>This uniquely identifies a request to Backup 
    #            to back up a resource. The return will be the 
    #            parent (composite) job ID.</p>
    #   @return [String]
    # @!attribute is_parent
    #   <p>This is a boolean value indicating this is 
    #            a parent (composite) backup job.</p>
    #   @return [Boolean]
    # @!attribute resource_name
    #   <p>The non-unique name of the resource that 
    #            belongs to the specified backup.</p>
    #   @return [String]
    # @!attribute initiation_date
    #   <p>The date on which the backup 
    #            job was initiated.</p>
    #   @return [Time]
    # @!attribute message_category
    #   <p>This parameter is the job count for the specified 
    #            message category.</p>
    #            <p>Example strings may include <code>AccessDenied</code>, 
    #         <code>SUCCESS</code>, <code>AGGREGATE_ALL</code>, and 
    #         <code>INVALIDPARAMETERS</code>. See 
    #            <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a> 
    #            for a list of MessageCategory strings.</p>
    #            <p>The the value ANY returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all message categories and returns the sum.</p>
    #   @return [String]
    class BackupJob < Struct.new(
      nil,
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
      :resource_name,
      :initiation_date,
      :message_category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_parent] = false unless options.key?(:is_parent)
        super
      end
    end

    # <p>This is a summary of jobs created 
    #          or running within the most recent 30 days.</p>
    #          <p>The returned summary may contain the following:  
    #          Region, Account, State, RestourceType, MessageCategory, 
    #          StartTime, EndTime, and Count of included jobs.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Regions within the job summary.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID that owns the jobs within the summary.</p>
    #   @return [String]
    # @!attribute state
    #   <p>This value is job count for jobs 
    #            with the specified state.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>This value is the job count for the specified resource type. 
    #            The request <code>GetSupportedResourceTypes</code> returns 
    #            strings for supported resource types.</p>
    #   @return [String]
    # @!attribute message_category
    #   <p>This parameter is the job count for the specified 
    #            message category.</p>
    #            <p>Example strings include <code>AccessDenied</code>, 
    #            <code>Success</code>, and <code>InvalidParameters</code>. See 
    #            <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a> 
    #            for a list of MessageCategory strings.</p>
    #            <p>The the value ANY returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all message categories and returns the sum.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The value as a number of jobs in a job summary.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The value of time in number format of a job start time.</p>
    #            <p>This value is the time in Unix format, Coordinated Universal Time (UTC), and accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The value of time in number format of a job end time.</p>
    #            <p>This value is the time in Unix format, Coordinated Universal Time (UTC), and accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    class BackupJobSummary < Struct.new(
      nil,
      :region,
      :account_id,
      :state,
      :resource_type,
      :message_category,
      :count,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # <p>Contains an optional backup plan display name and an array of <code>BackupRule</code>
    #          objects, each of which specifies a backup rule. Each rule in a backup plan is a separate
    #          scheduled task and can back up a different selection of Amazon Web Services
    #          resources.</p>
    # @!attribute backup_plan_name
    #   <p>The display name of a backup plan. Must contain only alphanumeric or '-_.'
    #            special characters.</p>
    #            <p>If this is set in the console, it can contain 1 to 50 characters; if this 
    #         is set through CLI or API, it can contain 1 to 200 characters.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>An array of <code>BackupRule</code> objects, each of which specifies a scheduled task
    #            that is used to back up a selection of resources. </p>
    #   @return [Array<Types::BackupRule>]
    # @!attribute advanced_backup_settings
    #   <p>Contains a list of <code>BackupOptions</code> for each resource type.</p>
    #   @return [Array<Types::AdvancedBackupSetting>]
    class BackupPlan < Struct.new(
      nil,
      :backup_plan_name,
      :rules,
      :advanced_backup_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an optional backup plan display name and an array of <code>BackupRule</code>
    #          objects, each of which specifies a backup rule. Each rule in a backup plan is a separate
    #          scheduled task. </p>
    # @!attribute backup_plan_name
    #   <p>The display name of a backup plan. Must contain 1 to 50 alphanumeric or '-_.'
    #            characters.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>An array of <code>BackupRule</code> objects, each of which specifies a scheduled task
    #            that is used to back up a selection of resources.</p>
    #   @return [Array<Types::BackupRuleInput>]
    # @!attribute advanced_backup_settings
    #   <p>Specifies a list of <code>BackupOptions</code> for each resource type. These settings
    #            are only available for Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
    #   @return [Array<Types::AdvancedBackupSetting>]
    class BackupPlanInput < Struct.new(
      nil,
      :backup_plan_name,
      :rules,
      :advanced_backup_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object specifying metadata associated with a backup plan template.</p>
    # @!attribute backup_plan_template_id
    #   <p>Uniquely identifies a stored backup plan template.</p>
    #   @return [String]
    # @!attribute backup_plan_template_name
    #   <p>The optional display name of a backup plan template.</p>
    #   @return [String]
    class BackupPlanTemplatesListMember < Struct.new(
      nil,
      :backup_plan_template_id,
      :backup_plan_template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a backup plan.</p>
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #   @return [String]
    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a resource backup plan is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute deletion_date
    #   <p>The date and time a backup plan is deleted, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>DeletionDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version IDs cannot be edited.</p>
    #   @return [String]
    # @!attribute backup_plan_name
    #   <p>The display name of a saved backup plan.</p>
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #   @return [String]
    # @!attribute last_execution_date
    #   <p>The last time this backup plan was run. A date and time, in
    #            Unix format and Coordinated Universal Time (UTC). The value of
    #               <code>LastExecutionDate</code> is accurate to milliseconds. For example, the value
    #            1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute advanced_backup_settings
    #   <p>Contains a list of <code>BackupOptions</code> for a resource type.</p>
    #   @return [Array<Types::AdvancedBackupSetting>]
    class BackupPlansListMember < Struct.new(
      nil,
      :backup_plan_arn,
      :backup_plan_id,
      :creation_date,
      :deletion_date,
      :version_id,
      :backup_plan_name,
      :creator_request_id,
      :last_execution_date,
      :advanced_backup_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a scheduled task used to back up a selection of resources.</p>
    # @!attribute rule_name
    #   <p>A display name for a backup rule. Must contain 1 to 50 alphanumeric or '-_.'
    #            characters.</p>
    #   @return [String]
    # @!attribute target_backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute schedule_expression
    #   <p>A cron expression in UTC specifying when Backup initiates a backup job. 
    #            When no CRON expression is provided, Backup will use the default 
    #            expression <code>cron(0 5 ? * * *)</code>.</p>
    #            <p>For more information about Amazon Web Services cron expressions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html">Schedule Expressions for Rules</a> in the <i>Amazon CloudWatch Events User
    #               Guide</i>.</p>
    #            <p>Two examples of Amazon Web Services cron expressions are <code> 15 * ? * * *</code> (take
    #            a backup every hour at 15 minutes past the hour) and <code>0 12 * * ? *</code> (take a
    #            backup every day at 12 noon UTC).</p>
    #            <p>For a table of examples, click the preceding link and scroll down the page.</p>
    #   @return [String]
    # @!attribute start_window_minutes
    #   <p>A value in minutes after a backup is scheduled before a job will be canceled if it
    #            doesn't start successfully. This value is optional. 
    #            If this value is included, it must be at least 60 minutes to avoid errors.</p>
    #            <p>During the start window, the backup job status remains in <code>CREATED</code> status until it 
    #            has successfully begun or until the start window time has run out. If within the start 
    #            window time Backup receives an error that allows the job to be retried, 
    #            Backup will automatically retry to begin the job at least every 10 minutes 
    #            until the backup 
    #            successfully begins (the job status changes to <code>RUNNING</code>) or until the job status 
    #            changes to <code>EXPIRED</code> (which is expected to occur when the start window time is over).</p>
    #   @return [Integer]
    # @!attribute completion_window_minutes
    #   <p>A value in minutes after a backup job is successfully started before it must be
    #            completed or it will be canceled by Backup. This value is optional.</p>
    #   @return [Integer]
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    #            <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature availability 
    #            by resource</a> table. Backup ignores this expression for other resource types.</p>
    #   @return [Types::Lifecycle]
    # @!attribute recovery_point_tags
    #   <p>The tags that are assigned to resources that are associated
    #            with this rule when restored from backup.</p>
    #   @return [Hash<String, String>]
    # @!attribute rule_id
    #   <p>Uniquely identifies a rule that is used to schedule the backup of a selection of
    #            resources.</p>
    #   @return [String]
    # @!attribute copy_actions
    #   <p>An array of <code>CopyAction</code> objects, which contains the details of the copy
    #            operation.</p>
    #   @return [Array<Types::CopyAction>]
    # @!attribute enable_continuous_backup
    #   <p>Specifies whether Backup creates continuous backups. True causes Backup to create continuous backups capable of point-in-time restore (PITR). False
    #            (or not specified) causes Backup to create snapshot backups.</p>
    #   @return [Boolean]
    # @!attribute schedule_expression_timezone
    #   <p>The timezone in which the schedule expression is set. By default, 
    #            ScheduleExpressions are in UTC. You can modify this to a specified timezone.</p>
    #   @return [String]
    # @!attribute index_actions
    #   <p>IndexActions is an array you use to specify how backup data should 
    #            be indexed.</p>
    #            <p>eEach BackupRule can have 0 or 1 IndexAction, as each backup can have up 
    #            to one index associated with it.</p>
    #            <p>Within the array is ResourceType. Only one will be accepted for each BackupRule.</p>
    #   @return [Array<Types::IndexAction>]
    class BackupRule < Struct.new(
      nil,
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
      :index_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a scheduled task used to back up a selection of resources.</p>
    # @!attribute rule_name
    #   <p>A display name for a backup rule. Must contain 1 to 50 alphanumeric or '-_.'
    #            characters.</p>
    #   @return [String]
    # @!attribute target_backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute schedule_expression
    #   <p>A CRON expression in UTC specifying when Backup initiates a backup
    #            job. When no CRON expression is provided, Backup will use the default 
    #            expression <code>cron(0 5 ? * * *)</code>.</p>
    #   @return [String]
    # @!attribute start_window_minutes
    #   <p>A value in minutes after a backup is scheduled before a job will be canceled if it
    #            doesn't start successfully. This value is optional. 
    #            If this value is included, it must be at least 60 minutes to avoid errors.</p>
    #            <p>This parameter has a maximum value of 100 years (52,560,000 minutes).</p>
    #            <p>During the start window, the backup job status remains in <code>CREATED</code> status until it 
    #            has successfully begun or until the start window time has run out. If within the start 
    #            window time Backup receives an error that allows the job to be retried, 
    #            Backup will automatically retry to begin the job at least every 10 minutes 
    #            until the backup 
    #            successfully begins (the job status changes to <code>RUNNING</code>) or until the job status 
    #            changes to <code>EXPIRED</code> (which is expected to occur when the start window time is over).</p>
    #   @return [Integer]
    # @!attribute completion_window_minutes
    #   <p>A value in minutes after a backup job is successfully started before it must be
    #            completed or it will be canceled by Backup. This value is optional.</p>
    #   @return [Integer]
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup will transition and expire backups automatically according
    #            to the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold storage.</p>
    #            <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature availability 
    #            by resource</a> table. Backup ignores this expression for other resource types.</p>
    #            <p>This parameter has a maximum value of 100 years (36,500 days).</p>
    #   @return [Types::Lifecycle]
    # @!attribute recovery_point_tags
    #   <p>The tags to assign to the resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute copy_actions
    #   <p>An array of <code>CopyAction</code> objects, which contains the details of the copy
    #            operation.</p>
    #   @return [Array<Types::CopyAction>]
    # @!attribute enable_continuous_backup
    #   <p>Specifies whether Backup creates continuous backups. True causes Backup to create continuous backups capable of point-in-time restore (PITR). False
    #            (or not specified) causes Backup to create snapshot backups.</p>
    #   @return [Boolean]
    # @!attribute schedule_expression_timezone
    #   <p>The timezone in which the schedule expression is set. By default, 
    #            ScheduleExpressions are in UTC. You can modify this to a specified timezone.</p>
    #   @return [String]
    # @!attribute index_actions
    #   <p>There can up to one IndexAction in each BackupRule, as each backup 
    #            can have 0 or 1 backup index associated with it.</p>
    #            <p>Within the array is ResourceTypes. Only 1 resource type will 
    #            be accepted for each BackupRule. Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::IndexAction>]
    class BackupRuleInput < Struct.new(
      nil,
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
      :index_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used to specify a set of resources to a backup plan.</p>
    #          <p>We recommend that you specify conditions, tags, or resources to include or exclude. 
    #          Otherwise, Backup attempts to select all supported and opted-in storage resources, which 
    #          could have unintended cost implications.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html#assigning-resources-json">Assigning resources programmatically</a>.</p>
    # @!attribute selection_name
    #   <p>The display name of a resource selection document. Must contain 1 to 50 alphanumeric or
    #            '-_.' characters.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role that Backup uses to authenticate when backing up the
    #            target resource; for example, <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The Amazon Resource Names (ARNs) of the resources to assign to a backup plan. The maximum number of
    #            ARNs is 500 without wildcards, or 30 ARNs with wildcards.</p>
    #            <p>If you need to assign many resources to a backup plan, consider a different resource
    #            selection strategy, such as assigning all resources of a resource type or refining your
    #            resource selection using tags.</p>
    #            <p>If you specify multiple ARNs, the resources much match any of the ARNs (OR logic).</p>
    #   @return [Array<String>]
    # @!attribute list_of_tags
    #   <p>The conditions that you define to assign resources to your backup plans using tags. For example, 
    #            <code>"StringEquals":  { "ConditionKey": "backup", "ConditionValue": "daily"}</code>.</p>
    #            <p>
    #               <code>ListOfTags</code> supports only <code>StringEquals</code>. Condition operators are case sensitive.</p>
    #            <p>If you specify multiple conditions, the resources much match any of the conditions (OR logic).</p>
    #   @return [Array<Types::Condition>]
    # @!attribute not_resources
    #   <p>The Amazon Resource Names (ARNs) of the resources to exclude from a backup plan. The maximum number
    #            of ARNs is 500 without wildcards, or 30 ARNs with wildcards.</p>
    #            <p>If you need to exclude many resources from a backup plan, consider a different resource
    #            selection strategy, such as assigning only one or a few resource types or refining your
    #            resource selection using tags.</p>
    #   @return [Array<String>]
    # @!attribute conditions
    #   <p>The conditions that you define to assign resources to your backup plans using tags. For example, 
    #            <code>"StringEquals": { "ConditionKey": "aws:ResourceTag/backup", "ConditionValue": "daily" }</code>.</p>
    #            <p>
    #               <code>Conditions</code> supports <code>StringEquals</code>,
    #            <code>StringLike</code>, <code>StringNotEquals</code>, and
    #            <code>StringNotLike</code>. Condition operators are case sensitive.</p>
    #            <p>If you specify multiple conditions, the resources much match all conditions (AND logic).</p>
    #   @return [Types::Conditions]
    class BackupSelection < Struct.new(
      nil,
      :selection_name,
      :iam_role_arn,
      :resources,
      :list_of_tags,
      :not_resources,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a <code>BackupSelection</code> object.</p>
    # @!attribute selection_id
    #   <p>Uniquely identifies a request to assign a set of resources to a backup plan.</p>
    #   @return [String]
    # @!attribute selection_name
    #   <p>The display name of a resource selection document.</p>
    #   @return [String]
    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a backup plan is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role Amazon Resource Name (ARN) to create the target recovery point;
    #            for example, <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    class BackupSelectionsListMember < Struct.new(
      nil,
      :selection_id,
      :selection_name,
      :backup_plan_id,
      :creation_date,
      :creator_request_id,
      :iam_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a backup vault.</p>
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute vault_type
    #   <p>The type of vault in which the described recovery point is stored.</p>
    #   @return [String]
    # @!attribute vault_state
    #   <p>The current state of the vault.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a resource backup is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute encryption_key_arn
    #   <p>A server-side encryption key you can specify to encrypt your backups from services
    #         that support full Backup management; for example,
    #         <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.
    #         If you specify a key, you must specify its ARN, not its alias. If you do not specify a key,
    #         Backup creates a KMS key for you by default.</p>
    #            <p>To learn which Backup services support full Backup management
    #            and how Backup handles encryption for backups from services that do not yet support
    #            full Backup, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/encryption.html">
    #               Encryption for backups in Backup</a>
    #            </p>
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #   @return [String]
    # @!attribute number_of_recovery_points
    #   <p>The number of recovery points that are stored in a backup vault.</p>
    #   @return [Integer]
    # @!attribute locked
    #   <p>A Boolean value that indicates whether Backup Vault Lock applies to the
    #            selected backup vault. If <code>true</code>, Vault Lock prevents delete and update
    #            operations on the recovery points in the selected vault.</p>
    #   @return [Boolean]
    # @!attribute min_retention_days
    #   <p>The Backup Vault Lock setting that specifies the minimum retention period
    #            that the vault retains its recovery points. If this parameter is not specified, Vault Lock
    #            does not enforce a minimum retention period.</p>
    #            <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
    #            retention period equal to or longer than the minimum retention period. If the job's
    #            retention period is shorter than that minimum retention period, then the vault fails the
    #            backup or copy job, and you should either modify your lifecycle settings or use a different
    #            vault. Recovery points already stored in the vault prior to Vault Lock are not
    #            affected.</p>
    #   @return [Integer]
    # @!attribute max_retention_days
    #   <p>The Backup Vault Lock setting that specifies the maximum retention period
    #            that the vault retains its recovery points. If this parameter is not specified, Vault Lock
    #            does not enforce a maximum retention period on the recovery points in the vault (allowing
    #            indefinite storage).</p>
    #            <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
    #            retention period equal to or shorter than the maximum retention period. If the job's
    #            retention period is longer than that maximum retention period, then the vault fails the
    #            backup or copy job, and you should either modify your lifecycle settings or use a different
    #            vault. Recovery points already stored in the vault prior to Vault Lock are not
    #            affected.</p>
    #   @return [Integer]
    # @!attribute lock_date
    #   <p>The date and time when Backup Vault Lock configuration becomes immutable,
    #            meaning it cannot be changed or deleted.</p>
    #            <p>If you applied Vault Lock to your vault without specifying a lock date, you can change
    #            your Vault Lock settings, or delete Vault Lock from the vault entirely, at any time.</p>
    #            <p>This value is in Unix format, Coordinated Universal Time (UTC), and accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    class BackupVaultListMember < Struct.new(
      nil,
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
      :lock_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_recovery_points] = 0 unless options.key?(:number_of_recovery_points)
        super
      end
    end

    # <p>Contains <code>DeleteAt</code> and <code>MoveToColdStorageAt</code> timestamps, which
    #          are used to specify a lifecycle for a recovery point.</p>
    #          <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #          it expires. Backup transitions and expires backups automatically according to
    #          the lifecycle that you define.</p>
    #          <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #          days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #          cold after days” setting. The “transition to cold after days” setting cannot be changed
    #          after a backup has been transitioned to cold.</p>
    #          <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature availability 
    #          by resource</a> table. Backup ignores this expression for other resource types.</p>
    # @!attribute move_to_cold_storage_at
    #   <p>A timestamp that specifies when to transition a recovery point to cold storage.</p>
    #   @return [Time]
    # @!attribute delete_at
    #   <p>A timestamp that specifies when to delete a recovery point.</p>
    #   @return [Time]
    class CalculatedLifecycle < Struct.new(
      nil,
      :move_to_cold_storage_at,
      :delete_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute legal_hold_id
    #   <p>The ID of the legal hold.</p>
    #   @return [String]
    # @!attribute cancel_description
    #   <p>A string the describes the reason for removing the legal hold.</p>
    #   @return [String]
    # @!attribute retain_record_in_days
    #   <p>The integer amount, in days, after which to remove legal hold.</p>
    #   @return [Integer]
    class CancelLegalHoldInput < Struct.new(
      nil,
      :legal_hold_id,
      :cancel_description,
      :retain_record_in_days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelLegalHoldOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an array of triplets made up of a condition type (such as
    #             <code>StringEquals</code>), a key, and a value. Used to filter resources using their
    #          tags and assign them to a backup plan. Case sensitive.</p>
    # @!attribute condition_type
    #   <p>An operation applied to a key-value pair used to assign resources to your backup plan.
    #            Condition only supports <code>StringEquals</code>. For more flexible assignment options,
    #            including <code>StringLike</code> and the ability to exclude resources from your backup
    #            plan, use <code>Conditions</code> (with an "s" on the end) for your <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BackupSelection.html">
    #                  <code>BackupSelection</code>
    #               </a>.</p>
    #   @return [String]
    # @!attribute condition_key
    #   <p>The key in a key-value pair. For example, in the tag <code>Department:
    #            Accounting</code>, <code>Department</code> is the key.</p>
    #   @return [String]
    # @!attribute condition_value
    #   <p>The value in a key-value pair. For example, in the tag <code>Department:
    #               Accounting</code>, <code>Accounting</code> is the value.</p>
    #   @return [String]
    class Condition < Struct.new(
      nil,
      :condition_type,
      :condition_key,
      :condition_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes information about tags you define to assign tagged resources to a backup
    #          plan.</p>
    #          <p>Include the prefix <code>aws:ResourceTag</code> in your tags. 
    #          For example, <code>"aws:ResourceTag/TagKey1": "Value1"</code>.</p>
    # @!attribute condition_key
    #   <p>The key in a key-value pair. For example, in the tag <code>Department:
    #            Accounting</code>, <code>Department</code> is the key.</p>
    #   @return [String]
    # @!attribute condition_value
    #   <p>The value in a key-value pair. For example, in the tag <code>Department:
    #               Accounting</code>, <code>Accounting</code> is the value.</p>
    #   @return [String]
    class ConditionParameter < Struct.new(
      nil,
      :condition_key,
      :condition_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about which resources to include or exclude from a backup plan
    #          using their tags. Conditions are case sensitive.</p>
    # @!attribute string_equals
    #   <p>Filters the values of your tagged resources for only those resources that you tagged
    #            with the same value. Also called "exact matching."</p>
    #   @return [Array<Types::ConditionParameter>]
    # @!attribute string_not_equals
    #   <p>Filters the values of your tagged resources for only those resources that you tagged
    #            that do not have the same value. Also called "negated matching."</p>
    #   @return [Array<Types::ConditionParameter>]
    # @!attribute string_like
    #   <p>Filters the values of your tagged resources for matching tag values with the use of a
    #            wildcard character (*) anywhere in the string. For example, "prod*" or "*rod*" matches the
    #            tag value "production".</p>
    #   @return [Array<Types::ConditionParameter>]
    # @!attribute string_not_like
    #   <p>Filters the values of your tagged resources for non-matching tag values with the use of
    #            a wildcard character (*) anywhere in the string.</p>
    #   @return [Array<Types::ConditionParameter>]
    class Conditions < Struct.new(
      nil,
      :string_equals,
      :string_not_equals,
      :string_like,
      :string_not_like,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Backup can't perform the action that you requested until it finishes
    #          performing a previous action. Try again later.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    # @!attribute context
    #   <p></p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for a control. A control can have zero, one, or more than one
    #          parameter. An example of a control with two parameters is: "backup plan frequency is at
    #          least <code>daily</code> and the retention period is at least <code>1 year</code>". The
    #          first parameter is <code>daily</code>. The second parameter is <code>1 year</code>.</p>
    # @!attribute parameter_name
    #   <p>The name of a parameter, for example, <code>BackupPlanFrequency</code>.</p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>The value of parameter, for example, <code>hourly</code>.</p>
    #   @return [String]
    class ControlInputParameter < Struct.new(
      nil,
      :parameter_name,
      :parameter_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A framework consists of one or more controls. Each control has its own control scope.
    #          The control scope can include one or more resource types, a combination of a tag key and
    #          value, or a combination of one resource type and one resource ID. If no scope is specified,
    #          evaluations for the rule are triggered when any resource in your recording group changes in
    #          configuration.</p>
    #          <note>
    #             <p>To set a control scope that includes all of a particular resource, leave the
    #                <code>ControlScope</code> empty or do not pass it when calling
    #                <code>CreateFramework</code>.</p>
    #          </note>
    # @!attribute compliance_resource_ids
    #   <p>The ID of the only Amazon Web Services resource that you want your control scope to
    #            contain.</p>
    #   @return [Array<String>]
    # @!attribute compliance_resource_types
    #   <p>Describes whether the control scope includes one or more types of resources, such as
    #               <code>EFS</code> or <code>RDS</code>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tag key-value pair applied to those Amazon Web Services resources that you want to
    #            trigger an evaluation for a rule. A maximum of one key-value pair can be provided. The tag
    #            value is optional, but it cannot be an empty string if you are creating or editing a 
    #            framework from the console (though the value can be an empty string when included 
    #            in a CloudFormation template).</p>
    #            <p>The structure to assign a tag is:
    #               <code>[{"Key":"string","Value":"string"}]</code>.</p>
    #   @return [Hash<String, String>]
    class ControlScope < Struct.new(
      nil,
      :compliance_resource_ids,
      :compliance_resource_types,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the copy operation.</p>
    # @!attribute lifecycle
    #   <p>Specifies the time period, in days, before a recovery point transitions to cold storage 
    #            or is deleted.</p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, on the console, the retention setting must be 90 days greater than the
    #            transition to cold after days setting. The transition to cold after days setting can't
    #            be changed after a backup has been transitioned to cold.</p>
    #            <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature 
    #            availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #            <p>To remove the existing lifecycle and retention periods and keep your recovery points indefinitely, 
    #            specify -1 for <code>MoveToColdStorageAfterDays</code> and <code>DeleteAfterDays</code>.</p>
    #   @return [Types::Lifecycle]
    # @!attribute destination_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the destination backup vault for
    #            the copied backup. For example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    class CopyAction < Struct.new(
      nil,
      :lifecycle,
      :destination_backup_vault_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about a copy job.</p>
    # @!attribute account_id
    #   <p>The account ID that owns the copy job.</p>
    #   @return [String]
    # @!attribute copy_job_id
    #   <p>Uniquely identifies a copy job.</p>
    #   @return [String]
    # @!attribute source_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a source copy vault; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>. </p>
    #   @return [String]
    # @!attribute source_recovery_point_arn
    #   <p>An ARN that uniquely identifies a source recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute destination_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a destination copy vault; for
    #            example, <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute destination_recovery_point_arn
    #   <p>An ARN that uniquely identifies a destination recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Web Services resource to be copied; for example, an Amazon Elastic Block Store
    #               (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS)
    #            database.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a copy job is created, in Unix format and Coordinated Universal Time
    #            (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For example, the
    #            value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute completion_date
    #   <p>The date and time a copy job is completed, in Unix format and Coordinated Universal Time
    #            (UTC). The value of <code>CompletionDate</code> is accurate to milliseconds. For example,
    #            the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The current state of a copy job.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A detailed message explaining the status of the job to copy a resource.</p>
    #   @return [String]
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of a copy job.</p>
    #   @return [Integer]
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to copy the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Contains information about the backup plan and rule that Backup used to
    #            initiate the recovery point backup.</p>
    #   @return [Types::RecoveryPointCreator]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource to be copied; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    #   @return [String]
    # @!attribute parent_job_id
    #   <p>This uniquely identifies a request to Backup 
    #            to copy a resource. The return will be the 
    #            parent (composite) job ID.</p>
    #   @return [String]
    # @!attribute is_parent
    #   <p>This is a boolean value indicating this is 
    #            a parent (composite) copy job.</p>
    #   @return [Boolean]
    # @!attribute composite_member_identifier
    #   <p>The identifier of a resource within a composite group, such as 
    #            nested (child) recovery point belonging to a composite (parent) stack. The 
    #            ID is transferred from 
    #            the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html#resources-section-structure-syntax">
    #               logical ID</a> within a stack.</p>
    #   @return [String]
    # @!attribute number_of_child_jobs
    #   <p>The number of child (nested) copy jobs.</p>
    #   @return [Integer]
    # @!attribute child_jobs_in_state
    #   <p>This returns the statistics of the included 
    #            child (nested) copy jobs.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute resource_name
    #   <p>The non-unique name of the resource that 
    #            belongs to the specified backup.</p>
    #   @return [String]
    # @!attribute message_category
    #   <p>This parameter is the job count for the specified 
    #            message category.</p>
    #            <p>Example strings may include <code>AccessDenied</code>, 
    #            <code>SUCCESS</code>, <code>AGGREGATE_ALL</code>, and 
    #            <code>InvalidParameters</code>. See 
    #            <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a> 
    #            for a list of MessageCategory strings.</p>
    #            <p>The the value ANY returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all message categories and returns the sum</p>
    #   @return [String]
    class CopyJob < Struct.new(
      nil,
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
      :resource_name,
      :message_category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_parent] = false unless options.key?(:is_parent)
        super
      end
    end

    # <p>This is a summary of copy jobs created 
    #          or running within the most recent 30 days.</p>
    #          <p>The returned summary may contain the following:  
    #          Region, Account, State, RestourceType, MessageCategory, 
    #          StartTime, EndTime, and Count of included jobs.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Regions within the job summary.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID that owns the jobs within the summary.</p>
    #   @return [String]
    # @!attribute state
    #   <p>This value is job count for jobs 
    #            with the specified state.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>This value is the job count for the specified resource type. 
    #            The request <code>GetSupportedResourceTypes</code> returns 
    #            strings for supported resource types</p>
    #   @return [String]
    # @!attribute message_category
    #   <p>This parameter is the job count for the specified 
    #            message category.</p>
    #            <p>Example strings include <code>AccessDenied</code>, 
    #            <code>Success</code>, and <code>InvalidParameters</code>. See 
    #            <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a> 
    #            for a list of MessageCategory strings.</p>
    #            <p>The the value ANY returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all message categories and returns the sum.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The value as a number of jobs in a job summary.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The value of time in number format of a job start time.</p>
    #            <p>This value is the time in Unix format, Coordinated Universal Time (UTC), and accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The value of time in number format of a job end time.</p>
    #            <p>This value is the time in Unix format, Coordinated Universal Time (UTC), and accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    class CopyJobSummary < Struct.new(
      nil,
      :region,
      :account_id,
      :state,
      :resource_type,
      :message_category,
      :count,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # @!attribute backup_plan
    #   <p>The body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    #   @return [Types::BackupPlanInput]
    # @!attribute backup_plan_tags
    #   <p>The tags to assign to the backup plan.</p>
    #   @return [Hash<String, String>]
    # @!attribute creator_request_id
    #   <p>Identifies the request and allows failed requests to be retried without the risk of
    #            running the operation twice. If the request includes a <code>CreatorRequestId</code> that
    #            matches an existing backup plan, that plan is returned. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #   @return [String]
    class CreateBackupPlanInput < Struct.new(
      nil,
      :backup_plan,
      :backup_plan_tags,
      :creator_request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>The ID of the backup plan.</p>
    #   @return [String]
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that a backup plan is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. They cannot be edited.</p>
    #   @return [String]
    # @!attribute advanced_backup_settings
    #   <p>The settings for a resource type. This option is only
    #            available for Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
    #   @return [Array<Types::AdvancedBackupSetting>]
    class CreateBackupPlanOutput < Struct.new(
      nil,
      :backup_plan_id,
      :backup_plan_arn,
      :creation_date,
      :version_id,
      :advanced_backup_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>The ID of the backup plan.</p>
    #   @return [String]
    # @!attribute backup_selection
    #   <p>The body of a request to assign a set of resources to a backup plan.</p>
    #   @return [Types::BackupSelection]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #   @return [String]
    class CreateBackupSelectionInput < Struct.new(
      nil,
      :backup_plan_id,
      :backup_selection,
      :creator_request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    #   @return [String]
    # @!attribute backup_plan_id
    #   <p>The ID of the backup plan.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a backup selection is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    class CreateBackupSelectionOutput < Struct.new(
      nil,
      :selection_id,
      :backup_plan_id,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of letters, numbers, and hyphens.</p>
    #   @return [String]
    # @!attribute backup_vault_tags
    #   <p>The tags to assign to the backup vault.</p>
    #   @return [Hash<String, String>]
    # @!attribute encryption_key_arn
    #   <p>The server-side encryption key that is used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #   @return [String]
    class CreateBackupVaultInput < Struct.new(
      nil,
      :backup_vault_name,
      :backup_vault_tags,
      :encryption_key_arn,
      :creator_request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created. They consist of lowercase letters, numbers, and hyphens.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a backup vault is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    class CreateBackupVaultOutput < Struct.new(
      nil,
      :backup_vault_name,
      :backup_vault_arn,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of the framework. The name must be between 1 and 256 characters,
    #            starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
    #            underscores (_).</p>
    #   @return [String]
    # @!attribute framework_description
    #   <p>An optional description of the framework with a maximum of 1,024 characters.</p>
    #   @return [String]
    # @!attribute framework_controls
    #   <p>The controls that make up the framework. Each control in the list has a name,
    #            input parameters, and scope.</p>
    #   @return [Array<Types::FrameworkControl>]
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>CreateFrameworkInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #   @return [String]
    # @!attribute framework_tags
    #   <p>The tags to assign to the framework.</p>
    #   @return [Hash<String, String>]
    class CreateFrameworkInput < Struct.new(
      nil,
      :framework_name,
      :framework_description,
      :framework_controls,
      :idempotency_token,
      :framework_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of the framework. The name must be between 1 and 256 characters,
    #            starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
    #            underscores (_).</p>
    #   @return [String]
    # @!attribute framework_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    class CreateFrameworkOutput < Struct.new(
      nil,
      :framework_name,
      :framework_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute title
    #   <p>The title of the legal hold.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the legal hold.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>This is a user-chosen string used to distinguish between otherwise identical 
    #            calls. Retrying a successful request with the 
    #            same idempotency token results in a success message with no action taken.</p>
    #   @return [String]
    # @!attribute recovery_point_selection
    #   <p>The criteria to assign a set of resources, such as resource types or backup vaults.</p>
    #   @return [Types::RecoveryPointSelection]
    # @!attribute tags
    #   <p>Optional tags to include. A tag is a key-value pair you can use to manage, 
    #            filter, and search for your resources. Allowed characters include UTF-8 letters, 
    #            numbers, spaces, and the following characters: + - = . _ : /. </p>
    #   @return [Hash<String, String>]
    class CreateLegalHoldInput < Struct.new(
      nil,
      :title,
      :description,
      :idempotency_token,
      :recovery_point_selection,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute title
    #   <p>The title of the legal hold.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the legal hold.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the legal hold.</p>
    #   @return [String]
    # @!attribute legal_hold_id
    #   <p>The ID of the legal hold.</p>
    #   @return [String]
    # @!attribute legal_hold_arn
    #   <p>The Amazon Resource Name (ARN) of the legal hold.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The time when the legal hold was created.</p>
    #   @return [Time]
    # @!attribute recovery_point_selection
    #   <p>The criteria to assign to a set of resources, such as resource types or backup vaults.</p>
    #   @return [Types::RecoveryPointSelection]
    class CreateLegalHoldOutput < Struct.new(
      nil,
      :title,
      :status,
      :description,
      :legal_hold_id,
      :legal_hold_arn,
      :creation_date,
      :recovery_point_selection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Logically air-gapped 
    #            backup vaults are identified by names that are unique to the account used to create 
    #            them and the Region where they are created.</p>
    #   @return [String]
    # @!attribute backup_vault_tags
    #   <p>The tags to assign to the vault.</p>
    #   @return [Hash<String, String>]
    # @!attribute creator_request_id
    #   <p>The ID of the creation request.</p>
    #            <p>This parameter is optional. If used, this parameter must contain 
    #            1 to 50 alphanumeric or '-_.' characters.</p>
    #   @return [String]
    # @!attribute min_retention_days
    #   <p>This setting specifies the minimum retention period
    #            that the vault retains its recovery points.</p>
    #            <p>The minimum value accepted is 7 days.</p>
    #   @return [Integer]
    # @!attribute max_retention_days
    #   <p>The maximum retention period that the vault retains its recovery points.</p>
    #   @return [Integer]
    class CreateLogicallyAirGappedBackupVaultInput < Struct.new(
      nil,
      :backup_vault_name,
      :backup_vault_tags,
      :creator_request_id,
      :min_retention_days,
      :max_retention_days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Logically air-gapped 
    #            backup vaults are identified by names that are unique to the account used to create 
    #            them and the Region where they are created.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>The ARN (Amazon Resource Name) of the vault.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time when the vault was created.</p>
    #            <p>This value is in Unix format, Coordinated Universal Time (UTC), and accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute vault_state
    #   <p>The current state of the vault.</p>
    #   @return [String]
    class CreateLogicallyAirGappedBackupVaultOutput < Struct.new(
      nil,
      :backup_vault_name,
      :backup_vault_arn,
      :creation_date,
      :vault_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of the report plan. The name must be between 1 and 256 characters,
    #            starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
    #            underscores (_).</p>
    #   @return [String]
    # @!attribute report_plan_description
    #   <p>An optional description of the report plan with a maximum of 1,024 characters.</p>
    #   @return [String]
    # @!attribute report_delivery_channel
    #   <p>A structure that contains information about where and how to deliver your reports,
    #            specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your
    #            reports.</p>
    #   @return [Types::ReportDeliveryChannel]
    # @!attribute report_setting
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #            <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
    #               <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
    #            coverage by Amazon Web Services Regions and frameworks.</p>
    #   @return [Types::ReportSetting]
    # @!attribute report_plan_tags
    #   <p>The tags to assign to the report plan.</p>
    #   @return [Hash<String, String>]
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>CreateReportPlanInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #   @return [String]
    class CreateReportPlanInput < Struct.new(
      nil,
      :report_plan_name,
      :report_plan_description,
      :report_delivery_channel,
      :report_setting,
      :report_plan_tags,
      :idempotency_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of the report plan.</p>
    #   @return [String]
    # @!attribute report_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time a backup vault is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    class CreateReportPlanOutput < Struct.new(
      nil,
      :report_plan_name,
      :report_plan_arn,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_backup_vault_arn
    #   <p>The ARN of the source backup vault containing the recovery points to which temporary access is requested.</p>
    #   @return [String]
    # @!attribute backup_vault_name
    #   <p>The name of the backup vault to associate with an MPA approval team.</p>
    #   @return [String]
    # @!attribute backup_vault_tags
    #   <p>Optional tags to assign to the restore access backup vault.</p>
    #   @return [Hash<String, String>]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried without the risk of executing the operation twice.</p>
    #   @return [String]
    # @!attribute requester_comment
    #   <p>A comment explaining the reason for requesting restore access to the backup vault.</p>
    #   @return [String]
    class CreateRestoreAccessBackupVaultInput < Struct.new(
      nil,
      :source_backup_vault_arn,
      :backup_vault_name,
      :backup_vault_tags,
      :creator_request_id,
      :requester_comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_access_backup_vault_arn
    #   <p>The ARN that uniquely identifies the created restore access backup vault.</p>
    #   @return [String]
    # @!attribute vault_state
    #   <p>The current state of the restore access backup vault.</p>
    #   @return [String]
    # @!attribute restore_access_backup_vault_name
    #   <p>The name of the created restore access backup vault.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>>The date and time when the restore access backup vault was created, in Unix format and Coordinated Universal Time </p>
    #   @return [Time]
    class CreateRestoreAccessBackupVaultOutput < Struct.new(
      nil,
      :restore_access_backup_vault_arn,
      :vault_state,
      :restore_access_backup_vault_name,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creator_request_id
    #   <p>This is a unique string that identifies the request and 
    #            allows failed requests to be retriedwithout the risk of running 
    #            the operation twice. This parameter is optional. If used, this 
    #            parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #   @return [String]
    # @!attribute restore_testing_plan
    #   <p>A restore testing plan must contain a unique <code>RestoreTestingPlanName</code> string
    #            you create and must contain a <code>ScheduleExpression</code> cron. You may optionally
    #            include a <code>StartWindowHours</code> integer and a <code>CreatorRequestId</code>
    #            string.</p>
    #            <p>The <code>RestoreTestingPlanName</code> is a unique string that is the name of the
    #            restore testing plan. This cannot be changed after creation, and it must consist of only
    #            alphanumeric characters and underscores.</p>
    #   @return [Types::RestoreTestingPlanForCreate]
    # @!attribute tags
    #   <p>The tags to assign to the restore testing plan.</p>
    #   @return [Hash<String, String>]
    class CreateRestoreTestingPlanInput < Struct.new(
      nil,
      :creator_request_id,
      :restore_testing_plan,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The date and time a restore testing plan was created, in Unix format 
    #            and Coordinated Universal Time (UTC). The value of <code>CreationTime</code> 
    #            is accurate to milliseconds. For example, the value 1516925490.087 represents 
    #            Friday, January 26, 2018 12:11:30.087AM.</p>
    #   @return [Time]
    # @!attribute restore_testing_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the created 
    #            restore testing plan.</p>
    #   @return [String]
    # @!attribute restore_testing_plan_name
    #   <p>This unique string is the name of the restore testing plan.</p>
    #            <p>The name cannot be changed after creation. The name consists of only 
    #            alphanumeric characters and underscores. Maximum length is 50.</p>
    #   @return [String]
    class CreateRestoreTestingPlanOutput < Struct.new(
      nil,
      :creation_time,
      :restore_testing_plan_arn,
      :restore_testing_plan_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creator_request_id
    #   <p>This is an optional unique string that identifies the request and allows 
    #            failed requests to be retried without the risk of running the operation 
    #            twice. If used, this parameter must contain 
    #            1 to 50 alphanumeric or '-_.' characters.</p>
    #   @return [String]
    # @!attribute restore_testing_plan_name
    #   <p>Input the restore testing plan name that was returned from the 
    #            related CreateRestoreTestingPlan request.</p>
    #   @return [String]
    # @!attribute restore_testing_selection
    #   <p>This consists of <code>RestoreTestingSelectionName</code>,
    #               <code>ProtectedResourceType</code>, and one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ProtectedResourceArns</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProtectedResourceConditions</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Each protected resource type can have one single value.</p>
    #            <p>A restore testing selection can include a wildcard value ("*") for
    #               <code>ProtectedResourceArns</code> along with <code>ProtectedResourceConditions</code>.
    #            Alternatively, you can include up to 30 specific protected resource ARNs in
    #               <code>ProtectedResourceArns</code>.</p>
    #   @return [Types::RestoreTestingSelectionForCreate]
    class CreateRestoreTestingSelectionInput < Struct.new(
      nil,
      :creator_request_id,
      :restore_testing_plan_name,
      :restore_testing_selection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time that the resource testing selection was created.</p>
    #   @return [Time]
    # @!attribute restore_testing_plan_arn
    #   <p>The ARN of the restore testing plan with which the restore 
    #         testing selection is associated.</p>
    #   @return [String]
    # @!attribute restore_testing_plan_name
    #   <p>The name of the restore testing plan.</p>
    #            <p>The name cannot be changed after creation. The name consists of only 
    #            alphanumeric characters and underscores. Maximum length is 50.</p>
    #   @return [String]
    # @!attribute restore_testing_selection_name
    #   <p>The name of the restore testing selection for the related restore testing plan.</p>
    #   @return [String]
    class CreateRestoreTestingSelectionOutput < Struct.new(
      nil,
      :creation_time,
      :restore_testing_plan_arn,
      :restore_testing_plan_name,
      :restore_testing_selection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is a resource filter containing FromDate: DateTime 
    #          and ToDate: DateTime. Both values are required. Future DateTime 
    #          values are not permitted.</p>
    #          <p>The date and time are in Unix format and Coordinated 
    #          Universal Time (UTC), and it is accurate to milliseconds 
    #          ((milliseconds are optional). 
    #          For example, the value 1516925490.087 represents Friday, January 
    #          26, 2018 12:11:30.087 AM.</p>
    # @!attribute from_date
    #   <p>This value is the beginning date, inclusive.</p>
    #            <p>The date and time are in Unix format and Coordinated 
    #            Universal Time (UTC), and it is accurate to milliseconds 
    #            (milliseconds are optional).</p>
    #   @return [Time]
    # @!attribute to_date
    #   <p>This value is the end date, inclusive.</p>
    #            <p>The date and time are in Unix format and Coordinated 
    #            Universal Time (UTC), and it is accurate to milliseconds 
    #            (milliseconds are optional).</p>
    #   @return [Time]
    class DateRange < Struct.new(
      nil,
      :from_date,
      :to_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    class DeleteBackupPlanInput < Struct.new(
      nil,
      :backup_plan_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #   @return [String]
    # @!attribute deletion_date
    #   <p>The date and time a backup plan is deleted, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>DeletionDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version IDs cannot be edited.</p>
    #   @return [String]
    class DeleteBackupPlanOutput < Struct.new(
      nil,
      :backup_plan_id,
      :backup_plan_arn,
      :deletion_date,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    #   @return [String]
    class DeleteBackupSelectionInput < Struct.new(
      nil,
      :backup_plan_id,
      :selection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #   @return [String]
    class DeleteBackupVaultAccessPolicyInput < Struct.new(
      nil,
      :backup_vault_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    class DeleteBackupVaultInput < Struct.new(
      nil,
      :backup_vault_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of the backup vault from which to delete Backup Vault Lock.</p>
    #   @return [String]
    class DeleteBackupVaultLockConfigurationInput < Struct.new(
      nil,
      :backup_vault_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created.</p>
    #   @return [String]
    class DeleteBackupVaultNotificationsInput < Struct.new(
      nil,
      :backup_vault_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of a framework.</p>
    #   @return [String]
    class DeleteFrameworkInput < Struct.new(
      nil,
      :framework_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    class DeleteRecoveryPointInput < Struct.new(
      nil,
      :backup_vault_name,
      :recovery_point_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of a report plan.</p>
    #   @return [String]
    class DeleteReportPlanInput < Struct.new(
      nil,
      :report_plan_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_testing_plan_name
    #   <p>Required unique name of the restore testing plan you wish 
    #            to delete.</p>
    #   @return [String]
    class DeleteRestoreTestingPlanInput < Struct.new(
      nil,
      :restore_testing_plan_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_testing_plan_name
    #   <p>Required unique name of the restore testing plan that contains the 
    #            restore testing selection you wish to delete.</p>
    #   @return [String]
    # @!attribute restore_testing_selection_name
    #   <p>Required unique name of the restore testing selection you 
    #            wish to delete.</p>
    #   @return [String]
    class DeleteRestoreTestingSelectionInput < Struct.new(
      nil,
      :restore_testing_plan_name,
      :restore_testing_selection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A dependent Amazon Web Services service or resource returned an error to the Backup service, and the action cannot be completed.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    # @!attribute context
    #   <p></p>
    #   @return [String]
    class DependencyFailureException < Struct.new(
      nil,
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #   @return [String]
    class DescribeBackupJobInput < Struct.new(
      nil,
      :backup_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Returns the account ID that owns the backup job.</p>
    #   @return [String]
    # @!attribute backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #   @return [String]
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a saved resource. The format of the ARN depends on the
    #            resource type.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that a backup job is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute completion_date
    #   <p>The date and time that a job to create a backup job is completed, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The current state of a backup job.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A detailed message explaining the status of the job to back up a resource.</p>
    #   @return [String]
    # @!attribute percent_done
    #   <p>Contains an estimated percentage that is complete of a job at the time the job status
    #            was queried.</p>
    #   @return [String]
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of a backup (recovery point).</p>
    #            <p>This value can render differently depending on the resource type as Backup pulls in data information from other Amazon Web Services services. For example, the 
    #            value returned may show a value of <code>0</code>, which may differ from the 
    #            anticipated value.</p>
    #            <p>The expected behavior for values by resource type are described as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Aurora, Amazon DocumentDB, and Amazon Neptune do
    #                  not have this value populate from the operation
    #                  <code>GetBackupJobStatus</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon DynamoDB with advanced features, this value refers to the size
    #                  of the recovery point (backup).</p>
    #               </li>
    #               <li>
    #                  <p>Amazon EC2 and Amazon EBS show volume size (provisioned storage)
    #                  returned as part of this value. Amazon EBS does not return backup size
    #                  information; snapshot size will have the same value as the original resource that was
    #                  backed up.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon EFS, this value refers to the delta bytes transferred during a
    #                  backup.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx does not populate this value from the operation
    #                  <code>GetBackupJobStatus</code> for FSx file systems.</p>
    #               </li>
    #               <li>
    #                  <p>An Amazon RDS instance will show as <code>0</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For virtual machines running VMware, this value is passed to Backup
    #                  through an asynchronous workflow, which can mean this displayed value can
    #                  under-represent the actual backup size.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Contains identifying information about the creation of a backup job, including the
    #               <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
    #            and <code>BackupRuleId</code> of the backup plan that is used to create it.</p>
    #   @return [Types::RecoveryPointCreator]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    #   @return [String]
    # @!attribute bytes_transferred
    #   <p>The size in bytes transferred to a backup vault at the time that the job status was
    #            queried.</p>
    #   @return [Integer]
    # @!attribute expected_completion_date
    #   <p>The date and time that a job to back up resources is expected to be completed, in Unix
    #            format and Coordinated Universal Time (UTC). The value of
    #               <code>ExpectedCompletionDate</code> is accurate to milliseconds. For example, the value
    #            1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute start_by
    #   <p>Specifies the time in Unix format and Coordinated Universal Time (UTC) when a backup job
    #            must be started before it is canceled. The value is calculated by adding the start window
    #            to the scheduled time. So if the scheduled time were 6:00 PM and the start window is 2
    #            hours, the <code>StartBy</code> time would be 8:00 PM on the date specified. The value of
    #               <code>StartBy</code> is accurate to milliseconds. For example, the value 1516925490.087
    #            represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute backup_options
    #   <p>Represents the options specified as part of backup plan or on-demand backup job.</p>
    #   @return [Hash<String, String>]
    # @!attribute backup_type
    #   <p>Represents the actual backup type selected for a backup job. For example, if a
    #            successful Windows Volume Shadow Copy Service (VSS) backup was taken,
    #               <code>BackupType</code> returns <code>"WindowsVSS"</code>. If <code>BackupType</code> is
    #            empty, then the backup type was a regular backup.</p>
    #   @return [String]
    # @!attribute parent_job_id
    #   <p>This returns the parent (composite) resource backup job ID.</p>
    #   @return [String]
    # @!attribute is_parent
    #   <p>This returns the boolean value that a backup job is a parent (composite) job.</p>
    #   @return [Boolean]
    # @!attribute number_of_child_jobs
    #   <p>This returns the number of child (nested) backup jobs.</p>
    #   @return [Integer]
    # @!attribute child_jobs_in_state
    #   <p>This returns the statistics of the included child (nested) backup jobs.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute resource_name
    #   <p>The non-unique name of the resource that 
    #            belongs to the specified backup.</p>
    #   @return [String]
    # @!attribute initiation_date
    #   <p>The date a backup job was initiated.</p>
    #   @return [Time]
    # @!attribute message_category
    #   <p>The job count for the specified 
    #            message category.</p>
    #            <p>Example strings may include <code>AccessDenied</code>, <code>SUCCESS</code>,
    #               <code>AGGREGATE_ALL</code>, and <code>INVALIDPARAMETERS</code>. View <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a>
    #            for a list of accepted MessageCategory strings.</p>
    #   @return [String]
    class DescribeBackupJobOutput < Struct.new(
      nil,
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
      :resource_name,
      :initiation_date,
      :message_category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_parent] = false unless options.key?(:is_parent)
        super
      end
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute backup_vault_account_id
    #   <p>The account ID of the specified backup vault.</p>
    #   @return [String]
    class DescribeBackupVaultInput < Struct.new(
      nil,
      :backup_vault_name,
      :backup_vault_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute vault_type
    #   <p>The type of vault described.</p>
    #   @return [String]
    # @!attribute vault_state
    #   <p>The current state of the vault.-></p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The server-side encryption key that is used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that a backup vault is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional. If used, this
    #            parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #   @return [String]
    # @!attribute number_of_recovery_points
    #   <p>The number of recovery points that are stored in a backup vault.</p>
    #            <p>Recovery point count value displayed in the console can be an approximation. Use <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_ListRecoveryPointsByBackupVault.html">
    #                  <code>ListRecoveryPointsByBackupVault</code>
    #               </a> API to obtain the exact
    #            count.</p>
    #   @return [Integer]
    # @!attribute locked
    #   <p>A Boolean that indicates whether Backup Vault Lock is currently protecting
    #            the backup vault. <code>True</code> means that Vault Lock causes delete or update
    #            operations on the recovery points stored in the vault to fail.</p>
    #   @return [Boolean]
    # @!attribute min_retention_days
    #   <p>The Backup Vault Lock setting that specifies the minimum retention period
    #            that the vault retains its recovery points. If this
    #            parameter is not specified, Vault Lock will not enforce a minimum retention period.</p>
    #            <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
    #            retention period equal to or longer than the minimum retention period. If the job's
    #            retention period is shorter than that minimum retention period, then the vault fails the
    #            backup or copy job, and you should either modify your lifecycle settings or use a different
    #            vault. Recovery points already stored in the vault prior to Vault Lock are not
    #            affected.</p>
    #   @return [Integer]
    # @!attribute max_retention_days
    #   <p>The Backup Vault Lock setting that specifies the maximum retention period
    #            that the vault retains its recovery points. If this parameter is not specified, Vault Lock
    #            does not enforce a maximum retention period on the recovery points in the vault (allowing
    #            indefinite storage).</p>
    #            <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
    #            retention period equal to or shorter than the maximum retention period. If the job's
    #            retention period is longer than that maximum retention period, then the vault fails the
    #            backup or copy job, and you should either modify your lifecycle settings or use a different
    #            vault. Recovery points already stored in the vault prior to Vault Lock are not
    #            affected.</p>
    #   @return [Integer]
    # @!attribute lock_date
    #   <p>The date and time when Backup Vault Lock configuration cannot be changed or
    #            deleted.</p>
    #            <p>If you applied Vault Lock to your vault without specifying a lock date, you can change
    #            any of your Vault Lock settings, or delete Vault Lock from the vault entirely, at any
    #            time.</p>
    #            <p>This value is in Unix format, Coordinated Universal Time (UTC), and accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute source_backup_vault_arn
    #   <p>The ARN of the source backup vault from which this restore access backup vault was created.</p>
    #   @return [String]
    # @!attribute mpa_approval_team_arn
    #   <p>The ARN of the MPA approval team associated with this backup vault.</p>
    #   @return [String]
    # @!attribute mpa_session_arn
    #   <p>The ARN of the MPA session associated with this backup vault.</p>
    #   @return [String]
    # @!attribute latest_mpa_approval_team_update
    #   <p>Information about the latest update to the MPA approval team association for this backup vault.</p>
    #   @return [Types::LatestMpaApprovalTeamUpdate]
    class DescribeBackupVaultOutput < Struct.new(
      nil,
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
      :latest_mpa_approval_team_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_recovery_points] = 0 unless options.key?(:number_of_recovery_points)
        super
      end
    end

    # @!attribute copy_job_id
    #   <p>Uniquely identifies a copy job.</p>
    #   @return [String]
    class DescribeCopyJobInput < Struct.new(
      nil,
      :copy_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute copy_job
    #   <p>Contains detailed information about a copy job.</p>
    #   @return [Types::CopyJob]
    class DescribeCopyJobOutput < Struct.new(
      nil,
      :copy_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of a framework.</p>
    #   @return [String]
    class DescribeFrameworkInput < Struct.new(
      nil,
      :framework_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of a framework.</p>
    #   @return [String]
    # @!attribute framework_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    # @!attribute framework_description
    #   <p>An optional description of the framework.</p>
    #   @return [String]
    # @!attribute framework_controls
    #   <p>The controls that make up the framework. Each control in the list has a name,
    #            input parameters, and scope.</p>
    #   @return [Array<Types::FrameworkControl>]
    # @!attribute creation_time
    #   <p>The date and time that a framework is created, in ISO 8601 representation. The value of <code>CreationTime</code> is accurate to milliseconds. For example,
    #            2020-07-10T15:00:00.000-08:00 represents the 10th of July 2020 at 3:00 PM 8 hours behind
    #            UTC.</p>
    #   @return [Time]
    # @!attribute deployment_status
    #   <p>The deployment status of a framework. The statuses are:</p>
    #            <p>
    #               <code>CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED |
    #               FAILED</code>
    #            </p>
    #   @return [String]
    # @!attribute framework_status
    #   <p>A framework consists of one or more controls. Each control governs a resource, such as
    #            backup plans, backup selections, backup vaults, or recovery points. You can also turn
    #               Config recording on or off for each resource. The statuses are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> when recording is turned on for all resources governed by the
    #                  framework.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARTIALLY_ACTIVE</code> when recording is turned off for at least one
    #                  resource governed by the framework.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code> when recording is turned off for all resources governed by
    #                  the framework.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNAVAILABLE</code> when Backup is unable to validate recording
    #                  status at this time.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>DescribeFrameworkOutput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #   @return [String]
    class DescribeFrameworkOutput < Struct.new(
      nil,
      :framework_name,
      :framework_arn,
      :framework_description,
      :framework_controls,
      :creation_time,
      :deployment_status,
      :framework_status,
      :idempotency_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeGlobalSettingsInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_settings
    #   <p>The status of the flag <code>isCrossAccountBackupEnabled</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_update_time
    #   <p>The date and time that the flag <code>isCrossAccountBackupEnabled</code> was last
    #            updated. This update is in Unix format and Coordinated Universal Time (UTC). The value of
    #               <code>LastUpdateTime</code> is accurate to milliseconds. For example, the value
    #            1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    class DescribeGlobalSettingsOutput < Struct.new(
      nil,
      :global_settings,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    class DescribeProtectedResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
    #            resource type.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource saved as a recovery point; for example, an
    #               Amazon EBS volume or an Amazon RDS database.</p>
    #   @return [String]
    # @!attribute last_backup_time
    #   <p>The date and time that a resource was last backed up, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>LastBackupTime</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute resource_name
    #   <p>The name of the resource that belongs to the specified backup.</p>
    #   @return [String]
    # @!attribute last_backup_vault_arn
    #   <p>The ARN (Amazon Resource Name) of the backup vault 
    #            that contains the most recent backup recovery point.</p>
    #   @return [String]
    # @!attribute last_recovery_point_arn
    #   <p>The ARN (Amazon Resource Name) of the most recent 
    #            recovery point.</p>
    #   @return [String]
    # @!attribute latest_restore_execution_time_minutes
    #   <p>The time, in minutes, that the most recent restore job took to complete.</p>
    #   @return [Integer]
    # @!attribute latest_restore_job_creation_date
    #   <p>The creation date of the most recent restore job.</p>
    #   @return [Time]
    # @!attribute latest_restore_recovery_point_creation_date
    #   <p>The date the most recent recovery point was created.</p>
    #   @return [Time]
    class DescribeProtectedResourceOutput < Struct.new(
      nil,
      :resource_arn,
      :resource_type,
      :last_backup_time,
      :resource_name,
      :last_backup_vault_arn,
      :last_recovery_point_arn,
      :latest_restore_execution_time_minutes,
      :latest_restore_job_creation_date,
      :latest_restore_recovery_point_creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute backup_vault_account_id
    #   <p>The account ID of the specified backup vault.</p>
    #   @return [String]
    class DescribeRecoveryPointInput < Struct.new(
      nil,
      :backup_vault_name,
      :recovery_point_arn,
      :backup_vault_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>An ARN that uniquely identifies a backup vault; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute source_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the source vault where the
    #            resource was originally backed up in; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>. If the recovery is
    #            restored to the same Amazon Web Services account or Region, this value will be
    #               <code>null</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a saved resource. The format of the ARN depends on the
    #            resource type.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource to save as a recovery point; for example, an
    #               Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Contains identifying information about the creation of a recovery point, including the
    #               <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
    #            and <code>BackupRuleId</code> of the backup plan used to create it.</p>
    #   @return [Types::RecoveryPointCreator]
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A status code specifying the state of the recovery point. For more information, see 
    #            <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/applicationstackbackups.html#cfnrecoverypointstatus">
    #               Recovery point status</a> in the <i>Backup Developer 
    #                  Guide</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> status indicates that an Backup job has been 
    #                  initiated for a resource. The backup process has started and is actively processing 
    #                  a backup job for the associated recovery point.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> status indicates that the backup was successfully created 
    #                  for the recovery point. The backup process has completed without any issues, and the 
    #                  recovery point is now ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARTIAL</code> status indicates a composite recovery point has one or more 
    #                  nested recovery points that were not in the backup.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXPIRED</code> status indicates that the recovery point has exceeded its retention
    #                  period, but Backup lacks permission or is otherwise unable to delete it. To
    #                  manually delete these recovery points, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/gs-cleanup-resources.html#cleanup-backups"> Step 3:
    #                     Delete the recovery points</a> in the <i>Clean up resources</i>
    #                  section of <i>Getting started</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> status occurs on a continuous backup where a user has taken some
    #                  action that causes the continuous backup to be disabled. This can be caused by the removal
    #                  of permissions, turning off versioning, turning off events being sent to EventBridge,
    #                  or disabling the EventBridge rules that are put in place by Backup. For
    #                  recovery points of Amazon S3, Amazon RDS, and Amazon Aurora
    #                  resources, this status occurs when the retention period of a continuous backup rule is
    #                  changed.</p>
    #                  <p>To resolve <code>STOPPED</code> status, ensure that all requested permissions are in
    #                  place and that versioning is enabled on the S3 bucket. Once these conditions are met, the
    #                  next instance of a backup rule running will result in a new continuous recovery point being
    #                  created. The recovery points with STOPPED status do not need to be deleted.</p>
    #                  <p>For SAP HANA on Amazon EC2
    #                  <code>STOPPED</code> status occurs due to user action, application misconfiguration, or
    #                  backup failure. To ensure that future continuous backups succeed, refer to the recovery
    #                  point status and check SAP HANA for details.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_message
    #   <p>A status message explaining the status of the recovery point.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that a recovery point is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute initiation_date
    #   <p>The date and time when the backup job that created this recovery point was initiated, in
    #            Unix format and Coordinated Universal Time (UTC).</p>
    #   @return [Time]
    # @!attribute completion_date
    #   <p>The date and time that a job to create a recovery point is completed, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of a backup.</p>
    #   @return [Integer]
    # @!attribute calculated_lifecycle
    #   <p>A <code>CalculatedLifecycle</code> object containing <code>DeleteAt</code> and
    #               <code>MoveToColdStorageAt</code> timestamps.</p>
    #   @return [Types::CalculatedLifecycle]
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define.</p>
    #            <p>Backups that are transitioned to cold storage must be stored in cold storage for a
    #            minimum of 90 days. Therefore, the “retention” setting must be 90 days greater than the
    #            “transition to cold after days” setting. The “transition to cold after days” setting cannot
    #            be changed after a backup has been transitioned to cold. </p>
    #            <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature 
    #            availability by resource</a> table. Backup ignores this expression for other resource types.</p>
    #   @return [Types::Lifecycle]
    # @!attribute encryption_key_arn
    #   <p>The server-side encryption key used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #   @return [String]
    # @!attribute is_encrypted
    #   <p>A Boolean value that is returned as <code>TRUE</code> if the specified recovery point is
    #            encrypted, or <code>FALSE</code> if the recovery point is not encrypted.</p>
    #   @return [Boolean]
    # @!attribute storage_class
    #   <p>Specifies the storage class of the recovery point. Valid values are <code>WARM</code> or
    #               <code>COLD</code>.</p>
    #   @return [String]
    # @!attribute last_restore_time
    #   <p>The date and time that a recovery point was last restored, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>LastRestoreTime</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute parent_recovery_point_arn
    #   <p>This is an ARN that uniquely identifies a parent (composite) recovery point; for example, 
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute composite_member_identifier
    #   <p>The identifier of a resource within a composite group, such as 
    #            nested (child) recovery point belonging to a composite (parent) stack. The 
    #            ID is transferred from the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html#resources-section-structure-syntax">
    #               logical ID</a> within a stack.</p>
    #   @return [String]
    # @!attribute is_parent
    #   <p>This returns the boolean value that a recovery point is a parent (composite) job.</p>
    #   @return [Boolean]
    # @!attribute resource_name
    #   <p>The name of the resource that belongs to the specified backup.</p>
    #   @return [String]
    # @!attribute vault_type
    #   <p>The type of vault in which the described recovery point is stored.</p>
    #   @return [String]
    # @!attribute index_status
    #   <p>This is the current status for the backup index associated with the specified recovery
    #            point.</p>
    #            <p>Statuses are: <code>PENDING</code> | <code>ACTIVE</code> | <code>FAILED</code> |
    #            <code>DELETING</code>
    #            </p>
    #            <p>A recovery point with an index that has the status of <code>ACTIVE</code> can be
    #            included in a search.</p>
    #   @return [String]
    # @!attribute index_status_message
    #   <p>A string in the form of a detailed message explaining the status of a backup index
    #            associated with the recovery point.</p>
    #   @return [String]
    class DescribeRecoveryPointOutput < Struct.new(
      nil,
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
      :index_status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_encrypted] = false unless options.key?(:is_encrypted)
        options[:is_parent] = false unless options.key?(:is_parent)
        super
      end
    end

    class DescribeRegionSettingsInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_type_opt_in_preference
    #   <p>The services along with the opt-in preferences in the Region.</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute resource_type_management_preference
    #   <p>Returns whether Backup fully manages the backups for a resource type.</p>
    #            <p>For the benefits of full Backup management, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management">Full Backup 
    #            management</a>.</p>
    #            <p>For a list of resource types and whether each supports full Backup management, 
    #            see the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature availability by resource</a> table.</p>
    #            <p>If <code>"DynamoDB":false</code>, you can enable full Backup management for
    #            DynamoDB backup by enabling <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli">
    #               Backup's advanced DynamoDB backup features</a>.</p>
    #   @return [Hash<String, Boolean>]
    class DescribeRegionSettingsOutput < Struct.new(
      nil,
      :resource_type_opt_in_preference,
      :resource_type_management_preference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_job_id
    #   <p>The identifier of the report job. A unique, randomly generated, Unicode, UTF-8 encoded
    #            string that is at most 1,024 bytes long. The report job ID cannot be edited.</p>
    #   @return [String]
    class DescribeReportJobInput < Struct.new(
      nil,
      :report_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_job
    #   <p>The information about a report job, including its completion and creation times,
    #            report destination, unique report job ID, Amazon Resource Name (ARN), report template,
    #            status, and status message.</p>
    #   @return [Types::ReportJob]
    class DescribeReportJobOutput < Struct.new(
      nil,
      :report_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of a report plan.</p>
    #   @return [String]
    class DescribeReportPlanInput < Struct.new(
      nil,
      :report_plan_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_plan
    #   <p>Returns details about the report plan that is specified by its name. These details
    #            include the report plan's Amazon Resource Name (ARN), description, settings, delivery
    #            channel, deployment status, creation time, and last attempted and successful run
    #            times.</p>
    #   @return [Types::ReportPlan]
    class DescribeReportPlanOutput < Struct.new(
      nil,
      :report_plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_job_id
    #   <p>Uniquely identifies the job that restores a recovery point.</p>
    #   @return [String]
    class DescribeRestoreJobInput < Struct.new(
      nil,
      :restore_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Returns the account ID that owns the restore job.</p>
    #   @return [String]
    # @!attribute restore_job_id
    #   <p>Uniquely identifies the job that restores a recovery point.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that a restore job is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute completion_date
    #   <p>The date and time that a job to restore a recovery point is completed, in Unix format
    #            and Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate
    #            to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Status code specifying the state of the job that is initiated by Backup to
    #            restore a recovery point.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message showing the status of a job to restore a recovery point.</p>
    #   @return [String]
    # @!attribute percent_done
    #   <p>Contains an estimated percentage that is complete of a job at the time the job status
    #            was queried.</p>
    #   @return [String]
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of the restored resource.</p>
    #   @return [Integer]
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute expected_completion_time_minutes
    #   <p>The amount of time in minutes that a job restoring a recovery point is expected to
    #            take.</p>
    #   @return [Integer]
    # @!attribute created_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that 
    #         was created by the restore job.</p>
    #            <p>The format of the ARN depends on the resource type of the backed-up
    #            resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Returns metadata associated with a restore job listed by resource type.</p>
    #   @return [String]
    # @!attribute recovery_point_creation_date
    #   <p>The creation date of the recovery point made by the specifed restore job.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>Contains identifying information about the creation of a restore job.</p>
    #   @return [Types::RestoreJobCreator]
    # @!attribute validation_status
    #   <p>The status of validation run on the indicated 
    #            restore job.</p>
    #   @return [String]
    # @!attribute validation_status_message
    #   <p>The status message.</p>
    #   @return [String]
    # @!attribute deletion_status
    #   <p>The status of the data generated by the restore test.</p>
    #   @return [String]
    # @!attribute deletion_status_message
    #   <p>This describes the restore job deletion status.</p>
    #   @return [String]
    class DescribeRestoreJobOutput < Struct.new(
      nil,
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
      :resource_type,
      :recovery_point_creation_date,
      :created_by,
      :validation_status,
      :validation_status_message,
      :deletion_status,
      :deletion_status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of the backup vault from which to disassociate the MPA approval team.</p>
    #   @return [String]
    # @!attribute requester_comment
    #   <p>An optional comment explaining the reason for disassociating the MPA approval team from the backup vault.</p>
    #   @return [String]
    class DisassociateBackupVaultMpaApprovalTeamInput < Struct.new(
      nil,
      :backup_vault_name,
      :requester_comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where the child (nested) recovery point
    #            is stored. Backup vaults are identified by names that are unique to the account used 
    #            to create them and the Amazon Web Services Region where they are created.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the child 
    #            (nested) recovery point; for example, 
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.</code>
    #            </p>
    #   @return [String]
    class DisassociateRecoveryPointFromParentInput < Struct.new(
      nil,
      :backup_vault_name,
      :recovery_point_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The unique name of an Backup vault.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an Backup recovery
    #            point.</p>
    #   @return [String]
    class DisassociateRecoveryPointInput < Struct.new(
      nil,
      :backup_vault_name,
      :recovery_point_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    class ExportBackupPlanTemplateInput < Struct.new(
      nil,
      :backup_plan_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_template_json
    #   <p>The body of a backup plan template in JSON format.</p>
    #            <note>
    #               <p>This is a signed JSON document that cannot be modified before being passed to
    #                  <code>GetBackupPlanFromJSON.</code>
    #               </p>
    #            </note>
    #   @return [String]
    class ExportBackupPlanTemplateOutput < Struct.new(
      nil,
      :backup_plan_template_json,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about a framework. Frameworks contain controls, which
    #          evaluate and report on your backup events and resources. Frameworks generate daily
    #          compliance results.</p>
    # @!attribute framework_name
    #   <p>The unique name of a framework. This name is between 1 and 256 characters, starting with
    #            a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).</p>
    #   @return [String]
    # @!attribute framework_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    # @!attribute framework_description
    #   <p>An optional description of the framework with a maximum 1,024 characters.</p>
    #   @return [String]
    # @!attribute number_of_controls
    #   <p>The number of controls contained by the framework.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The date and time that a framework is created, in ISO 8601 representation. 
    #            The value of <code>CreationTime</code> is accurate to milliseconds. For example,
    #             2020-07-10T15:00:00.000-08:00 represents the 10th of July 2020 at 3:00 PM 8 hours behind
    #             UTC.</p>
    #   @return [Time]
    # @!attribute deployment_status
    #   <p>The deployment status of a framework. The statuses are:</p>
    #            <p>
    #               <code>CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED |
    #               FAILED</code>
    #            </p>
    #   @return [String]
    class Framework < Struct.new(
      nil,
      :framework_name,
      :framework_arn,
      :framework_description,
      :number_of_controls,
      :creation_time,
      :deployment_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_controls] = 0 unless options.key?(:number_of_controls)
        super
      end
    end

    # <p>Contains detailed information about all of the controls of a framework. Each framework
    #          must contain at least one control.</p>
    # @!attribute control_name
    #   <p>The name of a control. This name is between 1 and 256 characters.</p>
    #   @return [String]
    # @!attribute control_input_parameters
    #   <p>The name/value pairs.</p>
    #   @return [Array<Types::ControlInputParameter>]
    # @!attribute control_scope
    #   <p>The scope of a control. The control scope defines what the control will evaluate. Three
    #            examples of control scopes are: a specific backup plan, all backup plans with a specific
    #            tag, or all backup plans.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_ControlScope.html">
    #                  <code>ControlScope</code>.</a>
    #            </p>
    #   @return [Types::ControlScope]
    class FrameworkControl < Struct.new(
      nil,
      :control_name,
      :control_input_parameters,
      :control_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_template_json
    #   <p>A customer-supplied backup plan document in JSON format.</p>
    #   @return [String]
    class GetBackupPlanFromJSONInput < Struct.new(
      nil,
      :backup_plan_template_json,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan
    #   <p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    #   @return [Types::BackupPlan]
    class GetBackupPlanFromJSONOutput < Struct.new(
      nil,
      :backup_plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_template_id
    #   <p>Uniquely identifies a stored backup plan template.</p>
    #   @return [String]
    class GetBackupPlanFromTemplateInput < Struct.new(
      nil,
      :backup_plan_template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_document
    #   <p>Returns the body of a backup plan based on the target template, including the name,
    #            rules, and backup vault of the plan.</p>
    #   @return [Types::BackupPlan]
    class GetBackupPlanFromTemplateOutput < Struct.new(
      nil,
      :backup_plan_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version IDs cannot be edited.</p>
    #   @return [String]
    class GetBackupPlanInput < Struct.new(
      nil,
      :backup_plan_id,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan
    #   <p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    #   @return [Types::BackupPlan]
    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version IDs cannot be edited.</p>
    #   @return [String]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. </p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that a backup plan is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute deletion_date
    #   <p>The date and time that a backup plan is deleted, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>DeletionDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute last_execution_date
    #   <p>The last time this backup plan was run. A date and time,
    #            in Unix format and Coordinated Universal Time (UTC). The value of
    #               <code>LastExecutionDate</code> is accurate to milliseconds. For example, the value
    #            1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute advanced_backup_settings
    #   <p>Contains a list of <code>BackupOptions</code> for each resource type. The list is
    #            populated only if the advanced option is set for the backup plan.</p>
    #   @return [Array<Types::AdvancedBackupSetting>]
    class GetBackupPlanOutput < Struct.new(
      nil,
      :backup_plan,
      :backup_plan_id,
      :backup_plan_arn,
      :version_id,
      :creator_request_id,
      :creation_date,
      :deletion_date,
      :last_execution_date,
      :advanced_backup_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    #   @return [String]
    class GetBackupSelectionInput < Struct.new(
      nil,
      :backup_plan_id,
      :selection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_selection
    #   <p>Specifies the body of a request to assign a set of resources to a backup plan.</p>
    #   @return [Types::BackupSelection]
    # @!attribute selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    #   @return [String]
    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a backup selection is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice.</p>
    #   @return [String]
    class GetBackupSelectionOutput < Struct.new(
      nil,
      :backup_selection,
      :selection_id,
      :backup_plan_id,
      :creation_date,
      :creator_request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    class GetBackupVaultAccessPolicyInput < Struct.new(
      nil,
      :backup_vault_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The backup vault access policy document in JSON format.</p>
    #   @return [String]
    class GetBackupVaultAccessPolicyOutput < Struct.new(
      nil,
      :backup_vault_name,
      :backup_vault_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    class GetBackupVaultNotificationsInput < Struct.new(
      nil,
      :backup_vault_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>An ARN that uniquely identifies an Amazon Simple Notification Service (Amazon SNS)
    #            topic; for example, <code>arn:aws:sns:us-west-2:111122223333:MyTopic</code>.</p>
    #   @return [String]
    # @!attribute backup_vault_events
    #   <p>An array of events that indicate the status of jobs to back up resources to the backup
    #            vault.</p>
    #   @return [Array<String>]
    class GetBackupVaultNotificationsOutput < Struct.new(
      nil,
      :backup_vault_name,
      :backup_vault_arn,
      :sns_topic_arn,
      :backup_vault_events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute legal_hold_id
    #   <p>The ID of the legal hold.</p>
    #   @return [String]
    class GetLegalHoldInput < Struct.new(
      nil,
      :legal_hold_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute title
    #   <p>The title of the legal hold.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the legal hold.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the legal hold.</p>
    #   @return [String]
    # @!attribute cancel_description
    #   <p>The reason for removing the legal hold.</p>
    #   @return [String]
    # @!attribute legal_hold_id
    #   <p>The ID of the legal hold.</p>
    #   @return [String]
    # @!attribute legal_hold_arn
    #   <p>The framework ARN for the specified legal hold. The format 
    #            of the ARN depends on the resource type.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The time when the legal hold was created.</p>
    #   @return [Time]
    # @!attribute cancellation_date
    #   <p>The time when the legal hold was cancelled.</p>
    #   @return [Time]
    # @!attribute retain_record_until
    #   <p>The date and time until which the legal hold record is retained.</p>
    #   @return [Time]
    # @!attribute recovery_point_selection
    #   <p>The criteria to assign a set of resources, such as resource types or backup vaults.</p>
    #   @return [Types::RecoveryPointSelection]
    class GetLegalHoldOutput < Struct.new(
      nil,
      :title,
      :status,
      :description,
      :cancel_description,
      :legal_hold_id,
      :legal_hold_arn,
      :creation_date,
      :cancellation_date,
      :retain_record_until,
      :recovery_point_selection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created.</p>
    #            <p>Accepted characters include lowercase letters, numbers, and hyphens.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    class GetRecoveryPointIndexDetailsInput < Struct.new(
      nil,
      :backup_vault_name,
      :recovery_point_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>An ARN that uniquely identifies the backup vault where the recovery 
    #            point index is stored.</p>
    #            <p>For example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute source_resource_arn
    #   <p>A string of the  Amazon Resource Name (ARN) that uniquely identifies 
    #            the source resource.</p>
    #   @return [String]
    # @!attribute index_creation_date
    #   <p>The date and time that a backup index was created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute index_deletion_date
    #   <p>The date and time that a backup index was deleted, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute index_completion_date
    #   <p>The date and time that a backup index finished creation, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute index_status
    #   <p>This is the current status for the backup index associated 
    #            with the specified recovery point.</p>
    #            <p>Statuses are: <code>PENDING</code> | <code>ACTIVE</code> | <code>FAILED</code> | <code>DELETING</code>
    #            </p>
    #            <p>A recovery point with an index that has the status of <code>ACTIVE</code> 
    #            can be included in a search.</p>
    #   @return [String]
    # @!attribute index_status_message
    #   <p>A detailed message explaining the status of a backup index associated 
    #            with the recovery point.</p>
    #   @return [String]
    # @!attribute total_items_indexed
    #   <p>Count of items within the backup index associated with the 
    #            recovery point.</p>
    #   @return [Integer]
    class GetRecoveryPointIndexDetailsOutput < Struct.new(
      nil,
      :recovery_point_arn,
      :backup_vault_arn,
      :source_resource_arn,
      :index_creation_date,
      :index_deletion_date,
      :index_completion_date,
      :index_status,
      :index_status_message,
      :total_items_indexed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute backup_vault_account_id
    #   <p>The account ID of the specified backup vault.</p>
    #   @return [String]
    class GetRecoveryPointRestoreMetadataInput < Struct.new(
      nil,
      :backup_vault_name,
      :recovery_point_arn,
      :backup_vault_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_arn
    #   <p>An ARN that uniquely identifies a backup vault; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute restore_metadata
    #   <p>The set of metadata key-value pairs that describe the original configuration of the
    #            backed-up resource. These values vary depending on the service that is being
    #            restored.</p>
    #   @return [Hash<String, String>]
    # @!attribute resource_type
    #   <p>The resource type of the recovery point.</p>
    #   @return [String]
    class GetRecoveryPointRestoreMetadataOutput < Struct.new(
      nil,
      :backup_vault_arn,
      :recovery_point_arn,
      :restore_metadata,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_job_id
    #   <p>This is a unique identifier of a restore job within Backup.</p>
    #   @return [String]
    class GetRestoreJobMetadataInput < Struct.new(
      nil,
      :restore_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_job_id
    #   <p>This is a unique identifier of a restore job within Backup.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>This contains the metadata of the specified backup job.</p>
    #   @return [Hash<String, String>]
    class GetRestoreJobMetadataOutput < Struct.new(
      nil,
      :restore_job_id,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_account_id
    #   <p>The account ID of the specified backup vault.</p>
    #   @return [String]
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup 
    #            vaults are identified by names that are unique to the account used to 
    #            create them and the Amazon Web ServicesRegion where they are created. 
    #            They consist of letters, numbers, and hyphens.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery 
    #            point; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.
    #         </p>
    #   @return [String]
    class GetRestoreTestingInferredMetadataInput < Struct.new(
      nil,
      :backup_vault_account_id,
      :backup_vault_name,
      :recovery_point_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute inferred_metadata
    #   <p>This is a string map of the metadata inferred from the request.</p>
    #   @return [Hash<String, String>]
    class GetRestoreTestingInferredMetadataOutput < Struct.new(
      nil,
      :inferred_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_testing_plan_name
    #   <p>Required unique name of the restore testing plan.</p>
    #   @return [String]
    class GetRestoreTestingPlanInput < Struct.new(
      nil,
      :restore_testing_plan_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_testing_plan
    #   <p>Specifies the body of a restore testing plan. Includes 
    #            <code>RestoreTestingPlanName</code>.</p>
    #   @return [Types::RestoreTestingPlanForGet]
    class GetRestoreTestingPlanOutput < Struct.new(
      nil,
      :restore_testing_plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_testing_plan_name
    #   <p>Required unique name of the restore testing plan.</p>
    #   @return [String]
    # @!attribute restore_testing_selection_name
    #   <p>Required unique name of the restore testing selection.</p>
    #   @return [String]
    class GetRestoreTestingSelectionInput < Struct.new(
      nil,
      :restore_testing_plan_name,
      :restore_testing_selection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_testing_selection
    #   <p>Unique name of the restore testing selection.</p>
    #   @return [Types::RestoreTestingSelectionForGet]
    class GetRestoreTestingSelectionOutput < Struct.new(
      nil,
      :restore_testing_selection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_types
    #   <p>Contains a string with the supported Amazon Web Services resource types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudFormation</code> for CloudFormation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redshift</code> for Amazon Redshift</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAP HANA on Amazon EC2</code> for SAP HANA databases 
    #               on Amazon Elastic Compute Cloud instances</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Timestream</code> for Amazon Timestream</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for VMware virtual machines</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class GetSupportedResourceTypesOutput < Struct.new(
      nil,
      :resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is an optional array within a BackupRule.</p>
    #          <p>IndexAction consists of one ResourceTypes.</p>
    # @!attribute resource_types
    #   <p>0 or 1 index action will be accepted for each BackupRule.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class IndexAction < Struct.new(
      nil,
      :resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is a recovery point that has an associated backup index.</p>
    #          <p>Only recovery points with a backup index can be 
    #          included in a search.</p>
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>
    #            </p>
    #   @return [String]
    # @!attribute source_resource_arn
    #   <p>A string of the  Amazon Resource Name (ARN) that uniquely identifies 
    #            the source resource.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>This specifies the IAM role ARN used for this operation.</p>
    #            <p>For example, arn:aws:iam::123456789012:role/S3Access</p>
    #   @return [String]
    # @!attribute backup_creation_date
    #   <p>The date and time that a backup was created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute resource_type
    #   <p>The resource type of the indexed recovery point.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute index_creation_date
    #   <p>The date and time that a backup index was created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute index_status
    #   <p>This is the current status for the backup index associated 
    #            with the specified recovery point.</p>
    #            <p>Statuses are: <code>PENDING</code> | <code>ACTIVE</code> | <code>FAILED</code> | <code>DELETING</code>
    #            </p>
    #            <p>A recovery point with an index that has the status of <code>ACTIVE</code> 
    #            can be included in a search.</p>
    #   @return [String]
    # @!attribute index_status_message
    #   <p>A string in the form of a detailed message explaining the status of a backup index associated 
    #            with the recovery point.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>An ARN that uniquely identifies the backup vault where the recovery 
    #            point index is stored.</p>
    #            <p>For example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    class IndexedRecoveryPoint < Struct.new(
      nil,
      :recovery_point_arn,
      :source_resource_arn,
      :iam_role_arn,
      :backup_creation_date,
      :resource_type,
      :index_creation_date,
      :index_status,
      :index_status_message,
      :backup_vault_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that something is wrong with a parameter's value. For example, the value is
    #          out of range.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    # @!attribute context
    #   <p></p>
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      nil,
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that something is wrong with the input to the request. For example, a
    #          parameter is of the wrong type.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    # @!attribute context
    #   <p></p>
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Backup is already performing an action on this recovery point. It can't
    #          perform the action you requested until the first action finishes. Try again later.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    # @!attribute context
    #   <p></p>
    #   @return [String]
    class InvalidResourceStateException < Struct.new(
      nil,
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Pair of two related strings. Allowed characters 
    #          are letters, white space, and numbers that can be 
    #          represented in UTF-8 and the following characters: 
    #          <code> + - = . _ : /</code>
    #          </p>
    # @!attribute key
    #   <p>The tag key (String). The key can't start with 
    #            <code>aws:</code>.</p>
    #            <p>Length Constraints: Minimum length of 1. Maximum 
    #            length of 128.</p>
    #            <p>Pattern: <code>^(?![aA]{1}[wW]{1}[sS]{1}:)([\p{L}\p{Z}\p{N}_.:/=+\-@]+)$</code>
    #            </p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the key.</p>
    #            <p>Length Constraints: Maximum length of 256.</p>
    #            <p>Pattern: <code>^([\p{L}\p{Z}\p{N}_.:/=+\-@]*)$</code>
    #            </p>
    #   @return [String]
    class KeyValue < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the latest update to an MPA approval team association.</p>
    # @!attribute mpa_session_arn
    #   <p>The ARN of the MPA session associated with this update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the MPA approval team update.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message describing the current status of the MPA approval team update.</p>
    #   @return [String]
    # @!attribute initiation_date
    #   <p>The date and time when the MPA approval team update was initiated.</p>
    #   @return [Time]
    # @!attribute expiry_date
    #   <p>The date and time when the MPA approval team update will expire.</p>
    #   @return [Time]
    class LatestMpaApprovalTeamUpdate < Struct.new(
      nil,
      :mpa_session_arn,
      :status,
      :status_message,
      :initiation_date,
      :expiry_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the latest request to revoke access to a backup vault.</p>
    # @!attribute mpa_session_arn
    #   <p>The ARN of the MPA session associated with this revoke request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the revoke request.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message describing the current status of the revoke request.</p>
    #   @return [String]
    # @!attribute initiation_date
    #   <p>The date and time when the revoke request was initiated.</p>
    #   @return [Time]
    # @!attribute expiry_date
    #   <p>The date and time when the revoke request will expire.</p>
    #   @return [Time]
    class LatestRevokeRequest < Struct.new(
      nil,
      :mpa_session_arn,
      :status,
      :status_message,
      :initiation_date,
      :expiry_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A legal hold is an administrative tool that helps prevent backups 
    #          from being deleted while under a hold. While the hold is in place, 
    #          backups under a hold cannot be deleted and lifecycle policies that 
    #          would alter the backup status (such as transition to cold storage) are 
    #          delayed until the legal hold is removed. A backup can have more than 
    #          one legal hold. Legal holds are applied to one or more backups 
    #          (also known as recovery points). These backups can be filtered by resource 
    #          types and by resource IDs.</p>
    # @!attribute title
    #   <p>The title of a legal hold.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the legal hold.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a legal hold.</p>
    #   @return [String]
    # @!attribute legal_hold_id
    #   <p>The ID of the legal hold.</p>
    #   @return [String]
    # @!attribute legal_hold_arn
    #   <p>The Amazon Resource Name (ARN) of the legal hold; for example, 
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The time when the legal hold was created.</p>
    #   @return [Time]
    # @!attribute cancellation_date
    #   <p>The time when the legal hold was cancelled.</p>
    #   @return [Time]
    class LegalHold < Struct.new(
      nil,
      :title,
      :status,
      :description,
      :legal_hold_id,
      :legal_hold_arn,
      :creation_date,
      :cancellation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the time period, in days, before a recovery point transitions to cold storage 
    #          or is deleted.</p>
    #          <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #          days. Therefore, on the console, the retention setting must be 90 days greater than the
    #          transition to cold after days setting. The transition to cold after days setting can't
    #          be changed after a backup has been transitioned to cold.</p>
    #          <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature 
    #          availability by resource</a> table. Backup ignores this expression for
    #          other resource types.</p>
    #          <p>To remove the existing lifecycle and retention periods and keep your recovery points indefinitely, 
    #          specify -1 for <code>MoveToColdStorageAfterDays</code> and <code>DeleteAfterDays</code>.</p>
    # @!attribute move_to_cold_storage_after_days
    #   <p>The number of days after creation that a recovery point is moved to cold
    #            storage.</p>
    #   @return [Integer]
    # @!attribute delete_after_days
    #   <p>The number of days after creation that a recovery point is deleted. This value must be
    #            at least 90 days after the number of days specified in <code>MoveToColdStorageAfterDays</code>.</p>
    #   @return [Integer]
    # @!attribute opt_in_to_archive_for_supported_resources
    #   <p>If the value is true, your backup plan transitions supported resources to 
    #            archive (cold) storage tier in accordance with your lifecycle settings.</p>
    #   @return [Boolean]
    class Lifecycle < Struct.new(
      nil,
      :move_to_cold_storage_after_days,
      :delete_after_days,
      :opt_in_to_archive_for_supported_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A limit in the request has been exceeded; for example, a maximum number of items allowed
    #          in a request.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    # @!attribute context
    #   <p></p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Returns the job count for the specified account.</p>
    #            <p>If the request is sent from a member account or an account 
    #            not part of Amazon Web Services Organizations, jobs within requestor's account 
    #            will be returned.</p>
    #            <p>Root, admin, and delegated administrator accounts can use 
    #            the value ANY to return job counts from every account in the 
    #            organization.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            from all accounts within the authenticated organization, 
    #            then returns the sum.</p>
    #   @return [String]
    # @!attribute state
    #   <p>This parameter returns the job count for jobs with the specified state.</p>
    #            <p>The the value ANY returns count of all states.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts for all states and returns the
    #            sum.</p>
    #            <p>
    #               <code>Completed with issues</code> is a status found only in the Backup
    #            console. For API, this status refers to jobs with a state of <code>COMPLETED</code> and a
    #               <code>MessageCategory</code> with a value other than <code>SUCCESS</code>; that is, the
    #            status is completed but comes with a status message. To obtain the job count for
    #               <code>Completed with issues</code>, run two GET requests, and subtract the second,
    #            smaller number:</p>
    #            <p>GET
    #            /audit/backup-job-summaries?AggregationPeriod=FOURTEEN_DAYS&State=COMPLETED</p>
    #            <p>GET
    #            /audit/backup-job-summaries?AggregationPeriod=FOURTEEN_DAYS&MessageCategory=SUCCESS&State=COMPLETED</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Returns the job count for the specified resource type. 
    #            Use request <code>GetSupportedResourceTypes</code> to obtain 
    #            strings for supported resource types.</p>
    #            <p>The the value ANY returns count of all resource types.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all resource types and returns the sum.</p>
    #            <p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    #   @return [String]
    # @!attribute message_category
    #   <p>This parameter returns the job count for the specified 
    #            message category.</p>
    #            <p>Example accepted strings include <code>AccessDenied</code>, 
    #            <code>Success</code>, and <code>InvalidParameters</code>. See 
    #            <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a> 
    #            for a list of accepted MessageCategory strings.</p>
    #            <p>The the value ANY returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all message categories and returns the sum.</p>
    #   @return [String]
    # @!attribute aggregation_period
    #   <p>The period for the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONE_DAY</code> - The daily job count for the prior 14 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SEVEN_DAYS</code> - The aggregated job count for the prior 7 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FOURTEEN_DAYS</code> - The aggregated job count for prior 14 days.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #            <p>The value is an integer. Range of accepted values is from 
    #            1 to 500.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    #   @return [String]
    class ListBackupJobSummariesInput < Struct.new(
      nil,
      :account_id,
      :state,
      :resource_type,
      :message_category,
      :aggregation_period,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_job_summaries
    #   <p>The summary information.</p>
    #   @return [Array<Types::BackupJobSummary>]
    # @!attribute aggregation_period
    #   <p>The period for the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONE_DAY</code> - The daily job count for the prior 14 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SEVEN_DAYS</code> - The aggregated job count for the prior 7 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FOURTEEN_DAYS</code> - The aggregated job count for prior 14 days.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    #   @return [String]
    class ListBackupJobSummariesOutput < Struct.new(
      nil,
      :backup_job_summaries,
      :aggregation_period,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is 
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    # @!attribute by_resource_arn
    #   <p>Returns only backup jobs that match the specified resource Amazon Resource Name
    #            (ARN).</p>
    #   @return [String]
    # @!attribute by_state
    #   <p>Returns only backup jobs that are in the specified state.</p>
    #            <p>
    #               <code>Completed with issues</code> is a status found only in the Backup
    #            console. For API, this status refers to jobs with a state of <code>COMPLETED</code> and a
    #            <code>MessageCategory</code> with a value other than <code>SUCCESS</code>; that is, the
    #            status is completed but comes with a status message.</p>
    #            <p>To obtain the job count for
    #            <code>Completed with issues</code>, run two GET requests, and subtract the second,
    #            smaller number:</p>
    #            <p>GET /backup-jobs/?state=COMPLETED</p>
    #            <p>GET /backup-jobs/?messageCategory=SUCCESS&state=COMPLETED</p>
    #   @return [String]
    # @!attribute by_backup_vault_name
    #   <p>Returns only backup jobs that will be stored in the specified backup vault. Backup
    #            vaults are identified by names that are unique to the account used to create them and the
    #               Amazon Web Services Region where they are created.</p>
    #   @return [String]
    # @!attribute by_created_before
    #   <p>Returns only backup jobs that were created before the specified date.</p>
    #   @return [Time]
    # @!attribute by_created_after
    #   <p>Returns only backup jobs that were created after the specified date.</p>
    #   @return [Time]
    # @!attribute by_resource_type
    #   <p>Returns only backup jobs for the specified resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudFormation</code> for CloudFormation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redshift</code> for Amazon Redshift</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAP HANA on Amazon EC2</code> for SAP HANA databases 
    #               on Amazon Elastic Compute Cloud instances</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Timestream</code> for Amazon Timestream</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for VMware virtual machines</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute by_account_id
    #   <p>The account ID to list the jobs from. Returns only backup jobs associated with the
    #            specified account ID.</p>
    #            <p>If used from an Organizations management account, passing <code>*</code> returns
    #            all jobs across the organization.</p>
    #   @return [String]
    # @!attribute by_complete_after
    #   <p>Returns only backup jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #   @return [Time]
    # @!attribute by_complete_before
    #   <p>Returns only backup jobs completed before a date expressed in Unix format and
    #            Coordinated Universal Time (UTC).</p>
    #   @return [Time]
    # @!attribute by_parent_job_id
    #   <p>This is a filter to list child (nested) jobs based on parent job ID.</p>
    #   @return [String]
    # @!attribute by_message_category
    #   <p>This is an optional parameter that can be used to 
    #            filter out jobs with a MessageCategory which matches the 
    #            value you input.</p>
    #            <p>Example strings may include <code>AccessDenied</code>, 
    #            <code>SUCCESS</code>, <code>AGGREGATE_ALL</code>, and 
    #            <code>InvalidParameters</code>.</p>
    #            <p>View <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a>
    #            </p>
    #            <p>The wildcard () returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #               for all message categories and returns the sum.</p>
    #   @return [String]
    class ListBackupJobsInput < Struct.new(
      nil,
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
      :by_message_category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_jobs
    #   <p>An array of structures containing metadata about your backup jobs returned in JSON
    #            format.</p>
    #   @return [Array<Types::BackupJob>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is  
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    class ListBackupJobsOutput < Struct.new(
      nil,
      :backup_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    class ListBackupPlanTemplatesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute backup_plan_templates_list
    #   <p>An array of template list items containing metadata about your saved templates.</p>
    #   @return [Array<Types::BackupPlanTemplatesListMember>]
    class ListBackupPlanTemplatesOutput < Struct.new(
      nil,
      :next_token,
      :backup_plan_templates_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    class ListBackupPlanVersionsInput < Struct.new(
      nil,
      :backup_plan_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute backup_plan_versions_list
    #   <p>An array of version list items containing metadata about your backup plans.</p>
    #   @return [Array<Types::BackupPlansListMember>]
    class ListBackupPlanVersionsOutput < Struct.new(
      nil,
      :next_token,
      :backup_plan_versions_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    # @!attribute include_deleted
    #   <p>A Boolean value with a default value of <code>FALSE</code> that returns deleted backup
    #            plans when set to <code>TRUE</code>.</p>
    #   @return [Boolean]
    class ListBackupPlansInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :include_deleted,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute backup_plans_list
    #   <p>Information about the backup plans.</p>
    #   @return [Array<Types::BackupPlansListMember>]
    class ListBackupPlansOutput < Struct.new(
      nil,
      :next_token,
      :backup_plans_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    class ListBackupSelectionsInput < Struct.new(
      nil,
      :backup_plan_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute backup_selections_list
    #   <p>An array of backup selection list items containing metadata about each resource in the
    #            list.</p>
    #   @return [Array<Types::BackupSelectionsListMember>]
    class ListBackupSelectionsOutput < Struct.new(
      nil,
      :next_token,
      :backup_selections_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute by_vault_type
    #   <p>This parameter will sort the list of vaults by vault type.</p>
    #   @return [String]
    # @!attribute by_shared
    #   <p>This parameter will sort the list of vaults by shared vaults.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    class ListBackupVaultsInput < Struct.new(
      nil,
      :by_vault_type,
      :by_shared,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_list
    #   <p>An array of backup vault list members containing vault metadata, including Amazon
    #            Resource Name (ARN), display name, creation date, number of saved recovery points, and
    #            encryption information if the resources saved in the backup vault are encrypted.</p>
    #   @return [Array<Types::BackupVaultListMember>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    class ListBackupVaultsOutput < Struct.new(
      nil,
      :backup_vault_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Returns the job count for the specified account.</p>
    #            <p>If the request is sent from a member account or an account 
    #            not part of Amazon Web Services Organizations, jobs within requestor's account 
    #            will be returned.</p>
    #            <p>Root, admin, and delegated administrator accounts can use 
    #            the value ANY to return job counts from every account in the 
    #            organization.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            from all accounts within the authenticated organization, 
    #            then returns the sum.</p>
    #   @return [String]
    # @!attribute state
    #   <p>This parameter returns the job count for jobs 
    #            with the specified state.</p>
    #            <p>The the value ANY returns count of all states.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all states and returns the sum.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Returns the job count for the specified resource type. 
    #            Use request <code>GetSupportedResourceTypes</code> to obtain 
    #            strings for supported resource types.</p>
    #            <p>The the value ANY returns count of all resource types.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all resource types and returns the sum.</p>
    #            <p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    #   @return [String]
    # @!attribute message_category
    #   <p>This parameter returns the job count for the specified 
    #            message category.</p>
    #            <p>Example accepted strings include <code>AccessDenied</code>, 
    #            <code>Success</code>, and <code>InvalidParameters</code>. See 
    #            <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a> 
    #            for a list of accepted MessageCategory strings.</p>
    #            <p>The the value ANY returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all message categories and returns the sum.</p>
    #   @return [String]
    # @!attribute aggregation_period
    #   <p>The period for the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONE_DAY</code> - The daily job count for the prior 14 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SEVEN_DAYS</code> - The aggregated job count for the prior 7 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FOURTEEN_DAYS</code> - The aggregated job count for prior 14 days.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p>This parameter sets the maximum number of items 
    #            to be returned.</p>
    #            <p>The value is an integer. Range of accepted values is from 
    #            1 to 500.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    #   @return [String]
    class ListCopyJobSummariesInput < Struct.new(
      nil,
      :account_id,
      :state,
      :resource_type,
      :message_category,
      :aggregation_period,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute copy_job_summaries
    #   <p>This return shows a summary that contains 
    #            Region, Account, State, ResourceType, MessageCategory, 
    #            StartTime, EndTime, and Count of included jobs.</p>
    #   @return [Array<Types::CopyJobSummary>]
    # @!attribute aggregation_period
    #   <p>The period for the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONE_DAY</code> - The daily job count for the prior 14 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SEVEN_DAYS</code> - The aggregated job count for the prior 7 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FOURTEEN_DAYS</code> - The aggregated job count for prior 14 days.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    #   @return [String]
    class ListCopyJobSummariesOutput < Struct.new(
      nil,
      :copy_job_summaries,
      :aggregation_period,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return MaxResults number of items, NextToken allows you to return more items in
    #            your list starting at the location pointed to by the next token. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    # @!attribute by_resource_arn
    #   <p>Returns only copy jobs that match the specified resource Amazon Resource Name (ARN).
    #         </p>
    #   @return [String]
    # @!attribute by_state
    #   <p>Returns only copy jobs that are in the specified state.</p>
    #   @return [String]
    # @!attribute by_created_before
    #   <p>Returns only copy jobs that were created before the specified date.</p>
    #   @return [Time]
    # @!attribute by_created_after
    #   <p>Returns only copy jobs that were created after the specified date.</p>
    #   @return [Time]
    # @!attribute by_resource_type
    #   <p>Returns only backup jobs for the specified resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudFormation</code> for CloudFormation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redshift</code> for Amazon Redshift</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAP HANA on Amazon EC2</code> for SAP HANA databases 
    #               on Amazon Elastic Compute Cloud instances</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Timestream</code> for Amazon Timestream</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for VMware virtual machines</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute by_destination_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a source backup vault to copy
    #            from; for example, <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.
    #         </p>
    #   @return [String]
    # @!attribute by_account_id
    #   <p>The account ID to list the jobs from. Returns only copy jobs associated with the
    #            specified account ID.</p>
    #   @return [String]
    # @!attribute by_complete_before
    #   <p>Returns only copy jobs completed before a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #   @return [Time]
    # @!attribute by_complete_after
    #   <p>Returns only copy jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #   @return [Time]
    # @!attribute by_parent_job_id
    #   <p>This is a filter to list child (nested) jobs based on parent job ID.</p>
    #   @return [String]
    # @!attribute by_message_category
    #   <p>This is an optional parameter that can be used to 
    #            filter out jobs with a MessageCategory which matches the 
    #            value you input.</p>
    #            <p>Example strings may include <code>AccessDenied</code>, 
    #            <code>SUCCESS</code>, <code>AGGREGATE_ALL</code>, and 
    #            <code>INVALIDPARAMETERS</code>.</p>
    #            <p>View 
    #            <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">Monitoring</a>
    #            for a list of accepted strings.</p>
    #            <p>The the value ANY returns count of all message categories.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #               for all message categories and returns the sum.</p>
    #   @return [String]
    class ListCopyJobsInput < Struct.new(
      nil,
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
      :by_message_category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute copy_jobs
    #   <p>An array of structures containing metadata about your copy jobs returned in JSON format.
    #         </p>
    #   @return [Array<Types::CopyJob>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return MaxResults number of items, NextToken allows you to return more items in
    #            your list starting at the location pointed to by the next token. </p>
    #   @return [String]
    class ListCopyJobsOutput < Struct.new(
      nil,
      :copy_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #   @return [String]
    class ListFrameworksInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute frameworks
    #   <p>The frameworks with details for each framework, including the framework name,
    #            Amazon Resource Name (ARN), description, number of controls, creation time, and deployment
    #            status.</p>
    #   @return [Array<Types::Framework>]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #   @return [String]
    class ListFrameworksOutput < Struct.new(
      nil,
      :frameworks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned recovery points.</p>
    #            <p>For example, if a request
    #            is made to return <code>MaxResults</code> number of indexed recovery points, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    #   @return [Integer]
    # @!attribute source_resource_arn
    #   <p>A string of the  Amazon Resource Name (ARN) that uniquely identifies 
    #            the source resource.</p>
    #   @return [String]
    # @!attribute created_before
    #   <p>Returns only indexed recovery points that were created before the 
    #            specified date.</p>
    #   @return [Time]
    # @!attribute created_after
    #   <p>Returns only indexed recovery points that were created after the 
    #            specified date.</p>
    #   @return [Time]
    # @!attribute resource_type
    #   <p>Returns a list of indexed recovery points for the specified 
    #            resource type(s).</p>
    #            <p>Accepted values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute index_status
    #   <p>Include this parameter to filter the returned list by 
    #            the indicated statuses.</p>
    #            <p>Accepted values: <code>PENDING</code> | <code>ACTIVE</code> | <code>FAILED</code> | <code>DELETING</code>
    #            </p>
    #            <p>A recovery point with an index that has the status of <code>ACTIVE</code> 
    #            can be included in a search.</p>
    #   @return [String]
    class ListIndexedRecoveryPointsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :source_resource_arn,
      :created_before,
      :created_after,
      :resource_type,
      :index_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute indexed_recovery_points
    #   <p>This is a list of recovery points that have an 
    #            associated index, belonging to the specified account.</p>
    #   @return [Array<Types::IndexedRecoveryPoint>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned recovery points.</p>
    #            <p>For example, if a request
    #            is made to return <code>MaxResults</code> number of indexed recovery points, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    #   @return [String]
    class ListIndexedRecoveryPointsOutput < Struct.new(
      nil,
      :indexed_recovery_points,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    #   @return [Integer]
    class ListLegalHoldsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    #   @return [String]
    # @!attribute legal_holds
    #   <p>This is an array of returned legal holds, both active and previous.</p>
    #   @return [Array<Types::LegalHold>]
    class ListLegalHoldsOutput < Struct.new(
      nil,
      :next_token,
      :legal_holds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The list of protected resources by backup vault within the vault(s) you specify by name.</p>
    #   @return [String]
    # @!attribute backup_vault_account_id
    #   <p>The list of protected resources by backup vault within the vault(s) you specify by account ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    class ListProtectedResourcesByBackupVaultInput < Struct.new(
      nil,
      :backup_vault_name,
      :backup_vault_account_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>These are the results returned for the request ListProtectedResourcesByBackupVault.</p>
    #   @return [Array<Types::ProtectedResource>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    class ListProtectedResourcesByBackupVaultOutput < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    class ListProtectedResourcesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>An array of resources successfully backed up by Backup including the time
    #            the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource
    #            type.</p>
    #   @return [Array<Types::ProtectedResource>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    class ListProtectedResourcesOutput < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #            <note>
    #               <p>Backup vault name might not be available when a supported service creates the
    #               backup.</p>
    #            </note>
    #   @return [String]
    # @!attribute backup_vault_account_id
    #   <p>This parameter will sort the list of recovery points by account ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    # @!attribute by_resource_arn
    #   <p>Returns only recovery points that match the specified resource Amazon Resource Name
    #            (ARN).</p>
    #   @return [String]
    # @!attribute by_resource_type
    #   <p>Returns only recovery points that match the specified resource type(s):</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudFormation</code> for CloudFormation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redshift</code> for Amazon Redshift</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAP HANA on Amazon EC2</code> for SAP HANA databases 
    #               on Amazon Elastic Compute Cloud instances</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Timestream</code> for Amazon Timestream</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for VMware virtual machines</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute by_backup_plan_id
    #   <p>Returns only recovery points that match the specified backup plan ID.</p>
    #   @return [String]
    # @!attribute by_created_before
    #   <p>Returns only recovery points that were created before the specified timestamp.</p>
    #   @return [Time]
    # @!attribute by_created_after
    #   <p>Returns only recovery points that were created after the specified timestamp.</p>
    #   @return [Time]
    # @!attribute by_parent_recovery_point_arn
    #   <p>This returns only recovery points that match the specified parent (composite)
    #            recovery point Amazon Resource Name (ARN).</p>
    #   @return [String]
    class ListRecoveryPointsByBackupVaultInput < Struct.new(
      nil,
      :backup_vault_name,
      :backup_vault_account_id,
      :next_token,
      :max_results,
      :by_resource_arn,
      :by_resource_type,
      :by_backup_plan_id,
      :by_created_before,
      :by_created_after,
      :by_parent_recovery_point_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute recovery_points
    #   <p>An array of objects that contain detailed information about recovery points saved in a
    #            backup vault.</p>
    #   @return [Array<Types::RecoveryPointByBackupVault>]
    class ListRecoveryPointsByBackupVaultOutput < Struct.new(
      nil,
      :next_token,
      :recovery_points,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute legal_hold_id
    #   <p>The ID of the legal hold.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resource list items to be returned.</p>
    #   @return [Integer]
    class ListRecoveryPointsByLegalHoldInput < Struct.new(
      nil,
      :legal_hold_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_points
    #   <p>The recovery points.</p>
    #   @return [Array<Types::RecoveryPointMember>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources.</p>
    #   @return [String]
    class ListRecoveryPointsByLegalHoldOutput < Struct.new(
      nil,
      :recovery_points,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
    #            resource type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #            <note>
    #               <p>Amazon RDS requires a value of at least 20.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute managed_by_aws_backup_only
    #   <p>This attribute filters recovery points based on ownership.</p>
    #            <p>If this is 
    #            set to <code>TRUE</code>, the response will contain recovery points associated 
    #            with the selected resources that are managed by Backup.</p>
    #            <p>If this is set to <code>FALSE</code>, the response will contain all 
    #            recovery points associated with the selected resource.</p>
    #            <p>Type: Boolean</p>
    #   @return [Boolean]
    class ListRecoveryPointsByResourceInput < Struct.new(
      nil,
      :resource_arn,
      :next_token,
      :max_results,
      :managed_by_aws_backup_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute recovery_points
    #   <p>An array of objects that contain detailed information about recovery points of the
    #            specified resource type.</p>
    #            <note>
    #               <p>Only Amazon EFS and Amazon EC2 recovery points return
    #               BackupVaultName.</p>
    #            </note>
    #   @return [Array<Types::RecoveryPointByResource>]
    class ListRecoveryPointsByResourceOutput < Struct.new(
      nil,
      :next_token,
      :recovery_points,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute by_report_plan_name
    #   <p>Returns only report jobs with the specified report plan name.</p>
    #   @return [String]
    # @!attribute by_creation_before
    #   <p>Returns only report jobs that were created before the date and time specified in Unix
    #            format and Coordinated Universal Time (UTC). For example, the value 1516925490 represents
    #            Friday, January 26, 2018 12:11:30 AM.</p>
    #   @return [Time]
    # @!attribute by_creation_after
    #   <p>Returns only report jobs that were created after the date and time specified in Unix
    #            format and Coordinated Universal Time (UTC). For example, the value 1516925490 represents
    #            Friday, January 26, 2018 12:11:30 AM.</p>
    #   @return [Time]
    # @!attribute by_status
    #   <p>Returns only report jobs that are in the specified status. The statuses are:</p>
    #            <p>
    #               <code>CREATED | RUNNING | COMPLETED | FAILED</code>
    #            </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #   @return [String]
    class ListReportJobsInput < Struct.new(
      nil,
      :by_report_plan_name,
      :by_creation_before,
      :by_creation_after,
      :by_status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_jobs
    #   <p>Details about your report jobs in JSON format.</p>
    #   @return [Array<Types::ReportJob>]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #   @return [String]
    class ListReportJobsOutput < Struct.new(
      nil,
      :report_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #   @return [String]
    class ListReportPlansInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_plans
    #   <p>The report plans with detailed information for each plan. This information
    #            includes the Amazon Resource Name (ARN), report plan name, description, settings, delivery
    #            channel, deployment status, creation time, and last times the report plan attempted to and
    #            successfully ran.</p>
    #   @return [Array<Types::ReportPlan>]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #   @return [String]
    class ListReportPlansOutput < Struct.new(
      nil,
      :report_plans,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of the backup vault for which to list associated restore access backup vaults.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in the response.</p>
    #   @return [Integer]
    class ListRestoreAccessBackupVaultsInput < Struct.new(
      nil,
      :backup_vault_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute restore_access_backup_vaults
    #   <p>A list of restore access backup vaults associated with the specified backup vault.</p>
    #   @return [Array<Types::RestoreAccessBackupVaultListMember>]
    class ListRestoreAccessBackupVaultsOutput < Struct.new(
      nil,
      :next_token,
      :restore_access_backup_vaults,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Returns the job count for the specified account.</p>
    #            <p>If the request is sent from a member account or an account 
    #            not part of Amazon Web Services Organizations, jobs within requestor's account 
    #            will be returned.</p>
    #            <p>Root, admin, and delegated administrator accounts can use 
    #            the value ANY to return job counts from every account in the 
    #            organization.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            from all accounts within the authenticated organization, 
    #            then returns the sum.</p>
    #   @return [String]
    # @!attribute state
    #   <p>This parameter returns the job count for jobs 
    #            with the specified state.</p>
    #            <p>The the value ANY returns count of all states.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all states and returns the sum.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Returns the job count for the specified resource type. 
    #            Use request <code>GetSupportedResourceTypes</code> to obtain 
    #            strings for supported resource types.</p>
    #            <p>The the value ANY returns count of all resource types.</p>
    #            <p>
    #               <code>AGGREGATE_ALL</code> aggregates job counts 
    #            for all resource types and returns the sum.</p>
    #            <p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    #   @return [String]
    # @!attribute aggregation_period
    #   <p>The period for the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONE_DAY</code> - The daily job count for the prior 14 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SEVEN_DAYS</code> - The aggregated job count for the prior 7 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FOURTEEN_DAYS</code> - The aggregated job count for prior 14 days.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p>This parameter sets the maximum number of items 
    #            to be returned.</p>
    #            <p>The value is an integer. Range of accepted values is from 
    #            1 to 500.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    #   @return [String]
    class ListRestoreJobSummariesInput < Struct.new(
      nil,
      :account_id,
      :state,
      :resource_type,
      :aggregation_period,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_job_summaries
    #   <p>This return contains a summary that contains 
    #            Region, Account, State, ResourceType, MessageCategory, 
    #            StartTime, EndTime, and Count of included jobs.</p>
    #   @return [Array<Types::RestoreJobSummary>]
    # @!attribute aggregation_period
    #   <p>The period for the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONE_DAY</code> - The daily job count for the prior 14 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SEVEN_DAYS</code> - The aggregated job count for the prior 7 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FOURTEEN_DAYS</code> - The aggregated job count for prior 14 days.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request
    #            is made to return <code>MaxResults</code> number of resources, <code>NextToken</code>
    #            allows you to return more items in your list starting at the location pointed to by the
    #            next token.</p>
    #   @return [String]
    class ListRestoreJobSummariesOutput < Struct.new(
      nil,
      :restore_job_summaries,
      :aggregation_period,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Returns only restore jobs that match the specified resource 
    #            Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute by_status
    #   <p>Returns only restore jobs associated with the specified job status.</p>
    #   @return [String]
    # @!attribute by_recovery_point_creation_date_after
    #   <p>Returns only restore jobs of recovery points that were created after the specified date.</p>
    #   @return [Time]
    # @!attribute by_recovery_point_creation_date_before
    #   <p>Returns only restore jobs of recovery points that were created before the specified date.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, 
    #            if a request ismade to return <code>MaxResults</code> number of items, 
    #            <code>NextToken</code> allows you to return more items in your list 
    #            starting at the location pointed to by the next token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    class ListRestoreJobsByProtectedResourceInput < Struct.new(
      nil,
      :resource_arn,
      :by_status,
      :by_recovery_point_creation_date_after,
      :by_recovery_point_creation_date_before,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_jobs
    #   <p>An array of objects that contain detailed information about 
    #            jobs to restore saved resources.></p>
    #   @return [Array<Types::RestoreJobsListMember>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, 
    #            if a request is made to return <code>MaxResults</code> number of items, 
    #            <code>NextToken</code> allows youto return more items in your list starting 
    #            at the location pointed to by the next token</p>
    #   @return [String]
    class ListRestoreJobsByProtectedResourceOutput < Struct.new(
      nil,
      :restore_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    # @!attribute by_account_id
    #   <p>The account ID to list the jobs from. Returns only restore jobs associated with the
    #            specified account ID.</p>
    #   @return [String]
    # @!attribute by_resource_type
    #   <p>Include this parameter to return only restore jobs for the specified resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudFormation</code> for CloudFormation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redshift</code> for Amazon Redshift</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAP HANA on Amazon EC2</code> for SAP HANA databases 
    #               on Amazon Elastic Compute Cloud instances</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Timestream</code> for Amazon Timestream</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for VMware virtual machines</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute by_created_before
    #   <p>Returns only restore jobs that were created before the specified date.</p>
    #   @return [Time]
    # @!attribute by_created_after
    #   <p>Returns only restore jobs that were created after the specified date.</p>
    #   @return [Time]
    # @!attribute by_status
    #   <p>Returns only restore jobs associated with the specified job status.</p>
    #   @return [String]
    # @!attribute by_complete_before
    #   <p>Returns only copy jobs completed before a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #   @return [Time]
    # @!attribute by_complete_after
    #   <p>Returns only copy jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #   @return [Time]
    # @!attribute by_restore_testing_plan_arn
    #   <p>This returns only restore testing jobs that match the 
    #            specified resource Amazon Resource Name (ARN).</p>
    #   @return [String]
    class ListRestoreJobsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :by_account_id,
      :by_resource_type,
      :by_created_before,
      :by_created_after,
      :by_status,
      :by_complete_before,
      :by_complete_after,
      :by_restore_testing_plan_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_jobs
    #   <p>An array of objects that contain detailed information about jobs to restore saved
    #            resources.</p>
    #   @return [Array<Types::RestoreJobsListMember>]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    class ListRestoreJobsOutput < Struct.new(
      nil,
      :restore_jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. 
    #            For example, if a request is made to return <code>MaxResults</code> 
    #            number of items, <code>NextToken</code> allows you to return more items 
    #            in your list starting at the location pointed to by the nexttoken.</p>
    #   @return [String]
    class ListRestoreTestingPlansInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. 
    #            For example, if a request is made to return <code>MaxResults</code> 
    #            number of items, <code>NextToken</code> allows you to return more items 
    #            in your list starting at the location pointed to by the nexttoken.</p>
    #   @return [String]
    # @!attribute restore_testing_plans
    #   <p>This is a returned list of restore testing plans.</p>
    #   @return [Array<Types::RestoreTestingPlanForList>]
    class ListRestoreTestingPlansOutput < Struct.new(
      nil,
      :next_token,
      :restore_testing_plans,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. 
    #            For example, if a request is made to return <code>MaxResults</code> 
    #            number of items, <code>NextToken</code> allows you to return more items 
    #            in your list starting at the location pointed to by the nexttoken.</p>
    #   @return [String]
    # @!attribute restore_testing_plan_name
    #   <p>Returns restore testing selections by the specified restore testing 
    #            plan name.</p>
    #   @return [String]
    class ListRestoreTestingSelectionsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :restore_testing_plan_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, 
    #            if a request is made to return <code>MaxResults</code> number of items, 
    #            <code>NextToken</code> allows you to return more items in your list 
    #            starting at the location pointed to by the nexttoken.</p>
    #   @return [String]
    # @!attribute restore_testing_selections
    #   <p>The returned restore testing selections associated with the 
    #            restore testing plan.</p>
    #   @return [Array<Types::RestoreTestingSelectionForList>]
    class ListRestoreTestingSelectionsOutput < Struct.new(
      nil,
      :next_token,
      :restore_testing_selections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the type of resource. Valid targets for <code>ListTags</code> are recovery
    #            points, backup plans, and backup vaults.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #   @return [Integer]
    class ListTagsInput < Struct.new(
      nil,
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>MaxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Information about the tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsOutput < Struct.new(
      nil,
      :next_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a required parameter is missing.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    # @!attribute context
    #   <p></p>
    #   @return [String]
    class MissingParameterValueException < Struct.new(
      nil,
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about a backed-up resource.</p>
    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database. For
    #            Windows Volume Shadow Copy Service (VSS) backups, the only supported resource type is
    #               Amazon EC2.</p>
    #   @return [String]
    # @!attribute last_backup_time
    #   <p>The date and time a resource was last backed up, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>LastBackupTime</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute resource_name
    #   <p>The non-unique name of the resource that 
    #            belongs to the specified backup.</p>
    #   @return [String]
    # @!attribute last_backup_vault_arn
    #   <p>The ARN (Amazon Resource Name) of the backup vault 
    #            that contains the most recent backup recovery point.</p>
    #   @return [String]
    # @!attribute last_recovery_point_arn
    #   <p>The ARN (Amazon Resource Name) of the most 
    #            recent recovery point.</p>
    #   @return [String]
    class ProtectedResource < Struct.new(
      nil,
      :resource_arn,
      :resource_type,
      :last_backup_time,
      :resource_name,
      :last_backup_vault_arn,
      :last_recovery_point_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The conditions that you define for resources in 
    #          your restore testing plan using tags.</p>
    # @!attribute string_equals
    #   <p>Filters the values of your tagged resources for only 
    #            those resources that you tagged  with the same value. 
    #            Also called "exact matching."</p>
    #   @return [Array<Types::KeyValue>]
    # @!attribute string_not_equals
    #   <p>Filters the values of your tagged resources for only 
    #            those resources that you tagged  that do not have the same value. 
    #            Also called "negated matching."</p>
    #   @return [Array<Types::KeyValue>]
    class ProtectedResourceConditions < Struct.new(
      nil,
      :string_equals,
      :string_not_equals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The backup vault access policy document in JSON format.</p>
    #   @return [String]
    class PutBackupVaultAccessPolicyInput < Struct.new(
      nil,
      :backup_vault_name,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The Backup Vault Lock configuration that specifies the name of the backup
    #            vault it protects.</p>
    #   @return [String]
    # @!attribute min_retention_days
    #   <p>The Backup Vault Lock configuration that specifies the minimum retention
    #            period that the vault retains its recovery points. This setting can be useful if, for
    #            example, your organization's policies require you to retain certain data for at least seven
    #            years (2555 days).</p>
    #            <p>This parameter is required when a vault lock is created through CloudFormation;
    #            otherwise, this parameter is optional. If this parameter is not specified, Vault Lock will
    #            not enforce a minimum retention period.</p>
    #            <p>If this parameter is specified, any backup or copy job to the vault must have a
    #            lifecycle policy with a retention period equal to or longer than the minimum retention
    #            period. If the job's retention period is shorter than that minimum retention period, then
    #            the vault fails that backup or copy job, and you should either modify your lifecycle
    #            settings or use a different vault. The shortest minimum retention period
    #            you can specify is 1 day. Recovery points already saved in the vault prior to
    #            Vault Lock are not affected.</p>
    #   @return [Integer]
    # @!attribute max_retention_days
    #   <p>The Backup Vault Lock configuration that specifies the maximum retention
    #            period that the vault retains its recovery points. This setting can be useful if, for
    #            example, your organization's policies require you to destroy certain data after retaining
    #            it for four years (1460 days).</p>
    #            <p>If this parameter is not included, Vault Lock does not enforce a maximum retention
    #            period on the recovery points in the vault. If this parameter is included without a value,
    #            Vault Lock will not enforce a maximum retention period.</p>
    #            <p>If this parameter is specified, any backup or copy job to the vault must have a
    #            lifecycle policy with a retention period equal to or shorter than the maximum retention
    #            period. If the job's retention period is longer than that maximum retention period, then
    #            the vault fails the backup or copy job, and you should either modify your lifecycle
    #            settings or use a different vault. The longest maximum retention period
    #            you can specify is 36500 days (approximately 100 years).
    #            Recovery points already saved in the vault prior to
    #            Vault Lock are not affected.</p>
    #   @return [Integer]
    # @!attribute changeable_for_days
    #   <p>The Backup Vault Lock configuration that specifies the number of days before
    #            the lock date. For example, setting <code>ChangeableForDays</code> to 30 on Jan. 1, 2022 at
    #            8pm UTC will set the lock date to Jan. 31, 2022 at 8pm UTC.</p>
    #            <p>Backup enforces a 72-hour cooling-off period before Vault Lock takes effect
    #            and becomes immutable. Therefore, you must set <code>ChangeableForDays</code> to 3 or
    #            greater.</p>
    #            <p>Before the lock date, you can delete Vault Lock from the vault using
    #               <code>DeleteBackupVaultLockConfiguration</code> or change the Vault Lock configuration
    #            using <code>PutBackupVaultLockConfiguration</code>. On and after the lock date, the Vault
    #            Lock becomes immutable and cannot be changed or deleted.</p>
    #            <p>If this parameter is not specified, you can delete Vault Lock from the vault using
    #               <code>DeleteBackupVaultLockConfiguration</code> or change the Vault Lock configuration
    #            using <code>PutBackupVaultLockConfiguration</code> at any time.</p>
    #   @return [Integer]
    class PutBackupVaultLockConfigurationInput < Struct.new(
      nil,
      :backup_vault_name,
      :min_retention_days,
      :max_retention_days,
      :changeable_for_days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events; for
    #            example, <code>arn:aws:sns:us-west-2:111122223333:MyVaultTopic</code>.</p>
    #   @return [String]
    # @!attribute backup_vault_events
    #   <p>An array of events that indicate the status of jobs to back up resources to the backup
    #            vault. For the list of supported events, common use cases, and code samples, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-notifications.html">Notification options
    #               with Backup</a>.</p>
    #   @return [Array<String>]
    class PutBackupVaultNotificationsInput < Struct.new(
      nil,
      :backup_vault_name,
      :sns_topic_arn,
      :backup_vault_events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_job_id
    #   <p>This is a unique identifier of a restore job within Backup.</p>
    #   @return [String]
    # @!attribute validation_status
    #   <p>The status of your restore validation.</p>
    #   @return [String]
    # @!attribute validation_status_message
    #   <p>This is an optional message string you can input to 
    #            describe the validation status for the restore test validation.</p>
    #   @return [String]
    class PutRestoreValidationResultInput < Struct.new(
      nil,
      :restore_job_id,
      :validation_status,
      :validation_status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about the recovery points stored in a backup vault.</p>
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute backup_vault_arn
    #   <p>An ARN that uniquely identifies a backup vault; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute source_backup_vault_arn
    #   <p>The backup vault where the recovery point was originally copied from. If the recovery
    #            point is restored to the same account this value will be <code>null</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
    #            resource type.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource saved as a recovery point; for example, an
    #               Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database. For Windows Volume Shadow Copy Service (VSS) backups, the only
    #            supported resource type is Amazon EC2.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Contains identifying information about the creation of a recovery point, including the
    #               <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
    #            and <code>BackupRuleId</code> of the backup plan that is used to create it.</p>
    #   @return [Types::RecoveryPointCreator]
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A status code specifying the state of the recovery point.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message explaining the current status of the recovery point.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a recovery point is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute initiation_date
    #   <p>The date and time when the backup job that created this recovery point was initiated, in
    #            Unix format and Coordinated Universal Time (UTC).</p>
    #   @return [Time]
    # @!attribute completion_date
    #   <p>The date and time a job to restore a recovery point is completed, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of a backup.</p>
    #   @return [Integer]
    # @!attribute calculated_lifecycle
    #   <p>A <code>CalculatedLifecycle</code> object containing <code>DeleteAt</code> and
    #               <code>MoveToColdStorageAt</code> timestamps.</p>
    #   @return [Types::CalculatedLifecycle]
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    #            <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature 
    #            availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #   @return [Types::Lifecycle]
    # @!attribute encryption_key_arn
    #   <p>The server-side encryption key that is used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #   @return [String]
    # @!attribute is_encrypted
    #   <p>A Boolean value that is returned as <code>TRUE</code> if the specified recovery point is
    #            encrypted, or <code>FALSE</code> if the recovery point is not encrypted.</p>
    #   @return [Boolean]
    # @!attribute last_restore_time
    #   <p>The date and time a recovery point was last restored, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>LastRestoreTime</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute parent_recovery_point_arn
    #   <p>The Amazon Resource Name (ARN) of the parent (composite) 
    #            recovery point.</p>
    #   @return [String]
    # @!attribute composite_member_identifier
    #   <p>The identifier of a resource within a composite group, such as 
    #            nested (child) recovery point belonging to a composite (parent) stack. The 
    #            ID is transferred from 
    #            the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html#resources-section-structure-syntax">
    #               logical ID</a> within a stack.</p>
    #   @return [String]
    # @!attribute is_parent
    #   <p>This is a boolean value indicating this is 
    #            a parent (composite) recovery point.</p>
    #   @return [Boolean]
    # @!attribute resource_name
    #   <p>The non-unique name of the resource that 
    #            belongs to the specified backup.</p>
    #   @return [String]
    # @!attribute vault_type
    #   <p>The type of vault in which the described recovery point is stored.</p>
    #   @return [String]
    # @!attribute index_status
    #   <p>This is the current status for the backup index associated 
    #            with the specified recovery point.</p>
    #            <p>Statuses are: <code>PENDING</code> | <code>ACTIVE</code> | <code>FAILED</code> |
    #            <code>DELETING</code>
    #            </p>
    #            <p>A recovery point with an index that has the status of <code>ACTIVE</code> 
    #            can be included in a search.</p>
    #   @return [String]
    # @!attribute index_status_message
    #   <p>A string in the form of a detailed message explaining the status of a backup index associated 
    #            with the recovery point.</p>
    #   @return [String]
    class RecoveryPointByBackupVault < Struct.new(
      nil,
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
      :index_status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_encrypted] = false unless options.key?(:is_encrypted)
        options[:is_parent] = false unless options.key?(:is_parent)
        super
      end
    end

    # <p>Contains detailed information about a saved recovery point.</p>
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a recovery point is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>A status code specifying the state of the recovery point.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message explaining the current status of the recovery point.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The server-side encryption key that is used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #   @return [String]
    # @!attribute backup_size_bytes
    #   <p>The size, in bytes, of a backup.</p>
    #   @return [Integer]
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute is_parent
    #   <p>This is a boolean value indicating this is 
    #            a parent (composite) recovery point.</p>
    #   @return [Boolean]
    # @!attribute parent_recovery_point_arn
    #   <p>The Amazon Resource Name (ARN) of the parent (composite) 
    #            recovery point.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The non-unique name of the resource that 
    #            belongs to the specified backup.</p>
    #   @return [String]
    # @!attribute vault_type
    #   <p>The type of vault in which the described recovery point is 
    #            stored.</p>
    #   @return [String]
    # @!attribute index_status
    #   <p>This is the current status for the backup index associated 
    #            with the specified recovery point.</p>
    #            <p>Statuses are: <code>PENDING</code> | <code>ACTIVE</code> | <code>FAILED</code> | <code>DELETING</code>
    #            </p>
    #            <p>A recovery point with an index that has the status of <code>ACTIVE</code> 
    #            can be included in a search.</p>
    #   @return [String]
    # @!attribute index_status_message
    #   <p>A string in the form of a detailed message explaining the status of a backup index
    #            associated with the recovery point.</p>
    #   @return [String]
    class RecoveryPointByResource < Struct.new(
      nil,
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
      :index_status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_parent] = false unless options.key?(:is_parent)
        super
      end
    end

    # <p>Contains information about the backup plan and rule that Backup used to
    #          initiate the recovery point backup.</p>
    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #   @return [String]
    # @!attribute backup_plan_version
    #   <p>Version IDs are unique, randomly generated, Unicode, UTF-8 encoded strings that are at
    #            most 1,024 bytes long. They cannot be edited.</p>
    #   @return [String]
    # @!attribute backup_rule_id
    #   <p>Uniquely identifies a rule used to schedule the backup of a selection of
    #            resources.</p>
    #   @return [String]
    class RecoveryPointCreator < Struct.new(
      nil,
      :backup_plan_id,
      :backup_plan_arn,
      :backup_plan_version,
      :backup_rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is a recovery point which is a child (nested) recovery point 
    #          of a parent (composite) recovery point. These recovery points 
    #          can be disassociated from their parent (composite) recovery 
    #          point, in which case they will no longer be a member.</p>
    # @!attribute recovery_point_arn
    #   <p>The Amazon Resource Name (ARN) of the parent (composite) 
    #            recovery point.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies 
    #            a saved resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The Amazon Web Services resource type that is saved as 
    #         a recovery point.</p>
    #   @return [String]
    # @!attribute backup_vault_name
    #   <p>The name of the backup vault 
    #            (the logical container in which backups are stored).</p>
    #   @return [String]
    class RecoveryPointMember < Struct.new(
      nil,
      :recovery_point_arn,
      :resource_arn,
      :resource_type,
      :backup_vault_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This specifies criteria to assign 
    #          a set of resources, such as resource types or backup vaults.</p>
    # @!attribute vault_names
    #   <p>These are the names of the vaults in which the selected 
    #            recovery points are contained.</p>
    #   @return [Array<String>]
    # @!attribute resource_identifiers
    #   <p>These are the resources included in the resource selection 
    #            (including type of resources and vaults).</p>
    #   @return [Array<String>]
    # @!attribute date_range
    #   <p>This is a resource filter containing FromDate: DateTime 
    #            and ToDate: DateTime. Both values are required. Future DateTime 
    #            values are not permitted.</p>
    #            <p>The date and time are in Unix format and Coordinated 
    #            Universal Time (UTC), and it is accurate to milliseconds 
    #            ((milliseconds are optional). 
    #            For example, the value 1516925490.087 represents Friday, January 
    #            26, 2018 12:11:30.087 AM.</p>
    #   @return [Types::DateRange]
    class RecoveryPointSelection < Struct.new(
      nil,
      :vault_names,
      :resource_identifiers,
      :date_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information from your report plan about where to deliver your reports,
    #          specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your
    #          reports.</p>
    # @!attribute s3_bucket_name
    #   <p>The unique name of the S3 bucket that receives your reports.</p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p>The prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path:
    #               s3://your-bucket-name/<code>prefix</code>/Backup/us-west-2/year/month/day/report-name.
    #            If not specified, there is no prefix.</p>
    #   @return [String]
    # @!attribute formats
    #   <p>The format of your reports: <code>CSV</code>, <code>JSON</code>, or both. If
    #            not specified, the default format is <code>CSV</code>.</p>
    #   @return [Array<String>]
    class ReportDeliveryChannel < Struct.new(
      nil,
      :s3_bucket_name,
      :s3_key_prefix,
      :formats,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information from your report job about your report destination.</p>
    # @!attribute s3_bucket_name
    #   <p>The unique name of the Amazon S3 bucket that receives your reports.</p>
    #   @return [String]
    # @!attribute s3_keys
    #   <p>The object key that uniquely identifies your reports in your S3 bucket.</p>
    #   @return [Array<String>]
    class ReportDestination < Struct.new(
      nil,
      :s3_bucket_name,
      :s3_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about a report job. A report job compiles a report based
    #          on a report plan and publishes it to Amazon S3.</p>
    # @!attribute report_job_id
    #   <p>The identifier for a report job. A unique, randomly generated, Unicode, UTF-8 encoded
    #            string that is at most 1,024 bytes long. Report job IDs cannot be edited.</p>
    #   @return [String]
    # @!attribute report_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    # @!attribute report_template
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are: </p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time that a report job is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>The date and time that a report job is completed, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CompletionTime</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of a report job. The statuses are:</p>
    #            <p>
    #               <code>CREATED | RUNNING | COMPLETED | FAILED</code>
    #            </p>
    #            <p>
    #               <code>COMPLETED</code> means that the report is available for your review at your
    #            designated destination. If the status is <code>FAILED</code>, review the
    #               <code>StatusMessage</code> for the reason.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message explaining the status of the report job.</p>
    #   @return [String]
    # @!attribute report_destination
    #   <p>The S3 bucket name and S3 keys for the destination where the report job publishes the
    #            report.</p>
    #   @return [Types::ReportDestination]
    class ReportJob < Struct.new(
      nil,
      :report_job_id,
      :report_plan_arn,
      :report_template,
      :creation_time,
      :completion_time,
      :status,
      :status_message,
      :report_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about a report plan.</p>
    # @!attribute report_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    # @!attribute report_plan_name
    #   <p>The unique name of the report plan. This name is between 1 and 256 characters starting
    #            with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores
    #            (_).</p>
    #   @return [String]
    # @!attribute report_plan_description
    #   <p>An optional description of the report plan with a maximum 1,024 characters.</p>
    #   @return [String]
    # @!attribute report_setting
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #            <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
    #               <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
    #            coverage by Amazon Web Services Regions and frameworks.</p>
    #   @return [Types::ReportSetting]
    # @!attribute report_delivery_channel
    #   <p>Contains information about where and how to deliver your reports, specifically your
    #               Amazon S3 bucket name, S3 key prefix, and the formats of your reports.</p>
    #   @return [Types::ReportDeliveryChannel]
    # @!attribute deployment_status
    #   <p>The deployment status of a report plan. The statuses are:</p>
    #            <p>
    #               <code>CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS |
    #            COMPLETED</code>
    #            </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time that a report plan is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute last_attempted_execution_time
    #   <p>The date and time that a report job associated with this report plan last attempted to
    #            run, in Unix format and Coordinated Universal Time (UTC). The value of
    #               <code>LastAttemptedExecutionTime</code> is accurate to milliseconds. For example, the
    #            value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute last_successful_execution_time
    #   <p>The date and time that a report job associated with this report plan last successfully
    #            ran, in Unix format and Coordinated Universal Time (UTC). The value of
    #               <code>LastSuccessfulExecutionTime</code> is accurate to milliseconds. For example, the
    #            value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    class ReportPlan < Struct.new(
      nil,
      :report_plan_arn,
      :report_plan_name,
      :report_plan_description,
      :report_setting,
      :report_delivery_channel,
      :deployment_status,
      :creation_time,
      :last_attempted_execution_time,
      :last_successful_execution_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed information about a report setting.</p>
    # @!attribute report_template
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #   @return [String]
    # @!attribute framework_arns
    #   <p>The Amazon Resource Names (ARNs) of the frameworks a report covers.</p>
    #   @return [Array<String>]
    # @!attribute number_of_frameworks
    #   <p>The number of frameworks a report covers.</p>
    #   @return [Integer]
    # @!attribute accounts
    #   <p>These are the accounts to be included in the report.</p>
    #            <p>Use string value of <code>ROOT</code> to include all organizational units.</p>
    #   @return [Array<String>]
    # @!attribute organization_units
    #   <p>These are the Organizational Units to be included in the report.</p>
    #   @return [Array<String>]
    # @!attribute regions
    #   <p>These are the Regions to be included in the report.</p>
    #            <p>Use the wildcard as the string value to include all Regions.</p>
    #   @return [Array<String>]
    class ReportSetting < Struct.new(
      nil,
      :report_template,
      :framework_arns,
      :number_of_frameworks,
      :accounts,
      :organization_units,
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_frameworks] = 0 unless options.key?(:number_of_frameworks)
        super
      end
    end

    # <p>A resource that is required for the action doesn't exist.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    # @!attribute context
    #   <p></p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a restore access backup vault.</p>
    # @!attribute restore_access_backup_vault_arn
    #   <p>The ARN of the restore access backup vault.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time when the restore access backup vault was created.</p>
    #   @return [Time]
    # @!attribute approval_date
    #   <p>The date and time when the restore access backup vault was approved.</p>
    #   @return [Time]
    # @!attribute vault_state
    #   <p>The current state of the restore access backup vault.</p>
    #   @return [String]
    # @!attribute latest_revoke_request
    #   <p>Information about the latest request to revoke access to this backup vault.</p>
    #   @return [Types::LatestRevokeRequest]
    class RestoreAccessBackupVaultListMember < Struct.new(
      nil,
      :restore_access_backup_vault_arn,
      :creation_date,
      :approval_date,
      :vault_state,
      :latest_revoke_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the restore testing plan that 
    #          Backup used to initiate the restore job.</p>
    # @!attribute restore_testing_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies 
    #            a restore testing plan.</p>
    #   @return [String]
    class RestoreJobCreator < Struct.new(
      nil,
      :restore_testing_plan_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is a summary of restore jobs created 
    #          or running within the most recent 30 days.</p>
    #          <p>The returned summary may contain the following:  
    #          Region, Account, State, ResourceType, MessageCategory, 
    #          StartTime, EndTime, and Count of included jobs.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Regions within the job summary.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID that owns the jobs within the summary.</p>
    #   @return [String]
    # @!attribute state
    #   <p>This value is job count for jobs 
    #            with the specified state.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>This value is the job count for the specified resource type. 
    #            The request <code>GetSupportedResourceTypes</code> returns 
    #            strings for supported resource types.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The value as a number of jobs in a job summary.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The value of time in number format of a job start time.</p>
    #            <p>This value is the time in Unix format, Coordinated Universal Time (UTC), and accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The value of time in number format of a job end time.</p>
    #            <p>This value is the time in Unix format, Coordinated Universal Time (UTC), and accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    class RestoreJobSummary < Struct.new(
      nil,
      :region,
      :account_id,
      :state,
      :resource_type,
      :count,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # <p>Contains metadata about a restore job.</p>
    # @!attribute account_id
    #   <p>The account ID that owns the restore job.</p>
    #   @return [String]
    # @!attribute restore_job_id
    #   <p>Uniquely identifies the job that restores a recovery point.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a restore job is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute completion_date
    #   <p>The date and time a job to restore a recovery point is completed, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>A status code specifying the state of the job initiated by Backup to restore
    #            a recovery point.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A detailed message explaining the status of the job to restore a recovery point.</p>
    #   @return [String]
    # @!attribute percent_done
    #   <p>Contains an estimated percentage complete of a job at the time the job status was
    #            queried.</p>
    #   @return [String]
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of the restored resource.</p>
    #   @return [Integer]
    # @!attribute iam_role_arn
    #   <p>The IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute expected_completion_time_minutes
    #   <p>The amount of time in minutes that a job restoring a recovery point is expected to
    #            take.</p>
    #   @return [Integer]
    # @!attribute created_resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type of the listed restore jobs; for example, an Amazon Elastic Block Store
    #               (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.
    #            For Windows Volume Shadow Copy Service (VSS) backups, the only supported resource type is
    #               Amazon EC2.</p>
    #   @return [String]
    # @!attribute recovery_point_creation_date
    #   <p>The date on which a recovery point was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>Contains identifying information about the creation 
    #            of a restore job.</p>
    #   @return [Types::RestoreJobCreator]
    # @!attribute validation_status
    #   <p>The status of validation run on the indicated 
    #            restore job.</p>
    #   @return [String]
    # @!attribute validation_status_message
    #   <p>This describes the status of validation run on the 
    #            indicated restore job.</p>
    #   @return [String]
    # @!attribute deletion_status
    #   <p>This notes the status of the data generated by the restore 
    #            test. The status may be <code>Deleting</code>, <code>Failed</code>, 
    #            or <code>Successful</code>.</p>
    #   @return [String]
    # @!attribute deletion_status_message
    #   <p>This describes the restore job deletion status.</p>
    #   @return [String]
    class RestoreJobsListMember < Struct.new(
      nil,
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
      :resource_type,
      :recovery_point_creation_date,
      :created_by,
      :validation_status,
      :validation_status_message,
      :deletion_status,
      :deletion_status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This contains metadata about a restore testing plan.</p>
    # @!attribute recovery_point_selection
    #   <p>
    #               <code>RecoveryPointSelection</code> has five parameters (three required and two
    #            optional). The values you specify determine which recovery point is included in the restore
    #            test. You must indicate with <code>Algorithm</code> if you want the latest recovery point
    #            within your <code>SelectionWindowDays</code> or if you want a random recovery point, and
    #            you must indicate through <code>IncludeVaults</code> from which vaults the recovery points
    #            can be chosen.</p>
    #            <p>
    #               <code>Algorithm</code> (<i>required</i>) Valid values:
    #               "<code>LATEST_WITHIN_WINDOW</code>" or "<code>RANDOM_WITHIN_WINDOW</code>".</p>
    #            <p>
    #               <code>Recovery point types</code> (<i>required</i>) Valid values:
    #               "<code>SNAPSHOT</code>" and/or "<code>CONTINUOUS</code>". Include <code>SNAPSHOT</code>
    #            to restore only snapshot recovery points; include <code>CONTINUOUS</code> to restore
    #            continuous recovery points (point in time restore / PITR); use both to restore either a
    #            snapshot or a continuous recovery point. The recovery point will be determined by the value
    #            for <code>Algorithm</code>.</p>
    #            <p>
    #               <code>IncludeVaults</code> (<i>required</i>). You must include one or more
    #            backup vaults. Use the wildcard ["*"] or specific ARNs.</p>
    #            <p>
    #               <code>SelectionWindowDays</code> (<i>optional</i>) Value must be an
    #            integer (in days) from 1 to 365. If not included, the value defaults to
    #            <code>30</code>.</p>
    #            <p>
    #               <code>ExcludeVaults</code> (<i>optional</i>). You can choose to input one
    #            or more specific backup vault ARNs to exclude those vaults' contents from restore
    #            eligibility. Or, you can include a list of selectors. If this parameter and its value are
    #            not included, it defaults to empty list.</p>
    #   @return [Types::RestoreTestingRecoveryPointSelection]
    # @!attribute restore_testing_plan_name
    #   <p>The RestoreTestingPlanName is a unique string that is the name 
    #            of the restore testing plan. This cannot be changed after creation, 
    #            and it must consist of only alphanumeric characters and underscores.</p>
    #   @return [String]
    # @!attribute schedule_expression
    #   <p>A CRON expression in specified timezone when a restore 
    #            testing plan is executed. When no CRON expression is provided, Backup will use the default 
    #            expression <code>cron(0 5 ? * * *)</code>.</p>
    #   @return [String]
    # @!attribute schedule_expression_timezone
    #   <p>Optional. This is the timezone in which the schedule 
    #            expression is set. By default, ScheduleExpressions are in UTC. 
    #            You can modify this to a specified timezone.</p>
    #   @return [String]
    # @!attribute start_window_hours
    #   <p>Defaults to 24 hours.</p>
    #            <p>A value in hours after a 
    #            restore test is scheduled before a job will be canceled if it 
    #            doesn't start successfully. This value is optional. If this value 
    #            is included, this parameter has a maximum value of 168 hours 
    #            (one week).</p>
    #   @return [Integer]
    class RestoreTestingPlanForCreate < Struct.new(
      nil,
      :recovery_point_selection,
      :restore_testing_plan_name,
      :schedule_expression,
      :schedule_expression_timezone,
      :start_window_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_window_hours] = 0 unless options.key?(:start_window_hours)
        super
      end
    end

    # <p>This contains metadata about a restore testing plan.</p>
    # @!attribute creation_time
    #   <p>The date and time that a restore testing plan was created, 
    #            in Unix format and Coordinated Universal Time (UTC). The value of 
    #            <code>CreationTime</code> is accurate to milliseconds. For example, 
    #            the value 1516925490.087 represents Friday, January 26, 2018 
    #            12:11:30.087  AM.</p>
    #   @return [Time]
    # @!attribute creator_request_id
    #   <p>This identifies the request and allows failed requests to 
    #            be retried without the risk of running the operation twice. 
    #            If the request includes a <code>CreatorRequestId</code> that 
    #            matches an existing backup plan, that plan is returned. This 
    #            parameter is optional.</p>
    #            <p>If used, this parameter must 
    #               contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #   @return [String]
    # @!attribute last_execution_time
    #   <p>The last time a restore test was run with the specified 
    #            restore testing plan. A date and time, in Unix format and 
    #            Coordinated Universal Time (UTC). The value of 
    #            <code>LastExecutionDate</code> is accurate to milliseconds. 
    #            For example, the value  1516925490.087 represents Friday, 
    #            January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The date and time that the restore testing plan was updated. 
    #            This update is in Unix format and Coordinated Universal Time (UTC). 
    #            The value of <code>LastUpdateTime</code> is accurate to milliseconds. 
    #            For example, the value  1516925490.087 represents Friday, 
    #            January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute recovery_point_selection
    #   <p>The specified criteria to assign a set of resources, such as 
    #            recovery point types or backup vaults.</p>
    #   @return [Types::RestoreTestingRecoveryPointSelection]
    # @!attribute restore_testing_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies 
    #            a restore testing plan.</p>
    #   @return [String]
    # @!attribute restore_testing_plan_name
    #   <p>The restore testing plan name.</p>
    #   @return [String]
    # @!attribute schedule_expression
    #   <p>A CRON expression in specified timezone when a restore 
    #            testing plan is executed. When no CRON expression is provided, Backup will use the default 
    #            expression <code>cron(0 5 ? * * *)</code>.</p>
    #   @return [String]
    # @!attribute schedule_expression_timezone
    #   <p>Optional. This is the timezone in which the schedule 
    #            expression is set. By default, ScheduleExpressions are in UTC. 
    #            You can modify this to a specified timezone.</p>
    #   @return [String]
    # @!attribute start_window_hours
    #   <p>Defaults to 24 hours.</p>
    #            <p>A value in hours after a 
    #            restore test is scheduled before a job will be canceled if it 
    #            doesn't start successfully. This value is optional. If this value 
    #            is included, this parameter has a maximum value of 168 hours 
    #            (one week).</p>
    #   @return [Integer]
    class RestoreTestingPlanForGet < Struct.new(
      nil,
      :creation_time,
      :creator_request_id,
      :last_execution_time,
      :last_update_time,
      :recovery_point_selection,
      :restore_testing_plan_arn,
      :restore_testing_plan_name,
      :schedule_expression,
      :schedule_expression_timezone,
      :start_window_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_window_hours] = 0 unless options.key?(:start_window_hours)
        super
      end
    end

    # <p>This contains metadata about a restore testing plan.</p>
    # @!attribute creation_time
    #   <p>The date and time that a restore testing plan was created, 
    #            in Unix format and Coordinated Universal Time (UTC). The value 
    #            of <code>CreationTime</code> is accurate to milliseconds. For 
    #            example, the value 1516925490.087 represents Friday, January 26, 
    #            2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute last_execution_time
    #   <p>The last time a restore test was run with the specified 
    #            restore testing plan. A date and time, in Unix format and 
    #            Coordinated Universal Time (UTC). The value of 
    #            <code>LastExecutionDate</code> is accurate to milliseconds. 
    #            For example, the value 1516925490.087 represents Friday, 
    #            January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The date and time that the restore testing plan was updated. 
    #            This update is in Unix format and Coordinated Universal Time (UTC). 
    #            The value of <code>LastUpdateTime</code> is accurate to 
    #            milliseconds. For example, the value 1516925490.087 represents 
    #            Friday, January 26, 2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute restore_testing_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifiesa 
    #            restore testing plan.</p>
    #   @return [String]
    # @!attribute restore_testing_plan_name
    #   <p>The restore testing plan name.</p>
    #   @return [String]
    # @!attribute schedule_expression
    #   <p>A CRON expression in specified timezone when a restore testing plan is executed. When no
    #            CRON expression is provided, Backup will use the default expression
    #               <code>cron(0 5 ? * * *)</code>.</p>
    #   @return [String]
    # @!attribute schedule_expression_timezone
    #   <p>Optional. This is the timezone in which the schedule 
    #            expression is set. By default, ScheduleExpressions are in UTC. 
    #            You can modify this to a specified timezone.</p>
    #   @return [String]
    # @!attribute start_window_hours
    #   <p>Defaults to 24 hours.</p>
    #            <p>A value in hours after a restore test is scheduled before 
    #               a job will be canceled if it doesn't start successfully. This 
    #               value is optional. If this value is included, this parameter 
    #               has a maximum value of 168 hours (one week).</p>
    #   @return [Integer]
    class RestoreTestingPlanForList < Struct.new(
      nil,
      :creation_time,
      :last_execution_time,
      :last_update_time,
      :restore_testing_plan_arn,
      :restore_testing_plan_name,
      :schedule_expression,
      :schedule_expression_timezone,
      :start_window_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_window_hours] = 0 unless options.key?(:start_window_hours)
        super
      end
    end

    # <p>This contains metadata about a restore testing plan.</p>
    # @!attribute recovery_point_selection
    #   <p>Required: <code>Algorithm</code>; <code>RecoveryPointTypes</code>; 
    #            <code>IncludeVaults</code> (<i>one or more</i>).</p>
    #            <p>Optional: <i>SelectionWindowDays</i> (<i>'30' if 
    #            not specified</i>); <code>ExcludeVaults</code> (defaults to empty 
    #            list if not listed).</p>
    #   @return [Types::RestoreTestingRecoveryPointSelection]
    # @!attribute schedule_expression
    #   <p>A CRON expression in specified timezone when a restore testing plan is executed. When no
    #            CRON expression is provided, Backup will use the default expression
    #               <code>cron(0 5 ? * * *)</code>.</p>
    #   @return [String]
    # @!attribute schedule_expression_timezone
    #   <p>Optional. This is the timezone in which the schedule 
    #            expression is set. By default, ScheduleExpressions are in UTC. 
    #            You can modify this to a specified timezone.</p>
    #   @return [String]
    # @!attribute start_window_hours
    #   <p>Defaults to 24 hours.</p>
    #            <p>A value in hours after a restore test is scheduled before a 
    #            job will be canceled if it doesn't start successfully. This value 
    #            is optional. If this value is included, this parameter has a 
    #            maximum value of 168 hours (one week).</p>
    #   @return [Integer]
    class RestoreTestingPlanForUpdate < Struct.new(
      nil,
      :recovery_point_selection,
      :schedule_expression,
      :schedule_expression_timezone,
      :start_window_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start_window_hours] = 0 unless options.key?(:start_window_hours)
        super
      end
    end

    # <p>
    #             <code>RecoveryPointSelection</code> has five parameters (three required and two
    #          optional). The values you specify determine which recovery point is included in the restore
    #          test. You must indicate with <code>Algorithm</code> if you want the latest recovery point
    #          within your <code>SelectionWindowDays</code> or if you want a random recovery point, and
    #          you must indicate through <code>IncludeVaults</code> from which vaults the recovery points
    #          can be chosen.</p>
    #          <p>
    #             <code>Algorithm</code> (<i>required</i>) Valid values:
    #          "<code>LATEST_WITHIN_WINDOW</code>" or "<code>RANDOM_WITHIN_WINDOW</code>".</p>
    #          <p>
    #             <code>Recovery point types</code> (<i>required</i>) Valid values:
    #          "<code>SNAPSHOT</code>" and/or "<code>CONTINUOUS</code>". Include <code>SNAPSHOT</code>
    #          to restore only snapshot recovery points; include <code>CONTINUOUS</code> to restore
    #          continuous recovery points (point in time restore / PITR); use both to restore either a
    #          snapshot or a continuous recovery point. The recovery point will be determined by the value
    #          for <code>Algorithm</code>.</p>
    #          <p>
    #             <code>IncludeVaults</code> (<i>required</i>). You must include one or more
    #          backup vaults. Use the wildcard ["*"] or specific ARNs.</p>
    #          <p>
    #             <code>SelectionWindowDays</code> (<i>optional</i>) Value must be an
    #          integer (in days) from 1 to 365. If not included, the value defaults to
    #          <code>30</code>.</p>
    #          <p>
    #             <code>ExcludeVaults</code> (<i>optional</i>). You can choose to input one
    #          or more specific backup vault ARNs to exclude those vaults' contents from restore
    #          eligibility. Or, you can include a list of selectors. If this parameter and its value are
    #          not included, it defaults to empty list.</p>
    # @!attribute algorithm
    #   <p>Acceptable values include "LATEST_WITHIN_WINDOW" or 
    #            "RANDOM_WITHIN_WINDOW"</p>
    #   @return [String]
    # @!attribute exclude_vaults
    #   <p>Accepted values include specific ARNs or list of selectors. 
    #            Defaults to empty list if not listed.</p>
    #   @return [Array<String>]
    # @!attribute include_vaults
    #   <p>Accepted values include wildcard ["*"] or by specific ARNs or 
    #            ARN wilcard replacement 
    #            ["arn:aws:backup:us-west-2:123456789012:backup-vault:asdf", ...] 
    #            ["arn:aws:backup:*:*:backup-vault:asdf-*", ...]</p>
    #   @return [Array<String>]
    # @!attribute recovery_point_types
    #   <p>These are the types of recovery points.</p>
    #            <p>Include <code>SNAPSHOT</code>
    #            to restore only snapshot recovery points; include <code>CONTINUOUS</code> to restore
    #            continuous recovery points (point in time restore / PITR); use both to restore either a
    #            snapshot or a continuous recovery point. The recovery point will be determined by the value
    #            for <code>Algorithm</code>.</p>
    #   @return [Array<String>]
    # @!attribute selection_window_days
    #   <p>Accepted values are integers from 1 to 365.</p>
    #   @return [Integer]
    class RestoreTestingRecoveryPointSelection < Struct.new(
      nil,
      :algorithm,
      :exclude_vaults,
      :include_vaults,
      :recovery_point_types,
      :selection_window_days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:selection_window_days] = 0 unless options.key?(:selection_window_days)
        super
      end
    end

    # <p>This contains metadata about a specific restore testing selection.</p>
    #          <p>ProtectedResourceType is required, such as Amazon EBS or 
    #          Amazon EC2.</p>
    #          <p>This consists of <code>RestoreTestingSelectionName</code>,
    #          <code>ProtectedResourceType</code>, and one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ProtectedResourceArns</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ProtectedResourceConditions</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Each protected resource type can have one single value.</p>
    #          <p>A restore testing selection can include a wildcard value ("*") for
    #          <code>ProtectedResourceArns</code> along with <code>ProtectedResourceConditions</code>.
    #          Alternatively, you can include up to 30 specific protected resource ARNs in
    #          <code>ProtectedResourceArns</code>.</p>
    #          <p>
    #             <code>ProtectedResourceConditions</code> examples include as <code>StringEquals</code> 
    #          and <code>StringNotEquals</code>.</p>
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that 
    #            Backup uses to create the target resource; 
    #            for example: <code>arn:aws:iam::123456789012:role/S3Access</code>.
    #         </p>
    #   @return [String]
    # @!attribute protected_resource_arns
    #   <p>Each protected resource can be filtered by its specific ARNs, such as 
    #            <code>ProtectedResourceArns: ["arn:aws:...", "arn:aws:..."]</code> 
    #            or by a wildcard: <code>ProtectedResourceArns: ["*"]</code>, 
    #            but not both.</p>
    #   @return [Array<String>]
    # @!attribute protected_resource_conditions
    #   <p>If you have included the wildcard in ProtectedResourceArns, 
    #            you can include resource conditions, such as 
    #            <code>ProtectedResourceConditions: {    StringEquals: [{ key: "XXXX", 
    #               value: "YYYY" }]</code>.</p>
    #   @return [Types::ProtectedResourceConditions]
    # @!attribute protected_resource_type
    #   <p>The type of Amazon Web Services resource included in a restore 
    #            testing selection; for example, an Amazon EBS volume or 
    #            an Amazon RDS database.</p>
    #            <p>Supported resource types accepted include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon S3</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute restore_metadata_overrides
    #   <p>You can override certain restore metadata keys by including the parameter
    #               <code>RestoreMetadataOverrides</code> in the body of
    #               <code>RestoreTestingSelection</code>. Key values are not case sensitive.</p>
    #            <p>See the complete list of <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html">restore testing
    #               inferred metadata</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute restore_testing_selection_name
    #   <p>The unique name of the restore testing selection 
    #            that belongs to the related restore testing plan.</p>
    #   @return [String]
    # @!attribute validation_window_hours
    #   <p>This is amount of hours (0 to 168) available to run a validation script on the data. The
    #            data will be deleted upon the completion of the validation script or the end of the
    #            specified retention period, whichever comes first.</p>
    #   @return [Integer]
    class RestoreTestingSelectionForCreate < Struct.new(
      nil,
      :iam_role_arn,
      :protected_resource_arns,
      :protected_resource_conditions,
      :protected_resource_type,
      :restore_metadata_overrides,
      :restore_testing_selection_name,
      :validation_window_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:validation_window_hours] = 0 unless options.key?(:validation_window_hours)
        super
      end
    end

    # <p>This contains metadata about a restore testing selection.</p>
    # @!attribute creation_time
    #   <p>The date and time that a restore testing selection was created, 
    #            in Unix format and Coordinated Universal Time (UTC). The value of 
    #            <code>CreationTime</code> is accurate to milliseconds. For example, 
    #            the value 1516925490.087 represents Friday, January 26, 
    #            201812:11:30.087  AM.</p>
    #   @return [Time]
    # @!attribute creator_request_id
    #   <p>This identifies the request and allows failed requests to 
    #            be retried without the risk of running the operation twice. 
    #            If the request includes a <code>CreatorRequestId</code> that 
    #            matches an existing backup plan, that plan is returned. This 
    #            parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric 
    #            or '-_.' characters.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that 
    #            Backup uses to create the target resource; for 
    #            example:<code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute protected_resource_arns
    #   <p>You can include specific ARNs, such as 
    #            <code>ProtectedResourceArns: ["arn:aws:...", "arn:aws:..."]</code> 
    #            or you can include a wildcard: <code>ProtectedResourceArns: ["*"]</code>, 
    #            but not both.</p>
    #   @return [Array<String>]
    # @!attribute protected_resource_conditions
    #   <p>In a resource testing selection, this parameter filters by 
    #            specific conditions such as <code>StringEquals</code> or 
    #            <code>StringNotEquals</code>.</p>
    #   @return [Types::ProtectedResourceConditions]
    # @!attribute protected_resource_type
    #   <p>The type of Amazon Web Services resource included in a resource 
    #            testing selection; 
    #            for example, an Amazon EBS volume 
    #            or an Amazon RDS database.</p>
    #   @return [String]
    # @!attribute restore_metadata_overrides
    #   <p>You can override certain restore metadata keys by including the parameter
    #            <code>RestoreMetadataOverrides</code> in the body of
    #            <code>RestoreTestingSelection</code>. Key values are not case sensitive.</p>
    #            <p>See the complete list of <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html">restore testing
    #            inferred metadata</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute restore_testing_plan_name
    #   <p>The RestoreTestingPlanName is a unique string that is the name 
    #            of the restore testing plan.</p>
    #   @return [String]
    # @!attribute restore_testing_selection_name
    #   <p>The unique name of the restore testing selection that 
    #            belongs to the related restore testing plan.</p>
    #   @return [String]
    # @!attribute validation_window_hours
    #   <p>This is amount of hours (1 to 168) available to run a validation script on the data. The
    #            data will be deleted upon the completion of the validation script or the end of the
    #            specified retention period, whichever comes first.</p>
    #   @return [Integer]
    class RestoreTestingSelectionForGet < Struct.new(
      nil,
      :creation_time,
      :creator_request_id,
      :iam_role_arn,
      :protected_resource_arns,
      :protected_resource_conditions,
      :protected_resource_type,
      :restore_metadata_overrides,
      :restore_testing_plan_name,
      :restore_testing_selection_name,
      :validation_window_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:validation_window_hours] = 0 unless options.key?(:validation_window_hours)
        super
      end
    end

    # <p>This contains metadata about a restore testing selection.</p>
    # @!attribute creation_time
    #   <p>The date and time that a restore testing selection 
    #            was created, in Unix format and Coordinated Universal Time (UTC). 
    #            The value of <code>CreationTime</code> is accurate to milliseconds. 
    #            For example, the value 1516925490.087 represents Friday, 
    #            January 26,2018 12:11:30.087 AM.</p>
    #   @return [Time]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that 
    #            Backup uses to create the target resource; for example: 
    #            <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute protected_resource_type
    #   <p>The type of Amazon Web Services resource included in a restore 
    #            testing selection; for example, an 
    #            Amazon EBS volume or an
    #            Amazon RDS database.</p>
    #   @return [String]
    # @!attribute restore_testing_plan_name
    #   <p>Unique string that is the name of the restore testing plan.</p>
    #            <p>The name cannot be changed after creation. The name must 
    #            consist of only alphanumeric characters and underscores. 
    #            Maximum length is 50.</p>
    #   @return [String]
    # @!attribute restore_testing_selection_name
    #   <p>Unique name of a restore testing selection.</p>
    #   @return [String]
    # @!attribute validation_window_hours
    #   <p>This value represents the time, in hours, data is retained after 
    #            a restore test so that optional validation can be completed.</p>
    #            <p>Accepted value is an integer between 
    #            0 and 168 (the hourly equivalent of seven days).</p>
    #   @return [Integer]
    class RestoreTestingSelectionForList < Struct.new(
      nil,
      :creation_time,
      :iam_role_arn,
      :protected_resource_type,
      :restore_testing_plan_name,
      :restore_testing_selection_name,
      :validation_window_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:validation_window_hours] = 0 unless options.key?(:validation_window_hours)
        super
      end
    end

    # <p>This contains metadata about a restore testing selection.</p>
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that 
    #            Backup uses to create the target resource; for example: 
    #            <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute protected_resource_arns
    #   <p>You can include a list of specific ARNs, such as 
    #            <code>ProtectedResourceArns: ["arn:aws:...", "arn:aws:..."]</code> 
    #            or you can include a wildcard: <code>ProtectedResourceArns: ["*"]</code>, 
    #            but not both.</p>
    #   @return [Array<String>]
    # @!attribute protected_resource_conditions
    #   <p>The conditions that you define for resources in 
    #            your restore testing plan using tags.</p>
    #   @return [Types::ProtectedResourceConditions]
    # @!attribute restore_metadata_overrides
    #   <p>You can override certain restore metadata keys by including the parameter
    #            <code>RestoreMetadataOverrides</code> in the body of
    #            <code>RestoreTestingSelection</code>. Key values are not case sensitive.</p>
    #            <p>See the complete list of <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html">restore testing
    #            inferred metadata</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute validation_window_hours
    #   <p>This value represents the time, in hours, data is retained after 
    #            a restore test so that optional validation can be completed.</p>
    #            <p>Accepted value is an integer between 
    #            0 and 168 (the hourly equivalent of seven days).</p>
    #   @return [Integer]
    class RestoreTestingSelectionForUpdate < Struct.new(
      nil,
      :iam_role_arn,
      :protected_resource_arns,
      :protected_resource_conditions,
      :restore_metadata_overrides,
      :validation_window_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:validation_window_hours] = 0 unless options.key?(:validation_window_hours)
        super
      end
    end

    # @!attribute backup_vault_name
    #   <p>The name of the source backup vault associated with the restore access backup vault to be revoked.</p>
    #   @return [String]
    # @!attribute restore_access_backup_vault_arn
    #   <p>The ARN of the restore access backup vault to revoke.</p>
    #   @return [String]
    # @!attribute requester_comment
    #   <p>A comment explaining the reason for revoking access to the restore access backup vault.</p>
    #   @return [String]
    class RevokeRestoreAccessBackupVaultInput < Struct.new(
      nil,
      :backup_vault_name,
      :restore_access_backup_vault_arn,
      :requester_comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed due to a temporary failure of the server.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute type
    #   <p></p>
    #   @return [String]
    # @!attribute context
    #   <p></p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartBackupJob</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #   @return [String]
    # @!attribute start_window_minutes
    #   <p>A value in minutes after a backup is scheduled before a job will be canceled if it
    #            doesn't start successfully. This value is optional, and the default is 8 hours. 
    #            If this value is included, it must be at least 60 minutes to avoid errors.</p>
    #            <p>This parameter has a maximum value of 100 years (52,560,000 minutes).</p>
    #            <p>During the start window, the backup job status remains in <code>CREATED</code> status until it 
    #            has successfully begun or until the start window time has run out. If within the start 
    #            window time Backup receives an error that allows the job to be retried, 
    #            Backup will automatically retry to begin the job at least every 10 minutes 
    #            until the backup 
    #            successfully begins (the job status changes to <code>RUNNING</code>) or until the job status 
    #            changes to <code>EXPIRED</code> (which is expected to occur when the start window time is over).</p>
    #   @return [Integer]
    # @!attribute complete_window_minutes
    #   <p>A value in minutes during which a successfully started backup must complete, or else
    #               Backup will cancel the job. This value is optional. This value begins
    #            counting down from when the backup was scheduled. It does not add additional time for
    #               <code>StartWindowMinutes</code>, or if the backup started later than scheduled.</p>
    #            <p>Like <code>StartWindowMinutes</code>, this parameter has a maximum value of 
    #            100 years (52,560,000 minutes).</p>
    #   @return [Integer]
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup will transition and expire backups automatically according
    #            to the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    #            <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature 
    #            availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #            <p>This parameter has a maximum value of 100 years (36,500 days).</p>
    #   @return [Types::Lifecycle]
    # @!attribute recovery_point_tags
    #   <p>The tags to assign to the resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute backup_options
    #   <p>The backup option for a selected resource. This option is only available for
    #            Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
    #            <p>Valid values: Set to <code>"WindowsVSS":"enabled"</code> to enable the
    #            <code>WindowsVSS</code> backup option and create a Windows VSS backup. Set to
    #            <code>"WindowsVSS""disabled"</code> to create a regular backup. The
    #            <code>WindowsVSS</code> option is not enabled by default.</p>
    #   @return [Hash<String, String>]
    # @!attribute index
    #   <p>Include this parameter to enable index creation if your backup 
    #            job has a resource type that supports backup indexes.</p>
    #            <p>Resource types that support backup indexes include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon Simple Storage Service (Amazon S3)</p>
    #               </li>
    #            </ul>
    #            <p>Index can have 1 of 2 possible values, either <code>ENABLED</code> or 
    #            <code>DISABLED</code>.</p>
    #            <p>To create a backup index for an eligible <code>ACTIVE</code> recovery point 
    #            that does not yet have a backup index, set value to <code>ENABLED</code>.</p>
    #            <p>To delete a backup index, set value to <code>DISABLED</code>.</p>
    #   @return [String]
    class StartBackupJobInput < Struct.new(
      nil,
      :backup_vault_name,
      :resource_arn,
      :iam_role_arn,
      :idempotency_token,
      :start_window_minutes,
      :complete_window_minutes,
      :lifecycle,
      :recovery_point_tags,
      :backup_options,
      :index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>
    #               <i>Note: This field is only returned for Amazon EFS and Advanced DynamoDB 
    #            resources.</i>
    #            </p>
    #            <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that a backup job is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute is_parent
    #   <p>This is a returned boolean value indicating this is a parent (composite) 
    #            backup job.</p>
    #   @return [Boolean]
    class StartBackupJobOutput < Struct.new(
      nil,
      :backup_job_id,
      :recovery_point_arn,
      :creation_date,
      :is_parent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_parent] = false unless options.key?(:is_parent)
        super
      end
    end

    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point to use for the copy job; for example,
    #            arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
    #         </p>
    #   @return [String]
    # @!attribute source_backup_vault_name
    #   <p>The name of a logical source container where backups are stored. Backup vaults are
    #            identified by names that are unique to the account used to create them and the Amazon Web Services Region where they are created.</p>
    #   @return [String]
    # @!attribute destination_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a destination backup vault to
    #            copy to; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to copy the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartCopyJob</code>. Retrying a successful request with the same idempotency
    #            token results in a success message with no action taken.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>Specifies the time period, in days, before a recovery point transitions to cold storage 
    #            or is deleted.</p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, on the console, the retention setting must be 90 days greater than the
    #            transition to cold after days setting. The transition to cold after days setting can't
    #            be changed after a backup has been transitioned to cold.</p>
    #            <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature 
    #            availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #            <p>To remove the existing lifecycle and retention periods and keep your recovery points indefinitely, 
    #            specify -1 for <code>MoveToColdStorageAfterDays</code> and <code>DeleteAfterDays</code>.</p>
    #   @return [Types::Lifecycle]
    class StartCopyJobInput < Struct.new(
      nil,
      :recovery_point_arn,
      :source_backup_vault_name,
      :destination_backup_vault_arn,
      :iam_role_arn,
      :idempotency_token,
      :lifecycle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute copy_job_id
    #   <p>Uniquely identifies a copy job.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time that a copy job is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute is_parent
    #   <p>This is a returned boolean value indicating this is a parent (composite) 
    #            copy job.</p>
    #   @return [Boolean]
    class StartCopyJobOutput < Struct.new(
      nil,
      :copy_job_id,
      :creation_date,
      :is_parent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_parent] = false unless options.key?(:is_parent)
        super
      end
    end

    # @!attribute report_plan_name
    #   <p>The unique name of a report plan.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartReportJobInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #   @return [String]
    class StartReportJobInput < Struct.new(
      nil,
      :report_plan_name,
      :idempotency_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_job_id
    #   <p>The identifier of the report job. A unique, randomly generated, Unicode, UTF-8 encoded
    #            string that is at most 1,024 bytes long. The report job ID cannot be edited.</p>
    #   @return [String]
    class StartReportJobOutput < Struct.new(
      nil,
      :report_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A set of metadata key-value pairs.</p>
    #            <p>You can get configuration metadata about a resource at the time it was backed up by
    #            calling <code>GetRecoveryPointRestoreMetadata</code>. However, values in addition to those
    #            provided by <code>GetRecoveryPointRestoreMetadata</code> might be required to restore a
    #            resource. For example, you might need to provide a new resource name if the original
    #            already exists.</p>
    #            <p>For more information about the metadata for each resource, see the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-aur.html#aur-restore-cli">Metadata for Amazon Aurora</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-docdb.html#docdb-restore-cli">Metadata for Amazon DocumentDB</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-application-stacks.html#restoring-cfn-cli">Metadata for CloudFormation</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-dynamodb.html#ddb-restore-cli">Metadata for Amazon DynamoDB</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-ebs.html#ebs-restore-cli">
    #                  Metadata for Amazon EBS</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-ec2.html#restoring-ec2-cli">Metadata for Amazon EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-efs.html#efs-restore-cli">Metadata for Amazon EFS</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-fsx.html#fsx-restore-cli">Metadata for Amazon FSx</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-nep.html#nep-restore-cli">Metadata for Amazon Neptune</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-rds.html#rds-restore-cli">Metadata for Amazon RDS</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/redshift-restores.html#redshift-restore-api">Metadata for Amazon Redshift</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-storage-gateway.html#restoring-sgw-cli">Metadata for Storage Gateway</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-s3.html#s3-restore-cli">Metadata for Amazon S3</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/timestream-restore.html#timestream-restore-api">Metadata for Amazon Timestream</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/restoring-vm.html#vm-restore-cli">Metadata for virtual machines</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Backup uses to create
    #            the target resource; for example:
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartRestoreJob</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Starts a job to restore a recovery point for one of the following resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> - Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> - Amazon DocumentDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CloudFormation</code> - CloudFormation</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> - Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> - Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> - Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> - Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> - Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> - Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> - Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Redshift</code> - Amazon Redshift</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> - Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> - Amazon Simple Storage Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Timestream</code> - Amazon Timestream</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> - Virtual machines</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute copy_source_tags_to_restored_resource
    #   <p>This is an optional parameter. If this equals <code>True</code>, tags included in the backup
    #         will be copied to the restored resource.</p>
    #            <p>This can only be applied to backups created through Backup.</p>
    #   @return [Boolean]
    class StartRestoreJobInput < Struct.new(
      nil,
      :recovery_point_arn,
      :metadata,
      :iam_role_arn,
      :idempotency_token,
      :resource_type,
      :copy_source_tags_to_restored_resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_job_id
    #   <p>Uniquely identifies the job that restores a recovery point.</p>
    #   @return [String]
    class StartRestoreJobOutput < Struct.new(
      nil,
      :restore_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #   @return [String]
    class StopBackupJobInput < Struct.new(
      nil,
      :backup_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN that uniquely identifies the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that are used to help organize your resources. You can assign your own
    #            metadata to the resources you create. For clarity, this is the structure to assign tags:
    #               <code>[{"Key":"string","Value":"string"}]</code>.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the type of
    #            the tagged resource.</p>
    #            <p>ARNs that do not include <code>backup</code> are incompatible with tagging. 
    #            <code>TagResource</code> and <code>UntagResource</code> with invalid ARNs will 
    #            result in an error. Acceptable ARN content can include 
    #            <code>arn:aws:backup:us-east</code>. Invalid ARN content may look like 
    #            <code>arn:aws:ec2:us-east</code>.</p>
    #   @return [String]
    # @!attribute tag_key_list
    #   <p>The keys to identify which key-value tags to remove from a resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_key_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>The ID of the backup plan.</p>
    #   @return [String]
    # @!attribute backup_plan
    #   <p>The body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    #   @return [Types::BackupPlanInput]
    class UpdateBackupPlanInput < Struct.new(
      nil,
      :backup_plan_id,
      :backup_plan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #   @return [String]
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time a backup plan is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version Ids cannot be edited.</p>
    #   @return [String]
    # @!attribute advanced_backup_settings
    #   <p>Contains a list of <code>BackupOptions</code> for each resource type.</p>
    #   @return [Array<Types::AdvancedBackupSetting>]
    class UpdateBackupPlanOutput < Struct.new(
      nil,
      :backup_plan_id,
      :backup_plan_arn,
      :creation_date,
      :version_id,
      :advanced_backup_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of a framework. This name is between 1 and 256 characters, starting with
    #            a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).</p>
    #   @return [String]
    # @!attribute framework_description
    #   <p>An optional description of the framework with a maximum 1,024 characters.</p>
    #   @return [String]
    # @!attribute framework_controls
    #   <p>The controls that make up the framework. Each control in the list has a name,
    #            input parameters, and scope.</p>
    #   @return [Array<Types::FrameworkControl>]
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>UpdateFrameworkInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #   @return [String]
    class UpdateFrameworkInput < Struct.new(
      nil,
      :framework_name,
      :framework_description,
      :framework_controls,
      :idempotency_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of a framework. This name is between 1 and 256 characters, starting with
    #            a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).</p>
    #   @return [String]
    # @!attribute framework_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time that a framework is created, in ISO 8601 representation. The value of <code>CreationTime</code> is accurate to milliseconds. For example,
    #            2020-07-10T15:00:00.000-08:00 represents the 10th of July 2020 at 3:00 PM 8 hours behind
    #            UTC.</p>
    #   @return [Time]
    class UpdateFrameworkOutput < Struct.new(
      nil,
      :framework_name,
      :framework_arn,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_settings
    #   <p>A value for <code>isCrossAccountBackupEnabled</code> and a Region. Example:
    #               <code>update-global-settings --global-settings isCrossAccountBackupEnabled=false
    #               --region us-west-2</code>.</p>
    #   @return [Hash<String, String>]
    class UpdateGlobalSettingsInput < Struct.new(
      nil,
      :global_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created.</p>
    #            <p>Accepted characters include lowercase letters, numbers, and hyphens.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>This specifies the IAM role ARN used for this operation.</p>
    #            <p>For example, arn:aws:iam::123456789012:role/S3Access</p>
    #   @return [String]
    # @!attribute index
    #   <p>Index can have 1 of 2 possible values, either <code>ENABLED</code> or 
    #            <code>DISABLED</code>.</p>
    #            <p>To create a backup index for an eligible <code>ACTIVE</code> recovery point 
    #            that does not yet have a backup index, set value to <code>ENABLED</code>.</p>
    #            <p>To delete a backup index, set value to <code>DISABLED</code>.</p>
    #   @return [String]
    class UpdateRecoveryPointIndexSettingsInput < Struct.new(
      nil,
      :backup_vault_name,
      :recovery_point_arn,
      :iam_role_arn,
      :index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute index_status
    #   <p>This is the current status for the backup index associated 
    #            with the specified recovery point.</p>
    #            <p>Statuses are: <code>PENDING</code> | <code>ACTIVE</code> | <code>FAILED</code> | <code>DELETING</code>
    #            </p>
    #            <p>A recovery point with an index that has the status of <code>ACTIVE</code> 
    #            can be included in a search.</p>
    #   @return [String]
    # @!attribute index
    #   <p>Index can have 1 of 2 possible values, either <code>ENABLED</code> or
    #            <code>DISABLED</code>.</p>
    #            <p>A value of <code>ENABLED</code> means a backup index for an eligible <code>ACTIVE</code>
    #            recovery point has been created.</p>
    #            <p>A value of <code>DISABLED</code> means a backup index was deleted.</p>
    #   @return [String]
    class UpdateRecoveryPointIndexSettingsOutput < Struct.new(
      nil,
      :backup_vault_name,
      :recovery_point_arn,
      :index_status,
      :index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    #   @return [Types::Lifecycle]
    class UpdateRecoveryPointLifecycleInput < Struct.new(
      nil,
      :backup_vault_name,
      :recovery_point_arn,
      :lifecycle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_vault_arn
    #   <p>An ARN that uniquely identifies a backup vault; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault</code>.</p>
    #   @return [String]
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define.</p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold.</p>
    #            <p>Resource types that can transition to cold storage are listed in the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource">Feature availability 
    #            by resource</a> table. Backup ignores this expression for other resource types.</p>
    #   @return [Types::Lifecycle]
    # @!attribute calculated_lifecycle
    #   <p>A <code>CalculatedLifecycle</code> object containing <code>DeleteAt</code> and
    #               <code>MoveToColdStorageAt</code> timestamps.</p>
    #   @return [Types::CalculatedLifecycle]
    class UpdateRecoveryPointLifecycleOutput < Struct.new(
      nil,
      :backup_vault_arn,
      :recovery_point_arn,
      :lifecycle,
      :calculated_lifecycle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_type_opt_in_preference
    #   <p>Updates the list of services along with the opt-in preferences for the Region.</p>
    #            <p>If resource assignments are only based on tags, then service opt-in settings are applied. 
    #            If a resource type is explicitly assigned to a backup plan, such as Amazon S3, 
    #            Amazon EC2, or Amazon RDS, it will be included in the 
    #            backup even if the opt-in is not enabled for that particular service. 
    #            If both a resource type and tags are specified in a resource assignment, 
    #            the resource type specified in the backup plan takes priority over the 
    #            tag condition. Service opt-in settings are disregarded in this situation.</p>
    #   @return [Hash<String, Boolean>]
    # @!attribute resource_type_management_preference
    #   <p>Enables or disables full Backup management of backups for a resource type.
    #            To enable full Backup management for DynamoDB along with <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html">
    #               Backup's advanced DynamoDB backup features</a>, follow the
    #            procedure to <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli"> enable advanced DynamoDB backup programmatically</a>.</p>
    #   @return [Hash<String, Boolean>]
    class UpdateRegionSettingsInput < Struct.new(
      nil,
      :resource_type_opt_in_preference,
      :resource_type_management_preference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of the report plan. This name is between 1 and 256 characters, starting
    #            with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores
    #            (_).</p>
    #   @return [String]
    # @!attribute report_plan_description
    #   <p>An optional description of the report plan with a maximum 1,024 characters.</p>
    #   @return [String]
    # @!attribute report_delivery_channel
    #   <p>The information about where to deliver your reports, specifically
    #            your Amazon S3 bucket name, S3 key prefix, and the formats of your reports.</p>
    #   @return [Types::ReportDeliveryChannel]
    # @!attribute report_setting
    #   <p>The report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #            <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
    #               <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
    #            coverage by Amazon Web Services Regions and frameworks.</p>
    #   @return [Types::ReportSetting]
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>UpdateReportPlanInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #   @return [String]
    class UpdateReportPlanInput < Struct.new(
      nil,
      :report_plan_name,
      :report_plan_description,
      :report_delivery_channel,
      :report_setting,
      :idempotency_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of the report plan.</p>
    #   @return [String]
    # @!attribute report_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The date and time that a report plan is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #   @return [Time]
    class UpdateReportPlanOutput < Struct.new(
      nil,
      :report_plan_name,
      :report_plan_arn,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_testing_plan
    #   <p>Specifies the body of a restore testing plan.</p>
    #   @return [Types::RestoreTestingPlanForUpdate]
    # @!attribute restore_testing_plan_name
    #   <p>The name of the restore testing plan name.</p>
    #   @return [String]
    class UpdateRestoreTestingPlanInput < Struct.new(
      nil,
      :restore_testing_plan,
      :restore_testing_plan_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time the resource testing plan was 
    #            created.</p>
    #   @return [Time]
    # @!attribute restore_testing_plan_arn
    #   <p>Unique ARN (Amazon Resource Name) of the restore testing plan.</p>
    #   @return [String]
    # @!attribute restore_testing_plan_name
    #   <p>The name cannot be changed after creation. The name consists of 
    #            only alphanumeric characters and underscores. Maximum length is 50.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The time the update completed for the restore 
    #            testing plan.</p>
    #   @return [Time]
    class UpdateRestoreTestingPlanOutput < Struct.new(
      nil,
      :creation_time,
      :restore_testing_plan_arn,
      :restore_testing_plan_name,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restore_testing_plan_name
    #   <p>The restore testing plan name is required to update the 
    #            indicated testing plan.</p>
    #   @return [String]
    # @!attribute restore_testing_selection
    #   <p>To update your restore testing selection, you can use either 
    #            protected resource ARNs or conditions, but not both. That is, if your 
    #            selection has <code>ProtectedResourceArns</code>, requesting an update 
    #            with the parameter <code>ProtectedResourceConditions</code> will be 
    #            unsuccessful.</p>
    #   @return [Types::RestoreTestingSelectionForUpdate]
    # @!attribute restore_testing_selection_name
    #   <p>The required restore testing selection name of the restore 
    #            testing selection you wish to update.</p>
    #   @return [String]
    class UpdateRestoreTestingSelectionInput < Struct.new(
      nil,
      :restore_testing_plan_name,
      :restore_testing_selection,
      :restore_testing_selection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time the resource testing selection was 
    #            updated successfully.</p>
    #   @return [Time]
    # @!attribute restore_testing_plan_arn
    #   <p>Unique string that is the name of the restore testing plan.</p>
    #   @return [String]
    # @!attribute restore_testing_plan_name
    #   <p>The restore testing plan with which the updated restore 
    #            testing selection is associated.</p>
    #   @return [String]
    # @!attribute restore_testing_selection_name
    #   <p>The returned restore testing selection name.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The time the update completed for the restore 
    #            testing selection.</p>
    #   @return [Time]
    class UpdateRestoreTestingSelectionOutput < Struct.new(
      nil,
      :creation_time,
      :restore_testing_plan_arn,
      :restore_testing_plan_name,
      :restore_testing_selection_name,
      :update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
