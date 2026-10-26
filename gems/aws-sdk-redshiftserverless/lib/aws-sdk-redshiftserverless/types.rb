# frozen_string_literal: true

# This is generated code!

module Aws::RedshiftServerless
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the custom domain name association.</p>
    # @!attribute custom_domain_certificate_arn
    #   <p>The custom domain name’s certificate Amazon resource name (ARN).</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_expiry_time
    #   <p>The expiration time for the certificate.</p>
    #   @return [Time]
    # @!attribute custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    #   @return [String]
    class Association < Struct.new(
      nil,
      :custom_domain_certificate_arn,
      :custom_domain_certificate_expiry_time,
      :custom_domain_name,
      :workgroup_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An array of key-value pairs to set for advanced control over Amazon Redshift Serverless.</p>
    # @!attribute parameter_key
    #   <p>The key of the parameter. The options are <code>auto_mv</code>, <code>datestyle</code>, <code>enable_case_sensitive_identifier</code>, <code>enable_user_activity_logging</code>, <code>query_group</code>, <code>search_path</code>, <code>require_ssl</code>, <code>use_fips_ssl</code>, and either <code>wlm_json_configuration</code> or query monitoring metrics that let you define performance boundaries. You can either specify individual query monitoring metrics (such as <code>max_scan_row_count</code>, <code>max_query_execution_time</code>) or use <code>wlm_json_configuration</code> to define query queues with rules, but not both. If you're using <code>wlm_json_configuration</code>, the maximum size of <code>parameterValue</code> is 8000 characters. For more information about query monitoring rules and available metrics, see <a href="https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless">Query monitoring metrics for Amazon Redshift Serverless</a>.</p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>The value of the parameter to set.</p>
    #   @return [String]
    class ConfigParameter < Struct.new(
      nil,
      :parameter_key,
      :parameter_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The submitted action has conflicts.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_point_id
    #   <p>The unique identifier of the recovery point.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>The name of the snapshot.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>How long to retain the snapshot.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>An array of <a href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html">Tag objects</a> to associate with the created snapshot.</p>
    #   @return [Array<Types::Tag>]
    class ConvertRecoveryPointToSnapshotRequest < Struct.new(
      nil,
      :recovery_point_id,
      :snapshot_name,
      :retention_period,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>The snapshot converted from the recovery point.</p>
    #   @return [Types::Snapshot]
    class ConvertRecoveryPointToSnapshotResponse < Struct.new(
      nil,
      :snapshot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    #   @return [String]
    # @!attribute custom_domain_name
    #   <p>The custom domain name to associate with the workgroup.</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_arn
    #   <p>The custom domain name’s certificate Amazon resource name (ARN).</p>
    #   @return [String]
    class CreateCustomDomainAssociationRequest < Struct.new(
      nil,
      :workgroup_name,
      :custom_domain_name,
      :custom_domain_certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_domain_name
    #   <p>The custom domain name to associate with the workgroup.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_arn
    #   <p>The custom domain name’s certificate Amazon resource name (ARN).</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_expiry_time
    #   <p>The expiration time for the certificate.</p>
    #   @return [Time]
    class CreateCustomDomainAssociationResponse < Struct.new(
      nil,
      :custom_domain_name,
      :workgroup_name,
      :custom_domain_certificate_arn,
      :custom_domain_certificate_expiry_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the VPC endpoint. An endpoint name must contain 1-30 characters. Valid characters are A-Z, a-z, 0-9, and hyphen(-). The first character must be a letter. The name can't contain two consecutive hyphens or end with a hyphen.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The unique identifers of subnets from which Amazon Redshift Serverless chooses one to deploy a VPC endpoint.</p>
    #   @return [Array<String>]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup to associate with the VPC endpoint.</p>
    #   @return [String]
    # @!attribute vpc_security_group_ids
    #   <p>The unique identifiers of the security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.</p>
    #   @return [Array<String>]
    # @!attribute owner_account
    #   <p>The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.</p>
    #   @return [String]
    class CreateEndpointAccessRequest < Struct.new(
      nil,
      :endpoint_name,
      :subnet_ids,
      :workgroup_name,
      :vpc_security_group_ids,
      :owner_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint
    #   <p>The created VPC endpoint.</p>
    #   @return [Types::EndpointAccess]
    class CreateEndpointAccessResponse < Struct.new(
      nil,
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The name of the namespace.</p>
    #   @return [String]
    # @!attribute admin_username
    #   <p>The username of the administrator for the first database created in the namespace.</p>
    #   @return [String]
    # @!attribute admin_user_password
    #   <p>The password of the administrator for the first database created in the namespace.</p> <p>You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. </p>
    #   @return [String]
    # @!attribute db_name
    #   <p>The name of the first database created in the namespace.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the Amazon Web Services Key Management Service key used to encrypt your data.</p>
    #   @return [String]
    # @!attribute default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace.</p>
    #   @return [String]
    # @!attribute iam_roles
    #   <p>A list of IAM roles to associate with the namespace.</p>
    #   @return [Array<String>]
    # @!attribute log_exports
    #   <p>The types of logs the namespace can export. Available export types are <code>userlog</code>, <code>connectionlog</code>, and <code>useractivitylog</code>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute manage_admin_password
    #   <p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage the namespace's admin credentials. You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. If <code>manageAdminPassword</code> is false or not set, Amazon Redshift uses <code>adminUserPassword</code> for the admin user account's password. </p>
    #   @return [Boolean]
    # @!attribute admin_password_secret_kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret. You can only use this parameter if <code>manageAdminPassword</code> is true.</p>
    #   @return [String]
    # @!attribute redshift_idc_application_arn
    #   <p>The ARN for the Redshift application that integrates with IAM Identity Center.</p>
    #   @return [String]
    class CreateNamespaceRequest < Struct.new(
      nil,
      :namespace_name,
      :admin_username,
      :admin_user_password,
      :db_name,
      :kms_key_id,
      :default_iam_role_arn,
      :iam_roles,
      :log_exports,
      :tags,
      :manage_admin_password,
      :admin_password_secret_kms_key_id,
      :redshift_idc_application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace
    #   <p>The created namespace object.</p>
    #   @return [Types::Namespace]
    class CreateNamespaceResponse < Struct.new(
      nil,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity
    #   <p>The number of Redshift Processing Units (RPUs) to reserve.</p>
    #   @return [Integer]
    # @!attribute offering_id
    #   <p>The ID of the offering associated with the reservation. The offering determines the payment schedule for the reservation.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. This token must be a valid UUIDv4 value. For more information about idempotency, see <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/"> Making retries safe with idempotent APIs </a>.</p>
    #   @return [String]
    class CreateReservationRequest < Struct.new(
      nil,
      :capacity,
      :offering_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reservation
    #   <p>The reservation object that the <code>CreateReservation</code> action created.</p>
    #   @return [Types::Reservation]
    class CreateReservationResponse < Struct.new(
      nil,
      :reservation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #   @return [String]
    # @!attribute target_action
    #   <p>A JSON format string of the Amazon Redshift Serverless API operation with input parameters. The following is an example of a target action.</p> <p> <code>"{"CreateSnapshot": {"NamespaceName": "sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod": "1"}}"</code> </p>
    #   @return [Types::TargetAction]
    # @!attribute schedule
    #   <p>The schedule for a one-time (at timestamp format) or recurring (cron format) scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.</p> <ul> <li> <p>Format of at timestamp is <code>yyyy-mm-ddThh:mm:ss</code>. For example, <code>2016-03-04T17:27:00</code>.</p> </li> <li> <p>Format of cron expression is <code>(Minutes Hours Day-of-month Month Day-of-week Year)</code>. For example, <code>"(0 10 ? * MON *)"</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p> </li> </ul>
    #   @return [Types::Schedule]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role to assume to run the scheduled action. This IAM role must have permission to run the Amazon Redshift Serverless API operation in the scheduled action. This IAM role must allow the Amazon Redshift scheduler to schedule creating snapshots. (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf. For more information about the IAM role to use with the Amazon Redshift scheduler, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html">Using Identity-Based Policies for Amazon Redshift</a> in the Amazon Redshift Management Guide</p>
    #   @return [String]
    # @!attribute namespace_name
    #   <p>The name of the namespace for which to create a scheduled action.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Indicates whether the schedule is enabled. If false, the scheduled action does not trigger. For more information about <code>state</code> of the scheduled action, see <a href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_ScheduledAction.html">ScheduledAction</a>.</p>
    #   @return [Boolean]
    # @!attribute scheduled_action_description
    #   <p>The description of the scheduled action.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger.</p>
    #   @return [Time]
    class CreateScheduledActionRequest < Struct.new(
      nil,
      :scheduled_action_name,
      :target_action,
      :schedule,
      :role_arn,
      :namespace_name,
      :enabled,
      :scheduled_action_description,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_action
    #   <p>The returned <code>ScheduledAction</code> object that describes the properties of a scheduled action.</p>
    #   @return [Types::ScheduledActionResponse]
    class CreateScheduledActionResponse < Struct.new(
      nil,
      :scheduled_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The name of the namespace to copy snapshots from.</p>
    #   @return [String]
    # @!attribute destination_region
    #   <p>The destination Amazon Web Services Region that you want to copy snapshots to.</p>
    #   @return [String]
    # @!attribute snapshot_retention_period
    #   <p>The retention period of the snapshots that you copy to the destination Amazon Web Services Region.</p>
    #   @return [Integer]
    # @!attribute destination_kms_key_id
    #   <p>The KMS key to use to encrypt your snapshots in the destination Amazon Web Services Region.</p>
    #   @return [String]
    class CreateSnapshotCopyConfigurationRequest < Struct.new(
      nil,
      :namespace_name,
      :destination_region,
      :snapshot_retention_period,
      :destination_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_copy_configuration
    #   <p>The snapshot copy configuration object that is returned.</p>
    #   @return [Types::SnapshotCopyConfiguration]
    class CreateSnapshotCopyConfigurationResponse < Struct.new(
      nil,
      :snapshot_copy_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The namespace to create a snapshot for.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>The name of the snapshot.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>How long to retain the created snapshot.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>An array of <a href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html">Tag objects</a> to associate with the snapshot.</p>
    #   @return [Array<Types::Tag>]
    class CreateSnapshotRequest < Struct.new(
      nil,
      :namespace_name,
      :snapshot_name,
      :retention_period,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>The created snapshot object.</p>
    #   @return [Types::Snapshot]
    class CreateSnapshotResponse < Struct.new(
      nil,
      :snapshot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters that you can use to configure a <a href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_CreateScheduledAction.html">scheduled action</a> to create a snapshot. For more information about creating a scheduled action, see <a href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_CreateScheduledAction.html">CreateScheduledAction</a>.</p>
    # @!attribute namespace_name
    #   <p>The name of the namespace for which you want to configure a scheduled action to create a snapshot.</p>
    #   @return [String]
    # @!attribute snapshot_name_prefix
    #   <p>A string prefix that is attached to the name of the snapshot created by the scheduled action. The final name of the snapshot is the string prefix appended by the date and time of when the snapshot was created.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>The retention period of the snapshot created by the scheduled action.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>An array of <a href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html">Tag objects</a> to associate with the snapshot.</p>
    #   @return [Array<Types::Tag>]
    class CreateSnapshotScheduleActionParameters < Struct.new(
      nil,
      :namespace_name,
      :snapshot_name_prefix,
      :retention_period,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for.</p>
    #   @return [String]
    # @!attribute usage_type
    #   <p>The type of Amazon Redshift Serverless usage to create a usage limit for.</p>
    #   @return [String]
    # @!attribute amount
    #   <p>The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number.</p>
    #   @return [Integer]
    # @!attribute period
    #   <p>The time period that the amount applies to. A weekly period begins on Sunday. The default is monthly.</p>
    #   @return [String]
    # @!attribute breach_action
    #   <p>The action that Amazon Redshift Serverless takes when the limit is reached. The default is log.</p>
    #   @return [String]
    class CreateUsageLimitRequest < Struct.new(
      nil,
      :resource_arn,
      :usage_type,
      :amount,
      :period,
      :breach_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute usage_limit
    #   <p>The returned usage limit object.</p>
    #   @return [Types::UsageLimit]
    class CreateUsageLimitResponse < Struct.new(
      nil,
      :usage_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup_name
    #   <p>The name of the created workgroup.</p>
    #   @return [String]
    # @!attribute namespace_name
    #   <p>The name of the namespace to associate with the workgroup.</p>
    #   @return [String]
    # @!attribute base_capacity
    #   <p>The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs).</p>
    #   @return [Integer]
    # @!attribute enhanced_vpc_routing
    #   <p>The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.</p>
    #   @return [Boolean]
    # @!attribute config_parameters
    #   <p>An array of parameters to set for advanced control over a database. The options are <code>auto_mv</code>, <code>datestyle</code>, <code>enable_case_sensitive_identifier</code>, <code>enable_user_activity_logging</code>, <code>query_group</code>, <code>search_path</code>, <code>require_ssl</code>, <code>use_fips_ssl</code>, and either <code>wlm_json_configuration</code> or query monitoring metrics that let you define performance boundaries. You can either specify individual query monitoring metrics (such as <code>max_scan_row_count</code>, <code>max_query_execution_time</code>) or use <code>wlm_json_configuration</code> to define query queues with rules, but not both. If you're using <code>wlm_json_configuration</code>, the maximum size of <code>parameterValue</code> is 8000 characters. For more information about query monitoring rules and available metrics, see <a href="https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless"> Query monitoring metrics for Amazon Redshift Serverless</a>.</p>
    #   @return [Array<Types::ConfigParameter>]
    # @!attribute security_group_ids
    #   <p>An array of security group IDs to associate with the workgroup.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>An array of VPC subnet IDs to associate with the workgroup.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p>A value that specifies whether the workgroup can be accessed from a public network.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A array of tag instances.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute port
    #   <p>The custom port to use when connecting to a workgroup. Valid port ranges are 5431-5455 and 8191-8215. The default is 5439.</p>
    #   @return [Integer]
    # @!attribute max_capacity
    #   <p>The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries. The max capacity is specified in RPUs.</p>
    #   @return [Integer]
    # @!attribute price_performance_target
    #   <p>An object that represents the price performance target settings for the workgroup.</p>
    #   @return [Types::PerformanceTarget]
    # @!attribute ip_address_type
    #   <p>The IP address type that the workgroup supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>
    #   @return [String]
    # @!attribute track_name
    #   <p>An optional parameter for the name of the track for the workgroup. If you don't provide a track name, the workgroup is assigned to the <code>current</code> track.</p>
    #   @return [String]
    # @!attribute extra_compute_for_automatic_optimization
    #   <p>If <code>true</code>, allocates additional compute resources for running automatic optimization operations.</p> <p>Default: false</p>
    #   @return [Boolean]
    class CreateWorkgroupRequest < Struct.new(
      nil,
      :workgroup_name,
      :namespace_name,
      :base_capacity,
      :enhanced_vpc_routing,
      :config_parameters,
      :security_group_ids,
      :subnet_ids,
      :publicly_accessible,
      :tags,
      :port,
      :max_capacity,
      :price_performance_target,
      :ip_address_type,
      :track_name,
      :extra_compute_for_automatic_optimization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup
    #   <p>The created workgroup object.</p>
    #   @return [Types::Workgroup]
    class CreateWorkgroupResponse < Struct.new(
      nil,
      :workgroup,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    #   @return [String]
    # @!attribute custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    #   @return [String]
    class DeleteCustomDomainAssociationRequest < Struct.new(
      nil,
      :workgroup_name,
      :custom_domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCustomDomainAssociationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the VPC endpoint to delete.</p>
    #   @return [String]
    class DeleteEndpointAccessRequest < Struct.new(
      nil,
      :endpoint_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint
    #   <p>The deleted VPC endpoint.</p>
    #   @return [Types::EndpointAccess]
    class DeleteEndpointAccessResponse < Struct.new(
      nil,
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The name of the namespace to delete.</p>
    #   @return [String]
    # @!attribute final_snapshot_name
    #   <p>The name of the snapshot to be created before the namespace is deleted.</p>
    #   @return [String]
    # @!attribute final_snapshot_retention_period
    #   <p>How long to retain the final snapshot.</p>
    #   @return [Integer]
    class DeleteNamespaceRequest < Struct.new(
      nil,
      :namespace_name,
      :final_snapshot_name,
      :final_snapshot_retention_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace
    #   <p>The deleted namespace object.</p>
    #   @return [Types::Namespace]
    class DeleteNamespaceResponse < Struct.new(
      nil,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the policy to delete.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteResourcePolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action to delete.</p>
    #   @return [String]
    class DeleteScheduledActionRequest < Struct.new(
      nil,
      :scheduled_action_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_action
    #   <p>The deleted scheduled action object.</p>
    #   @return [Types::ScheduledActionResponse]
    class DeleteScheduledActionResponse < Struct.new(
      nil,
      :scheduled_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_copy_configuration_id
    #   <p>The ID of the snapshot copy configuration to delete.</p>
    #   @return [String]
    class DeleteSnapshotCopyConfigurationRequest < Struct.new(
      nil,
      :snapshot_copy_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_copy_configuration
    #   <p>The deleted snapshot copy configuration object.</p>
    #   @return [Types::SnapshotCopyConfiguration]
    class DeleteSnapshotCopyConfigurationResponse < Struct.new(
      nil,
      :snapshot_copy_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_name
    #   <p>The name of the snapshot to be deleted.</p>
    #   @return [String]
    class DeleteSnapshotRequest < Struct.new(
      nil,
      :snapshot_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>The deleted snapshot object.</p>
    #   @return [Types::Snapshot]
    class DeleteSnapshotResponse < Struct.new(
      nil,
      :snapshot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute usage_limit_id
    #   <p>The unique identifier of the usage limit to delete.</p>
    #   @return [String]
    class DeleteUsageLimitRequest < Struct.new(
      nil,
      :usage_limit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute usage_limit
    #   <p>The deleted usage limit object.</p>
    #   @return [Types::UsageLimit]
    class DeleteUsageLimitResponse < Struct.new(
      nil,
      :usage_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup_name
    #   <p>The name of the workgroup to be deleted.</p>
    #   @return [String]
    class DeleteWorkgroupRequest < Struct.new(
      nil,
      :workgroup_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup
    #   <p>The deleted workgroup object.</p>
    #   @return [Types::Workgroup]
    class DeleteWorkgroupResponse < Struct.new(
      nil,
      :workgroup,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the request was successful, but dry run was enabled so no action was taken.</p>
    # @!attribute message
    #   @return [String]
    class DryRunException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC endpoint object.</p>
    # @!attribute address
    #   <p>The DNS address of the VPC endpoint.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port that Amazon Redshift Serverless listens on.</p>
    #   @return [Integer]
    # @!attribute vpc_endpoints
    #   <p>An array of <code>VpcEndpoint</code> objects.</p>
    #   @return [Array<Types::VpcEndpoint>]
    class Endpoint < Struct.new(
      nil,
      :address,
      :port,
      :vpc_endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Amazon Redshift Serverless VPC endpoint.</p>
    # @!attribute endpoint_name
    #   <p>The name of the VPC endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_status
    #   <p>The status of the VPC endpoint.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup associated with the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_create_time
    #   <p>The time that the endpoint was created.</p>
    #   @return [Time]
    # @!attribute port
    #   <p>The port number on which Amazon Redshift Serverless accepts incoming connections.</p>
    #   @return [Integer]
    # @!attribute address
    #   <p>The DNS address of the endpoint.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The unique identifier of subnets where Amazon Redshift Serverless choose to deploy the VPC endpoint.</p>
    #   @return [Array<String>]
    # @!attribute vpc_security_groups
    #   <p>The security groups associated with the endpoint.</p>
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    # @!attribute vpc_endpoint
    #   <p>The connection endpoint for connecting to Amazon Redshift Serverless.</p>
    #   @return [Types::VpcEndpoint]
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the VPC endpoint.</p>
    #   @return [String]
    class EndpointAccess < Struct.new(
      nil,
      :endpoint_name,
      :endpoint_status,
      :workgroup_name,
      :endpoint_create_time,
      :port,
      :address,
      :subnet_ids,
      :vpc_security_groups,
      :vpc_endpoint,
      :endpoint_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_name
    #   <p>The name of the database to get temporary authorization to log on to.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 64 alphanumeric characters or hyphens.</p> </li> <li> <p>Must contain only uppercase or lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Must not contain a colon ( : ) or slash ( / ).</p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words </a> in the Amazon Redshift Database Developer Guide</p> </li> </ul>
    #   @return [String]
    # @!attribute duration_seconds
    #   <p>The number of seconds until the returned temporary password expires. The minimum is 900 seconds, and the maximum is 3600 seconds.</p>
    #   @return [Integer]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    #   @return [String]
    # @!attribute custom_domain_name
    #   <p>The custom domain name associated with the workgroup. The custom domain name or the workgroup name must be included in the request.</p>
    #   @return [String]
    class GetCredentialsRequest < Struct.new(
      nil,
      :db_name,
      :duration_seconds,
      :workgroup_name,
      :custom_domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_user
    #   <p>A database user name that is authorized to log on to the database <code>DbName</code> using the password <code>DbPassword</code>. If the specified <code>DbUser</code> exists in the database, the new user name has the same database privileges as the the user named in <code>DbUser</code>. By default, the user is added to PUBLIC.</p>
    #   @return [String]
    # @!attribute db_password
    #   <p>A temporary password that authorizes the user name returned by <code>DbUser</code> to log on to the database <code>DbName</code>.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The date and time the password in <code>DbPassword</code> expires.</p>
    #   @return [Time]
    # @!attribute next_refresh_time
    #   <p>The date and time of when the <code>DbUser</code> and <code>DbPassword</code> authorization refreshes.</p>
    #   @return [Time]
    class GetCredentialsResponse < Struct.new(
      nil,
      :db_user,
      :db_password,
      :expiration,
      :next_refresh_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    #   @return [String]
    class GetCustomDomainAssociationRequest < Struct.new(
      nil,
      :custom_domain_name,
      :workgroup_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_arn
    #   <p>The custom domain name’s certificate Amazon resource name (ARN).</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_expiry_time
    #   <p>The expiration time for the certificate.</p>
    #   @return [Time]
    class GetCustomDomainAssociationResponse < Struct.new(
      nil,
      :custom_domain_name,
      :workgroup_name,
      :custom_domain_certificate_arn,
      :custom_domain_certificate_expiry_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the VPC endpoint to return information for.</p>
    #   @return [String]
    class GetEndpointAccessRequest < Struct.new(
      nil,
      :endpoint_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint
    #   <p>The returned VPC endpoint.</p>
    #   @return [Types::EndpointAccess]
    class GetEndpointAccessResponse < Struct.new(
      nil,
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup_names
    #   <p>A list of workgroup names for which to generate the Identity Center authentication token.</p> <p>Constraints:</p> <ul> <li> <p>Must contain between 1 and 20 workgroup names.</p> </li> <li> <p>Each workgroup name must be a valid Amazon Redshift Serverless workgroup identifier.</p> </li> <li> <p>All specified workgroups must have Identity Center integration enabled.</p> </li> </ul>
    #   @return [Array<String>]
    class GetIdentityCenterAuthTokenRequest < Struct.new(
      nil,
      :workgroup_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute token
    #   <p>The Identity Center authentication token that can be used to access data in the specified workgroups.</p> <p>This token contains the Identity Center identity information and is encrypted for secure transmission.</p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p>The date and time when the Identity Center authentication token expires.</p> <p>After this time, a new token must be requested for continued access.</p>
    #   @return [Time]
    class GetIdentityCenterAuthTokenResponse < Struct.new(
      nil,
      :token,
      :expiration_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The name of the namespace to retrieve information for.</p>
    #   @return [String]
    class GetNamespaceRequest < Struct.new(
      nil,
      :namespace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace
    #   <p>The returned namespace object.</p>
    #   @return [Types::Namespace]
    class GetNamespaceResponse < Struct.new(
      nil,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_point_id
    #   <p>The unique identifier of the recovery point to return information for.</p>
    #   @return [String]
    class GetRecoveryPointRequest < Struct.new(
      nil,
      :recovery_point_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_point
    #   <p>The returned recovery point object.</p>
    #   @return [Types::RecoveryPoint]
    class GetRecoveryPointResponse < Struct.new(
      nil,
      :recovery_point,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute offering_id
    #   <p>The identifier for the offering..</p>
    #   @return [String]
    class GetReservationOfferingRequest < Struct.new(
      nil,
      :offering_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reservation_offering
    #   <p>The returned reservation offering. The offering determines the payment schedule for the reservation.</p>
    #   @return [Types::ReservationOffering]
    class GetReservationOfferingResponse < Struct.new(
      nil,
      :reservation_offering,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reservation_id
    #   <p>The ID of the reservation to retrieve.</p>
    #   @return [String]
    class GetReservationRequest < Struct.new(
      nil,
      :reservation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reservation
    #   <p>The returned reservation object.</p>
    #   @return [Types::Reservation]
    class GetReservationResponse < Struct.new(
      nil,
      :reservation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_policy
    #   <p>The returned resource policy.</p>
    #   @return [Types::ResourcePolicy]
    class GetResourcePolicyResponse < Struct.new(
      nil,
      :resource_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #   @return [String]
    class GetScheduledActionRequest < Struct.new(
      nil,
      :scheduled_action_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_action
    #   <p>The returned scheduled action object.</p>
    #   @return [Types::ScheduledActionResponse]
    class GetScheduledActionResponse < Struct.new(
      nil,
      :scheduled_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_name
    #   <p>The name of the snapshot to return.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The owner Amazon Web Services account of a snapshot shared with another user.</p>
    #   @return [String]
    # @!attribute snapshot_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot to return.</p>
    #   @return [String]
    class GetSnapshotRequest < Struct.new(
      nil,
      :snapshot_name,
      :owner_account,
      :snapshot_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>The returned snapshot object.</p>
    #   @return [Types::Snapshot]
    class GetSnapshotResponse < Struct.new(
      nil,
      :snapshot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_restore_request_id
    #   <p>The ID of the <code>RestoreTableFromSnapshot</code> request to return status for.</p>
    #   @return [String]
    class GetTableRestoreStatusRequest < Struct.new(
      nil,
      :table_restore_request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_restore_status
    #   <p>The returned <code>TableRestoreStatus</code> object that contains information about the status of your <code>RestoreTableFromSnapshot</code> request.</p>
    #   @return [Types::TableRestoreStatus]
    class GetTableRestoreStatusResponse < Struct.new(
      nil,
      :table_restore_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute track_name
    #   <p>The name of the track of which its version is fetched.</p>
    #   @return [String]
    class GetTrackRequest < Struct.new(
      nil,
      :track_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute track
    #   <p>The version of the specified track.</p>
    #   @return [Types::ServerlessTrack]
    class GetTrackResponse < Struct.new(
      nil,
      :track,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute usage_limit_id
    #   <p>The unique identifier of the usage limit to return information for.</p>
    #   @return [String]
    class GetUsageLimitRequest < Struct.new(
      nil,
      :usage_limit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute usage_limit
    #   <p>The returned usage limit object.</p>
    #   @return [Types::UsageLimit]
    class GetUsageLimitResponse < Struct.new(
      nil,
      :usage_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup_name
    #   <p>The name of the workgroup to return information for.</p>
    #   @return [String]
    class GetWorkgroupRequest < Struct.new(
      nil,
      :workgroup_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup
    #   <p>The returned workgroup object.</p>
    #   @return [Types::Workgroup]
    class GetWorkgroupResponse < Struct.new(
      nil,
      :workgroup,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There is an insufficient capacity to perform the action.</p>
    # @!attribute message
    #   @return [String]
    class InsufficientCapacityException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided pagination token is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidPaginationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There are no subnets in your VPC with associated IPv6 CIDR blocks. To use dual-stack mode, associate an IPv6 CIDR block with each subnet in your VPC.</p>
    # @!attribute message
    #   @return [String]
    class Ipv6CidrBlockNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use <code>nextToken</code> to display the next page of results.</p>
    #   @return [Integer]
    # @!attribute custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_arn
    #   <p>The custom domain name’s certificate Amazon resource name (ARN).</p>
    #   @return [String]
    class ListCustomDomainAssociationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :custom_domain_name,
      :custom_domain_certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute associations
    #   <p>A list of Association objects.</p>
    #   @return [Array<Types::Association>]
    class ListCustomDomainAssociationsResponse < Struct.new(
      nil,
      :next_token,
      :associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If your initial <code>ListEndpointAccess</code> operation returns a <code>nextToken</code>, you can include the returned <code>nextToken</code> in following <code>ListEndpointAccess</code> operations, which returns results in the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use <code>nextToken</code> to display the next page of results.</p>
    #   @return [Integer]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup associated with the VPC endpoint to return.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The unique identifier of the virtual private cloud with access to Amazon Redshift Serverless.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.</p>
    #   @return [String]
    class ListEndpointAccessRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :workgroup_name,
      :vpc_id,
      :owner_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>The returned VPC endpoints.</p>
    #   @return [Array<Types::EndpointAccess>]
    class ListEndpointAccessResponse < Struct.new(
      nil,
      :next_token,
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) for the managed workgroup in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If your initial ListManagedWorkgroups operation returns a nextToken, you can include the returned nextToken in following ListManagedWorkgroups operations, which returns results in the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results.</p>
    #   @return [Integer]
    class ListManagedWorkgroupsRequest < Struct.new(
      nil,
      :source_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. To retrieve the next page, make the call again using the returned token.</p>
    #   @return [String]
    # @!attribute managed_workgroups
    #   <p>The returned array of managed workgroups.</p>
    #   @return [Array<Types::ManagedWorkgroupListItem>]
    class ListManagedWorkgroupsResponse < Struct.new(
      nil,
      :next_token,
      :managed_workgroups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If your initial <code>ListNamespaces</code> operation returns a <code>nextToken</code>, you can include the returned <code>nextToken</code> in following <code>ListNamespaces</code> operations, which returns results in the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use <code>nextToken</code> to display the next page of results.</p>
    #   @return [Integer]
    class ListNamespacesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>The list of returned namespaces.</p>
    #   @return [Array<Types::Namespace>]
    class ListNamespacesResponse < Struct.new(
      nil,
      :next_token,
      :namespaces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If your initial <code>ListRecoveryPoints</code> operation returns a <code>nextToken</code>, you can include the returned <code>nextToken</code> in following <code>ListRecoveryPoints</code> operations, which returns results in the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use <code>nextToken</code> to display the next page of results.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The time when the recovery point's creation was initiated.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time when creation of the recovery point finished.</p>
    #   @return [Time]
    # @!attribute namespace_name
    #   <p>The name of the namespace to list recovery points for.</p>
    #   @return [String]
    # @!attribute namespace_arn
    #   <p>The Amazon Resource Name (ARN) of the namespace from which to list recovery points.</p>
    #   @return [String]
    class ListRecoveryPointsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :start_time,
      :end_time,
      :namespace_name,
      :namespace_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_points
    #   <p>The returned recovery point objects.</p>
    #   @return [Array<Types::RecoveryPoint>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListRecoveryPointsResponse < Struct.new(
      nil,
      :recovery_points,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    class ListReservationOfferingsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reservation_offerings_list
    #   <p>The returned list of reservation offerings.</p>
    #   @return [Array<Types::ReservationOffering>]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items.</p>
    #   @return [String]
    class ListReservationOfferingsResponse < Struct.new(
      nil,
      :reservation_offerings_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
    #   @return [Integer]
    class ListReservationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reservations_list
    #   <p>The serverless reservations returned by the request.</p>
    #   @return [Array<Types::Reservation>]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of items.</p>
    #   @return [String]
    class ListReservationsResponse < Struct.new(
      nil,
      :reservations_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. Use <code>nextToken</code> to display the next page of results.</p>
    #   @return [Integer]
    # @!attribute namespace_name
    #   <p>The name of namespace associated with the scheduled action to retrieve.</p>
    #   @return [String]
    class ListScheduledActionsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :namespace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute scheduled_actions
    #   <p>All of the returned scheduled action association objects.</p>
    #   @return [Array<Types::ScheduledActionAssociation>]
    class ListScheduledActionsResponse < Struct.new(
      nil,
      :next_token,
      :scheduled_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The namespace from which to list all snapshot copy configurations.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use <code>nextToken</code> to display the next page of results.</p>
    #   @return [Integer]
    class ListSnapshotCopyConfigurationsRequest < Struct.new(
      nil,
      :namespace_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute snapshot_copy_configurations
    #   <p>All of the returned snapshot copy configurations.</p>
    #   @return [Array<Types::SnapshotCopyConfiguration>]
    class ListSnapshotCopyConfigurationsResponse < Struct.new(
      nil,
      :next_token,
      :snapshot_copy_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use <code>nextToken</code> to display the next page of results.</p>
    #   @return [Integer]
    # @!attribute namespace_name
    #   <p>The namespace from which to list all snapshots.</p>
    #   @return [String]
    # @!attribute namespace_arn
    #   <p>The Amazon Resource Name (ARN) of the namespace from which to list all snapshots.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The owner Amazon Web Services account of the snapshot.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time when the creation of the snapshot was initiated.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp showing when the snapshot creation finished.</p>
    #   @return [Time]
    class ListSnapshotsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :namespace_name,
      :namespace_arn,
      :owner_account,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute snapshots
    #   <p>All of the returned snapshot objects.</p>
    #   @return [Array<Types::Snapshot>]
    class ListSnapshotsResponse < Struct.new(
      nil,
      :next_token,
      :snapshots,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If your initial <code>ListTableRestoreStatus</code> operation returns a nextToken, you can include the returned <code>nextToken</code> in following <code>ListTableRestoreStatus</code> operations. This will return results on the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results.</p>
    #   @return [Integer]
    # @!attribute namespace_name
    #   <p>The namespace from which to list all of the statuses of <code>RestoreTableFromSnapshot</code> operations .</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The workgroup from which to list all of the statuses of <code>RestoreTableFromSnapshot</code> operations.</p>
    #   @return [String]
    class ListTableRestoreStatusRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :namespace_name,
      :workgroup_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If your initial <code>ListTableRestoreStatus</code> operation returns a <code>nextToken</code>, you can include the returned <code>nextToken</code> in following <code>ListTableRestoreStatus</code> operations. This will returns results on the next page.</p>
    #   @return [String]
    # @!attribute table_restore_statuses
    #   <p>The array of returned <code>TableRestoreStatus</code> objects.</p>
    #   @return [Array<Types::TableRestoreStatus>]
    class ListTableRestoreStatusResponse < Struct.new(
      nil,
      :next_token,
      :table_restore_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of the key-value pairs assigned to the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If your initial <code>ListTracksRequest</code> operation returns a <code>nextToken</code>, you can include the returned <code>nextToken</code> in following <code>ListTracksRequest</code> operations, which returns results in the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.</p>
    #   @return [Integer]
    class ListTracksRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracks
    #   <p>The returned tracks.</p>
    #   @return [Array<Types::ServerlessTrack>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListTracksResponse < Struct.new(
      nil,
      :tracks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource whose usage limits you want to list.</p>
    #   @return [String]
    # @!attribute usage_type
    #   <p>The Amazon Redshift Serverless feature whose limits you want to see.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If your initial <code>ListUsageLimits</code> operation returns a <code>nextToken</code>, you can include the returned <code>nextToken</code> in following <code>ListUsageLimits</code> operations, which returns results in the next page. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use <code>nextToken</code> to get the next page of results. The default is 100.</p>
    #   @return [Integer]
    class ListUsageLimitsRequest < Struct.new(
      nil,
      :resource_arn,
      :usage_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute usage_limits
    #   <p>An array of returned usage limit objects.</p>
    #   @return [Array<Types::UsageLimit>]
    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListUsageLimitsResponse < Struct.new(
      nil,
      :usage_limits,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If your initial ListWorkgroups operation returns a <code>nextToken</code>, you can include the returned <code>nextToken</code> in following ListNamespaces operations, which returns results in the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use <code>nextToken</code> to display the next page of results.</p>
    #   @return [Integer]
    # @!attribute owner_account
    #   <p>The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.</p>
    #   @return [String]
    class ListWorkgroupsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :owner_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, make the call again using the returned token.</p>
    #   @return [String]
    # @!attribute workgroups
    #   <p>The returned array of workgroups.</p>
    #   @return [Array<Types::Workgroup>]
    class ListWorkgroupsResponse < Struct.new(
      nil,
      :next_token,
      :workgroups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of Amazon Redshift compute resources managed by Glue.</p>
    # @!attribute managed_workgroup_name
    #   <p>The name of the managed workgroup.</p>
    #   @return [String]
    # @!attribute managed_workgroup_id
    #   <p>The unique identifier of the managed workgroup.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) for the managed workgroup in the Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the managed workgroup.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date of the managed workgroup.</p>
    #   @return [Time]
    class ManagedWorkgroupListItem < Struct.new(
      nil,
      :managed_workgroup_name,
      :managed_workgroup_id,
      :source_arn,
      :status,
      :creation_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of database objects and users.</p>
    # @!attribute namespace_arn
    #   <p>The Amazon Resource Name (ARN) associated with a namespace.</p>
    #   @return [String]
    # @!attribute namespace_id
    #   <p>The unique identifier of a namespace.</p>
    #   @return [String]
    # @!attribute namespace_name
    #   <p>The name of the namespace. Must be between 3-64 alphanumeric characters in lowercase, and it cannot be a reserved word. A list of reserved words can be found in <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon Redshift Database Developer Guide.</p>
    #   @return [String]
    # @!attribute admin_username
    #   <p>The username of the administrator for the first database created in the namespace.</p>
    #   @return [String]
    # @!attribute db_name
    #   <p>The name of the first database created in the namespace.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the Amazon Web Services Key Management Service key used to encrypt your data.</p>
    #   @return [String]
    # @!attribute default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace.</p>
    #   @return [String]
    # @!attribute iam_roles
    #   <p>A list of IAM roles to associate with the namespace.</p>
    #   @return [Array<String>]
    # @!attribute log_exports
    #   <p>The types of logs the namespace can export. Available export types are User log, Connection log, and User activity log.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the namespace.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date of when the namespace was created.</p>
    #   @return [Time]
    # @!attribute admin_password_secret_arn
    #   <p>The Amazon Resource Name (ARN) for the namespace's admin user credentials secret.</p>
    #   @return [String]
    # @!attribute admin_password_secret_kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret.</p>
    #   @return [String]
    # @!attribute lakehouse_registration_status
    #   <p>The status of the lakehouse registration for the namespace. Indicates whether the namespace is successfully registered with Amazon Redshift federated permissions.</p>
    #   @return [String]
    # @!attribute catalog_arn
    #   <p>The Amazon Resource Name (ARN) of the Glue Data Catalog associated with the namespace enabled with Amazon Redshift federated permissions.</p>
    #   @return [String]
    # @!attribute s3_table_publish_status
    #   <p>The current Amazon S3 Tables log-publishing status for the namespace. Not returned when S3 Tables publishing has never been configured for the namespace.</p>
    #   @return [Types::S3TablePublishStatus]
    class Namespace < Struct.new(
      nil,
      :namespace_arn,
      :namespace_id,
      :namespace_name,
      :admin_username,
      :db_name,
      :kms_key_id,
      :default_iam_role_arn,
      :iam_roles,
      :log_exports,
      :status,
      :creation_date,
      :admin_password_secret_arn,
      :admin_password_secret_kms_key_id,
      :lakehouse_registration_status,
      :catalog_arn,
      :s3_table_publish_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a network interface in an Amazon Redshift Serverless managed VPC endpoint. </p>
    # @!attribute network_interface_id
    #   <p>The unique identifier of the network interface.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The unique identifier of the subnet.</p>
    #   @return [String]
    # @!attribute private_ip_address
    #   <p>The IPv4 address of the network interface within the subnet.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The availability Zone.</p>
    #   @return [String]
    # @!attribute ipv6_address
    #   <p>The IPv6 address of the network interface within the subnet.</p>
    #   @return [String]
    class NetworkInterface < Struct.new(
      nil,
      :network_interface_id,
      :subnet_id,
      :private_ip_address,
      :availability_zone,
      :ipv6_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the price performance target settings for the workgroup.</p>
    # @!attribute status
    #   <p>Whether the price performance target is enabled for the workgroup.</p>
    #   @return [String]
    # @!attribute level
    #   <p>The target price performance level for the workgroup. Valid values include 1, 25, 50, 75, and 100. These correspond to the price performance levels LOW_COST, ECONOMICAL, BALANCED, RESOURCEFUL, and HIGH_PERFORMANCE.</p>
    #   @return [Integer]
    class PerformanceTarget < Struct.new(
      nil,
      :status,
      :level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the account to create or update a resource policy for.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy to create or update. For example, the following policy grants a user authorization to restore a snapshot.</p> <p> <code>"{\"Version\": \"2012-10-17\", \"Statement\" : [{ \"Sid\": \"AllowUserRestoreFromSnapshot\", \"Principal\":{\"AWS\": [\"739247239426\"]}, \"Action\": [\"redshift-serverless:RestoreFromSnapshot\"] , \"Effect\": \"Allow\" }]}"</code> </p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_policy
    #   <p>The policy that was created or updated.</p>
    #   @return [Types::ResourcePolicy]
    class PutResourcePolicyResponse < Struct.new(
      nil,
      :resource_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The automatically created recovery point of a namespace. Recovery points are created every 30 minutes and kept for 24 hours.</p>
    # @!attribute recovery_point_id
    #   <p>The unique identifier of the recovery point.</p>
    #   @return [String]
    # @!attribute recovery_point_create_time
    #   <p>The time the recovery point is created.</p>
    #   @return [Time]
    # @!attribute total_size_in_mega_bytes
    #   <p>The total size of the data in the recovery point in megabytes.</p>
    #   @return [Float]
    # @!attribute namespace_name
    #   <p>The name of the namespace the recovery point is associated with.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup the recovery point is associated with.</p>
    #   @return [String]
    # @!attribute namespace_arn
    #   <p>The Amazon Resource Name (ARN) of the namespace the recovery point is associated with.</p>
    #   @return [String]
    class RecoveryPoint < Struct.new(
      nil,
      :recovery_point_id,
      :recovery_point_create_time,
      :total_size_in_mega_bytes,
      :namespace_name,
      :workgroup_name,
      :namespace_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an Amazon Redshift Serverless reservation, which gives you the option to commit to a specified number of Redshift Processing Units (RPUs) for a year at a discount from Serverless on-demand (OD) rates.</p>
    # @!attribute reservation_id
    #   <p>The identifier that uniquely identifies the serverless reservation.</p>
    #   @return [String]
    # @!attribute reservation_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the serverless reservation.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The start date for the serverless reservation. This is the date you created the reservation.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The end date for the serverless reservation. This date is one year after the start date that you specify.</p>
    #   @return [Time]
    # @!attribute capacity
    #   <p>The number of Redshift Processing Units (RPUs) to reserve.</p>
    #   @return [Integer]
    # @!attribute offering
    #   <p>The type of offering for the reservation. The offering class determines the payment schedule for the reservation.</p>
    #   @return [Types::ReservationOffering]
    # @!attribute status
    #   <p>The status of the reservation. Possible values include the following:</p> <ul> <li> <p> <code>payment-pending</code> </p> </li> <li> <p> <code>active</code> </p> </li> <li> <p> <code>payment-failed</code> </p> </li> <li> <p> <code>retired</code> </p> </li> </ul>
    #   @return [String]
    class Reservation < Struct.new(
      nil,
      :reservation_id,
      :reservation_arn,
      :start_date,
      :end_date,
      :capacity,
      :offering,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:capacity] = 0 unless options.key?(:capacity)
        super
      end
    end

    # <p>The class of offering for the reservation. The offering class determines the payment schedule for the reservation.</p>
    # @!attribute offering_id
    #   <p>The offering identifier.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The duration, in seconds, for which the reservation reserves the RPUs.</p>
    #   @return [Integer]
    # @!attribute upfront_charge
    #   <p>The up-front price you are charged for the reservation.</p>
    #   @return [Float]
    # @!attribute hourly_charge
    #   <p>The rate you are charged for each hour the reservation is active.</p>
    #   @return [Float]
    # @!attribute currency_code
    #   <p>The currency code for the offering.</p>
    #   @return [String]
    # @!attribute offering_type
    #   <p>Determines the payment schedule for the reservation.</p>
    #   @return [String]
    class ReservationOffering < Struct.new(
      nil,
      :offering_id,
      :duration,
      :upfront_charge,
      :hourly_charge,
      :currency_code,
      :offering_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        options[:upfront_charge] = 0 unless options.key?(:upfront_charge)
        options[:hourly_charge] = 0 unless options.key?(:hourly_charge)
        super
      end
    end

    # <p>The resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource that could not be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource policy object. Currently, you can use policies to share snapshots across Amazon Web Services accounts.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource policy.</p>
    #   @return [String]
    class ResourcePolicy < Struct.new(
      nil,
      :resource_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_point_id
    #   <p>The unique identifier of the recovery point to restore from.</p>
    #   @return [String]
    # @!attribute namespace_name
    #   <p>The name of the namespace to restore data into.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup used to restore data.</p>
    #   @return [String]
    # @!attribute maintain_integration
    #   <p>If <code>true</code>, maintain existing data sharing, zero-ETL and S3 event integrations when restoring. Otherwise, integrations will not be maintained after the restore operation. Integrations are only maintained when restored to the same serverless namespace.</p> <p>Default: true</p>
    #   @return [Boolean]
    class RestoreFromRecoveryPointRequest < Struct.new(
      nil,
      :recovery_point_id,
      :namespace_name,
      :workgroup_name,
      :maintain_integration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_point_id
    #   <p>The unique identifier of the recovery point used for the restore.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace that data was restored into.</p>
    #   @return [Types::Namespace]
    class RestoreFromRecoveryPointResponse < Struct.new(
      nil,
      :recovery_point_id,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The name of the namespace to restore the snapshot to.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup used to restore the snapshot.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>The name of the snapshot to restore from. Must not be specified at the same time as <code>snapshotArn</code>.</p>
    #   @return [String]
    # @!attribute snapshot_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot to restore from. Required if restoring from a provisioned cluster to Amazon Redshift Serverless. Must not be specified at the same time as <code>snapshotName</code>.</p> <p>The format of the ARN is arn:aws:redshift:&lt;region&gt;:&lt;account_id&gt;:snapshot:&lt;cluster_identifier&gt;/&lt;snapshot_identifier&gt;.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The Amazon Web Services account that owns the snapshot.</p>
    #   @return [String]
    # @!attribute manage_admin_password
    #   <p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage the restored snapshot's admin credentials. If <code>MmanageAdminPassword</code> is false or not set, Amazon Redshift uses the admin credentials that the namespace or cluster had at the time the snapshot was taken.</p>
    #   @return [Boolean]
    # @!attribute admin_password_secret_kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret.</p>
    #   @return [String]
    # @!attribute maintain_integration
    #   <p>If <code>true</code>, maintain existing data sharing, zero-ETL and S3 event integrations when restoring. Otherwise, integrations will not be maintained after the restore operation. Integrations are only maintained when restored to the same serverless namespace.</p> <p>Default: true</p>
    #   @return [Boolean]
    class RestoreFromSnapshotRequest < Struct.new(
      nil,
      :namespace_name,
      :workgroup_name,
      :snapshot_name,
      :snapshot_arn,
      :owner_account,
      :manage_admin_password,
      :admin_password_secret_kms_key_id,
      :maintain_integration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_name
    #   <p>The name of the snapshot used to restore the namespace.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The owner Amazon Web Services; account of the snapshot that was restored.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>A collection of database objects and users.</p>
    #   @return [Types::Namespace]
    class RestoreFromSnapshotResponse < Struct.new(
      nil,
      :snapshot_name,
      :owner_account,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>Namespace of the recovery point to restore from.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The workgroup to restore the table to.</p>
    #   @return [String]
    # @!attribute recovery_point_id
    #   <p>The ID of the recovery point to restore the table from.</p>
    #   @return [String]
    # @!attribute source_database_name
    #   <p>The name of the source database that contains the table being restored.</p>
    #   @return [String]
    # @!attribute source_schema_name
    #   <p>The name of the source schema that contains the table being restored.</p>
    #   @return [String]
    # @!attribute source_table_name
    #   <p>The name of the source table being restored.</p>
    #   @return [String]
    # @!attribute target_database_name
    #   <p>The name of the database to restore the table to.</p>
    #   @return [String]
    # @!attribute target_schema_name
    #   <p>The name of the schema to restore the table to.</p>
    #   @return [String]
    # @!attribute new_table_name
    #   <p>The name of the table to create from the restore operation.</p>
    #   @return [String]
    # @!attribute activate_case_sensitive_identifier
    #   <p>Indicates whether name identifiers for database, schema, and table are case sensitive. If true, the names are case sensitive. If false, the names are not case sensitive. The default is false.</p>
    #   @return [Boolean]
    class RestoreTableFromRecoveryPointRequest < Struct.new(
      nil,
      :namespace_name,
      :workgroup_name,
      :recovery_point_id,
      :source_database_name,
      :source_schema_name,
      :source_table_name,
      :target_database_name,
      :target_schema_name,
      :new_table_name,
      :activate_case_sensitive_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_restore_status
    #   <p>Contains information about a table restore request.</p>
    #   @return [Types::TableRestoreStatus]
    class RestoreTableFromRecoveryPointResponse < Struct.new(
      nil,
      :table_restore_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The namespace of the snapshot to restore from.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The workgroup to restore the table to.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>The name of the snapshot to restore the table from.</p>
    #   @return [String]
    # @!attribute source_database_name
    #   <p>The name of the source database that contains the table being restored.</p>
    #   @return [String]
    # @!attribute source_schema_name
    #   <p>The name of the source schema that contains the table being restored.</p>
    #   @return [String]
    # @!attribute source_table_name
    #   <p>The name of the source table being restored.</p>
    #   @return [String]
    # @!attribute target_database_name
    #   <p>The name of the database to restore the table to.</p>
    #   @return [String]
    # @!attribute target_schema_name
    #   <p>The name of the schema to restore the table to.</p>
    #   @return [String]
    # @!attribute new_table_name
    #   <p>The name of the table to create from the restore operation.</p>
    #   @return [String]
    # @!attribute activate_case_sensitive_identifier
    #   <p>Indicates whether name identifiers for database, schema, and table are case sensitive. If true, the names are case sensitive. If false, the names are not case sensitive. The default is false.</p>
    #   @return [Boolean]
    class RestoreTableFromSnapshotRequest < Struct.new(
      nil,
      :namespace_name,
      :workgroup_name,
      :snapshot_name,
      :source_database_name,
      :source_schema_name,
      :source_table_name,
      :target_database_name,
      :target_schema_name,
      :new_table_name,
      :activate_case_sensitive_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_restore_status
    #   <p>The TableRestoreStatus object that contains the status of the restore operation.</p>
    #   @return [Types::TableRestoreStatus]
    class RestoreTableFromSnapshotResponse < Struct.new(
      nil,
      :table_restore_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the state of Amazon S3 Tables system-table log publishing for a namespace.</p>
    # @!attribute s3_tables
    #   <p>The system tables currently being published.</p>
    #   @return [Array<String>]
    # @!attribute s3_table_namespace
    #   <p>The identifier of the namespace in the S3 table bucket that holds the published tables.</p>
    #   @return [String]
    # @!attribute s3_table_granularity
    #   <p>The scope currently in effect. Values are <code>namespace</code> or <code>account</code>.</p>
    #   @return [String]
    # @!attribute enabled_all
    #   <p> <code>true</code> when the namespace is enrolled in every current and future system table rather than an explicit list of tables.</p>
    #   @return [Boolean]
    # @!attribute last_ingestion_times
    #   <p>A map of system table name to the time that table last received data, as an ISO-8601 timestamp. A table that has not yet been ingested is absent from the map. Use it to judge data freshness.</p>
    #   @return [Hash<String, String>]
    class S3TablePublishStatus < Struct.new(
      nil,
      :s3_tables,
      :s3_table_namespace,
      :s3_table_granularity,
      :enabled_all,
      :last_ingestion_times,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The schedule of when Amazon Redshift Serverless should run the scheduled action.</p>
    # @!attribute at
    #   <p>The timestamp of when Amazon Redshift Serverless should run the scheduled action. Timestamp is in UTC. Format of at expression is <code>yyyy-mm-ddThh:mm:ss</code>. For example, <code>2016-03-04T17:27:00</code>.</p>
    #   @return [Time]
    # @!attribute cron
    #   <p>The cron expression to use to schedule a recurring scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.</p> <p>Format of cron expressions is <code>(Minutes Hours Day-of-month Month Day-of-week Year)</code>. For example, <code>"(0 10 ? * MON *)"</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
    #   @return [String]
    class Schedule < Struct.new(
      :at,
      :cron,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class At < Schedule; end
      class Cron < Schedule; end
      class Unknown < Schedule; end
    end

    # <p>Contains names of objects associated with a scheduled action.</p>
    # @!attribute namespace_name
    #   <p>Name of associated Amazon Redshift Serverless namespace.</p>
    #   @return [String]
    # @!attribute scheduled_action_name
    #   <p>Name of associated scheduled action.</p>
    #   @return [String]
    class ScheduledActionAssociation < Struct.new(
      nil,
      :namespace_name,
      :scheduled_action_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The returned scheduled action object.</p>
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The schedule for a one-time (at timestamp format) or recurring (cron format) scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.</p> <ul> <li> <p>Format of at timestamp is <code>yyyy-mm-ddThh:mm:ss</code>. For example, <code>2016-03-04T17:27:00</code>.</p> </li> <li> <p>Format of cron expression is <code>(Minutes Hours Day-of-month Month Day-of-week Year)</code>. For example, <code>"(0 10 ? * MON *)"</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p> </li> </ul>
    #   @return [Types::Schedule]
    # @!attribute scheduled_action_description
    #   <p>The description of the scheduled action.</p>
    #   @return [String]
    # @!attribute next_invocations
    #   <p>An array of timestamps of when the next scheduled actions will trigger.</p>
    #   @return [Array<Time>]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role to assume to run the scheduled action. This IAM role must have permission to run the Amazon Redshift Serverless API operation in the scheduled action. This IAM role must allow the Amazon Redshift scheduler to schedule creating snapshots. (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf. For more information about the IAM role to use with the Amazon Redshift scheduler, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html">Using Identity-Based Policies for Amazon Redshift</a> in the Amazon Redshift Management Guide</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the scheduled action.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of </p>
    #   @return [Time]
    # @!attribute target_action
    #   <p>A JSON format string of the Amazon Redshift Serverless API operation with input parameters. The following is an example of a target action.</p> <p> <code>"{"CreateSnapshot": {"NamespaceName": "sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod": "1"}}"</code> </p>
    #   @return [Types::TargetAction]
    # @!attribute namespace_name
    #   <p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger.</p>
    #   @return [String]
    # @!attribute scheduled_action_uuid
    #   <p>The uuid of the scheduled action.</p>
    #   @return [String]
    class ScheduledActionResponse < Struct.new(
      nil,
      :scheduled_action_name,
      :schedule,
      :scheduled_action_description,
      :next_invocations,
      :role_arn,
      :state,
      :start_time,
      :end_time,
      :target_action,
      :namespace_name,
      :scheduled_action_uuid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a track that determines which Amazon Redshift version to apply after a new version is released. If the value for <code>ServerlessTrack</code> is <code>current</code>, the workgroup is updated to the most recently certified release. If the value is <code>trailing</code>, the workgroup is updated to the previously certified release.</p>
    # @!attribute track_name
    #   <p>The name of the track. Valid values are <code>current</code> and <code>trailing</code>.</p>
    #   @return [String]
    # @!attribute workgroup_version
    #   <p>The workgroup version number for the workgroup release.</p>
    #   @return [String]
    # @!attribute update_targets
    #   <p>An array of <code>UpdateTarget</code> objects to update with the track.</p>
    #   @return [Array<Types::UpdateTarget>]
    class ServerlessTrack < Struct.new(
      nil,
      :track_name,
      :workgroup_version,
      :update_targets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service limit was exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A snapshot object that contains databases.</p>
    # @!attribute namespace_name
    #   <p>The name of the namepsace.</p>
    #   @return [String]
    # @!attribute namespace_arn
    #   <p>The Amazon Resource Name (ARN) of the namespace the snapshot was created from.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>The name of the snapshot.</p>
    #   @return [String]
    # @!attribute snapshot_create_time
    #   <p>The timestamp of when the snapshot was created.</p>
    #   @return [Time]
    # @!attribute admin_username
    #   <p>The username of the database within a snapshot.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the snapshot.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The unique identifier of the KMS key used to encrypt the snapshot.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The owner Amazon Web Services; account of the snapshot.</p>
    #   @return [String]
    # @!attribute total_backup_size_in_mega_bytes
    #   <p>The total size, in megabytes, of how big the snapshot is.</p>
    #   @return [Float]
    # @!attribute actual_incremental_backup_size_in_mega_bytes
    #   <p>The size of the incremental backup in megabytes.</p>
    #   @return [Float]
    # @!attribute backup_progress_in_mega_bytes
    #   <p>The size in megabytes of the data that has been backed up to a snapshot.</p>
    #   @return [Float]
    # @!attribute current_backup_rate_in_mega_bytes_per_second
    #   <p>The rate at which data is backed up into a snapshot in megabytes per second.</p>
    #   @return [Float]
    # @!attribute estimated_seconds_to_completion
    #   <p>The estimated amount of seconds until the snapshot completes backup.</p>
    #   @return [Integer]
    # @!attribute elapsed_time_in_seconds
    #   <p>The amount of time it took to back up data into a snapshot.</p>
    #   @return [Integer]
    # @!attribute snapshot_retention_period
    #   <p>The period of time, in days, of how long the snapshot is retained.</p>
    #   @return [Integer]
    # @!attribute snapshot_remaining_days
    #   <p>The amount of days until the snapshot is deleted.</p>
    #   @return [Integer]
    # @!attribute snapshot_retention_start_time
    #   <p>The timestamp of when data within the snapshot started getting retained.</p>
    #   @return [Time]
    # @!attribute snapshot_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot.</p>
    #   @return [String]
    # @!attribute accounts_with_restore_access
    #   <p>All of the Amazon Web Services accounts that have access to restore a snapshot to a namespace.</p>
    #   @return [Array<String>]
    # @!attribute accounts_with_provisioned_restore_access
    #   <p>All of the Amazon Web Services accounts that have access to restore a snapshot to a provisioned cluster.</p>
    #   @return [Array<String>]
    # @!attribute admin_password_secret_arn
    #   <p>The Amazon Resource Name (ARN) for the namespace's admin user credentials secret.</p>
    #   @return [String]
    # @!attribute admin_password_secret_kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret.</p>
    #   @return [String]
    class Snapshot < Struct.new(
      nil,
      :namespace_name,
      :namespace_arn,
      :snapshot_name,
      :snapshot_create_time,
      :admin_username,
      :status,
      :kms_key_id,
      :owner_account,
      :total_backup_size_in_mega_bytes,
      :actual_incremental_backup_size_in_mega_bytes,
      :backup_progress_in_mega_bytes,
      :current_backup_rate_in_mega_bytes_per_second,
      :estimated_seconds_to_completion,
      :elapsed_time_in_seconds,
      :snapshot_retention_period,
      :snapshot_remaining_days,
      :snapshot_retention_start_time,
      :snapshot_arn,
      :accounts_with_restore_access,
      :accounts_with_provisioned_restore_access,
      :admin_password_secret_arn,
      :admin_password_secret_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The object that you configure to copy snapshots from one namespace to a namespace in another Amazon Web Services Region.</p>
    # @!attribute snapshot_copy_configuration_id
    #   <p>The ID of the snapshot copy configuration object.</p>
    #   @return [String]
    # @!attribute snapshot_copy_configuration_arn
    #   <p>The ARN of the snapshot copy configuration object.</p>
    #   @return [String]
    # @!attribute namespace_name
    #   <p>The name of the namespace to copy snapshots from in the source Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute destination_region
    #   <p>The destination Amazon Web Services Region to copy snapshots to.</p>
    #   @return [String]
    # @!attribute snapshot_retention_period
    #   <p>The retention period of snapshots that are copied to the destination Amazon Web Services Region.</p>
    #   @return [Integer]
    # @!attribute destination_kms_key_id
    #   <p>The ID of the KMS key to use to encrypt your snapshots in the destination Amazon Web Services Region.</p>
    #   @return [String]
    class SnapshotCopyConfiguration < Struct.new(
      nil,
      :snapshot_copy_configuration_id,
      :snapshot_copy_configuration_arn,
      :namespace_name,
      :destination_region,
      :snapshot_retention_period,
      :destination_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a table restore request.</p>
    # @!attribute table_restore_request_id
    #   <p>The ID of the RestoreTableFromSnapshot request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A value that describes the current state of the table restore request. Possible values are <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>, <code>PENDING</code>, and <code>IN_PROGRESS</code>.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message that explains the returned status. For example, if the status of the operation is <code>FAILED</code>, the message explains why the operation failed.</p>
    #   @return [String]
    # @!attribute request_time
    #   <p>The time that the table restore request was made, in Universal Coordinated Time (UTC).</p>
    #   @return [Time]
    # @!attribute namespace_name
    #   <p>The namespace of the table being restored from.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup being restored from.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>The name of the snapshot being restored from.</p>
    #   @return [String]
    # @!attribute progress_in_mega_bytes
    #   <p>The amount of data restored to the new table so far, in megabytes (MB).</p>
    #   @return [Integer]
    # @!attribute total_data_in_mega_bytes
    #   <p>The total amount of data to restore to the new table, in megabytes (MB).</p>
    #   @return [Integer]
    # @!attribute source_database_name
    #   <p>The name of the source database being restored from.</p>
    #   @return [String]
    # @!attribute source_schema_name
    #   <p>The name of the source schema being restored from.</p>
    #   @return [String]
    # @!attribute source_table_name
    #   <p>The name of the source table being restored from.</p>
    #   @return [String]
    # @!attribute target_database_name
    #   <p>The name of the database to restore to.</p>
    #   @return [String]
    # @!attribute target_schema_name
    #   <p>The name of the schema to restore to.</p>
    #   @return [String]
    # @!attribute new_table_name
    #   <p>The name of the table to create from the restore operation.</p>
    #   @return [String]
    # @!attribute recovery_point_id
    #   <p>The ID of the recovery point being restored from.</p>
    #   @return [String]
    class TableRestoreStatus < Struct.new(
      nil,
      :table_restore_request_id,
      :status,
      :message,
      :request_time,
      :namespace_name,
      :workgroup_name,
      :snapshot_name,
      :progress_in_mega_bytes,
      :total_data_in_mega_bytes,
      :source_database_name,
      :source_schema_name,
      :source_table_name,
      :target_database_name,
      :target_schema_name,
      :new_table_name,
      :recovery_point_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A map of key-value pairs.</p>
    # @!attribute key
    #   <p>The key to use in the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The map of the key-value pairs used to tag the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON format string of the Amazon Redshift Serverless API operation with input parameters. The following is an example of a target action.</p> <p> <code>"{"CreateSnapshot": {"NamespaceName": "sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod": "1"}}"</code> </p>
    # @!attribute create_snapshot
    #   <p>The parameters that you can use to configure a <a href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_CreateScheduledAction.html">scheduled action</a> to create a snapshot. For more information about creating a scheduled action, see <a href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_CreateScheduledAction.html">CreateScheduledAction</a>.</p>
    #   @return [Types::CreateSnapshotScheduleActionParameters]
    class TargetAction < Struct.new(
      :create_snapshot,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CreateSnapshot < TargetAction; end
      class Unknown < TargetAction; end
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeded the number of tags allowed for a resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource that exceeded the number of tags allowed for a resource.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag or set of tags to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    #   @return [String]
    # @!attribute custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_arn
    #   <p>The custom domain name’s certificate Amazon resource name (ARN). This is optional.</p>
    #   @return [String]
    class UpdateCustomDomainAssociationRequest < Struct.new(
      nil,
      :workgroup_name,
      :custom_domain_name,
      :custom_domain_certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_arn
    #   <p>The custom domain name’s certificate Amazon resource name (ARN).</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_expiry_time
    #   <p>The expiration time for the certificate.</p>
    #   @return [Time]
    class UpdateCustomDomainAssociationResponse < Struct.new(
      nil,
      :custom_domain_name,
      :workgroup_name,
      :custom_domain_certificate_arn,
      :custom_domain_certificate_expiry_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the VPC endpoint to update.</p>
    #   @return [String]
    # @!attribute vpc_security_group_ids
    #   <p>The list of VPC security groups associated with the endpoint after the endpoint is modified.</p>
    #   @return [Array<String>]
    class UpdateEndpointAccessRequest < Struct.new(
      nil,
      :endpoint_name,
      :vpc_security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint
    #   <p>The updated VPC endpoint.</p>
    #   @return [Types::EndpointAccess]
    class UpdateEndpointAccessResponse < Struct.new(
      nil,
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The name of the namespace whose lakehouse configuration you want to modify.</p>
    #   @return [String]
    # @!attribute lakehouse_registration
    #   <p>Specifies whether to register or deregister the namespace with Amazon Redshift federated permissions. Valid values are <code>Register</code> or <code>Deregister</code>.</p>
    #   @return [String]
    # @!attribute catalog_name
    #   <p>The name of the Glue Data Catalog that will be associated with the namespace enabled with Amazon Redshift federated permissions.</p> <p>Pattern: <code>^[a-z0-9_-]*[a-z]+[a-z0-9_-]*$</code> </p>
    #   @return [String]
    # @!attribute lakehouse_idc_registration
    #   <p>Modifies the Amazon Web Services IAM Identity Center trusted identity propagation on a namespace enabled with Amazon Redshift federated permissions. Valid values are <code>Associate</code> or <code>Disassociate</code>.</p>
    #   @return [String]
    # @!attribute lakehouse_idc_application_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center application used for enabling Amazon Web Services IAM Identity Center trusted identity propagation on a namespace enabled with Amazon Redshift federated permissions.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>A boolean value that, if <code>true</code>, validates the request without actually updating the lakehouse configuration. Use this to check for errors before making changes.</p>
    #   @return [Boolean]
    class UpdateLakehouseConfigurationRequest < Struct.new(
      nil,
      :namespace_name,
      :lakehouse_registration,
      :catalog_name,
      :lakehouse_idc_registration,
      :lakehouse_idc_application_arn,
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The name of the namespace.</p>
    #   @return [String]
    # @!attribute lakehouse_idc_application_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center application used for enabling Amazon Web Services IAM Identity Center trusted identity propagation.</p>
    #   @return [String]
    # @!attribute lakehouse_registration_status
    #   <p>The current status of the lakehouse registration. Indicates whether the namespace is successfully registered with Amazon Redshift federated permissions.</p>
    #   @return [String]
    # @!attribute catalog_arn
    #   <p>The Amazon Resource Name (ARN) of the Glue Data Catalog associated with the lakehouse configuration.</p>
    #   @return [String]
    class UpdateLakehouseConfigurationResponse < Struct.new(
      nil,
      :namespace_name,
      :lakehouse_idc_application_arn,
      :lakehouse_registration_status,
      :catalog_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace_name
    #   <p>The name of the namespace to update. You can't update the name of a namespace once it is created.</p>
    #   @return [String]
    # @!attribute admin_user_password
    #   <p>The password of the administrator for the first database created in the namespace. This parameter must be updated together with <code>adminUsername</code>.</p> <p>You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. </p> <p>If your admin user account is locked, this operation also unlocks your account and resets the failed-login counter. This option is available only when account lockout security is enabled for the namespace.</p>
    #   @return [String]
    # @!attribute admin_username
    #   <p>The username of the administrator for the first database created in the namespace. This parameter must be updated together with <code>adminUserPassword</code>.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the Amazon Web Services Key Management Service key used to encrypt your data.</p>
    #   @return [String]
    # @!attribute default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. This parameter must be updated together with <code>iamRoles</code>.</p>
    #   @return [String]
    # @!attribute iam_roles
    #   <p>A list of IAM roles to associate with the namespace. This parameter must be updated together with <code>defaultIamRoleArn</code>.</p>
    #   @return [Array<String>]
    # @!attribute log_exports
    #   <p>The types of logs the namespace can export. The export types are <code>userlog</code>, <code>connectionlog</code>, and <code>useractivitylog</code>.</p>
    #   @return [Array<String>]
    # @!attribute manage_admin_password
    #   <p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage the namespace's admin credentials. You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. If <code>manageAdminPassword</code> is false or not set, Amazon Redshift uses <code>adminUserPassword</code> for the admin user account's password. </p>
    #   @return [Boolean]
    # @!attribute admin_password_secret_kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret. You can only use this parameter if <code>manageAdminPassword</code> is true.</p>
    #   @return [String]
    # @!attribute log_destination_type
    #   <p>The destination for the log data. Valid values are <code>s3table</code> and <code>cloudwatch</code>.</p> <p>Set this to <code>s3table</code> to manage Amazon S3 Tables system-table publishing for the namespace.</p>
    #   @return [String]
    # @!attribute s3_table_action
    #   <p>Whether to enable or disable Amazon S3 Tables publishing. Valid values are <code>Enable</code> and <code>Disable</code>, matched case-insensitively.</p> <p>When omitted, defaults to <code>Enable</code>. Valid only when <code>logDestinationType</code> is <code>s3table</code>.</p>
    #   @return [String]
    # @!attribute s3_table_names
    #   <p>The system tables to publish (on enable) or to stop publishing (on disable). Each value is either a system table view name that begins with <code>sys_</code> or the keyword <code>all</code>.</p> <p>Omitting this parameter, passing an empty list, or including <code>all</code> each select every current and future system table. Each name must be 1-128 characters, and the list can contain up to 256 names.</p> <p>Valid only when <code>logDestinationType</code> is <code>s3table</code>.</p>
    #   @return [Array<String>]
    # @!attribute s3_table_kms_key_id
    #   <p>The identifier of the Key Management Service key used to encrypt the published Amazon S3 Tables data. When omitted, the data is encrypted with SSE-S3 (Amazon S3 managed keys).</p> <p>Valid only when <code>logDestinationType</code> is <code>s3table</code>.</p>
    #   @return [String]
    # @!attribute s3_table_granularity
    #   <p>The scope of the Amazon S3 Tables destination. Valid values are <code>namespace</code> and <code>account</code>, matched case-insensitively. <code>namespace</code> scopes the published tables to this namespace; <code>account</code> scopes them to the Amazon Web Services account.</p> <p>Required when enabling. Omitting this parameter or passing a blank value fails with <code>ValidationException</code>. Valid only when <code>logDestinationType</code> is <code>s3table</code>.</p>
    #   @return [String]
    class UpdateNamespaceRequest < Struct.new(
      nil,
      :namespace_name,
      :admin_user_password,
      :admin_username,
      :kms_key_id,
      :default_iam_role_arn,
      :iam_roles,
      :log_exports,
      :manage_admin_password,
      :admin_password_secret_kms_key_id,
      :log_destination_type,
      :s3_table_action,
      :s3_table_names,
      :s3_table_kms_key_id,
      :s3_table_granularity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace
    #   <p>A list of tag instances.</p>
    #   @return [Types::Namespace]
    class UpdateNamespaceResponse < Struct.new(
      nil,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action to update to.</p>
    #   @return [String]
    # @!attribute target_action
    #   <p>A JSON format string of the Amazon Redshift Serverless API operation with input parameters. The following is an example of a target action.</p> <p> <code>"{"CreateSnapshot": {"NamespaceName": "sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod": "1"}}"</code> </p>
    #   @return [Types::TargetAction]
    # @!attribute schedule
    #   <p>The schedule for a one-time (at timestamp format) or recurring (cron format) scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.</p> <ul> <li> <p>Format of at timestamp is <code>yyyy-mm-ddThh:mm:ss</code>. For example, <code>2016-03-04T17:27:00</code>.</p> </li> <li> <p>Format of cron expression is <code>(Minutes Hours Day-of-month Month Day-of-week Year)</code>. For example, <code>"(0 10 ? * MON *)"</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p> </li> </ul>
    #   @return [Types::Schedule]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role to assume to run the scheduled action. This IAM role must have permission to run the Amazon Redshift Serverless API operation in the scheduled action. This IAM role must allow the Amazon Redshift scheduler to schedule creating snapshots (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf. For more information about the IAM role to use with the Amazon Redshift scheduler, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html">Using Identity-Based Policies for Amazon Redshift</a> in the Amazon Redshift Management Guide</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether to enable the scheduled action.</p>
    #   @return [Boolean]
    # @!attribute scheduled_action_description
    #   <p>The descripion of the scheduled action to update to.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time in UTC of the scheduled action to update to.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time in UTC of the scheduled action to update.</p>
    #   @return [Time]
    class UpdateScheduledActionRequest < Struct.new(
      nil,
      :scheduled_action_name,
      :target_action,
      :schedule,
      :role_arn,
      :enabled,
      :scheduled_action_description,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_action
    #   <p>The ScheduledAction object that was updated.</p>
    #   @return [Types::ScheduledActionResponse]
    class UpdateScheduledActionResponse < Struct.new(
      nil,
      :scheduled_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_copy_configuration_id
    #   <p>The ID of the snapshot copy configuration to update.</p>
    #   @return [String]
    # @!attribute snapshot_retention_period
    #   <p>The new retention period of how long to keep a snapshot in the destination Amazon Web Services Region.</p>
    #   @return [Integer]
    class UpdateSnapshotCopyConfigurationRequest < Struct.new(
      nil,
      :snapshot_copy_configuration_id,
      :snapshot_retention_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_copy_configuration
    #   <p>The updated snapshot copy configuration object.</p>
    #   @return [Types::SnapshotCopyConfiguration]
    class UpdateSnapshotCopyConfigurationResponse < Struct.new(
      nil,
      :snapshot_copy_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_name
    #   <p>The name of the snapshot.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>The new retention period of the snapshot.</p>
    #   @return [Integer]
    class UpdateSnapshotRequest < Struct.new(
      nil,
      :snapshot_name,
      :retention_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>The updated snapshot object.</p>
    #   @return [Types::Snapshot]
    class UpdateSnapshotResponse < Struct.new(
      nil,
      :snapshot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A track that you can switch the current track to.</p>
    # @!attribute track_name
    #   <p>The name of the new track.</p>
    #   @return [String]
    # @!attribute workgroup_version
    #   <p>The workgroup version for the new track.</p>
    #   @return [String]
    class UpdateTarget < Struct.new(
      nil,
      :track_name,
      :workgroup_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute usage_limit_id
    #   <p>The identifier of the usage limit to update.</p>
    #   @return [String]
    # @!attribute amount
    #   <p>The new limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number.</p>
    #   @return [Integer]
    # @!attribute breach_action
    #   <p>The new action that Amazon Redshift Serverless takes when the limit is reached.</p>
    #   @return [String]
    class UpdateUsageLimitRequest < Struct.new(
      nil,
      :usage_limit_id,
      :amount,
      :breach_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute usage_limit
    #   <p>The updated usage limit object.</p>
    #   @return [Types::UsageLimit]
    class UpdateUsageLimitResponse < Struct.new(
      nil,
      :usage_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup_name
    #   <p>The name of the workgroup to update. You can't update the name of a workgroup once it is created.</p>
    #   @return [String]
    # @!attribute base_capacity
    #   <p>The new base data warehouse capacity in Redshift Processing Units (RPUs).</p>
    #   @return [Integer]
    # @!attribute enhanced_vpc_routing
    #   <p>The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC.</p>
    #   @return [Boolean]
    # @!attribute config_parameters
    #   <p>An array of parameters to set for advanced control over a database. The options are <code>auto_mv</code>, <code>datestyle</code>, <code>enable_case_sensitive_identifier</code>, <code>enable_user_activity_logging</code>, <code>query_group</code>, <code>search_path</code>, <code>require_ssl</code>, <code>use_fips_ssl</code>, and either <code>wlm_json_configuration</code> or query monitoring metrics that let you define performance boundaries. You can either specify individual query monitoring metrics (such as <code>max_scan_row_count</code>, <code>max_query_execution_time</code>) or use <code>wlm_json_configuration</code> to define query queues with rules, but not both. If you're using <code>wlm_json_configuration</code>, the maximum size of <code>parameterValue</code> is 8000 characters. For more information about query monitoring rules and available metrics, see <a href="https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless"> Query monitoring metrics for Amazon Redshift Serverless</a>.</p>
    #   @return [Array<Types::ConfigParameter>]
    # @!attribute publicly_accessible
    #   <p>A value that specifies whether the workgroup can be accessible from a public network.</p>
    #   @return [Boolean]
    # @!attribute subnet_ids
    #   <p>An array of VPC subnet IDs to associate with the workgroup.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>An array of security group IDs to associate with the workgroup.</p>
    #   @return [Array<String>]
    # @!attribute port
    #   <p>The custom port to use when connecting to a workgroup. Valid port ranges are 5431-5455 and 8191-8215. The default is 5439.</p>
    #   @return [Integer]
    # @!attribute max_capacity
    #   <p>The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries. The max capacity is specified in RPUs.</p>
    #   @return [Integer]
    # @!attribute ip_address_type
    #   <p>The IP address type that the workgroup supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>
    #   @return [String]
    # @!attribute price_performance_target
    #   <p>An object that represents the price performance target settings for the workgroup.</p>
    #   @return [Types::PerformanceTarget]
    # @!attribute track_name
    #   <p>An optional parameter for the name of the track for the workgroup. If you don't provide a track name, the workgroup is assigned to the <code>current</code> track.</p>
    #   @return [String]
    # @!attribute extra_compute_for_automatic_optimization
    #   <p>If <code>true</code>, allocates additional compute resources for running automatic optimization operations.</p> <p>Default: false</p>
    #   @return [Boolean]
    class UpdateWorkgroupRequest < Struct.new(
      nil,
      :workgroup_name,
      :base_capacity,
      :enhanced_vpc_routing,
      :config_parameters,
      :publicly_accessible,
      :subnet_ids,
      :security_group_ids,
      :port,
      :max_capacity,
      :ip_address_type,
      :price_performance_target,
      :track_name,
      :extra_compute_for_automatic_optimization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workgroup
    #   <p>The updated workgroup object.</p>
    #   @return [Types::Workgroup]
    class UpdateWorkgroupResponse < Struct.new(
      nil,
      :workgroup,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The usage limit object.</p>
    # @!attribute usage_limit_id
    #   <p>The identifier of the usage limit.</p>
    #   @return [String]
    # @!attribute usage_limit_arn
    #   <p>The Amazon Resource Name (ARN) of the resource associated with the usage limit.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the Amazon Redshift Serverless resource.</p>
    #   @return [String]
    # @!attribute usage_type
    #   <p>The Amazon Redshift Serverless feature to limit.</p>
    #   @return [String]
    # @!attribute amount
    #   <p>The limit amount. If time-based, this amount is in RPUs consumed per hour. If data-based, this amount is in terabytes (TB). The value must be a positive number.</p>
    #   @return [Integer]
    # @!attribute period
    #   <p>The time period that the amount applies to. A weekly period begins on Sunday. The default is monthly.</p>
    #   @return [String]
    # @!attribute breach_action
    #   <p>The action that Amazon Redshift Serverless takes when the limit is reached.</p>
    #   @return [String]
    class UsageLimit < Struct.new(
      nil,
      :usage_limit_id,
      :usage_limit_arn,
      :resource_arn,
      :usage_type,
      :amount,
      :period,
      :breach_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input failed to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The connection endpoint for connecting to Amazon Redshift Serverless through the proxy.</p>
    # @!attribute vpc_endpoint_id
    #   <p>The connection endpoint ID for connecting to Amazon Redshift Serverless.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC identifier that the endpoint is associated with.</p>
    #   @return [String]
    # @!attribute network_interfaces
    #   <p>One or more network interfaces of the endpoint. Also known as an interface endpoint.</p>
    #   @return [Array<Types::NetworkInterface>]
    class VpcEndpoint < Struct.new(
      nil,
      :vpc_endpoint_id,
      :vpc_id,
      :network_interfaces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the members of a VPC security group.</p>
    # @!attribute vpc_security_group_id
    #   <p>The unique identifier of the VPC security group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the VPC security group.</p>
    #   @return [String]
    class VpcSecurityGroupMembership < Struct.new(
      nil,
      :vpc_security_group_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of computing resources from which an endpoint is created.</p>
    # @!attribute workgroup_id
    #   <p>The unique identifier of the workgroup.</p>
    #   @return [String]
    # @!attribute workgroup_arn
    #   <p>The Amazon Resource Name (ARN) that links to the workgroup.</p>
    #   @return [String]
    # @!attribute workgroup_name
    #   <p>The name of the workgroup.</p>
    #   @return [String]
    # @!attribute namespace_name
    #   <p>The namespace the workgroup is associated with.</p>
    #   @return [String]
    # @!attribute base_capacity
    #   <p>The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs).</p>
    #   @return [Integer]
    # @!attribute enhanced_vpc_routing
    #   <p>The value that specifies whether to enable enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC.</p>
    #   @return [Boolean]
    # @!attribute config_parameters
    #   <p>An array of parameters to set for advanced control over a database. The options are <code>auto_mv</code>, <code>datestyle</code>, <code>enable_case_sensitive_identifier</code>, <code>enable_user_activity_logging</code>, <code>query_group</code>, <code>search_path</code>, <code>require_ssl</code>, <code>use_fips_ssl</code>, and either <code>wlm_json_configuration</code> or query monitoring metrics that let you define performance boundaries. You can either specify individual query monitoring metrics (such as <code>max_scan_row_count</code>, <code>max_query_execution_time</code>) or use <code>wlm_json_configuration</code> to define query queues with rules, but not both. If you're using <code>wlm_json_configuration</code>, the maximum size of <code>parameterValue</code> is 8000 characters. For more information about query monitoring rules and available metrics, see <a href="https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless"> Query monitoring metrics for Amazon Redshift Serverless</a>.</p>
    #   @return [Array<Types::ConfigParameter>]
    # @!attribute security_group_ids
    #   <p>An array of security group IDs to associate with the workgroup.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>An array of subnet IDs the workgroup is associated with.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the workgroup.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint that is created from the workgroup.</p>
    #   @return [Types::Endpoint]
    # @!attribute publicly_accessible
    #   <p>A value that specifies whether the workgroup can be accessible from a public network.</p>
    #   @return [Boolean]
    # @!attribute creation_date
    #   <p>The creation date of the workgroup.</p>
    #   @return [Time]
    # @!attribute port
    #   <p>The custom port to use when connecting to a workgroup. Valid port ranges are 5431-5455 and 8191-8215. The default is 5439.</p>
    #   @return [Integer]
    # @!attribute custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_arn
    #   <p>The custom domain name’s certificate Amazon resource name (ARN).</p>
    #   @return [String]
    # @!attribute custom_domain_certificate_expiry_time
    #   <p>The expiration time for the certificate.</p>
    #   @return [Time]
    # @!attribute workgroup_version
    #   <p>The Amazon Redshift Serverless version of your workgroup. For more information about Amazon Redshift Serverless versions, see<a href="https://docs.aws.amazon.com/redshift/latest/mgmt/cluster-versions.html">Cluster versions for Amazon Redshift</a>.</p>
    #   @return [String]
    # @!attribute patch_version
    #   <p>The patch version of your Amazon Redshift Serverless workgroup. For more information about patch versions, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/cluster-versions.html">Cluster versions for Amazon Redshift</a>.</p>
    #   @return [String]
    # @!attribute max_capacity
    #   <p>The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries. The max capacity is specified in RPUs.</p>
    #   @return [Integer]
    # @!attribute cross_account_vpcs
    #   <p>A list of VPCs. Each entry is the unique identifier of a virtual private cloud with access to Amazon Redshift Serverless. If all of the VPCs for the grantee are allowed, it shows an asterisk.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address type that the workgroup supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>
    #   @return [String]
    # @!attribute price_performance_target
    #   <p>An object that represents the price performance target settings for the workgroup.</p>
    #   @return [Types::PerformanceTarget]
    # @!attribute track_name
    #   <p>The name of the track for the workgroup.</p>
    #   @return [String]
    # @!attribute pending_track_name
    #   <p>The name for the track that you want to assign to the workgroup. When the track changes, the workgroup is switched to the latest workgroup release available for the track. At this point, the track name is applied.</p>
    #   @return [String]
    # @!attribute extra_compute_for_automatic_optimization
    #   <p>A boolean value that, if <code>true</code>, indicates that the workgroup allocates additional compute resources to run automatic optimization operations.</p> <p>Default: false</p>
    #   @return [Boolean]
    class Workgroup < Struct.new(
      nil,
      :workgroup_id,
      :workgroup_arn,
      :workgroup_name,
      :namespace_name,
      :base_capacity,
      :enhanced_vpc_routing,
      :config_parameters,
      :security_group_ids,
      :subnet_ids,
      :status,
      :endpoint,
      :publicly_accessible,
      :creation_date,
      :port,
      :custom_domain_name,
      :custom_domain_certificate_arn,
      :custom_domain_certificate_expiry_time,
      :workgroup_version,
      :patch_version,
      :max_capacity,
      :cross_account_vpcs,
      :ip_address_type,
      :price_performance_target,
      :track_name,
      :pending_track_name,
      :extra_compute_for_automatic_optimization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
