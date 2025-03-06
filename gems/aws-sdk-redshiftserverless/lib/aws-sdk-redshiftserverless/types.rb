# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RedshiftServerless
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the custom domain name association.
    #
    # @!attribute [rw] custom_domain_certificate_arn
    #   The custom domain name’s certificate Amazon resource name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_certificate_expiry_time
    #   The expiration time for the certificate.
    #   @return [Time]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name associated with the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup associated with the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/Association AWS API Documentation
    #
    class Association < Struct.new(
      :custom_domain_certificate_arn,
      :custom_domain_certificate_expiry_time,
      :custom_domain_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of key-value pairs to set for advanced control over Amazon
    # Redshift Serverless.
    #
    # @!attribute [rw] parameter_key
    #   The key of the parameter. The options are `auto_mv`, `datestyle`,
    #   `enable_case_sensitive_identifier`, `enable_user_activity_logging`,
    #   `query_group`, `search_path`, `require_ssl`, `use_fips_ssl`, and
    #   query monitoring metrics that let you define performance boundaries.
    #   For more information about query monitoring rules and available
    #   metrics, see [Query monitoring metrics for Amazon Redshift
    #   Serverless][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The value of the parameter to set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ConfigParameter AWS API Documentation
    #
    class ConfigParameter < Struct.new(
      :parameter_key,
      :parameter_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The submitted action has conflicts.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recovery_point_id
    #   The unique identifier of the recovery point.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long to retain the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of [Tag objects][1] to associate with the created snapshot.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ConvertRecoveryPointToSnapshotRequest AWS API Documentation
    #
    class ConvertRecoveryPointToSnapshotRequest < Struct.new(
      :recovery_point_id,
      :retention_period,
      :snapshot_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   The snapshot converted from the recovery point.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ConvertRecoveryPointToSnapshotResponse AWS API Documentation
    #
    class ConvertRecoveryPointToSnapshotResponse < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_domain_certificate_arn
    #   The custom domain name’s certificate Amazon resource name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name to associate with the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup associated with the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateCustomDomainAssociationRequest AWS API Documentation
    #
    class CreateCustomDomainAssociationRequest < Struct.new(
      :custom_domain_certificate_arn,
      :custom_domain_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_domain_certificate_arn
    #   The custom domain name’s certificate Amazon resource name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_certificate_expiry_time
    #   The expiration time for the certificate.
    #   @return [Time]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name to associate with the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup associated with the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateCustomDomainAssociationResponse AWS API Documentation
    #
    class CreateCustomDomainAssociationResponse < Struct.new(
      :custom_domain_certificate_arn,
      :custom_domain_certificate_expiry_time,
      :custom_domain_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   The name of the VPC endpoint. An endpoint name must contain 1-30
    #   characters. Valid characters are A-Z, a-z, 0-9, and hyphen(-). The
    #   first character must be a letter. The name can't contain two
    #   consecutive hyphens or end with a hyphen.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The owner Amazon Web Services account for the Amazon Redshift
    #   Serverless workgroup.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The unique identifers of subnets from which Amazon Redshift
    #   Serverless chooses one to deploy a VPC endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   The unique identifiers of the security group that defines the ports,
    #   protocols, and sources for inbound traffic that you are authorizing
    #   into your endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup to associate with the VPC endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateEndpointAccessRequest AWS API Documentation
    #
    class CreateEndpointAccessRequest < Struct.new(
      :endpoint_name,
      :owner_account,
      :subnet_ids,
      :vpc_security_group_ids,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The created VPC endpoint.
    #   @return [Types::EndpointAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateEndpointAccessResponse AWS API Documentation
    #
    class CreateEndpointAccessResponse < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_password_secret_kms_key_id
    #   The ID of the Key Management Service (KMS) key used to encrypt and
    #   store the namespace's admin credentials secret. You can only use
    #   this parameter if `manageAdminPassword` is true.
    #   @return [String]
    #
    # @!attribute [rw] admin_user_password
    #   The password of the administrator for the first database created in
    #   the namespace.
    #
    #   You can't use `adminUserPassword` if `manageAdminPassword` is true.
    #   @return [String]
    #
    # @!attribute [rw] admin_username
    #   The username of the administrator for the first database created in
    #   the namespace.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The name of the first database created in the namespace.
    #   @return [String]
    #
    # @!attribute [rw] default_iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to set as a default
    #   in the namespace.
    #   @return [String]
    #
    # @!attribute [rw] iam_roles
    #   A list of IAM roles to associate with the namespace.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the Amazon Web Services Key Management Service key used to
    #   encrypt your data.
    #   @return [String]
    #
    # @!attribute [rw] log_exports
    #   The types of logs the namespace can export. Available export types
    #   are `userlog`, `connectionlog`, and `useractivitylog`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] manage_admin_password
    #   If `true`, Amazon Redshift uses Secrets Manager to manage the
    #   namespace's admin credentials. You can't use `adminUserPassword`
    #   if `manageAdminPassword` is true. If `manageAdminPassword` is false
    #   or not set, Amazon Redshift uses `adminUserPassword` for the admin
    #   user account's password.
    #   @return [Boolean]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace.
    #   @return [String]
    #
    # @!attribute [rw] redshift_idc_application_arn
    #   The ARN for the Redshift application that integrates with IAM
    #   Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateNamespaceRequest AWS API Documentation
    #
    class CreateNamespaceRequest < Struct.new(
      :admin_password_secret_kms_key_id,
      :admin_user_password,
      :admin_username,
      :db_name,
      :default_iam_role_arn,
      :iam_roles,
      :kms_key_id,
      :log_exports,
      :manage_admin_password,
      :namespace_name,
      :redshift_idc_application_arn,
      :tags)
      SENSITIVE = [:admin_user_password, :admin_username]
      include Aws::Structure
    end

    # @!attribute [rw] namespace
    #   The created namespace object.
    #   @return [Types::Namespace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateNamespaceResponse AWS API Documentation
    #
    class CreateNamespaceResponse < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   Indicates whether the schedule is enabled. If false, the scheduled
    #   action does not trigger. For more information about `state` of the
    #   scheduled action, see [ScheduledAction][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_ScheduledAction.html
    #   @return [Boolean]
    #
    # @!attribute [rw] end_time
    #   The end time in UTC when the schedule is no longer active. After
    #   this time, the scheduled action does not trigger.
    #   @return [Time]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace for which to create a scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role to assume to run the scheduled action. This
    #   IAM role must have permission to run the Amazon Redshift Serverless
    #   API operation in the scheduled action. This IAM role must allow the
    #   Amazon Redshift scheduler to schedule creating snapshots. (Principal
    #   scheduler.redshift.amazonaws.com) to assume permissions on your
    #   behalf. For more information about the IAM role to use with the
    #   Amazon Redshift scheduler, see [Using Identity-Based Policies for
    #   Amazon Redshift][1] in the Amazon Redshift Management Guide
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for a one-time (at timestamp format) or recurring (cron
    #   format) scheduled action. Schedule invocations must be separated by
    #   at least one hour. Times are in UTC.
    #
    #   * Format of at timestamp is `yyyy-mm-ddThh:mm:ss`. For example,
    #     `2016-03-04T17:27:00`.
    #
    #   * Format of cron expression is `(Minutes Hours Day-of-month Month
    #     Day-of-week Year)`. For example, `"(0 10 ? * MON *)"`. For more
    #     information, see [Cron Expressions][1] in the *Amazon CloudWatch
    #     Events User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] scheduled_action_description
    #   The description of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time in UTC when the schedule is active. Before this time,
    #   the scheduled action does not trigger.
    #   @return [Time]
    #
    # @!attribute [rw] target_action
    #   A JSON format string of the Amazon Redshift Serverless API operation
    #   with input parameters. The following is an example of a target
    #   action.
    #
    #   `"{"CreateSnapshot": {"NamespaceName":
    #   "sampleNamespace","SnapshotName": "sampleSnapshot",
    #   "retentionPeriod": "1"}}"`
    #   @return [Types::TargetAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateScheduledActionRequest AWS API Documentation
    #
    class CreateScheduledActionRequest < Struct.new(
      :enabled,
      :end_time,
      :namespace_name,
      :role_arn,
      :schedule,
      :scheduled_action_description,
      :scheduled_action_name,
      :start_time,
      :target_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_action
    #   The returned `ScheduledAction` object that describes the properties
    #   of a scheduled action.
    #   @return [Types::ScheduledActionResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateScheduledActionResponse AWS API Documentation
    #
    class CreateScheduledActionResponse < Struct.new(
      :scheduled_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_kms_key_id
    #   The KMS key to use to encrypt your snapshots in the destination
    #   Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] destination_region
    #   The destination Amazon Web Services Region that you want to copy
    #   snapshots to.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace to copy snapshots from.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_retention_period
    #   The retention period of the snapshots that you copy to the
    #   destination Amazon Web Services Region.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateSnapshotCopyConfigurationRequest AWS API Documentation
    #
    class CreateSnapshotCopyConfigurationRequest < Struct.new(
      :destination_kms_key_id,
      :destination_region,
      :namespace_name,
      :snapshot_retention_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_copy_configuration
    #   The snapshot copy configuration object that is returned.
    #   @return [Types::SnapshotCopyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateSnapshotCopyConfigurationResponse AWS API Documentation
    #
    class CreateSnapshotCopyConfigurationResponse < Struct.new(
      :snapshot_copy_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace_name
    #   The namespace to create a snapshot for.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   How long to retain the created snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of [Tag objects][1] to associate with the snapshot.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateSnapshotRequest AWS API Documentation
    #
    class CreateSnapshotRequest < Struct.new(
      :namespace_name,
      :retention_period,
      :snapshot_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   The created snapshot object.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateSnapshotResponse AWS API Documentation
    #
    class CreateSnapshotResponse < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters that you can use to configure a [scheduled action][1]
    # to create a snapshot. For more information about creating a scheduled
    # action, see [CreateScheduledAction][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_CreateScheduledAction.html
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace for which you want to configure a
    #   scheduled action to create a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   The retention period of the snapshot created by the scheduled
    #   action.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_name_prefix
    #   A string prefix that is attached to the name of the snapshot created
    #   by the scheduled action. The final name of the snapshot is the
    #   string prefix appended by the date and time of when the snapshot was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of [Tag objects][1] to associate with the snapshot.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateSnapshotScheduleActionParameters AWS API Documentation
    #
    class CreateSnapshotScheduleActionParameters < Struct.new(
      :namespace_name,
      :retention_period,
      :snapshot_name_prefix,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] amount
    #   The limit amount. If time-based, this amount is in Redshift
    #   Processing Units (RPU) consumed per hour. If data-based, this amount
    #   is in terabytes (TB) of data transferred between Regions in
    #   cross-account sharing. The value must be a positive number.
    #   @return [Integer]
    #
    # @!attribute [rw] breach_action
    #   The action that Amazon Redshift Serverless takes when the limit is
    #   reached. The default is log.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The time period that the amount applies to. A weekly period begins
    #   on Sunday. The default is monthly.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Redshift Serverless
    #   resource to create the usage limit for.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The type of Amazon Redshift Serverless usage to create a usage limit
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateUsageLimitRequest AWS API Documentation
    #
    class CreateUsageLimitRequest < Struct.new(
      :amount,
      :breach_action,
      :period,
      :resource_arn,
      :usage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usage_limit
    #   The returned usage limit object.
    #   @return [Types::UsageLimit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateUsageLimitResponse AWS API Documentation
    #
    class CreateUsageLimitResponse < Struct.new(
      :usage_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] base_capacity
    #   The base data warehouse capacity of the workgroup in Redshift
    #   Processing Units (RPUs).
    #   @return [Integer]
    #
    # @!attribute [rw] config_parameters
    #   An array of parameters to set for advanced control over a database.
    #   The options are `auto_mv`, `datestyle`,
    #   `enable_case_sensitive_identifier`, `enable_user_activity_logging`,
    #   `query_group`, `search_path`, `require_ssl`, `use_fips_ssl`, and
    #   query monitoring metrics that let you define performance boundaries.
    #   For more information about query monitoring rules and available
    #   metrics, see [ Query monitoring metrics for Amazon Redshift
    #   Serverless][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless
    #   @return [Array<Types::ConfigParameter>]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   The value that specifies whether to turn on enhanced virtual private
    #   cloud (VPC) routing, which forces Amazon Redshift Serverless to
    #   route traffic through your VPC instead of over the internet.
    #   @return [Boolean]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type that the workgroup supports. Possible values are
    #   `ipv4` and `dualstack`.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The maximum data-warehouse capacity Amazon Redshift Serverless uses
    #   to serve queries. The max capacity is specified in RPUs.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace to associate with the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The custom port to use when connecting to a workgroup. Valid port
    #   ranges are 5431-5455 and 8191-8215. The default is 5439.
    #   @return [Integer]
    #
    # @!attribute [rw] price_performance_target
    #   An object that represents the price performance target settings for
    #   the workgroup.
    #   @return [Types::PerformanceTarget]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that specifies whether the workgroup can be accessed from a
    #   public network.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_group_ids
    #   An array of security group IDs to associate with the workgroup.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   An array of VPC subnet IDs to associate with the workgroup.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A array of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] track_name
    #   An optional parameter for the name of the track for the workgroup.
    #   If you don't provide a track name, the workgroup is assigned to the
    #   `current` track.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the created workgroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateWorkgroupRequest AWS API Documentation
    #
    class CreateWorkgroupRequest < Struct.new(
      :base_capacity,
      :config_parameters,
      :enhanced_vpc_routing,
      :ip_address_type,
      :max_capacity,
      :namespace_name,
      :port,
      :price_performance_target,
      :publicly_accessible,
      :security_group_ids,
      :subnet_ids,
      :tags,
      :track_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workgroup
    #   The created workgroup object.
    #   @return [Types::Workgroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateWorkgroupResponse AWS API Documentation
    #
    class CreateWorkgroupResponse < Struct.new(
      :workgroup)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_domain_name
    #   The custom domain name associated with the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup associated with the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteCustomDomainAssociationRequest AWS API Documentation
    #
    class DeleteCustomDomainAssociationRequest < Struct.new(
      :custom_domain_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteCustomDomainAssociationResponse AWS API Documentation
    #
    class DeleteCustomDomainAssociationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] endpoint_name
    #   The name of the VPC endpoint to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteEndpointAccessRequest AWS API Documentation
    #
    class DeleteEndpointAccessRequest < Struct.new(
      :endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The deleted VPC endpoint.
    #   @return [Types::EndpointAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteEndpointAccessResponse AWS API Documentation
    #
    class DeleteEndpointAccessResponse < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] final_snapshot_name
    #   The name of the snapshot to be created before the namespace is
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] final_snapshot_retention_period
    #   How long to retain the final snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteNamespaceRequest AWS API Documentation
    #
    class DeleteNamespaceRequest < Struct.new(
      :final_snapshot_name,
      :final_snapshot_retention_period,
      :namespace_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace
    #   The deleted namespace object.
    #   @return [Types::Namespace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteNamespaceResponse AWS API Documentation
    #
    class DeleteNamespaceResponse < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the policy to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteScheduledActionRequest AWS API Documentation
    #
    class DeleteScheduledActionRequest < Struct.new(
      :scheduled_action_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_action
    #   The deleted scheduled action object.
    #   @return [Types::ScheduledActionResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteScheduledActionResponse AWS API Documentation
    #
    class DeleteScheduledActionResponse < Struct.new(
      :scheduled_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_copy_configuration_id
    #   The ID of the snapshot copy configuration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteSnapshotCopyConfigurationRequest AWS API Documentation
    #
    class DeleteSnapshotCopyConfigurationRequest < Struct.new(
      :snapshot_copy_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_copy_configuration
    #   The deleted snapshot copy configuration object.
    #   @return [Types::SnapshotCopyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteSnapshotCopyConfigurationResponse AWS API Documentation
    #
    class DeleteSnapshotCopyConfigurationResponse < Struct.new(
      :snapshot_copy_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_name
    #   The name of the snapshot to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteSnapshotRequest AWS API Documentation
    #
    class DeleteSnapshotRequest < Struct.new(
      :snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   The deleted snapshot object.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteSnapshotResponse AWS API Documentation
    #
    class DeleteSnapshotResponse < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usage_limit_id
    #   The unique identifier of the usage limit to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteUsageLimitRequest AWS API Documentation
    #
    class DeleteUsageLimitRequest < Struct.new(
      :usage_limit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usage_limit
    #   The deleted usage limit object.
    #   @return [Types::UsageLimit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteUsageLimitResponse AWS API Documentation
    #
    class DeleteUsageLimitResponse < Struct.new(
      :usage_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workgroup_name
    #   The name of the workgroup to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteWorkgroupRequest AWS API Documentation
    #
    class DeleteWorkgroupRequest < Struct.new(
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workgroup
    #   The deleted workgroup object.
    #   @return [Types::Workgroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteWorkgroupResponse AWS API Documentation
    #
    class DeleteWorkgroupResponse < Struct.new(
      :workgroup)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC endpoint object.
    #
    # @!attribute [rw] address
    #   The DNS address of the VPC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that Amazon Redshift Serverless listens on.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_endpoints
    #   An array of `VpcEndpoint` objects.
    #   @return [Array<Types::VpcEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :port,
      :vpc_endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon Redshift Serverless VPC endpoint.
    #
    # @!attribute [rw] address
    #   The DNS address of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the VPC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_create_time
    #   The time that the endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the VPC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_status
    #   The status of the VPC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which Amazon Redshift Serverless accepts incoming
    #   connections.
    #   @return [Integer]
    #
    # @!attribute [rw] subnet_ids
    #   The unique identifier of subnets where Amazon Redshift Serverless
    #   choose to deploy the VPC endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_endpoint
    #   The connection endpoint for connecting to Amazon Redshift
    #   Serverless.
    #   @return [Types::VpcEndpoint]
    #
    # @!attribute [rw] vpc_security_groups
    #   The security groups associated with the endpoint.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup associated with the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/EndpointAccess AWS API Documentation
    #
    class EndpointAccess < Struct.new(
      :address,
      :endpoint_arn,
      :endpoint_create_time,
      :endpoint_name,
      :endpoint_status,
      :port,
      :subnet_ids,
      :vpc_endpoint,
      :vpc_security_groups,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_domain_name
    #   The custom domain name associated with the workgroup. The custom
    #   domain name or the workgroup name must be included in the request.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The name of the database to get temporary authorization to log on
    #   to.
    #
    #   Constraints:
    #
    #   * Must be 1 to 64 alphanumeric characters or hyphens.
    #
    #   * Must contain only uppercase or lowercase letters, numbers,
    #     underscore, plus sign, period (dot), at symbol (@), or hyphen.
    #
    #   * The first character must be a letter.
    #
    #   * Must not contain a colon ( : ) or slash ( / ).
    #
    #   * Cannot be a reserved word. A list of reserved words can be found
    #     in [Reserved Words ][1] in the Amazon Redshift Database Developer
    #     Guide
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #   @return [String]
    #
    # @!attribute [rw] duration_seconds
    #   The number of seconds until the returned temporary password expires.
    #   The minimum is 900 seconds, and the maximum is 3600 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup associated with the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetCredentialsRequest AWS API Documentation
    #
    class GetCredentialsRequest < Struct.new(
      :custom_domain_name,
      :db_name,
      :duration_seconds,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_password
    #   A temporary password that authorizes the user name returned by
    #   `DbUser` to log on to the database `DbName`.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   A database user name that is authorized to log on to the database
    #   `DbName` using the password `DbPassword`. If the specified `DbUser`
    #   exists in the database, the new user name has the same database
    #   privileges as the the user named in `DbUser`. By default, the user
    #   is added to PUBLIC.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The date and time the password in `DbPassword` expires.
    #   @return [Time]
    #
    # @!attribute [rw] next_refresh_time
    #   The date and time of when the `DbUser` and `DbPassword`
    #   authorization refreshes.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetCredentialsResponse AWS API Documentation
    #
    class GetCredentialsResponse < Struct.new(
      :db_password,
      :db_user,
      :expiration,
      :next_refresh_time)
      SENSITIVE = [:db_password, :db_user]
      include Aws::Structure
    end

    # @!attribute [rw] custom_domain_name
    #   The custom domain name associated with the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup associated with the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetCustomDomainAssociationRequest AWS API Documentation
    #
    class GetCustomDomainAssociationRequest < Struct.new(
      :custom_domain_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_domain_certificate_arn
    #   The custom domain name’s certificate Amazon resource name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_certificate_expiry_time
    #   The expiration time for the certificate.
    #   @return [Time]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name associated with the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup associated with the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetCustomDomainAssociationResponse AWS API Documentation
    #
    class GetCustomDomainAssociationResponse < Struct.new(
      :custom_domain_certificate_arn,
      :custom_domain_certificate_expiry_time,
      :custom_domain_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   The name of the VPC endpoint to return information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetEndpointAccessRequest AWS API Documentation
    #
    class GetEndpointAccessRequest < Struct.new(
      :endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The returned VPC endpoint.
    #   @return [Types::EndpointAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetEndpointAccessResponse AWS API Documentation
    #
    class GetEndpointAccessResponse < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace_name
    #   The name of the namespace to retrieve information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetNamespaceRequest AWS API Documentation
    #
    class GetNamespaceRequest < Struct.new(
      :namespace_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace
    #   The returned namespace object.
    #   @return [Types::Namespace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetNamespaceResponse AWS API Documentation
    #
    class GetNamespaceResponse < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recovery_point_id
    #   The unique identifier of the recovery point to return information
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetRecoveryPointRequest AWS API Documentation
    #
    class GetRecoveryPointRequest < Struct.new(
      :recovery_point_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recovery_point
    #   The returned recovery point object.
    #   @return [Types::RecoveryPoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetRecoveryPointResponse AWS API Documentation
    #
    class GetRecoveryPointResponse < Struct.new(
      :recovery_point)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_policy
    #   The returned resource policy.
    #   @return [Types::ResourcePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetScheduledActionRequest AWS API Documentation
    #
    class GetScheduledActionRequest < Struct.new(
      :scheduled_action_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_action
    #   The returned scheduled action object.
    #   @return [Types::ScheduledActionResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetScheduledActionResponse AWS API Documentation
    #
    class GetScheduledActionResponse < Struct.new(
      :scheduled_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] owner_account
    #   The owner Amazon Web Services account of a snapshot shared with
    #   another user.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_arn
    #   The Amazon Resource Name (ARN) of the snapshot to return.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the snapshot to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetSnapshotRequest AWS API Documentation
    #
    class GetSnapshotRequest < Struct.new(
      :owner_account,
      :snapshot_arn,
      :snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   The returned snapshot object.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetSnapshotResponse AWS API Documentation
    #
    class GetSnapshotResponse < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_restore_request_id
    #   The ID of the `RestoreTableFromSnapshot` request to return status
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetTableRestoreStatusRequest AWS API Documentation
    #
    class GetTableRestoreStatusRequest < Struct.new(
      :table_restore_request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_restore_status
    #   The returned `TableRestoreStatus` object that contains information
    #   about the status of your `RestoreTableFromSnapshot` request.
    #   @return [Types::TableRestoreStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetTableRestoreStatusResponse AWS API Documentation
    #
    class GetTableRestoreStatusResponse < Struct.new(
      :table_restore_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] track_name
    #   The name of the track of which its version is fetched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetTrackRequest AWS API Documentation
    #
    class GetTrackRequest < Struct.new(
      :track_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] track
    #   The version of the specified track.
    #   @return [Types::ServerlessTrack]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetTrackResponse AWS API Documentation
    #
    class GetTrackResponse < Struct.new(
      :track)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usage_limit_id
    #   The unique identifier of the usage limit to return information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetUsageLimitRequest AWS API Documentation
    #
    class GetUsageLimitRequest < Struct.new(
      :usage_limit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usage_limit
    #   The returned usage limit object.
    #   @return [Types::UsageLimit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetUsageLimitResponse AWS API Documentation
    #
    class GetUsageLimitResponse < Struct.new(
      :usage_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workgroup_name
    #   The name of the workgroup to return information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetWorkgroupRequest AWS API Documentation
    #
    class GetWorkgroupRequest < Struct.new(
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workgroup
    #   The returned workgroup object.
    #   @return [Types::Workgroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetWorkgroupResponse AWS API Documentation
    #
    class GetWorkgroupResponse < Struct.new(
      :workgroup)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is an insufficient capacity to perform the action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/InsufficientCapacityException AWS API Documentation
    #
    class InsufficientCapacityException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided pagination token is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/InvalidPaginationException AWS API Documentation
    #
    class InvalidPaginationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There are no subnets in your VPC with associated IPv6 CIDR blocks. To
    # use dual-stack mode, associate an IPv6 CIDR block with each subnet in
    # your VPC.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/Ipv6CidrBlockNotFoundException AWS API Documentation
    #
    class Ipv6CidrBlockNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_domain_certificate_arn
    #   The custom domain name’s certificate Amazon resource name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name associated with the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to display the next page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListCustomDomainAssociationsRequest AWS API Documentation
    #
    class ListCustomDomainAssociationsRequest < Struct.new(
      :custom_domain_certificate_arn,
      :custom_domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associations
    #   A list of Association objects.
    #   @return [Array<Types::Association>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListCustomDomainAssociationsResponse AWS API Documentation
    #
    class ListCustomDomainAssociationsResponse < Struct.new(
      :associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to display the next page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListEndpointAccess` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in following
    #   `ListEndpointAccess` operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The owner Amazon Web Services account for the Amazon Redshift
    #   Serverless workgroup.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The unique identifier of the virtual private cloud with access to
    #   Amazon Redshift Serverless.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup associated with the VPC endpoint to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListEndpointAccessRequest AWS API Documentation
    #
    class ListEndpointAccessRequest < Struct.new(
      :max_results,
      :next_token,
      :owner_account,
      :vpc_id,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoints
    #   The returned VPC endpoints.
    #   @return [Array<Types::EndpointAccess>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListEndpointAccessResponse AWS API Documentation
    #
    class ListEndpointAccessResponse < Struct.new(
      :endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use nextToken to display the next page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial ListManagedWorkgroups operation returns a nextToken,
    #   you can include the returned nextToken in following
    #   ListManagedWorkgroups operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) for the managed workgroup in the AWS
    #   Glue Data Catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListManagedWorkgroupsRequest AWS API Documentation
    #
    class ListManagedWorkgroupsRequest < Struct.new(
      :max_results,
      :next_token,
      :source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_workgroups
    #   The returned array of managed workgroups.
    #   @return [Array<Types::ManagedWorkgroupListItem>]
    #
    # @!attribute [rw] next_token
    #   If nextToken is returned, there are more results available. The
    #   value of nextToken is a unique pagination token for each page. To
    #   retrieve the next page, make the call again using the returned
    #   token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListManagedWorkgroupsResponse AWS API Documentation
    #
    class ListManagedWorkgroupsResponse < Struct.new(
      :managed_workgroups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to display the next page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListNamespaces` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in following
    #   `ListNamespaces` operations, which returns results in the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListNamespacesRequest AWS API Documentation
    #
    class ListNamespacesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespaces
    #   The list of returned namespaces.
    #   @return [Array<Types::Namespace>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListNamespacesResponse AWS API Documentation
    #
    class ListNamespacesResponse < Struct.new(
      :namespaces,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_time
    #   The time when creation of the recovery point finished.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to display the next page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace_arn
    #   The Amazon Resource Name (ARN) of the namespace from which to list
    #   recovery points.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace to list recovery points for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListRecoveryPoints` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in following
    #   `ListRecoveryPoints` operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time when the recovery point's creation was initiated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListRecoveryPointsRequest AWS API Documentation
    #
    class ListRecoveryPointsRequest < Struct.new(
      :end_time,
      :max_results,
      :namespace_arn,
      :namespace_name,
      :next_token,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] recovery_points
    #   The returned recovery point objects.
    #   @return [Array<Types::RecoveryPoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListRecoveryPointsResponse AWS API Documentation
    #
    class ListRecoveryPointsResponse < Struct.new(
      :next_token,
      :recovery_points)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. Use `nextToken` to display the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace_name
    #   The name of namespace associated with the scheduled action to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListScheduledActionsRequest AWS API Documentation
    #
    class ListScheduledActionsRequest < Struct.new(
      :max_results,
      :namespace_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If nextToken is returned, there are more results available. The
    #   value of nextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_actions
    #   All of the returned scheduled action association objects.
    #   @return [Array<Types::ScheduledActionAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListScheduledActionsResponse AWS API Documentation
    #
    class ListScheduledActionsResponse < Struct.new(
      :next_token,
      :scheduled_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to display the next page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace_name
    #   The namespace from which to list all snapshot copy configurations.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListSnapshotCopyConfigurationsRequest AWS API Documentation
    #
    class ListSnapshotCopyConfigurationsRequest < Struct.new(
      :max_results,
      :namespace_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_copy_configurations
    #   All of the returned snapshot copy configurations.
    #   @return [Array<Types::SnapshotCopyConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListSnapshotCopyConfigurationsResponse AWS API Documentation
    #
    class ListSnapshotCopyConfigurationsResponse < Struct.new(
      :next_token,
      :snapshot_copy_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_time
    #   The timestamp showing when the snapshot creation finished.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to display the next page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace_arn
    #   The Amazon Resource Name (ARN) of the namespace from which to list
    #   all snapshots.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The namespace from which to list all snapshots.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The owner Amazon Web Services account of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time when the creation of the snapshot was initiated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListSnapshotsRequest AWS API Documentation
    #
    class ListSnapshotsRequest < Struct.new(
      :end_time,
      :max_results,
      :namespace_arn,
      :namespace_name,
      :next_token,
      :owner_account,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   All of the returned snapshot objects.
    #   @return [Array<Types::Snapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListSnapshotsResponse AWS API Documentation
    #
    class ListSnapshotsResponse < Struct.new(
      :next_token,
      :snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use nextToken to display the next page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace_name
    #   The namespace from which to list all of the statuses of
    #   `RestoreTableFromSnapshot` operations .
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListTableRestoreStatus` operation returns a
    #   nextToken, you can include the returned `nextToken` in following
    #   `ListTableRestoreStatus` operations. This will return results on the
    #   next page.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The workgroup from which to list all of the statuses of
    #   `RestoreTableFromSnapshot` operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListTableRestoreStatusRequest AWS API Documentation
    #
    class ListTableRestoreStatusRequest < Struct.new(
      :max_results,
      :namespace_name,
      :next_token,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If your initial `ListTableRestoreStatus` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in following
    #   `ListTableRestoreStatus` operations. This will returns results on
    #   the next page.
    #   @return [String]
    #
    # @!attribute [rw] table_restore_statuses
    #   The array of returned `TableRestoreStatus` objects.
    #   @return [Array<Types::TableRestoreStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListTableRestoreStatusResponse AWS API Documentation
    #
    class ListTableRestoreStatusResponse < Struct.new(
      :next_token,
      :table_restore_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map of the key-value pairs assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   MaxRecords value, a value is returned in a marker field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListTracksRequest` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in following
    #   `ListTracksRequest` operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListTracksRequest AWS API Documentation
    #
    class ListTracksRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] tracks
    #   The returned tracks.
    #   @return [Array<Types::ServerlessTrack>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListTracksResponse AWS API Documentation
    #
    class ListTracksResponse < Struct.new(
      :next_token,
      :tracks)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   The default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListUsageLimits` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in following
    #   `ListUsageLimits` operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource whose
    #   usage limits you want to list.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The Amazon Redshift Serverless feature whose limits you want to see.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListUsageLimitsRequest AWS API Documentation
    #
    class ListUsageLimitsRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_arn,
      :usage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] usage_limits
    #   An array of returned usage limit objects.
    #   @return [Array<Types::UsageLimit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListUsageLimitsResponse AWS API Documentation
    #
    class ListUsageLimitsResponse < Struct.new(
      :next_token,
      :usage_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to display the next page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial ListWorkgroups operation returns a `nextToken`, you
    #   can include the returned `nextToken` in following ListNamespaces
    #   operations, which returns results in the next page.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The owner Amazon Web Services account for the Amazon Redshift
    #   Serverless workgroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListWorkgroupsRequest AWS API Documentation
    #
    class ListWorkgroupsRequest < Struct.new(
      :max_results,
      :next_token,
      :owner_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. To
    #   retrieve the next page, make the call again using the returned
    #   token.
    #   @return [String]
    #
    # @!attribute [rw] workgroups
    #   The returned array of workgroups.
    #   @return [Array<Types::Workgroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListWorkgroupsResponse AWS API Documentation
    #
    class ListWorkgroupsResponse < Struct.new(
      :next_token,
      :workgroups)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of Amazon Redshift compute resources managed by AWS Glue.
    #
    # @!attribute [rw] creation_date
    #   The creation date of the managed workgroup.
    #   @return [Time]
    #
    # @!attribute [rw] managed_workgroup_id
    #   The unique identifier of the managed workgroup.
    #   @return [String]
    #
    # @!attribute [rw] managed_workgroup_name
    #   The name of the managed workgroup.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) for the managed workgroup in the AWS
    #   Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the managed workgroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ManagedWorkgroupListItem AWS API Documentation
    #
    class ManagedWorkgroupListItem < Struct.new(
      :creation_date,
      :managed_workgroup_id,
      :managed_workgroup_name,
      :source_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of database objects and users.
    #
    # @!attribute [rw] admin_password_secret_arn
    #   The Amazon Resource Name (ARN) for the namespace's admin user
    #   credentials secret.
    #   @return [String]
    #
    # @!attribute [rw] admin_password_secret_kms_key_id
    #   The ID of the Key Management Service (KMS) key used to encrypt and
    #   store the namespace's admin credentials secret.
    #   @return [String]
    #
    # @!attribute [rw] admin_username
    #   The username of the administrator for the first database created in
    #   the namespace.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date of when the namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] db_name
    #   The name of the first database created in the namespace.
    #   @return [String]
    #
    # @!attribute [rw] default_iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to set as a default
    #   in the namespace.
    #   @return [String]
    #
    # @!attribute [rw] iam_roles
    #   A list of IAM roles to associate with the namespace.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the Amazon Web Services Key Management Service key used to
    #   encrypt your data.
    #   @return [String]
    #
    # @!attribute [rw] log_exports
    #   The types of logs the namespace can export. Available export types
    #   are User log, Connection log, and User activity log.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_arn
    #   The Amazon Resource Name (ARN) associated with a namespace.
    #   @return [String]
    #
    # @!attribute [rw] namespace_id
    #   The unique identifier of a namespace.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace. Must be between 3-64 alphanumeric
    #   characters in lowercase, and it cannot be a reserved word. A list of
    #   reserved words can be found in [Reserved Words][1] in the Amazon
    #   Redshift Database Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/Namespace AWS API Documentation
    #
    class Namespace < Struct.new(
      :admin_password_secret_arn,
      :admin_password_secret_kms_key_id,
      :admin_username,
      :creation_date,
      :db_name,
      :default_iam_role_arn,
      :iam_roles,
      :kms_key_id,
      :log_exports,
      :namespace_arn,
      :namespace_id,
      :namespace_name,
      :status)
      SENSITIVE = [:admin_username]
      include Aws::Structure
    end

    # Contains information about a network interface in an Amazon Redshift
    # Serverless managed VPC endpoint.
    #
    # @!attribute [rw] availability_zone
    #   The availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_address
    #   The IPv6 address of the network interface within the subnet.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The unique identifier of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The IPv4 address of the network interface within the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The unique identifier of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :availability_zone,
      :ipv6_address,
      :network_interface_id,
      :private_ip_address,
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the price performance target settings for
    # the workgroup.
    #
    # @!attribute [rw] level
    #   The target price performance level for the workgroup. Valid values
    #   include 1, 25, 50, 75, and 100. These correspond to the price
    #   performance levels LOW\_COST, ECONOMICAL, BALANCED, RESOURCEFUL, and
    #   HIGH\_PERFORMANCE.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Whether the price performance target is enabled for the workgroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/PerformanceTarget AWS API Documentation
    #
    class PerformanceTarget < Struct.new(
      :level,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The policy to create or update. For example, the following policy
    #   grants a user authorization to restore a snapshot.
    #
    #   `"{"Version": "2012-10-17", "Statement" : [{ "Sid":
    #   "AllowUserRestoreFromSnapshot", "Principal":{"AWS":
    #   ["739247239426"]}, "Action":
    #   ["redshift-serverless:RestoreFromSnapshot"] , "Effect":
    #   "Allow" }]}"`
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the account to create or update a
    #   resource policy for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :policy,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_policy
    #   The policy that was created or updated.
    #   @return [Types::ResourcePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The automatically created recovery point of a namespace. Recovery
    # points are created every 30 minutes and kept for 24 hours.
    #
    # @!attribute [rw] namespace_arn
    #   The Amazon Resource Name (ARN) of the namespace the recovery point
    #   is associated with.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace the recovery point is associated with.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_create_time
    #   The time the recovery point is created.
    #   @return [Time]
    #
    # @!attribute [rw] recovery_point_id
    #   The unique identifier of the recovery point.
    #   @return [String]
    #
    # @!attribute [rw] total_size_in_mega_bytes
    #   The total size of the data in the recovery point in megabytes.
    #   @return [Float]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup the recovery point is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RecoveryPoint AWS API Documentation
    #
    class RecoveryPoint < Struct.new(
      :namespace_arn,
      :namespace_name,
      :recovery_point_create_time,
      :recovery_point_id,
      :total_size_in_mega_bytes,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource that could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource policy object. Currently, you can use policies to share
    # snapshots across Amazon Web Services accounts.
    #
    # @!attribute [rw] policy
    #   The resource policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ResourcePolicy AWS API Documentation
    #
    class ResourcePolicy < Struct.new(
      :policy,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace_name
    #   The name of the namespace to restore data into.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_id
    #   The unique identifier of the recovery point to restore from.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup used to restore data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreFromRecoveryPointRequest AWS API Documentation
    #
    class RestoreFromRecoveryPointRequest < Struct.new(
      :namespace_name,
      :recovery_point_id,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace
    #   The namespace that data was restored into.
    #   @return [Types::Namespace]
    #
    # @!attribute [rw] recovery_point_id
    #   The unique identifier of the recovery point used for the restore.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreFromRecoveryPointResponse AWS API Documentation
    #
    class RestoreFromRecoveryPointResponse < Struct.new(
      :namespace,
      :recovery_point_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_password_secret_kms_key_id
    #   The ID of the Key Management Service (KMS) key used to encrypt and
    #   store the namespace's admin credentials secret.
    #   @return [String]
    #
    # @!attribute [rw] manage_admin_password
    #   If `true`, Amazon Redshift uses Secrets Manager to manage the
    #   restored snapshot's admin credentials. If `MmanageAdminPassword` is
    #   false or not set, Amazon Redshift uses the admin credentials that
    #   the namespace or cluster had at the time the snapshot was taken.
    #   @return [Boolean]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace to restore the snapshot to.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The Amazon Web Services account that owns the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_arn
    #   The Amazon Resource Name (ARN) of the snapshot to restore from.
    #   Required if restoring from Amazon Redshift Serverless to a
    #   provisioned cluster. Must not be specified at the same time as
    #   `snapshotName`.
    #
    #   The format of the ARN is
    #   arn:aws:redshift:&lt;region&gt;:&lt;account\_id&gt;:snapshot:&lt;cluster\_identifier&gt;/&lt;snapshot\_identifier&gt;.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the snapshot to restore from. Must not be specified at
    #   the same time as `snapshotArn`.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup used to restore the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreFromSnapshotRequest AWS API Documentation
    #
    class RestoreFromSnapshotRequest < Struct.new(
      :admin_password_secret_kms_key_id,
      :manage_admin_password,
      :namespace_name,
      :owner_account,
      :snapshot_arn,
      :snapshot_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace
    #   A collection of database objects and users.
    #   @return [Types::Namespace]
    #
    # @!attribute [rw] owner_account
    #   The owner Amazon Web Services; account of the snapshot that was
    #   restored.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the snapshot used to restore the namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreFromSnapshotResponse AWS API Documentation
    #
    class RestoreFromSnapshotResponse < Struct.new(
      :namespace,
      :owner_account,
      :snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activate_case_sensitive_identifier
    #   Indicates whether name identifiers for database, schema, and table
    #   are case sensitive. If true, the names are case sensitive. If false,
    #   the names are not case sensitive. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] namespace_name
    #   Namespace of the recovery point to restore from.
    #   @return [String]
    #
    # @!attribute [rw] new_table_name
    #   The name of the table to create from the restore operation.
    #   @return [String]
    #
    # @!attribute [rw] recovery_point_id
    #   The ID of the recovery point to restore the table from.
    #   @return [String]
    #
    # @!attribute [rw] source_database_name
    #   The name of the source database that contains the table being
    #   restored.
    #   @return [String]
    #
    # @!attribute [rw] source_schema_name
    #   The name of the source schema that contains the table being
    #   restored.
    #   @return [String]
    #
    # @!attribute [rw] source_table_name
    #   The name of the source table being restored.
    #   @return [String]
    #
    # @!attribute [rw] target_database_name
    #   The name of the database to restore the table to.
    #   @return [String]
    #
    # @!attribute [rw] target_schema_name
    #   The name of the schema to restore the table to.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The workgroup to restore the table to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreTableFromRecoveryPointRequest AWS API Documentation
    #
    class RestoreTableFromRecoveryPointRequest < Struct.new(
      :activate_case_sensitive_identifier,
      :namespace_name,
      :new_table_name,
      :recovery_point_id,
      :source_database_name,
      :source_schema_name,
      :source_table_name,
      :target_database_name,
      :target_schema_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_restore_status
    #   Contains information about a table restore request.
    #   @return [Types::TableRestoreStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreTableFromRecoveryPointResponse AWS API Documentation
    #
    class RestoreTableFromRecoveryPointResponse < Struct.new(
      :table_restore_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activate_case_sensitive_identifier
    #   Indicates whether name identifiers for database, schema, and table
    #   are case sensitive. If true, the names are case sensitive. If false,
    #   the names are not case sensitive. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] namespace_name
    #   The namespace of the snapshot to restore from.
    #   @return [String]
    #
    # @!attribute [rw] new_table_name
    #   The name of the table to create from the restore operation.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the snapshot to restore the table from.
    #   @return [String]
    #
    # @!attribute [rw] source_database_name
    #   The name of the source database that contains the table being
    #   restored.
    #   @return [String]
    #
    # @!attribute [rw] source_schema_name
    #   The name of the source schema that contains the table being
    #   restored.
    #   @return [String]
    #
    # @!attribute [rw] source_table_name
    #   The name of the source table being restored.
    #   @return [String]
    #
    # @!attribute [rw] target_database_name
    #   The name of the database to restore the table to.
    #   @return [String]
    #
    # @!attribute [rw] target_schema_name
    #   The name of the schema to restore the table to.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The workgroup to restore the table to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreTableFromSnapshotRequest AWS API Documentation
    #
    class RestoreTableFromSnapshotRequest < Struct.new(
      :activate_case_sensitive_identifier,
      :namespace_name,
      :new_table_name,
      :snapshot_name,
      :source_database_name,
      :source_schema_name,
      :source_table_name,
      :target_database_name,
      :target_schema_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_restore_status
    #   The TableRestoreStatus object that contains the status of the
    #   restore operation.
    #   @return [Types::TableRestoreStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreTableFromSnapshotResponse AWS API Documentation
    #
    class RestoreTableFromSnapshotResponse < Struct.new(
      :table_restore_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The schedule of when Amazon Redshift Serverless should run the
    # scheduled action.
    #
    # @note Schedule is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Schedule is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Schedule corresponding to the set member.
    #
    # @!attribute [rw] at
    #   The timestamp of when Amazon Redshift Serverless should run the
    #   scheduled action. Timestamp is in UTC. Format of at expression is
    #   `yyyy-mm-ddThh:mm:ss`. For example, `2016-03-04T17:27:00`.
    #   @return [Time]
    #
    # @!attribute [rw] cron
    #   The cron expression to use to schedule a recurring scheduled action.
    #   Schedule invocations must be separated by at least one hour. Times
    #   are in UTC.
    #
    #   Format of cron expressions is `(Minutes Hours Day-of-month Month
    #   Day-of-week Year)`. For example, `"(0 10 ? * MON *)"`. For more
    #   information, see [Cron Expressions][1] in the *Amazon CloudWatch
    #   Events User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :at,
      :cron,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class At < Schedule; end
      class Cron < Schedule; end
      class Unknown < Schedule; end
    end

    # Contains names of objects associated with a scheduled action.
    #
    # @!attribute [rw] namespace_name
    #   Name of associated Amazon Redshift Serverless namespace.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   Name of associated scheduled action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ScheduledActionAssociation AWS API Documentation
    #
    class ScheduledActionAssociation < Struct.new(
      :namespace_name,
      :scheduled_action_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The returned scheduled action object.
    #
    # @!attribute [rw] end_time
    #   The end time of
    #   @return [Time]
    #
    # @!attribute [rw] namespace_name
    #   The end time in UTC when the schedule is no longer active. After
    #   this time, the scheduled action does not trigger.
    #   @return [String]
    #
    # @!attribute [rw] next_invocations
    #   An array of timestamps of when the next scheduled actions will
    #   trigger.
    #   @return [Array<Time>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role to assume to run the scheduled action. This
    #   IAM role must have permission to run the Amazon Redshift Serverless
    #   API operation in the scheduled action. This IAM role must allow the
    #   Amazon Redshift scheduler to schedule creating snapshots. (Principal
    #   scheduler.redshift.amazonaws.com) to assume permissions on your
    #   behalf. For more information about the IAM role to use with the
    #   Amazon Redshift scheduler, see [Using Identity-Based Policies for
    #   Amazon Redshift][1] in the Amazon Redshift Management Guide
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for a one-time (at timestamp format) or recurring (cron
    #   format) scheduled action. Schedule invocations must be separated by
    #   at least one hour. Times are in UTC.
    #
    #   * Format of at timestamp is `yyyy-mm-ddThh:mm:ss`. For example,
    #     `2016-03-04T17:27:00`.
    #
    #   * Format of cron expression is `(Minutes Hours Day-of-month Month
    #     Day-of-week Year)`. For example, `"(0 10 ? * MON *)"`. For more
    #     information, see [Cron Expressions][1] in the *Amazon CloudWatch
    #     Events User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] scheduled_action_description
    #   The description of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_uuid
    #   The uuid of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time in UTC when the schedule is active. Before this time,
    #   the scheduled action does not trigger.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] target_action
    #   A JSON format string of the Amazon Redshift Serverless API operation
    #   with input parameters. The following is an example of a target
    #   action.
    #
    #   `"{"CreateSnapshot": {"NamespaceName":
    #   "sampleNamespace","SnapshotName": "sampleSnapshot",
    #   "retentionPeriod": "1"}}"`
    #   @return [Types::TargetAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ScheduledActionResponse AWS API Documentation
    #
    class ScheduledActionResponse < Struct.new(
      :end_time,
      :namespace_name,
      :next_invocations,
      :role_arn,
      :schedule,
      :scheduled_action_description,
      :scheduled_action_name,
      :scheduled_action_uuid,
      :start_time,
      :state,
      :target_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a track that determines which Amazon Redshift version to apply
    # after a new version is released. If the value for `ServerlessTrack` is
    # `current`, the workgroup is updated to the most recently certified
    # release. If the value is `trailing`, the workgroup is updated to the
    # previously certified release.
    #
    # @!attribute [rw] track_name
    #   The name of the track. Valid values are `current` and `trailing`.
    #   @return [String]
    #
    # @!attribute [rw] update_targets
    #   An array of `UpdateTarget` objects to update with the track.
    #   @return [Array<Types::UpdateTarget>]
    #
    # @!attribute [rw] workgroup_version
    #   The workgroup version number for the workgroup release.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ServerlessTrack AWS API Documentation
    #
    class ServerlessTrack < Struct.new(
      :track_name,
      :update_targets,
      :workgroup_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service limit was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A snapshot object that contains databases.
    #
    # @!attribute [rw] accounts_with_provisioned_restore_access
    #   All of the Amazon Web Services accounts that have access to restore
    #   a snapshot to a provisioned cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] accounts_with_restore_access
    #   All of the Amazon Web Services accounts that have access to restore
    #   a snapshot to a namespace.
    #   @return [Array<String>]
    #
    # @!attribute [rw] actual_incremental_backup_size_in_mega_bytes
    #   The size of the incremental backup in megabytes.
    #   @return [Float]
    #
    # @!attribute [rw] admin_password_secret_arn
    #   The Amazon Resource Name (ARN) for the namespace's admin user
    #   credentials secret.
    #   @return [String]
    #
    # @!attribute [rw] admin_password_secret_kms_key_id
    #   The ID of the Key Management Service (KMS) key used to encrypt and
    #   store the namespace's admin credentials secret.
    #   @return [String]
    #
    # @!attribute [rw] admin_username
    #   The username of the database within a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] backup_progress_in_mega_bytes
    #   The size in megabytes of the data that has been backed up to a
    #   snapshot.
    #   @return [Float]
    #
    # @!attribute [rw] current_backup_rate_in_mega_bytes_per_second
    #   The rate at which data is backed up into a snapshot in megabytes per
    #   second.
    #   @return [Float]
    #
    # @!attribute [rw] elapsed_time_in_seconds
    #   The amount of time it took to back up data into a snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_seconds_to_completion
    #   The estimated amount of seconds until the snapshot completes backup.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   The unique identifier of the KMS key used to encrypt the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] namespace_arn
    #   The Amazon Resource Name (ARN) of the namespace the snapshot was
    #   created from.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namepsace.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The owner Amazon Web Services; account of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_arn
    #   The Amazon Resource Name (ARN) of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   The timestamp of when the snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_remaining_days
    #   The amount of days until the snapshot is deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_retention_period
    #   The period of time, in days, of how long the snapshot is retained.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_retention_start_time
    #   The timestamp of when data within the snapshot started getting
    #   retained.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] total_backup_size_in_mega_bytes
    #   The total size, in megabytes, of how big the snapshot is.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/Snapshot AWS API Documentation
    #
    class Snapshot < Struct.new(
      :accounts_with_provisioned_restore_access,
      :accounts_with_restore_access,
      :actual_incremental_backup_size_in_mega_bytes,
      :admin_password_secret_arn,
      :admin_password_secret_kms_key_id,
      :admin_username,
      :backup_progress_in_mega_bytes,
      :current_backup_rate_in_mega_bytes_per_second,
      :elapsed_time_in_seconds,
      :estimated_seconds_to_completion,
      :kms_key_id,
      :namespace_arn,
      :namespace_name,
      :owner_account,
      :snapshot_arn,
      :snapshot_create_time,
      :snapshot_name,
      :snapshot_remaining_days,
      :snapshot_retention_period,
      :snapshot_retention_start_time,
      :status,
      :total_backup_size_in_mega_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object that you configure to copy snapshots from one namespace to
    # a namespace in another Amazon Web Services Region.
    #
    # @!attribute [rw] destination_kms_key_id
    #   The ID of the KMS key to use to encrypt your snapshots in the
    #   destination Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] destination_region
    #   The destination Amazon Web Services Region to copy snapshots to.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace to copy snapshots from in the source
    #   Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_copy_configuration_arn
    #   The ARN of the snapshot copy configuration object.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_copy_configuration_id
    #   The ID of the snapshot copy configuration object.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_retention_period
    #   The retention period of snapshots that are copied to the destination
    #   Amazon Web Services Region.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/SnapshotCopyConfiguration AWS API Documentation
    #
    class SnapshotCopyConfiguration < Struct.new(
      :destination_kms_key_id,
      :destination_region,
      :namespace_name,
      :snapshot_copy_configuration_arn,
      :snapshot_copy_configuration_id,
      :snapshot_retention_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a table restore request.
    #
    # @!attribute [rw] message
    #   A message that explains the returned status. For example, if the
    #   status of the operation is `FAILED`, the message explains why the
    #   operation failed.
    #   @return [String]
    #
    # @!attribute [rw] namespace_name
    #   The namespace of the table being restored from.
    #   @return [String]
    #
    # @!attribute [rw] new_table_name
    #   The name of the table to create from the restore operation.
    #   @return [String]
    #
    # @!attribute [rw] progress_in_mega_bytes
    #   The amount of data restored to the new table so far, in megabytes
    #   (MB).
    #   @return [Integer]
    #
    # @!attribute [rw] recovery_point_id
    #   The ID of the recovery point being restored from.
    #   @return [String]
    #
    # @!attribute [rw] request_time
    #   The time that the table restore request was made, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the snapshot being restored from.
    #   @return [String]
    #
    # @!attribute [rw] source_database_name
    #   The name of the source database being restored from.
    #   @return [String]
    #
    # @!attribute [rw] source_schema_name
    #   The name of the source schema being restored from.
    #   @return [String]
    #
    # @!attribute [rw] source_table_name
    #   The name of the source table being restored from.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A value that describes the current state of the table restore
    #   request. Possible values are `SUCCEEDED`, `FAILED`, `CANCELED`,
    #   `PENDING`, and `IN_PROGRESS`.
    #   @return [String]
    #
    # @!attribute [rw] table_restore_request_id
    #   The ID of the RestoreTableFromSnapshot request.
    #   @return [String]
    #
    # @!attribute [rw] target_database_name
    #   The name of the database to restore to.
    #   @return [String]
    #
    # @!attribute [rw] target_schema_name
    #   The name of the schema to restore to.
    #   @return [String]
    #
    # @!attribute [rw] total_data_in_mega_bytes
    #   The total amount of data to restore to the new table, in megabytes
    #   (MB).
    #   @return [Integer]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup being restored from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/TableRestoreStatus AWS API Documentation
    #
    class TableRestoreStatus < Struct.new(
      :message,
      :namespace_name,
      :new_table_name,
      :progress_in_mega_bytes,
      :recovery_point_id,
      :request_time,
      :snapshot_name,
      :source_database_name,
      :source_schema_name,
      :source_table_name,
      :status,
      :table_restore_request_id,
      :target_database_name,
      :target_schema_name,
      :total_data_in_mega_bytes,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map of key-value pairs.
    #
    # @!attribute [rw] key
    #   The key to use in the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The map of the key-value pairs used to tag the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # A JSON format string of the Amazon Redshift Serverless API operation
    # with input parameters. The following is an example of a target action.
    #
    # `"{"CreateSnapshot": {"NamespaceName":
    # "sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod":
    # "1"}}"`
    #
    # @note TargetAction is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TargetAction is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TargetAction corresponding to the set member.
    #
    # @!attribute [rw] create_snapshot
    #   The parameters that you can use to configure a [scheduled action][1]
    #   to create a snapshot. For more information about creating a
    #   scheduled action, see [CreateScheduledAction][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_CreateScheduledAction.html
    #   @return [Types::CreateSnapshotScheduleActionParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/TargetAction AWS API Documentation
    #
    class TargetAction < Struct.new(
      :create_snapshot,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CreateSnapshot < TargetAction; end
      class Unknown < TargetAction; end
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeded the number of tags allowed for a resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource that exceeded the number of tags allowed
    #   for a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag or set of tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] custom_domain_certificate_arn
    #   The custom domain name’s certificate Amazon resource name (ARN).
    #   This is optional.
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name associated with the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup associated with the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateCustomDomainAssociationRequest AWS API Documentation
    #
    class UpdateCustomDomainAssociationRequest < Struct.new(
      :custom_domain_certificate_arn,
      :custom_domain_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_domain_certificate_arn
    #   The custom domain name’s certificate Amazon resource name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_certificate_expiry_time
    #   The expiration time for the certificate.
    #   @return [Time]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name associated with the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup associated with the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateCustomDomainAssociationResponse AWS API Documentation
    #
    class UpdateCustomDomainAssociationResponse < Struct.new(
      :custom_domain_certificate_arn,
      :custom_domain_certificate_expiry_time,
      :custom_domain_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   The name of the VPC endpoint to update.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   The list of VPC security groups associated with the endpoint after
    #   the endpoint is modified.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateEndpointAccessRequest AWS API Documentation
    #
    class UpdateEndpointAccessRequest < Struct.new(
      :endpoint_name,
      :vpc_security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The updated VPC endpoint.
    #   @return [Types::EndpointAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateEndpointAccessResponse AWS API Documentation
    #
    class UpdateEndpointAccessResponse < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_password_secret_kms_key_id
    #   The ID of the Key Management Service (KMS) key used to encrypt and
    #   store the namespace's admin credentials secret. You can only use
    #   this parameter if `manageAdminPassword` is true.
    #   @return [String]
    #
    # @!attribute [rw] admin_user_password
    #   The password of the administrator for the first database created in
    #   the namespace. This parameter must be updated together with
    #   `adminUsername`.
    #
    #   You can't use `adminUserPassword` if `manageAdminPassword` is true.
    #   @return [String]
    #
    # @!attribute [rw] admin_username
    #   The username of the administrator for the first database created in
    #   the namespace. This parameter must be updated together with
    #   `adminUserPassword`.
    #   @return [String]
    #
    # @!attribute [rw] default_iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to set as a default
    #   in the namespace. This parameter must be updated together with
    #   `iamRoles`.
    #   @return [String]
    #
    # @!attribute [rw] iam_roles
    #   A list of IAM roles to associate with the namespace. This parameter
    #   must be updated together with `defaultIamRoleArn`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the Amazon Web Services Key Management Service key used to
    #   encrypt your data.
    #   @return [String]
    #
    # @!attribute [rw] log_exports
    #   The types of logs the namespace can export. The export types are
    #   `userlog`, `connectionlog`, and `useractivitylog`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] manage_admin_password
    #   If `true`, Amazon Redshift uses Secrets Manager to manage the
    #   namespace's admin credentials. You can't use `adminUserPassword`
    #   if `manageAdminPassword` is true. If `manageAdminPassword` is false
    #   or not set, Amazon Redshift uses `adminUserPassword` for the admin
    #   user account's password.
    #   @return [Boolean]
    #
    # @!attribute [rw] namespace_name
    #   The name of the namespace to update. You can't update the name of a
    #   namespace once it is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateNamespaceRequest AWS API Documentation
    #
    class UpdateNamespaceRequest < Struct.new(
      :admin_password_secret_kms_key_id,
      :admin_user_password,
      :admin_username,
      :default_iam_role_arn,
      :iam_roles,
      :kms_key_id,
      :log_exports,
      :manage_admin_password,
      :namespace_name)
      SENSITIVE = [:admin_user_password, :admin_username]
      include Aws::Structure
    end

    # @!attribute [rw] namespace
    #   A list of tag instances.
    #   @return [Types::Namespace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateNamespaceResponse AWS API Documentation
    #
    class UpdateNamespaceResponse < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   Specifies whether to enable the scheduled action.
    #   @return [Boolean]
    #
    # @!attribute [rw] end_time
    #   The end time in UTC of the scheduled action to update.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role to assume to run the scheduled action. This
    #   IAM role must have permission to run the Amazon Redshift Serverless
    #   API operation in the scheduled action. This IAM role must allow the
    #   Amazon Redshift scheduler to schedule creating snapshots (Principal
    #   scheduler.redshift.amazonaws.com) to assume permissions on your
    #   behalf. For more information about the IAM role to use with the
    #   Amazon Redshift scheduler, see [Using Identity-Based Policies for
    #   Amazon Redshift][1] in the Amazon Redshift Management Guide
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for a one-time (at timestamp format) or recurring (cron
    #   format) scheduled action. Schedule invocations must be separated by
    #   at least one hour. Times are in UTC.
    #
    #   * Format of at timestamp is `yyyy-mm-ddThh:mm:ss`. For example,
    #     `2016-03-04T17:27:00`.
    #
    #   * Format of cron expression is `(Minutes Hours Day-of-month Month
    #     Day-of-week Year)`. For example, `"(0 10 ? * MON *)"`. For more
    #     information, see [Cron Expressions][1] in the *Amazon CloudWatch
    #     Events User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] scheduled_action_description
    #   The descripion of the scheduled action to update to.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action to update to.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time in UTC of the scheduled action to update to.
    #   @return [Time]
    #
    # @!attribute [rw] target_action
    #   A JSON format string of the Amazon Redshift Serverless API operation
    #   with input parameters. The following is an example of a target
    #   action.
    #
    #   `"{"CreateSnapshot": {"NamespaceName":
    #   "sampleNamespace","SnapshotName": "sampleSnapshot",
    #   "retentionPeriod": "1"}}"`
    #   @return [Types::TargetAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateScheduledActionRequest AWS API Documentation
    #
    class UpdateScheduledActionRequest < Struct.new(
      :enabled,
      :end_time,
      :role_arn,
      :schedule,
      :scheduled_action_description,
      :scheduled_action_name,
      :start_time,
      :target_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_action
    #   The ScheduledAction object that was updated.
    #   @return [Types::ScheduledActionResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateScheduledActionResponse AWS API Documentation
    #
    class UpdateScheduledActionResponse < Struct.new(
      :scheduled_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_copy_configuration_id
    #   The ID of the snapshot copy configuration to update.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_retention_period
    #   The new retention period of how long to keep a snapshot in the
    #   destination Amazon Web Services Region.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateSnapshotCopyConfigurationRequest AWS API Documentation
    #
    class UpdateSnapshotCopyConfigurationRequest < Struct.new(
      :snapshot_copy_configuration_id,
      :snapshot_retention_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_copy_configuration
    #   The updated snapshot copy configuration object.
    #   @return [Types::SnapshotCopyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateSnapshotCopyConfigurationResponse AWS API Documentation
    #
    class UpdateSnapshotCopyConfigurationResponse < Struct.new(
      :snapshot_copy_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retention_period
    #   The new retention period of the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateSnapshotRequest AWS API Documentation
    #
    class UpdateSnapshotRequest < Struct.new(
      :retention_period,
      :snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   The updated snapshot object.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateSnapshotResponse AWS API Documentation
    #
    class UpdateSnapshotResponse < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # A track that you can switch the current track to.
    #
    # @!attribute [rw] track_name
    #   The name of the new track.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_version
    #   The workgroup version for the new track.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateTarget AWS API Documentation
    #
    class UpdateTarget < Struct.new(
      :track_name,
      :workgroup_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] amount
    #   The new limit amount. If time-based, this amount is in Redshift
    #   Processing Units (RPU) consumed per hour. If data-based, this amount
    #   is in terabytes (TB) of data transferred between Regions in
    #   cross-account sharing. The value must be a positive number.
    #   @return [Integer]
    #
    # @!attribute [rw] breach_action
    #   The new action that Amazon Redshift Serverless takes when the limit
    #   is reached.
    #   @return [String]
    #
    # @!attribute [rw] usage_limit_id
    #   The identifier of the usage limit to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateUsageLimitRequest AWS API Documentation
    #
    class UpdateUsageLimitRequest < Struct.new(
      :amount,
      :breach_action,
      :usage_limit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usage_limit
    #   The updated usage limit object.
    #   @return [Types::UsageLimit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateUsageLimitResponse AWS API Documentation
    #
    class UpdateUsageLimitResponse < Struct.new(
      :usage_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] base_capacity
    #   The new base data warehouse capacity in Redshift Processing Units
    #   (RPUs).
    #   @return [Integer]
    #
    # @!attribute [rw] config_parameters
    #   An array of parameters to set for advanced control over a database.
    #   The options are `auto_mv`, `datestyle`,
    #   `enable_case_sensitive_identifier`, `enable_user_activity_logging`,
    #   `query_group`, `search_path`, `require_ssl`, `use_fips_ssl`, and
    #   query monitoring metrics that let you define performance boundaries.
    #   For more information about query monitoring rules and available
    #   metrics, see [ Query monitoring metrics for Amazon Redshift
    #   Serverless][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless
    #   @return [Array<Types::ConfigParameter>]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   The value that specifies whether to turn on enhanced virtual private
    #   cloud (VPC) routing, which forces Amazon Redshift Serverless to
    #   route traffic through your VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type that the workgroup supports. Possible values are
    #   `ipv4` and `dualstack`.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The maximum data-warehouse capacity Amazon Redshift Serverless uses
    #   to serve queries. The max capacity is specified in RPUs.
    #   @return [Integer]
    #
    # @!attribute [rw] port
    #   The custom port to use when connecting to a workgroup. Valid port
    #   ranges are 5431-5455 and 8191-8215. The default is 5439.
    #   @return [Integer]
    #
    # @!attribute [rw] price_performance_target
    #   An object that represents the price performance target settings for
    #   the workgroup.
    #   @return [Types::PerformanceTarget]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that specifies whether the workgroup can be accessible from
    #   a public network.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_group_ids
    #   An array of security group IDs to associate with the workgroup.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   An array of VPC subnet IDs to associate with the workgroup.
    #   @return [Array<String>]
    #
    # @!attribute [rw] track_name
    #   An optional parameter for the name of the track for the workgroup.
    #   If you don't provide a track name, the workgroup is assigned to the
    #   `current` track.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup to update. You can't update the name of a
    #   workgroup once it is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateWorkgroupRequest AWS API Documentation
    #
    class UpdateWorkgroupRequest < Struct.new(
      :base_capacity,
      :config_parameters,
      :enhanced_vpc_routing,
      :ip_address_type,
      :max_capacity,
      :port,
      :price_performance_target,
      :publicly_accessible,
      :security_group_ids,
      :subnet_ids,
      :track_name,
      :workgroup_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workgroup
    #   The updated workgroup object.
    #   @return [Types::Workgroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateWorkgroupResponse AWS API Documentation
    #
    class UpdateWorkgroupResponse < Struct.new(
      :workgroup)
      SENSITIVE = []
      include Aws::Structure
    end

    # The usage limit object.
    #
    # @!attribute [rw] amount
    #   The limit amount. If time-based, this amount is in RPUs consumed per
    #   hour. If data-based, this amount is in terabytes (TB). The value
    #   must be a positive number.
    #   @return [Integer]
    #
    # @!attribute [rw] breach_action
    #   The action that Amazon Redshift Serverless takes when the limit is
    #   reached.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The time period that the amount applies to. A weekly period begins
    #   on Sunday. The default is monthly.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the Amazon Redshift
    #   Serverless resource.
    #   @return [String]
    #
    # @!attribute [rw] usage_limit_arn
    #   The Amazon Resource Name (ARN) of the resource associated with the
    #   usage limit.
    #   @return [String]
    #
    # @!attribute [rw] usage_limit_id
    #   The identifier of the usage limit.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The Amazon Redshift Serverless feature to limit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UsageLimit AWS API Documentation
    #
    class UsageLimit < Struct.new(
      :amount,
      :breach_action,
      :period,
      :resource_arn,
      :usage_limit_arn,
      :usage_limit_id,
      :usage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connection endpoint for connecting to Amazon Redshift Serverless
    # through the proxy.
    #
    # @!attribute [rw] network_interfaces
    #   One or more network interfaces of the endpoint. Also known as an
    #   interface endpoint.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The connection endpoint ID for connecting to Amazon Redshift
    #   Serverless.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC identifier that the endpoint is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/VpcEndpoint AWS API Documentation
    #
    class VpcEndpoint < Struct.new(
      :network_interfaces,
      :vpc_endpoint_id,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the members of a VPC security group.
    #
    # @!attribute [rw] status
    #   The status of the VPC security group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_id
    #   The unique identifier of the VPC security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/VpcSecurityGroupMembership AWS API Documentation
    #
    class VpcSecurityGroupMembership < Struct.new(
      :status,
      :vpc_security_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The collection of computing resources from which an endpoint is
    # created.
    #
    # @!attribute [rw] base_capacity
    #   The base data warehouse capacity of the workgroup in Redshift
    #   Processing Units (RPUs).
    #   @return [Integer]
    #
    # @!attribute [rw] config_parameters
    #   An array of parameters to set for advanced control over a database.
    #   The options are `auto_mv`, `datestyle`,
    #   `enable_case_sensitive_identifier`, `enable_user_activity_logging`,
    #   `query_group`, `search_path`, `require_ssl`, `use_fips_ssl`, and
    #   query monitoring metrics that let you define performance boundaries.
    #   For more information about query monitoring rules and available
    #   metrics, see [ Query monitoring metrics for Amazon Redshift
    #   Serverless][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless
    #   @return [Array<Types::ConfigParameter>]
    #
    # @!attribute [rw] creation_date
    #   The creation date of the workgroup.
    #   @return [Time]
    #
    # @!attribute [rw] cross_account_vpcs
    #   A list of VPCs. Each entry is the unique identifier of a virtual
    #   private cloud with access to Amazon Redshift Serverless. If all of
    #   the VPCs for the grantee are allowed, it shows an asterisk.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_domain_certificate_arn
    #   The custom domain name’s certificate Amazon resource name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] custom_domain_certificate_expiry_time
    #   The expiration time for the certificate.
    #   @return [Time]
    #
    # @!attribute [rw] custom_domain_name
    #   The custom domain name associated with the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint that is created from the workgroup.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   The value that specifies whether to enable enhanced virtual private
    #   cloud (VPC) routing, which forces Amazon Redshift Serverless to
    #   route traffic through your VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type that the workgroup supports. Possible values are
    #   `ipv4` and `dualstack`.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The maximum data-warehouse capacity Amazon Redshift Serverless uses
    #   to serve queries. The max capacity is specified in RPUs.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace_name
    #   The namespace the workgroup is associated with.
    #   @return [String]
    #
    # @!attribute [rw] patch_version
    #   The patch version of your Amazon Redshift Serverless workgroup. For
    #   more information about patch versions, see [Cluster versions for
    #   Amazon Redshift][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/cluster-versions.html
    #   @return [String]
    #
    # @!attribute [rw] pending_track_name
    #   The name for the track that you want to assign to the workgroup.
    #   When the track changes, the workgroup is switched to the latest
    #   workgroup release available for the track. At this point, the track
    #   name is applied.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The custom port to use when connecting to a workgroup. Valid port
    #   ranges are 5431-5455 and 8191-8215. The default is 5439.
    #   @return [Integer]
    #
    # @!attribute [rw] price_performance_target
    #   An object that represents the price performance target settings for
    #   the workgroup.
    #   @return [Types::PerformanceTarget]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that specifies whether the workgroup can be accessible from
    #   a public network.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_group_ids
    #   An array of security group IDs to associate with the workgroup.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   An array of subnet IDs the workgroup is associated with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] track_name
    #   The name of the track for the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_arn
    #   The Amazon Resource Name (ARN) that links to the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_id
    #   The unique identifier of the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_name
    #   The name of the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] workgroup_version
    #   The Amazon Redshift Serverless version of your workgroup. For more
    #   information about Amazon Redshift Serverless versions, see[Cluster
    #   versions for Amazon Redshift][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/cluster-versions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/Workgroup AWS API Documentation
    #
    class Workgroup < Struct.new(
      :base_capacity,
      :config_parameters,
      :creation_date,
      :cross_account_vpcs,
      :custom_domain_certificate_arn,
      :custom_domain_certificate_expiry_time,
      :custom_domain_name,
      :endpoint,
      :enhanced_vpc_routing,
      :ip_address_type,
      :max_capacity,
      :namespace_name,
      :patch_version,
      :pending_track_name,
      :port,
      :price_performance_target,
      :publicly_accessible,
      :security_group_ids,
      :status,
      :subnet_ids,
      :track_name,
      :workgroup_arn,
      :workgroup_id,
      :workgroup_name,
      :workgroup_version)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

