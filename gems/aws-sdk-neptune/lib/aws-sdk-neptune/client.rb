# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:neptune)

module Aws::Neptune
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :neptune

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::Query)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Associates an Identity and Access Management (IAM) role from an
    # Neptune DB cluster.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The name of the DB cluster to associate the IAM role with.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to associate with the
    #   Neptune DB cluster, for example
    #   `arn:aws:iam::123456789012:role/NeptuneAccessRole`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_role_to_db_cluster({
    #     db_cluster_identifier: "String", # required
    #     role_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AddRoleToDBCluster AWS API Documentation
    #
    # @overload add_role_to_db_cluster(params = {})
    # @param [Hash] params ({})
    def add_role_to_db_cluster(params = {}, options = {})
      req = build_request(:add_role_to_db_cluster, params)
      req.send_request(options)
    end

    # Adds a source identifier to an existing event notification
    # subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the event notification subscription you want to add a
    #   source identifier to.
    #
    # @option params [required, String] :source_identifier
    #   The identifier of the event source to be added.
    #
    #   Constraints:
    #
    #   * If the source type is a DB instance, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a `DBParameterGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier` must
    #     be supplied.
    #
    # @return [Types::AddSourceIdentifierToSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddSourceIdentifierToSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_source_identifier_to_subscription({
    #     subscription_name: "String", # required
    #     source_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AddSourceIdentifierToSubscription AWS API Documentation
    #
    # @overload add_source_identifier_to_subscription(params = {})
    # @param [Hash] params ({})
    def add_source_identifier_to_subscription(params = {}, options = {})
      req = build_request(:add_source_identifier_to_subscription, params)
      req.send_request(options)
    end

    # Adds metadata tags to an Amazon Neptune resource. These tags can also
    # be used with cost allocation reporting to track cost associated with
    # Amazon Neptune resources, or used in a Condition statement in an IAM
    # policy for Amazon Neptune.
    #
    # @option params [required, String] :resource_name
    #   The Amazon Neptune resource that the tags are added to. This value is
    #   an Amazon Resource Name (ARN). For information about creating an ARN,
    #   see [ Constructing an Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be assigned to the Amazon Neptune resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource({
    #     resource_name: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AddTagsToResource AWS API Documentation
    #
    # @overload add_tags_to_resource(params = {})
    # @param [Hash] params ({})
    def add_tags_to_resource(params = {}, options = {})
      req = build_request(:add_tags_to_resource, params)
      req.send_request(options)
    end

    # Applies a pending maintenance action to a resource (for example, to a
    # DB instance).
    #
    # @option params [required, String] :resource_identifier
    #   The Amazon Resource Name (ARN) of the resource that the pending
    #   maintenance action applies to. For information about creating an ARN,
    #   see [ Constructing an Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #
    # @option params [required, String] :apply_action
    #   The pending maintenance action to apply to this resource.
    #
    #   Valid values: `system-update`, `db-upgrade`
    #
    # @option params [required, String] :opt_in_type
    #   A value that specifies the type of opt-in request, or undoes an opt-in
    #   request. An opt-in request of type `immediate` can't be undone.
    #
    #   Valid values:
    #
    #   * `immediate` - Apply the maintenance action immediately.
    #
    #   * `next-maintenance` - Apply the maintenance action during the next
    #     maintenance window for the resource.
    #
    #   * `undo-opt-in` - Cancel any existing `next-maintenance` opt-in
    #     requests.
    #
    # @return [Types::ApplyPendingMaintenanceActionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplyPendingMaintenanceActionResult#resource_pending_maintenance_actions #resource_pending_maintenance_actions} => Types::ResourcePendingMaintenanceActions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_pending_maintenance_action({
    #     resource_identifier: "String", # required
    #     apply_action: "String", # required
    #     opt_in_type: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_pending_maintenance_actions.resource_identifier #=> String
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details #=> Array
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].action #=> String
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].auto_applied_after_date #=> Time
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].forced_apply_date #=> Time
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].opt_in_status #=> String
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].current_apply_date #=> Time
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ApplyPendingMaintenanceAction AWS API Documentation
    #
    # @overload apply_pending_maintenance_action(params = {})
    # @param [Hash] params ({})
    def apply_pending_maintenance_action(params = {}, options = {})
      req = build_request(:apply_pending_maintenance_action, params)
      req.send_request(options)
    end

    # Copies the specified DB cluster parameter group.
    #
    # @option params [required, String] :source_db_cluster_parameter_group_identifier
    #   The identifier or Amazon Resource Name (ARN) for the source DB cluster
    #   parameter group. For information about creating an ARN, see [
    #   Constructing an Amazon Resource Name (ARN)][1].
    #
    #   Constraints:
    #
    #   * Must specify a valid DB cluster parameter group.
    #
    #   * If the source DB cluster parameter group is in the same AWS Region
    #     as the copy, specify a valid DB parameter group identifier, for
    #     example `my-db-cluster-param-group`, or a valid ARN.
    #
    #   * If the source DB parameter group is in a different AWS Region than
    #     the copy, specify a valid DB cluster parameter group ARN, for
    #     example
    #     `arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #
    # @option params [required, String] :target_db_cluster_parameter_group_identifier
    #   The identifier for the copied DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-cluster-param-group1`
    #
    # @option params [required, String] :target_db_cluster_parameter_group_description
    #   A description for the copied DB cluster parameter group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon Neptune
    #   Resources][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html
    #
    # @return [Types::CopyDBClusterParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyDBClusterParameterGroupResult#db_cluster_parameter_group #db_cluster_parameter_group} => Types::DBClusterParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_db_cluster_parameter_group({
    #     source_db_cluster_parameter_group_identifier: "String", # required
    #     target_db_cluster_parameter_group_identifier: "String", # required
    #     target_db_cluster_parameter_group_description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_parameter_group.db_cluster_parameter_group_name #=> String
    #   resp.db_cluster_parameter_group.db_parameter_group_family #=> String
    #   resp.db_cluster_parameter_group.description #=> String
    #   resp.db_cluster_parameter_group.db_cluster_parameter_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBClusterParameterGroup AWS API Documentation
    #
    # @overload copy_db_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def copy_db_cluster_parameter_group(params = {}, options = {})
      req = build_request(:copy_db_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Copies a snapshot of a DB cluster.
    #
    # To copy a DB cluster snapshot from a shared manual DB cluster
    # snapshot, `SourceDBClusterSnapshotIdentifier` must be the Amazon
    # Resource Name (ARN) of the shared DB cluster snapshot.
    #
    # You can copy an encrypted DB cluster snapshot from another AWS Region.
    # In that case, the AWS Region where you call the
    # `CopyDBClusterSnapshot` action is the destination AWS Region for the
    # encrypted DB cluster snapshot to be copied to. To copy an encrypted DB
    # cluster snapshot from another AWS Region, you must provide the
    # following values:
    #
    # * `KmsKeyId` - The AWS Key Management System (AWS KMS) key identifier
    #   for the key to use to encrypt the copy of the DB cluster snapshot in
    #   the destination AWS Region.
    #
    # * `PreSignedUrl` - A URL that contains a Signature Version 4 signed
    #   request for the `CopyDBClusterSnapshot` action to be called in the
    #   source AWS Region where the DB cluster snapshot is copied from. The
    #   pre-signed URL must be a valid request for the
    #   `CopyDBClusterSnapshot` API action that can be executed in the
    #   source AWS Region that contains the encrypted DB cluster snapshot to
    #   be copied.
    #
    #   The pre-signed URL request must contain the following parameter
    #   values:
    #
    #   * `KmsKeyId` - The KMS key identifier for the key to use to encrypt
    #     the copy of the DB cluster snapshot in the destination AWS Region.
    #     This is the same identifier for both the `CopyDBClusterSnapshot`
    #     action that is called in the destination AWS Region, and the
    #     action contained in the pre-signed URL.
    #
    #   * `DestinationRegion` - The name of the AWS Region that the DB
    #     cluster snapshot will be created in.
    #
    #   * `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
    #     identifier for the encrypted DB cluster snapshot to be copied.
    #     This identifier must be in the Amazon Resource Name (ARN) format
    #     for the source AWS Region. For example, if you are copying an
    #     encrypted DB cluster snapshot from the us-west-2 AWS Region, then
    #     your `SourceDBClusterSnapshotIdentifier` looks like the following
    #     example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:neptune-cluster1-snapshot-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (AWS Signature
    #   Version 4)][1] and [ Signature Version 4 Signing Process][2].
    #
    # * `TargetDBClusterSnapshotIdentifier` - The identifier for the new
    #   copy of the DB cluster snapshot in the destination AWS Region.
    #
    # * `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
    #   identifier for the encrypted DB cluster snapshot to be copied. This
    #   identifier must be in the ARN format for the source AWS Region and
    #   is the same value as the `SourceDBClusterSnapshotIdentifier` in the
    #   pre-signed URL.
    #
    # To cancel the copy operation once it is in progress, delete the target
    # DB cluster snapshot identified by `TargetDBClusterSnapshotIdentifier`
    # while that DB cluster snapshot is in "copying" status.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    # [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :source_db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot to copy. This parameter is
    #   not case-sensitive.
    #
    #   You can't copy an encrypted, shared DB cluster snapshot from one AWS
    #   Region to another.
    #
    #   Constraints:
    #
    #   * Must specify a valid system snapshot in the "available" state.
    #
    #   * If the source snapshot is in the same AWS Region as the copy,
    #     specify a valid DB snapshot identifier.
    #
    #   * If the source snapshot is in a different AWS Region than the copy,
    #     specify a valid DB cluster snapshot ARN.
    #
    #   Example: `my-cluster-snapshot1`
    #
    # @option params [required, String] :target_db_cluster_snapshot_identifier
    #   The identifier of the new DB cluster snapshot to create from the
    #   source DB cluster snapshot. This parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-snapshot2`
    #
    # @option params [String] :kms_key_id
    #   The AWS AWS KMS key ID for an encrypted DB cluster snapshot. The KMS
    #   key ID is the Amazon Resource Name (ARN), KMS key identifier, or the
    #   KMS key alias for the KMS encryption key.
    #
    #   If you copy an unencrypted DB cluster snapshot and specify a value for
    #   the `KmsKeyId` parameter, Amazon Neptune encrypts the target DB
    #   cluster snapshot using the specified KMS encryption key.
    #
    #   If you copy an encrypted DB cluster snapshot from your AWS account,
    #   you can specify a value for `KmsKeyId` to encrypt the copy with a new
    #   KMS encryption key. If you don't specify a value for `KmsKeyId`, then
    #   the copy of the DB cluster snapshot is encrypted with the same KMS key
    #   as the source DB cluster snapshot.
    #
    #   If you copy an encrypted DB cluster snapshot that is shared from
    #   another AWS account, then you must specify a value for `KmsKeyId`.
    #
    #   To copy an encrypted DB cluster snapshot to another AWS Region, you
    #   must set `KmsKeyId` to the KMS key ID you want to use to encrypt the
    #   copy of the DB cluster snapshot in the destination AWS Region. KMS
    #   encryption keys are specific to the AWS Region that they are created
    #   in, and you can't use encryption keys from one AWS Region in another
    #   AWS Region.
    #
    # @option params [String] :pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CopyDBClusterSnapshot` API action in the AWS Region that contains the
    #   source DB cluster snapshot to copy. The `PreSignedUrl` parameter must
    #   be used when copying an encrypted DB cluster snapshot from another AWS
    #   Region.
    #
    #   The pre-signed URL must be a valid request for the
    #   `CopyDBSClusterSnapshot` API action that can be executed in the source
    #   AWS Region that contains the encrypted DB cluster snapshot to be
    #   copied. The pre-signed URL request must contain the following
    #   parameter values:
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the copy of the DB cluster snapshot in the destination AWS
    #     Region. This is the same identifier for both the
    #     `CopyDBClusterSnapshot` action that is called in the destination AWS
    #     Region, and the action contained in the pre-signed URL.
    #
    #   * `DestinationRegion` - The name of the AWS Region that the DB cluster
    #     snapshot will be created in.
    #
    #   * `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
    #     identifier for the encrypted DB cluster snapshot to be copied. This
    #     identifier must be in the Amazon Resource Name (ARN) format for the
    #     source AWS Region. For example, if you are copying an encrypted DB
    #     cluster snapshot from the us-west-2 AWS Region, then your
    #     `SourceDBClusterSnapshotIdentifier` looks like the following
    #     example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:neptune-cluster1-snapshot-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (AWS Signature Version
    #   4)][1] and [ Signature Version 4 Signing Process][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [Boolean] :copy_tags
    #   True to copy all tags from the source DB cluster snapshot to the
    #   target DB cluster snapshot, and otherwise false. The default is false.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon Neptune
    #   Resources][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html
    #
    # @return [Types::CopyDBClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyDBClusterSnapshotResult#db_cluster_snapshot #db_cluster_snapshot} => Types::DBClusterSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_db_cluster_snapshot({
    #     source_db_cluster_snapshot_identifier: "String", # required
    #     target_db_cluster_snapshot_identifier: "String", # required
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
    #     copy_tags: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_snapshot.availability_zones #=> Array
    #   resp.db_cluster_snapshot.availability_zones[0] #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshot.db_cluster_identifier #=> String
    #   resp.db_cluster_snapshot.snapshot_create_time #=> Time
    #   resp.db_cluster_snapshot.engine #=> String
    #   resp.db_cluster_snapshot.allocated_storage #=> Integer
    #   resp.db_cluster_snapshot.status #=> String
    #   resp.db_cluster_snapshot.port #=> Integer
    #   resp.db_cluster_snapshot.vpc_id #=> String
    #   resp.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.db_cluster_snapshot.master_username #=> String
    #   resp.db_cluster_snapshot.engine_version #=> String
    #   resp.db_cluster_snapshot.license_model #=> String
    #   resp.db_cluster_snapshot.snapshot_type #=> String
    #   resp.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.db_cluster_snapshot.kms_key_id #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.iam_database_authentication_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBClusterSnapshot AWS API Documentation
    #
    # @overload copy_db_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def copy_db_cluster_snapshot(params = {}, options = {})
      req = build_request(:copy_db_cluster_snapshot, params)
      req.send_request(options)
    end

    # Copies the specified DB parameter group.
    #
    # @option params [required, String] :source_db_parameter_group_identifier
    #   The identifier or ARN for the source DB parameter group. For
    #   information about creating an ARN, see [ Constructing an Amazon
    #   Resource Name (ARN)][1].
    #
    #   Constraints:
    #
    #   * Must specify a valid DB parameter group.
    #
    #   * Must specify a valid DB parameter group identifier, for example
    #     `my-db-param-group`, or a valid ARN.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #
    # @option params [required, String] :target_db_parameter_group_identifier
    #   The identifier for the copied DB parameter group.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-db-parameter-group`
    #
    # @option params [required, String] :target_db_parameter_group_description
    #   A description for the copied DB parameter group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon Neptune
    #   Resources][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html
    #
    # @return [Types::CopyDBParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyDBParameterGroupResult#db_parameter_group #db_parameter_group} => Types::DBParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_db_parameter_group({
    #     source_db_parameter_group_identifier: "String", # required
    #     target_db_parameter_group_identifier: "String", # required
    #     target_db_parameter_group_description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_parameter_group.db_parameter_group_name #=> String
    #   resp.db_parameter_group.db_parameter_group_family #=> String
    #   resp.db_parameter_group.description #=> String
    #   resp.db_parameter_group.db_parameter_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBParameterGroup AWS API Documentation
    #
    # @overload copy_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def copy_db_parameter_group(params = {}, options = {})
      req = build_request(:copy_db_parameter_group, params)
      req.send_request(options)
    end

    # Creates a new Amazon Neptune DB cluster.
    #
    # You can use the `ReplicationSourceIdentifier` parameter to create the
    # DB cluster as a Read Replica of another DB cluster or Amazon Neptune
    # DB instance. For cross-region replication where the DB cluster
    # identified by `ReplicationSourceIdentifier` is encrypted, you must
    # also specify the `PreSignedUrl` parameter.
    #
    # @option params [Array<String>] :availability_zones
    #   A list of EC2 Availability Zones that instances in the DB cluster can
    #   be created in.
    #
    # @option params [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. You must
    #   specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35
    #
    #   ^
    #
    # @option params [String] :character_set_name
    #   A value that indicates that the DB cluster should be associated with
    #   the specified CharacterSet.
    #
    # @option params [String] :database_name
    #   The name for your database of up to 64 alpha-numeric characters. If
    #   you do not provide a name, Amazon Neptune will not create a database
    #   in the DB cluster you are creating.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The DB cluster identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster. If this argument is omitted, the default is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB cluster.
    #
    # @option params [String] :db_subnet_group_name
    #   A DB subnet group to associate with this DB cluster.
    #
    #   Constraints: Must match the name of an existing DBSubnetGroup. Must
    #   not be default.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [required, String] :engine
    #   The name of the database engine to be used for this DB cluster.
    #
    #   Valid Values: `neptune`
    #
    # @option params [String] :engine_version
    #   The version number of the database engine to use.
    #
    #   Example: `1.0.1`
    #
    # @option params [Integer] :port
    #   The port number on which the instances in the DB cluster accept
    #   connections.
    #
    #   Default: `8182`
    #
    # @option params [String] :master_username
    #   The name of the master user for the DB cluster.
    #
    #   Constraints:
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    # @option params [String] :master_user_password
    #   The password for the master database user. This password can contain
    #   any printable ASCII character except "/", """, or "@".
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    # @option params [String] :option_group_name
    #   A value that indicates that the DB cluster should be associated with
    #   the specified option group.
    #
    #   Permanent options can't be removed from an option group. The option
    #   group can't be removed from a DB cluster once it is associated with a
    #   DB cluster.
    #
    # @option params [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. To see the time blocks available,
    #   see [ Adjusting the Preferred Maintenance Window][1] in the *Amazon
    #   Neptune User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week. To see the time blocks available, see [ Adjusting the Preferred
    #   Maintenance Window][1] in the *Amazon Neptune User Guide.*
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
    #
    # @option params [String] :replication_source_identifier
    #   The Amazon Resource Name (ARN) of the source DB instance or DB cluster
    #   if this DB cluster is created as a Read Replica.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon Neptune
    #   Resources][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html
    #
    # @option params [Boolean] :storage_encrypted
    #   Specifies whether the DB cluster is encrypted.
    #
    # @option params [String] :kms_key_id
    #   The AWS KMS key identifier for an encrypted DB cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB cluster with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   cluster, then you can use the KMS key alias instead of the ARN for the
    #   KMS encryption key.
    #
    #   If an encryption key is not specified in `KmsKeyId`\:
    #
    #   * If `ReplicationSourceIdentifier` identifies an encrypted source,
    #     then Amazon Neptune will use the encryption key used to encrypt the
    #     source. Otherwise, Amazon Neptune will use your default encryption
    #     key.
    #
    #   * If the `StorageEncrypted` parameter is true and
    #     `ReplicationSourceIdentifier` is not specified, then Amazon Neptune
    #     will use your default encryption key.
    #
    #   AWS KMS creates the default encryption key for your AWS account. Your
    #   AWS account has a different default encryption key for each AWS
    #   Region.
    #
    #   If you create a Read Replica of an encrypted DB cluster in another AWS
    #   Region, you must set `KmsKeyId` to a KMS key ID that is valid in the
    #   destination AWS Region. This key is used to encrypt the Read Replica
    #   in that AWS Region.
    #
    # @option params [String] :pre_signed_url
    #   A URL that contains a Signature Version 4 signed request for the
    #   `CreateDBCluster` action to be called in the source AWS Region where
    #   the DB cluster is replicated from. You only need to specify
    #   `PreSignedUrl` when you are performing cross-region replication from
    #   an encrypted DB cluster.
    #
    #   The pre-signed URL must be a valid request for the `CreateDBCluster`
    #   API action that can be executed in the source AWS Region that contains
    #   the encrypted DB cluster to be copied.
    #
    #   The pre-signed URL request must contain the following parameter
    #   values:
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the copy of the DB cluster in the destination AWS Region.
    #     This should refer to the same KMS key for both the `CreateDBCluster`
    #     action that is called in the destination AWS Region, and the action
    #     contained in the pre-signed URL.
    #
    #   * `DestinationRegion` - The name of the AWS Region that Read Replica
    #     will be created in.
    #
    #   * `ReplicationSourceIdentifier` - The DB cluster identifier for the
    #     encrypted DB cluster to be copied. This identifier must be in the
    #     Amazon Resource Name (ARN) format for the source AWS Region. For
    #     example, if you are copying an encrypted DB cluster from the
    #     us-west-2 AWS Region, then your `ReplicationSourceIdentifier` would
    #     look like Example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster:neptune-cluster1`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (AWS Signature Version
    #   4)][1] and [ Signature Version 4 Signing Process][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #
    # @return [Types::CreateDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_cluster({
    #     availability_zones: ["String"],
    #     backup_retention_period: 1,
    #     character_set_name: "String",
    #     database_name: "String",
    #     db_cluster_identifier: "String", # required
    #     db_cluster_parameter_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     db_subnet_group_name: "String",
    #     engine: "String", # required
    #     engine_version: "String",
    #     port: 1,
    #     master_username: "String",
    #     master_user_password: "String",
    #     option_group_name: "String",
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     replication_source_identifier: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     storage_encrypted: false,
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
    #     enable_iam_database_authentication: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.allocated_storage #=> Integer
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.character_set_name #=> String
    #   resp.db_cluster.database_name #=> String
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships #=> Array
    #   resp.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBCluster AWS API Documentation
    #
    # @overload create_db_cluster(params = {})
    # @param [Hash] params ({})
    def create_db_cluster(params = {}, options = {})
      req = build_request(:create_db_cluster, params)
      req.send_request(options)
    end

    # Creates a new DB cluster parameter group.
    #
    # Parameters in a DB cluster parameter group apply to all of the
    # instances in a DB cluster.
    #
    # A DB cluster parameter group is initially created with the default
    # parameters for the database engine used by instances in the DB
    # cluster. To provide custom values for any of the parameters, you must
    # modify the group after creating it using
    # ModifyDBClusterParameterGroup. Once you've created a DB cluster
    # parameter group, you need to associate it with your DB cluster using
    # ModifyDBCluster. When you associate a new DB cluster parameter group
    # with a running DB cluster, you need to reboot the DB instances in the
    # DB cluster without failover for the new DB cluster parameter group and
    # associated settings to take effect.
    #
    # After you create a DB cluster parameter group, you should wait at
    # least 5 minutes before creating your first DB cluster that uses that
    # DB cluster parameter group as the default parameter group. This allows
    # Amazon Neptune to fully complete the create action before the DB
    # cluster parameter group is used as the default for a new DB cluster.
    # This is especially important for parameters that are critical when
    # creating the default database for a DB cluster, such as the character
    # set for the default database defined by the `character_set_database`
    # parameter. You can use the *Parameter Groups* option of the [Amazon
    # Neptune console][1] or the DescribeDBClusterParameters command to
    # verify that your DB cluster parameter group has been created or
    # modified.
    #
    #
    #
    # [1]: https://console.aws.amazon.com/rds/
    #
    # @option params [required, String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DBClusterParameterGroup.
    #
    #   ^
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #
    # @option params [required, String] :db_parameter_group_family
    #   The DB cluster parameter group family name. A DB cluster parameter
    #   group can be associated with one and only one DB cluster parameter
    #   group family, and can be applied only to a DB cluster running a
    #   database engine and engine version compatible with that DB cluster
    #   parameter group family.
    #
    # @option params [required, String] :description
    #   The description for the DB cluster parameter group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon Neptune
    #   Resources][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html
    #
    # @return [Types::CreateDBClusterParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBClusterParameterGroupResult#db_cluster_parameter_group #db_cluster_parameter_group} => Types::DBClusterParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "String", # required
    #     db_parameter_group_family: "String", # required
    #     description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_parameter_group.db_cluster_parameter_group_name #=> String
    #   resp.db_cluster_parameter_group.db_parameter_group_family #=> String
    #   resp.db_cluster_parameter_group.description #=> String
    #   resp.db_cluster_parameter_group.db_cluster_parameter_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterParameterGroup AWS API Documentation
    #
    # @overload create_db_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def create_db_cluster_parameter_group(params = {}, options = {})
      req = build_request(:create_db_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Creates a snapshot of a DB cluster.
    #
    # @option params [required, String] :db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot. This parameter is stored as
    #   a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1-snapshot1`
    #
    # @option params [required, String] :db_cluster_identifier
    #   The identifier of the DB cluster to create a snapshot for. This
    #   parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #
    #   Example: `my-cluster1`
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the DB cluster snapshot.
    #
    # @return [Types::CreateDBClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBClusterSnapshotResult#db_cluster_snapshot #db_cluster_snapshot} => Types::DBClusterSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_cluster_snapshot({
    #     db_cluster_snapshot_identifier: "String", # required
    #     db_cluster_identifier: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_snapshot.availability_zones #=> Array
    #   resp.db_cluster_snapshot.availability_zones[0] #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshot.db_cluster_identifier #=> String
    #   resp.db_cluster_snapshot.snapshot_create_time #=> Time
    #   resp.db_cluster_snapshot.engine #=> String
    #   resp.db_cluster_snapshot.allocated_storage #=> Integer
    #   resp.db_cluster_snapshot.status #=> String
    #   resp.db_cluster_snapshot.port #=> Integer
    #   resp.db_cluster_snapshot.vpc_id #=> String
    #   resp.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.db_cluster_snapshot.master_username #=> String
    #   resp.db_cluster_snapshot.engine_version #=> String
    #   resp.db_cluster_snapshot.license_model #=> String
    #   resp.db_cluster_snapshot.snapshot_type #=> String
    #   resp.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.db_cluster_snapshot.kms_key_id #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.iam_database_authentication_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterSnapshot AWS API Documentation
    #
    # @overload create_db_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def create_db_cluster_snapshot(params = {}, options = {})
      req = build_request(:create_db_cluster_snapshot, params)
      req.send_request(options)
    end

    # Creates a new DB instance.
    #
    # @option params [String] :db_name
    #   The database name.
    #
    #   Type: String
    #
    # @option params [required, String] :db_instance_identifier
    #   The DB instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #
    # @option params [Integer] :allocated_storage
    #   The amount of storage (in gibibytes) to allocate for the DB instance.
    #
    #   Type: Integer
    #
    #   Not applicable. Neptune cluster volumes automatically grow as the
    #   amount of data in your database increases, though you are only charged
    #   for the space that you use in a Neptune cluster volume.
    #
    # @option params [required, String] :db_instance_class
    #   The compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions.
    #
    # @option params [required, String] :engine
    #   The name of the database engine to be used for this instance.
    #
    #   Valid Values: `neptune`
    #
    # @option params [String] :master_username
    #   The name for the master user. Not used.
    #
    # @option params [String] :master_user_password
    #   The password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   Not used.
    #
    # @option params [Array<String>] :db_security_groups
    #   A list of DB security groups to associate with this DB instance.
    #
    #   Default: The default DB security group for the database engine.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB instance.
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster. For more information, see CreateDBCluster.
    #
    #   Default: The default EC2 VPC security group for the DB subnet group's
    #   VPC.
    #
    # @option params [String] :availability_zone
    #   The EC2 Availability Zone that the DB instance is created in.
    #
    #   Default: A random, system-chosen Availability Zone in the endpoint's
    #   AWS Region.
    #
    #   Example: `us-east-1d`
    #
    #   Constraint: The AvailabilityZone parameter can't be specified if the
    #   MultiAZ parameter is set to `true`. The specified Availability Zone
    #   must be in the same AWS Region as the current endpoint.
    #
    # @option params [String] :db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #
    #   If there is no DB subnet group, then it is a non-VPC DB instance.
    #
    # @option params [String] :preferred_maintenance_window
    #   The time range each week during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    # @option params [String] :db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB instance.
    #   If this argument is omitted, the default DBParameterGroup for the
    #   specified engine is used.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    # @option params [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained.
    #
    #   Not applicable. The retention period for automated backups is managed
    #   by the DB cluster. For more information, see CreateDBCluster.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35
    #
    #   * Cannot be set to 0 if the DB instance is a source to Read Replicas
    #
    # @option params [String] :preferred_backup_window
    #   The daily time range during which automated backups are created.
    #
    #   Not applicable. The daily time range for creating automated backups is
    #   managed by the DB cluster. For more information, see CreateDBCluster.
    #
    # @option params [Integer] :port
    #   The port number on which the database accepts connections.
    #
    #   Not applicable. The port is managed by the DB cluster. For more
    #   information, see CreateDBCluster.
    #
    #   Default: `8182`
    #
    #   Type: Integer
    #
    # @option params [Boolean] :multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment. You can't set
    #   the AvailabilityZone parameter if the MultiAZ parameter is set to
    #   true.
    #
    # @option params [String] :engine_version
    #   The version number of the database engine to use.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor engine upgrades are applied automatically to the
    #   DB instance during the maintenance window.
    #
    #   Default: `true`
    #
    # @option params [String] :license_model
    #   License model information for this DB instance.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #
    # @option params [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for the DB instance.
    #
    # @option params [String] :option_group_name
    #   Indicates that the DB instance should be associated with the specified
    #   option group.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance once it is associated with a DB
    #   instance
    #
    # @option params [String] :character_set_name
    #   Indicates that the DB instance should be associated with the specified
    #   CharacterSet.
    #
    #   Not applicable. The character set is managed by the DB cluster. For
    #   more information, see CreateDBCluster.
    #
    # @option params [Boolean] :publicly_accessible
    #   This parameter is not supported.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon Neptune
    #   Resources][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html
    #
    # @option params [String] :db_cluster_identifier
    #   The identifier of the DB cluster that the instance will belong to.
    #
    #   For information on creating a DB cluster, see CreateDBCluster.
    #
    #   Type: String
    #
    # @option params [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Not applicable. Storage is managed by the DB Cluster.
    #
    # @option params [String] :tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #
    # @option params [String] :tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #
    # @option params [Boolean] :storage_encrypted
    #   Specifies whether the DB instance is encrypted.
    #
    #   Not applicable. The encryption for DB instances is managed by the DB
    #   cluster. For more information, see CreateDBCluster.
    #
    #   Default: false
    #
    # @option params [String] :kms_key_id
    #   The AWS KMS key identifier for an encrypted DB instance.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB instance with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   instance, then you can use the KMS key alias instead of the ARN for
    #   the KM encryption key.
    #
    #   Not applicable. The KMS key identifier is managed by the DB cluster.
    #   For more information, see CreateDBCluster.
    #
    #   If the `StorageEncrypted` parameter is true, and you do not specify a
    #   value for the `KmsKeyId` parameter, then Amazon Neptune will use your
    #   default encryption key. AWS KMS creates the default encryption key for
    #   your AWS account. Your AWS account has a different default encryption
    #   key for each AWS Region.
    #
    # @option params [String] :domain
    #   Specify the Active Directory Domain to create the instance in.
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the DB instance to snapshots of the DB
    #   instance, and otherwise false. The default is false.
    #
    # @option params [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    #
    # @option params [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits Neptune to send enhanced
    #   monitoring metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`.
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you must
    #   supply a `MonitoringRoleArn` value.
    #
    # @option params [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #
    # @option params [Integer] :promotion_tier
    #   A value that specifies the order in which an Read Replica is promoted
    #   to the primary instance after a failure of the existing primary
    #   instance.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #
    # @option params [String] :timezone
    #   The time zone of the DB instance.
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable AWS Identity and Access Management (IAM) authentication
    #   for Neptune.
    #
    #   Default: `false`
    #
    # @option params [Boolean] :enable_performance_insights
    #   True to enable Performance Insights for the DB instance, and otherwise
    #   false.
    #
    # @option params [String] :performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of log types that need to be enabled for exporting to
    #   CloudWatch Logs.
    #
    # @return [Types::CreateDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_instance({
    #     db_name: "String",
    #     db_instance_identifier: "String", # required
    #     allocated_storage: 1,
    #     db_instance_class: "String", # required
    #     engine: "String", # required
    #     master_username: "String",
    #     master_user_password: "String",
    #     db_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     availability_zone: "String",
    #     db_subnet_group_name: "String",
    #     preferred_maintenance_window: "String",
    #     db_parameter_group_name: "String",
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #     port: 1,
    #     multi_az: false,
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     character_set_name: "String",
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     db_cluster_identifier: "String",
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "String",
    #     storage_encrypted: false,
    #     kms_key_id: "String",
    #     domain: "String",
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: "String",
    #     domain_iam_role_name: "String",
    #     promotion_tier: 1,
    #     timezone: "String",
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     enable_cloudwatch_logs_exports: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_instance.db_instance_identifier #=> String
    #   resp.db_instance.db_instance_class #=> String
    #   resp.db_instance.engine #=> String
    #   resp.db_instance.db_instance_status #=> String
    #   resp.db_instance.master_username #=> String
    #   resp.db_instance.db_name #=> String
    #   resp.db_instance.endpoint.address #=> String
    #   resp.db_instance.endpoint.port #=> Integer
    #   resp.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.db_instance.allocated_storage #=> Integer
    #   resp.db_instance.instance_create_time #=> Time
    #   resp.db_instance.preferred_backup_window #=> String
    #   resp.db_instance.backup_retention_period #=> Integer
    #   resp.db_instance.db_security_groups #=> Array
    #   resp.db_instance.db_security_groups[0].db_security_group_name #=> String
    #   resp.db_instance.db_security_groups[0].status #=> String
    #   resp.db_instance.vpc_security_groups #=> Array
    #   resp.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_instance.vpc_security_groups[0].status #=> String
    #   resp.db_instance.db_parameter_groups #=> Array
    #   resp.db_instance.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.db_instance.db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.db_instance.availability_zone #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.db_instance.db_subnet_group.subnets #=> Array
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.db_instance.preferred_maintenance_window #=> String
    #   resp.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.db_instance.pending_modified_values.port #=> Integer
    #   resp.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.db_instance.pending_modified_values.engine_version #=> String
    #   resp.db_instance.pending_modified_values.license_model #=> String
    #   resp.db_instance.pending_modified_values.iops #=> Integer
    #   resp.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.db_instance.pending_modified_values.storage_type #=> String
    #   resp.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable[0] #=> String
    #   resp.db_instance.latest_restorable_time #=> Time
    #   resp.db_instance.multi_az #=> Boolean
    #   resp.db_instance.engine_version #=> String
    #   resp.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.db_instance.read_replica_source_db_instance_identifier #=> String
    #   resp.db_instance.read_replica_db_instance_identifiers #=> Array
    #   resp.db_instance.read_replica_db_instance_identifiers[0] #=> String
    #   resp.db_instance.read_replica_db_cluster_identifiers #=> Array
    #   resp.db_instance.read_replica_db_cluster_identifiers[0] #=> String
    #   resp.db_instance.license_model #=> String
    #   resp.db_instance.iops #=> Integer
    #   resp.db_instance.option_group_memberships #=> Array
    #   resp.db_instance.option_group_memberships[0].option_group_name #=> String
    #   resp.db_instance.option_group_memberships[0].status #=> String
    #   resp.db_instance.character_set_name #=> String
    #   resp.db_instance.secondary_availability_zone #=> String
    #   resp.db_instance.publicly_accessible #=> Boolean
    #   resp.db_instance.status_infos #=> Array
    #   resp.db_instance.status_infos[0].status_type #=> String
    #   resp.db_instance.status_infos[0].normal #=> Boolean
    #   resp.db_instance.status_infos[0].status #=> String
    #   resp.db_instance.status_infos[0].message #=> String
    #   resp.db_instance.storage_type #=> String
    #   resp.db_instance.tde_credential_arn #=> String
    #   resp.db_instance.db_instance_port #=> Integer
    #   resp.db_instance.db_cluster_identifier #=> String
    #   resp.db_instance.storage_encrypted #=> Boolean
    #   resp.db_instance.kms_key_id #=> String
    #   resp.db_instance.dbi_resource_id #=> String
    #   resp.db_instance.ca_certificate_identifier #=> String
    #   resp.db_instance.domain_memberships #=> Array
    #   resp.db_instance.domain_memberships[0].domain #=> String
    #   resp.db_instance.domain_memberships[0].status #=> String
    #   resp.db_instance.domain_memberships[0].fqdn #=> String
    #   resp.db_instance.domain_memberships[0].iam_role_name #=> String
    #   resp.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.db_instance.monitoring_interval #=> Integer
    #   resp.db_instance.enhanced_monitoring_resource_arn #=> String
    #   resp.db_instance.monitoring_role_arn #=> String
    #   resp.db_instance.promotion_tier #=> Integer
    #   resp.db_instance.db_instance_arn #=> String
    #   resp.db_instance.timezone #=> String
    #   resp.db_instance.iam_database_authentication_enabled #=> Boolean
    #   resp.db_instance.performance_insights_enabled #=> Boolean
    #   resp.db_instance.performance_insights_kms_key_id #=> String
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBInstance AWS API Documentation
    #
    # @overload create_db_instance(params = {})
    # @param [Hash] params ({})
    def create_db_instance(params = {}, options = {})
      req = build_request(:create_db_instance, params)
      req.send_request(options)
    end

    # Creates a new DB parameter group.
    #
    # A DB parameter group is initially created with the default parameters
    # for the database engine used by the DB instance. To provide custom
    # values for any of the parameters, you must modify the group after
    # creating it using *ModifyDBParameterGroup*. Once you've created a DB
    # parameter group, you need to associate it with your DB instance using
    # *ModifyDBInstance*. When you associate a new DB parameter group with a
    # running DB instance, you need to reboot the DB instance without
    # failover for the new DB parameter group and associated settings to
    # take effect.
    #
    # After you create a DB parameter group, you should wait at least 5
    # minutes before creating your first DB instance that uses that DB
    # parameter group as the default parameter group. This allows Amazon
    # Neptune to fully complete the create action before the parameter group
    # is used as the default for a new DB instance. This is especially
    # important for parameters that are critical when creating the default
    # database for a DB instance, such as the character set for the default
    # database defined by the `character_set_database` parameter. You can
    # use the *Parameter Groups* option of the Amazon Neptune console or the
    # *DescribeDBParameters* command to verify that your DB parameter group
    # has been created or modified.
    #
    # @option params [required, String] :db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #
    # @option params [required, String] :db_parameter_group_family
    #   The DB parameter group family name. A DB parameter group can be
    #   associated with one and only one DB parameter group family, and can be
    #   applied only to a DB instance running a database engine and engine
    #   version compatible with that DB parameter group family.
    #
    # @option params [required, String] :description
    #   The description for the DB parameter group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon Neptune
    #   Resources][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html
    #
    # @return [Types::CreateDBParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBParameterGroupResult#db_parameter_group #db_parameter_group} => Types::DBParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_parameter_group({
    #     db_parameter_group_name: "String", # required
    #     db_parameter_group_family: "String", # required
    #     description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_parameter_group.db_parameter_group_name #=> String
    #   resp.db_parameter_group.db_parameter_group_family #=> String
    #   resp.db_parameter_group.description #=> String
    #   resp.db_parameter_group.db_parameter_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBParameterGroup AWS API Documentation
    #
    # @overload create_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def create_db_parameter_group(params = {}, options = {})
      req = build_request(:create_db_parameter_group, params)
      req.send_request(options)
    end

    # Creates a new DB subnet group. DB subnet groups must contain at least
    # one subnet in at least two AZs in the AWS Region.
    #
    # @option params [required, String] :db_subnet_group_name
    #   The name for the DB subnet group. This value is stored as a lowercase
    #   string.
    #
    #   Constraints: Must contain no more than 255 letters, numbers, periods,
    #   underscores, spaces, or hyphens. Must not be default.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [required, String] :db_subnet_group_description
    #   The description for the DB subnet group.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The EC2 Subnet IDs for the DB subnet group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon Neptune
    #   Resources][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html
    #
    # @return [Types::CreateDBSubnetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBSubnetGroupResult#db_subnet_group #db_subnet_group} => Types::DBSubnetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_subnet_group({
    #     db_subnet_group_name: "String", # required
    #     db_subnet_group_description: "String", # required
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_subnet_group.vpc_id #=> String
    #   resp.db_subnet_group.subnet_group_status #=> String
    #   resp.db_subnet_group.subnets #=> Array
    #   resp.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_subnet_group.db_subnet_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBSubnetGroup AWS API Documentation
    #
    # @overload create_db_subnet_group(params = {})
    # @param [Hash] params ({})
    def create_db_subnet_group(params = {}, options = {})
      req = build_request(:create_db_subnet_group, params)
      req.send_request(options)
    end

    # Creates an event notification subscription. This action requires a
    # topic ARN (Amazon Resource Name) created by either the Neptune
    # console, the SNS console, or the SNS API. To obtain an ARN with SNS,
    # you must create a topic in Amazon SNS and subscribe to the topic. The
    # ARN is displayed in the SNS console.
    #
    # You can specify the type of source (SourceType) you want to be
    # notified of, provide a list of Neptune sources (SourceIds) that
    # triggers the events, and provide a list of event categories
    # (EventCategories) for events you want to be notified of. For example,
    # you can specify SourceType = db-instance, SourceIds = mydbinstance1,
    # mydbinstance2 and EventCategories = Availability, Backup.
    #
    # If you specify both the SourceType and SourceIds, such as SourceType =
    # db-instance and SourceIdentifier = myDBInstance1, you are notified of
    # all the db-instance events for the specified source. If you specify a
    # SourceType but do not specify a SourceIdentifier, you receive notice
    # of the events for that source type for all your Neptune sources. If
    # you do not specify either the SourceType nor the SourceIdentifier, you
    # are notified of events generated from all Neptune sources belonging to
    # your customer account.
    #
    # @option params [required, String] :subscription_name
    #   The name of the subscription.
    #
    #   Constraints: The name must be less than 255 characters.
    #
    # @option params [required, String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic created for event
    #   notification. The ARN is created by Amazon SNS when you create a topic
    #   and subscribe to it.
    #
    # @option params [String] :source_type
    #   The type of source that is generating the events. For example, if you
    #   want to be notified of events generated by a DB instance, you would
    #   set this parameter to db-instance. if this value is not specified, all
    #   events are returned.
    #
    #   Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group` \|
    #   `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot`
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories for a SourceType that you want to subscribe
    #   to. You can see a list of the categories for a given SourceType by
    #   using the **DescribeEventCategories** action.
    #
    # @option params [Array<String>] :source_ids
    #   The list of identifiers of the event sources for which events are
    #   returned. If not specified, then all sources are included in the
    #   response. An identifier must begin with a letter and must contain only
    #   ASCII letters, digits, and hyphens; it can't end with a hyphen or
    #   contain two consecutive hyphens.
    #
    #   Constraints:
    #
    #   * If SourceIds are supplied, SourceType must also be provided.
    #
    #   * If the source type is a DB instance, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a `DBParameterGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier` must
    #     be supplied.
    #
    # @option params [Boolean] :enabled
    #   A Boolean value; set to **true** to activate the subscription, set to
    #   **false** to create the subscription but not active it.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon Neptune
    #   Resources][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html
    #
    # @return [Types::CreateEventSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_subscription({
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String", # required
    #     source_type: "String",
    #     event_categories: ["String"],
    #     source_ids: ["String"],
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateEventSubscription AWS API Documentation
    #
    # @overload create_event_subscription(params = {})
    # @param [Hash] params ({})
    def create_event_subscription(params = {}, options = {})
      req = build_request(:create_event_subscription, params)
      req.send_request(options)
    end

    # The DeleteDBCluster action deletes a previously provisioned DB
    # cluster. When you delete a DB cluster, all automated backups for that
    # DB cluster are deleted and can't be recovered. Manual DB cluster
    # snapshots of the specified DB cluster are not deleted.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The DB cluster identifier for the DB cluster to be deleted. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match an existing DBClusterIdentifier.
    #
    #   ^
    #
    # @option params [Boolean] :skip_final_snapshot
    #   Determines whether a final DB cluster snapshot is created before the
    #   DB cluster is deleted. If `true` is specified, no DB cluster snapshot
    #   is created. If `false` is specified, a DB cluster snapshot is created
    #   before the DB cluster is deleted.
    #
    #   <note markdown="1"> You must specify a `FinalDBSnapshotIdentifier` parameter if
    #   `SkipFinalSnapshot` is `false`.
    #
    #    </note>
    #
    #   Default: `false`
    #
    # @option params [String] :final_db_snapshot_identifier
    #   The DB cluster snapshot identifier of the new DB cluster snapshot
    #   created when `SkipFinalSnapshot` is set to `false`.
    #
    #   <note markdown="1"> Specifying this parameter and also setting the `SkipFinalShapshot`
    #   parameter to true results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    # @return [Types::DeleteDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster({
    #     db_cluster_identifier: "String", # required
    #     skip_final_snapshot: false,
    #     final_db_snapshot_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.allocated_storage #=> Integer
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.character_set_name #=> String
    #   resp.db_cluster.database_name #=> String
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships #=> Array
    #   resp.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBCluster AWS API Documentation
    #
    # @overload delete_db_cluster(params = {})
    # @param [Hash] params ({})
    def delete_db_cluster(params = {}, options = {})
      req = build_request(:delete_db_cluster, params)
      req.send_request(options)
    end

    # Deletes a specified DB cluster parameter group. The DB cluster
    # parameter group to be deleted can't be associated with any DB
    # clusters.
    #
    # @option params [required, String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must be the name of an existing DB cluster parameter group.
    #
    #   * You can't delete a default DB cluster parameter group.
    #
    #   * Cannot be associated with any DB clusters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBClusterParameterGroup AWS API Documentation
    #
    # @overload delete_db_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def delete_db_cluster_parameter_group(params = {}, options = {})
      req = build_request(:delete_db_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Deletes a DB cluster snapshot. If the snapshot is being copied, the
    # copy operation is terminated.
    #
    # <note markdown="1"> The DB cluster snapshot must be in the `available` state to be
    # deleted.
    #
    #  </note>
    #
    # @option params [required, String] :db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot to delete.
    #
    #   Constraints: Must be the name of an existing DB cluster snapshot in
    #   the `available` state.
    #
    # @return [Types::DeleteDBClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDBClusterSnapshotResult#db_cluster_snapshot #db_cluster_snapshot} => Types::DBClusterSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster_snapshot({
    #     db_cluster_snapshot_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_snapshot.availability_zones #=> Array
    #   resp.db_cluster_snapshot.availability_zones[0] #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshot.db_cluster_identifier #=> String
    #   resp.db_cluster_snapshot.snapshot_create_time #=> Time
    #   resp.db_cluster_snapshot.engine #=> String
    #   resp.db_cluster_snapshot.allocated_storage #=> Integer
    #   resp.db_cluster_snapshot.status #=> String
    #   resp.db_cluster_snapshot.port #=> Integer
    #   resp.db_cluster_snapshot.vpc_id #=> String
    #   resp.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.db_cluster_snapshot.master_username #=> String
    #   resp.db_cluster_snapshot.engine_version #=> String
    #   resp.db_cluster_snapshot.license_model #=> String
    #   resp.db_cluster_snapshot.snapshot_type #=> String
    #   resp.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.db_cluster_snapshot.kms_key_id #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.iam_database_authentication_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBClusterSnapshot AWS API Documentation
    #
    # @overload delete_db_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_db_cluster_snapshot(params = {}, options = {})
      req = build_request(:delete_db_cluster_snapshot, params)
      req.send_request(options)
    end

    # The DeleteDBInstance action deletes a previously provisioned DB
    # instance. When you delete a DB instance, all automated backups for
    # that instance are deleted and can't be recovered. Manual DB snapshots
    # of the DB instance to be deleted by `DeleteDBInstance` are not
    # deleted.
    #
    # If you request a final DB snapshot the status of the Amazon Neptune DB
    # instance is `deleting` until the DB snapshot is created. The API
    # action `DescribeDBInstance` is used to monitor the status of this
    # operation. The action can't be canceled or reverted once submitted.
    #
    # Note that when a DB instance is in a failure state and has a status of
    # `failed`, `incompatible-restore`, or `incompatible-network`, you can
    # only delete it when the `SkipFinalSnapshot` parameter is set to
    # `true`.
    #
    # If the specified DB instance is part of a DB cluster, you can't
    # delete the DB instance if both of the following conditions are true:
    #
    # * The DB cluster is a Read Replica of another DB cluster.
    #
    # * The DB instance is the only instance in the DB cluster.
    #
    # To delete a DB instance in this case, first call the
    # PromoteReadReplicaDBCluster API action to promote the DB cluster so
    # it's no longer a Read Replica. After the promotion completes, then
    # call the `DeleteDBInstance` API action to delete the final instance in
    # the DB cluster.
    #
    # @option params [required, String] :db_instance_identifier
    #   The DB instance identifier for the DB instance to be deleted. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DB instance.
    #
    #   ^
    #
    # @option params [Boolean] :skip_final_snapshot
    #   Determines whether a final DB snapshot is created before the DB
    #   instance is deleted. If `true` is specified, no DBSnapshot is created.
    #   If `false` is specified, a DB snapshot is created before the DB
    #   instance is deleted.
    #
    #   Note that when a DB instance is in a failure state and has a status of
    #   'failed', 'incompatible-restore', or 'incompatible-network', it
    #   can only be deleted when the SkipFinalSnapshot parameter is set to
    #   "true".
    #
    #   Specify `true` when deleting a Read Replica.
    #
    #   <note markdown="1"> The FinalDBSnapshotIdentifier parameter must be specified if
    #   SkipFinalSnapshot is `false`.
    #
    #    </note>
    #
    #   Default: `false`
    #
    # @option params [String] :final_db_snapshot_identifier
    #   The DBSnapshotIdentifier of the new DBSnapshot created when
    #   SkipFinalSnapshot is set to `false`.
    #
    #   <note markdown="1"> Specifying this parameter and also setting the SkipFinalShapshot
    #   parameter to true results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters or numbers.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   * Cannot be specified when deleting a Read Replica.
    #
    # @return [Types::DeleteDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_instance({
    #     db_instance_identifier: "String", # required
    #     skip_final_snapshot: false,
    #     final_db_snapshot_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_instance.db_instance_identifier #=> String
    #   resp.db_instance.db_instance_class #=> String
    #   resp.db_instance.engine #=> String
    #   resp.db_instance.db_instance_status #=> String
    #   resp.db_instance.master_username #=> String
    #   resp.db_instance.db_name #=> String
    #   resp.db_instance.endpoint.address #=> String
    #   resp.db_instance.endpoint.port #=> Integer
    #   resp.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.db_instance.allocated_storage #=> Integer
    #   resp.db_instance.instance_create_time #=> Time
    #   resp.db_instance.preferred_backup_window #=> String
    #   resp.db_instance.backup_retention_period #=> Integer
    #   resp.db_instance.db_security_groups #=> Array
    #   resp.db_instance.db_security_groups[0].db_security_group_name #=> String
    #   resp.db_instance.db_security_groups[0].status #=> String
    #   resp.db_instance.vpc_security_groups #=> Array
    #   resp.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_instance.vpc_security_groups[0].status #=> String
    #   resp.db_instance.db_parameter_groups #=> Array
    #   resp.db_instance.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.db_instance.db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.db_instance.availability_zone #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.db_instance.db_subnet_group.subnets #=> Array
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.db_instance.preferred_maintenance_window #=> String
    #   resp.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.db_instance.pending_modified_values.port #=> Integer
    #   resp.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.db_instance.pending_modified_values.engine_version #=> String
    #   resp.db_instance.pending_modified_values.license_model #=> String
    #   resp.db_instance.pending_modified_values.iops #=> Integer
    #   resp.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.db_instance.pending_modified_values.storage_type #=> String
    #   resp.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable[0] #=> String
    #   resp.db_instance.latest_restorable_time #=> Time
    #   resp.db_instance.multi_az #=> Boolean
    #   resp.db_instance.engine_version #=> String
    #   resp.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.db_instance.read_replica_source_db_instance_identifier #=> String
    #   resp.db_instance.read_replica_db_instance_identifiers #=> Array
    #   resp.db_instance.read_replica_db_instance_identifiers[0] #=> String
    #   resp.db_instance.read_replica_db_cluster_identifiers #=> Array
    #   resp.db_instance.read_replica_db_cluster_identifiers[0] #=> String
    #   resp.db_instance.license_model #=> String
    #   resp.db_instance.iops #=> Integer
    #   resp.db_instance.option_group_memberships #=> Array
    #   resp.db_instance.option_group_memberships[0].option_group_name #=> String
    #   resp.db_instance.option_group_memberships[0].status #=> String
    #   resp.db_instance.character_set_name #=> String
    #   resp.db_instance.secondary_availability_zone #=> String
    #   resp.db_instance.publicly_accessible #=> Boolean
    #   resp.db_instance.status_infos #=> Array
    #   resp.db_instance.status_infos[0].status_type #=> String
    #   resp.db_instance.status_infos[0].normal #=> Boolean
    #   resp.db_instance.status_infos[0].status #=> String
    #   resp.db_instance.status_infos[0].message #=> String
    #   resp.db_instance.storage_type #=> String
    #   resp.db_instance.tde_credential_arn #=> String
    #   resp.db_instance.db_instance_port #=> Integer
    #   resp.db_instance.db_cluster_identifier #=> String
    #   resp.db_instance.storage_encrypted #=> Boolean
    #   resp.db_instance.kms_key_id #=> String
    #   resp.db_instance.dbi_resource_id #=> String
    #   resp.db_instance.ca_certificate_identifier #=> String
    #   resp.db_instance.domain_memberships #=> Array
    #   resp.db_instance.domain_memberships[0].domain #=> String
    #   resp.db_instance.domain_memberships[0].status #=> String
    #   resp.db_instance.domain_memberships[0].fqdn #=> String
    #   resp.db_instance.domain_memberships[0].iam_role_name #=> String
    #   resp.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.db_instance.monitoring_interval #=> Integer
    #   resp.db_instance.enhanced_monitoring_resource_arn #=> String
    #   resp.db_instance.monitoring_role_arn #=> String
    #   resp.db_instance.promotion_tier #=> Integer
    #   resp.db_instance.db_instance_arn #=> String
    #   resp.db_instance.timezone #=> String
    #   resp.db_instance.iam_database_authentication_enabled #=> Boolean
    #   resp.db_instance.performance_insights_enabled #=> Boolean
    #   resp.db_instance.performance_insights_kms_key_id #=> String
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBInstance AWS API Documentation
    #
    # @overload delete_db_instance(params = {})
    # @param [Hash] params ({})
    def delete_db_instance(params = {}, options = {})
      req = build_request(:delete_db_instance, params)
      req.send_request(options)
    end

    # Deletes a specified DBParameterGroup. The DBParameterGroup to be
    # deleted can't be associated with any DB instances.
    #
    # @option params [required, String] :db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * Must be the name of an existing DB parameter group
    #
    #   * You can't delete a default DB parameter group
    #
    #   * Cannot be associated with any DB instances
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_parameter_group({
    #     db_parameter_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBParameterGroup AWS API Documentation
    #
    # @overload delete_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def delete_db_parameter_group(params = {}, options = {})
      req = build_request(:delete_db_parameter_group, params)
      req.send_request(options)
    end

    # Deletes a DB subnet group.
    #
    # <note markdown="1"> The specified database subnet group must not be associated with any DB
    # instances.
    #
    #  </note>
    #
    # @option params [required, String] :db_subnet_group_name
    #   The name of the database subnet group to delete.
    #
    #   <note markdown="1"> You can't delete the default subnet group.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   Constraints: Must match the name of an existing DBSubnetGroup. Must
    #   not be default.
    #
    #   Example: `mySubnetgroup`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_subnet_group({
    #     db_subnet_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBSubnetGroup AWS API Documentation
    #
    # @overload delete_db_subnet_group(params = {})
    # @param [Hash] params ({})
    def delete_db_subnet_group(params = {}, options = {})
      req = build_request(:delete_db_subnet_group, params)
      req.send_request(options)
    end

    # Deletes an event notification subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the event notification subscription you want to delete.
    #
    # @return [Types::DeleteEventSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEventSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_subscription({
    #     subscription_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteEventSubscription AWS API Documentation
    #
    # @overload delete_event_subscription(params = {})
    # @param [Hash] params ({})
    def delete_event_subscription(params = {}, options = {})
      req = build_request(:delete_event_subscription, params)
      req.send_request(options)
    end

    # Returns a list of `DBClusterParameterGroup` descriptions. If a
    # `DBClusterParameterGroupName` parameter is specified, the list will
    # contain only the description of the specified DB cluster parameter
    # group.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   The name of a specific DB cluster parameter group to return details
    #   for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterParameterGroups` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::DBClusterParameterGroupsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterParameterGroupsMessage#marker #marker} => String
    #   * {Types::DBClusterParameterGroupsMessage#db_cluster_parameter_groups #db_cluster_parameter_groups} => Array&lt;Types::DBClusterParameterGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_parameter_groups({
    #     db_cluster_parameter_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_cluster_parameter_groups #=> Array
    #   resp.db_cluster_parameter_groups[0].db_cluster_parameter_group_name #=> String
    #   resp.db_cluster_parameter_groups[0].db_parameter_group_family #=> String
    #   resp.db_cluster_parameter_groups[0].description #=> String
    #   resp.db_cluster_parameter_groups[0].db_cluster_parameter_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterParameterGroups AWS API Documentation
    #
    # @overload describe_db_cluster_parameter_groups(params = {})
    # @param [Hash] params ({})
    def describe_db_cluster_parameter_groups(params = {}, options = {})
      req = build_request(:describe_db_cluster_parameter_groups, params)
      req.send_request(options)
    end

    # Returns the detailed parameter list for a particular DB cluster
    # parameter group.
    #
    # @option params [required, String] :db_cluster_parameter_group_name
    #   The name of a specific DB cluster parameter group to return parameter
    #   details for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #
    # @option params [String] :source
    #   A value that indicates to return only parameters for a specific
    #   source. Parameter sources can be `engine`, `service`, or `customer`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterParameters` request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @return [Types::DBClusterParameterGroupDetails] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterParameterGroupDetails#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::DBClusterParameterGroupDetails#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_parameters({
    #     db_cluster_parameter_group_name: "String", # required
    #     source: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_name #=> String
    #   resp.parameters[0].parameter_value #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].source #=> String
    #   resp.parameters[0].apply_type #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.parameters[0].allowed_values #=> String
    #   resp.parameters[0].is_modifiable #=> Boolean
    #   resp.parameters[0].minimum_engine_version #=> String
    #   resp.parameters[0].apply_method #=> String, one of "immediate", "pending-reboot"
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterParameters AWS API Documentation
    #
    # @overload describe_db_cluster_parameters(params = {})
    # @param [Hash] params ({})
    def describe_db_cluster_parameters(params = {}, options = {})
      req = build_request(:describe_db_cluster_parameters, params)
      req.send_request(options)
    end

    # Returns a list of DB cluster snapshot attribute names and values for a
    # manual DB cluster snapshot.
    #
    # When sharing snapshots with other AWS accounts,
    # `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute
    # and a list of IDs for the AWS accounts that are authorized to copy or
    # restore the manual DB cluster snapshot. If `all` is included in the
    # list of values for the `restore` attribute, then the manual DB cluster
    # snapshot is public and can be copied or restored by all AWS accounts.
    #
    # To add or remove access for an AWS account to copy or restore a manual
    # DB cluster snapshot, or to make the manual DB cluster snapshot public
    # or private, use the ModifyDBClusterSnapshotAttribute API action.
    #
    # @option params [required, String] :db_cluster_snapshot_identifier
    #   The identifier for the DB cluster snapshot to describe the attributes
    #   for.
    #
    # @return [Types::DescribeDBClusterSnapshotAttributesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDBClusterSnapshotAttributesResult#db_cluster_snapshot_attributes_result #db_cluster_snapshot_attributes_result} => Types::DBClusterSnapshotAttributesResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_snapshot_attributes({
    #     db_cluster_snapshot_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes #=> Array
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_name #=> String
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values #=> Array
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterSnapshotAttributes AWS API Documentation
    #
    # @overload describe_db_cluster_snapshot_attributes(params = {})
    # @param [Hash] params ({})
    def describe_db_cluster_snapshot_attributes(params = {}, options = {})
      req = build_request(:describe_db_cluster_snapshot_attributes, params)
      req.send_request(options)
    end

    # Returns information about DB cluster snapshots. This API action
    # supports pagination.
    #
    # @option params [String] :db_cluster_identifier
    #   The ID of the DB cluster to retrieve the list of DB cluster snapshots
    #   for. This parameter can't be used in conjunction with the
    #   `DBClusterSnapshotIdentifier` parameter. This parameter is not
    #   case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBCluster.
    #
    #   ^
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   A specific DB cluster snapshot identifier to describe. This parameter
    #   can't be used in conjunction with the `DBClusterIdentifier`
    #   parameter. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing
    #     DBClusterSnapshot.
    #
    #   * If this identifier is for an automated snapshot, the `SnapshotType`
    #     parameter must also be specified.
    #
    # @option params [String] :snapshot_type
    #   The type of DB cluster snapshots to be returned. You can specify one
    #   of the following values:
    #
    #   * `automated` - Return all DB cluster snapshots that have been
    #     automatically taken by Amazon Neptune for my AWS account.
    #
    #   * `manual` - Return all DB cluster snapshots that have been taken by
    #     my AWS account.
    #
    #   * `shared` - Return all manual DB cluster snapshots that have been
    #     shared to my AWS account.
    #
    #   * `public` - Return all DB cluster snapshots that have been marked as
    #     public.
    #
    #   If you don't specify a `SnapshotType` value, then both automated and
    #   manual DB cluster snapshots are returned. You can include shared DB
    #   cluster snapshots with these results by setting the `IncludeShared`
    #   parameter to `true`. You can include public DB cluster snapshots with
    #   these results by setting the `IncludePublic` parameter to `true`.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The `IncludePublic`
    #   parameter doesn't apply when `SnapshotType` is set to `shared`. The
    #   `IncludeShared` parameter doesn't apply when `SnapshotType` is set to
    #   `public`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterSnapshots` request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @option params [Boolean] :include_shared
    #   True to include shared manual DB cluster snapshots from other AWS
    #   accounts that this AWS account has been given permission to copy or
    #   restore, and otherwise false. The default is `false`.
    #
    #   You can give an AWS account permission to restore a manual DB cluster
    #   snapshot from another AWS account by the
    #   ModifyDBClusterSnapshotAttribute API action.
    #
    # @option params [Boolean] :include_public
    #   True to include manual DB cluster snapshots that are public and can be
    #   copied or restored by any AWS account, and otherwise false. The
    #   default is `false`. The default is false.
    #
    #   You can share a manual DB cluster snapshot as public by using the
    #   ModifyDBClusterSnapshotAttribute API action.
    #
    # @return [Types::DBClusterSnapshotMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterSnapshotMessage#marker #marker} => String
    #   * {Types::DBClusterSnapshotMessage#db_cluster_snapshots #db_cluster_snapshots} => Array&lt;Types::DBClusterSnapshot&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_snapshots({
    #     db_cluster_identifier: "String",
    #     db_cluster_snapshot_identifier: "String",
    #     snapshot_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #     include_shared: false,
    #     include_public: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_cluster_snapshots #=> Array
    #   resp.db_cluster_snapshots[0].availability_zones #=> Array
    #   resp.db_cluster_snapshots[0].availability_zones[0] #=> String
    #   resp.db_cluster_snapshots[0].db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshots[0].db_cluster_identifier #=> String
    #   resp.db_cluster_snapshots[0].snapshot_create_time #=> Time
    #   resp.db_cluster_snapshots[0].engine #=> String
    #   resp.db_cluster_snapshots[0].allocated_storage #=> Integer
    #   resp.db_cluster_snapshots[0].status #=> String
    #   resp.db_cluster_snapshots[0].port #=> Integer
    #   resp.db_cluster_snapshots[0].vpc_id #=> String
    #   resp.db_cluster_snapshots[0].cluster_create_time #=> Time
    #   resp.db_cluster_snapshots[0].master_username #=> String
    #   resp.db_cluster_snapshots[0].engine_version #=> String
    #   resp.db_cluster_snapshots[0].license_model #=> String
    #   resp.db_cluster_snapshots[0].snapshot_type #=> String
    #   resp.db_cluster_snapshots[0].percent_progress #=> Integer
    #   resp.db_cluster_snapshots[0].storage_encrypted #=> Boolean
    #   resp.db_cluster_snapshots[0].kms_key_id #=> String
    #   resp.db_cluster_snapshots[0].db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshots[0].source_db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshots[0].iam_database_authentication_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterSnapshots AWS API Documentation
    #
    # @overload describe_db_cluster_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_db_cluster_snapshots(params = {}, options = {})
      req = build_request(:describe_db_cluster_snapshots, params)
      req.send_request(options)
    end

    # Returns information about provisioned DB clusters. This API supports
    # pagination.
    #
    # @option params [String] :db_cluster_identifier
    #   The user-supplied DB cluster identifier. If this parameter is
    #   specified, information from only the specific DB cluster is returned.
    #   This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match an existing DBClusterIdentifier.
    #
    #   ^
    #
    # @option params [Array<Types::Filter>] :filters
    #   A filter that specifies one or more DB clusters to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     information about the DB clusters identified by these ARNs.
    #
    #   ^
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous DescribeDBClusters
    #   request. If this parameter is specified, the response includes only
    #   records beyond the marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DBClusterMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterMessage#marker #marker} => String
    #   * {Types::DBClusterMessage#db_clusters #db_clusters} => Array&lt;Types::DBCluster&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_clusters({
    #     db_cluster_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_clusters #=> Array
    #   resp.db_clusters[0].allocated_storage #=> Integer
    #   resp.db_clusters[0].availability_zones #=> Array
    #   resp.db_clusters[0].availability_zones[0] #=> String
    #   resp.db_clusters[0].backup_retention_period #=> Integer
    #   resp.db_clusters[0].character_set_name #=> String
    #   resp.db_clusters[0].database_name #=> String
    #   resp.db_clusters[0].db_cluster_identifier #=> String
    #   resp.db_clusters[0].db_cluster_parameter_group #=> String
    #   resp.db_clusters[0].db_subnet_group #=> String
    #   resp.db_clusters[0].status #=> String
    #   resp.db_clusters[0].percent_progress #=> String
    #   resp.db_clusters[0].earliest_restorable_time #=> Time
    #   resp.db_clusters[0].endpoint #=> String
    #   resp.db_clusters[0].reader_endpoint #=> String
    #   resp.db_clusters[0].multi_az #=> Boolean
    #   resp.db_clusters[0].engine #=> String
    #   resp.db_clusters[0].engine_version #=> String
    #   resp.db_clusters[0].latest_restorable_time #=> Time
    #   resp.db_clusters[0].port #=> Integer
    #   resp.db_clusters[0].master_username #=> String
    #   resp.db_clusters[0].db_cluster_option_group_memberships #=> Array
    #   resp.db_clusters[0].db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.db_clusters[0].db_cluster_option_group_memberships[0].status #=> String
    #   resp.db_clusters[0].preferred_backup_window #=> String
    #   resp.db_clusters[0].preferred_maintenance_window #=> String
    #   resp.db_clusters[0].replication_source_identifier #=> String
    #   resp.db_clusters[0].read_replica_identifiers #=> Array
    #   resp.db_clusters[0].read_replica_identifiers[0] #=> String
    #   resp.db_clusters[0].db_cluster_members #=> Array
    #   resp.db_clusters[0].db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_clusters[0].db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_clusters[0].db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_clusters[0].db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_clusters[0].vpc_security_groups #=> Array
    #   resp.db_clusters[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_clusters[0].vpc_security_groups[0].status #=> String
    #   resp.db_clusters[0].hosted_zone_id #=> String
    #   resp.db_clusters[0].storage_encrypted #=> Boolean
    #   resp.db_clusters[0].kms_key_id #=> String
    #   resp.db_clusters[0].db_cluster_resource_id #=> String
    #   resp.db_clusters[0].db_cluster_arn #=> String
    #   resp.db_clusters[0].associated_roles #=> Array
    #   resp.db_clusters[0].associated_roles[0].role_arn #=> String
    #   resp.db_clusters[0].associated_roles[0].status #=> String
    #   resp.db_clusters[0].iam_database_authentication_enabled #=> Boolean
    #   resp.db_clusters[0].clone_group_id #=> String
    #   resp.db_clusters[0].cluster_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusters AWS API Documentation
    #
    # @overload describe_db_clusters(params = {})
    # @param [Hash] params ({})
    def describe_db_clusters(params = {}, options = {})
      req = build_request(:describe_db_clusters, params)
      req.send_request(options)
    end

    # Returns a list of the available DB engines.
    #
    # @option params [String] :engine
    #   The database engine to return.
    #
    # @option params [String] :engine_version
    #   The database engine version to return.
    #
    #   Example: `5.1.49`
    #
    # @option params [String] :db_parameter_group_family
    #   The name of a specific DB parameter group family to return details
    #   for.
    #
    #   Constraints:
    #
    #   * If supplied, must match an existing DBParameterGroupFamily.
    #
    #   ^
    #
    # @option params [Array<Types::Filter>] :filters
    #   Not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more than
    #   the `MaxRecords` value is available, a pagination token called a
    #   marker is included in the response so that the following results can
    #   be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @option params [Boolean] :default_only
    #   Indicates that only the default version of the specified engine or
    #   engine and major version combination is returned.
    #
    # @option params [Boolean] :list_supported_character_sets
    #   If this parameter is specified and the requested engine supports the
    #   `CharacterSetName` parameter for `CreateDBInstance`, the response
    #   includes a list of supported character sets for each engine version.
    #
    # @option params [Boolean] :list_supported_timezones
    #   If this parameter is specified and the requested engine supports the
    #   `TimeZone` parameter for `CreateDBInstance`, the response includes a
    #   list of supported time zones for each engine version.
    #
    # @return [Types::DBEngineVersionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBEngineVersionMessage#marker #marker} => String
    #   * {Types::DBEngineVersionMessage#db_engine_versions #db_engine_versions} => Array&lt;Types::DBEngineVersion&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_engine_versions({
    #     engine: "String",
    #     engine_version: "String",
    #     db_parameter_group_family: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #     default_only: false,
    #     list_supported_character_sets: false,
    #     list_supported_timezones: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_engine_versions #=> Array
    #   resp.db_engine_versions[0].engine #=> String
    #   resp.db_engine_versions[0].engine_version #=> String
    #   resp.db_engine_versions[0].db_parameter_group_family #=> String
    #   resp.db_engine_versions[0].db_engine_description #=> String
    #   resp.db_engine_versions[0].db_engine_version_description #=> String
    #   resp.db_engine_versions[0].default_character_set.character_set_name #=> String
    #   resp.db_engine_versions[0].default_character_set.character_set_description #=> String
    #   resp.db_engine_versions[0].supported_character_sets #=> Array
    #   resp.db_engine_versions[0].supported_character_sets[0].character_set_name #=> String
    #   resp.db_engine_versions[0].supported_character_sets[0].character_set_description #=> String
    #   resp.db_engine_versions[0].valid_upgrade_target #=> Array
    #   resp.db_engine_versions[0].valid_upgrade_target[0].engine #=> String
    #   resp.db_engine_versions[0].valid_upgrade_target[0].engine_version #=> String
    #   resp.db_engine_versions[0].valid_upgrade_target[0].description #=> String
    #   resp.db_engine_versions[0].valid_upgrade_target[0].auto_upgrade #=> Boolean
    #   resp.db_engine_versions[0].valid_upgrade_target[0].is_major_version_upgrade #=> Boolean
    #   resp.db_engine_versions[0].supported_timezones #=> Array
    #   resp.db_engine_versions[0].supported_timezones[0].timezone_name #=> String
    #   resp.db_engine_versions[0].exportable_log_types #=> Array
    #   resp.db_engine_versions[0].exportable_log_types[0] #=> String
    #   resp.db_engine_versions[0].supports_log_exports_to_cloudwatch_logs #=> Boolean
    #   resp.db_engine_versions[0].supports_read_replica #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBEngineVersions AWS API Documentation
    #
    # @overload describe_db_engine_versions(params = {})
    # @param [Hash] params ({})
    def describe_db_engine_versions(params = {}, options = {})
      req = build_request(:describe_db_engine_versions, params)
      req.send_request(options)
    end

    # Returns information about provisioned instances. This API supports
    # pagination.
    #
    # @option params [String] :db_instance_identifier
    #   The user-supplied instance identifier. If this parameter is specified,
    #   information from only the specific DB instance is returned. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBInstance.
    #
    #   ^
    #
    # @option params [Array<Types::Filter>] :filters
    #   A filter that specifies one or more DB instances to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     information about the DB instances associated with the DB clusters
    #     identified by these ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     Amazon Resource Names (ARNs). The results list will only include
    #     information about the DB instances identified by these ARNs.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBInstances` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @return [Types::DBInstanceMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBInstanceMessage#marker #marker} => String
    #   * {Types::DBInstanceMessage#db_instances #db_instances} => Array&lt;Types::DBInstance&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_instances({
    #     db_instance_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_instances #=> Array
    #   resp.db_instances[0].db_instance_identifier #=> String
    #   resp.db_instances[0].db_instance_class #=> String
    #   resp.db_instances[0].engine #=> String
    #   resp.db_instances[0].db_instance_status #=> String
    #   resp.db_instances[0].master_username #=> String
    #   resp.db_instances[0].db_name #=> String
    #   resp.db_instances[0].endpoint.address #=> String
    #   resp.db_instances[0].endpoint.port #=> Integer
    #   resp.db_instances[0].endpoint.hosted_zone_id #=> String
    #   resp.db_instances[0].allocated_storage #=> Integer
    #   resp.db_instances[0].instance_create_time #=> Time
    #   resp.db_instances[0].preferred_backup_window #=> String
    #   resp.db_instances[0].backup_retention_period #=> Integer
    #   resp.db_instances[0].db_security_groups #=> Array
    #   resp.db_instances[0].db_security_groups[0].db_security_group_name #=> String
    #   resp.db_instances[0].db_security_groups[0].status #=> String
    #   resp.db_instances[0].vpc_security_groups #=> Array
    #   resp.db_instances[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_instances[0].vpc_security_groups[0].status #=> String
    #   resp.db_instances[0].db_parameter_groups #=> Array
    #   resp.db_instances[0].db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.db_instances[0].db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.db_instances[0].availability_zone #=> String
    #   resp.db_instances[0].db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_instances[0].db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_instances[0].db_subnet_group.vpc_id #=> String
    #   resp.db_instances[0].db_subnet_group.subnet_group_status #=> String
    #   resp.db_instances[0].db_subnet_group.subnets #=> Array
    #   resp.db_instances[0].db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_instances[0].db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_instances[0].db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_instances[0].db_subnet_group.db_subnet_group_arn #=> String
    #   resp.db_instances[0].preferred_maintenance_window #=> String
    #   resp.db_instances[0].pending_modified_values.db_instance_class #=> String
    #   resp.db_instances[0].pending_modified_values.allocated_storage #=> Integer
    #   resp.db_instances[0].pending_modified_values.master_user_password #=> String
    #   resp.db_instances[0].pending_modified_values.port #=> Integer
    #   resp.db_instances[0].pending_modified_values.backup_retention_period #=> Integer
    #   resp.db_instances[0].pending_modified_values.multi_az #=> Boolean
    #   resp.db_instances[0].pending_modified_values.engine_version #=> String
    #   resp.db_instances[0].pending_modified_values.license_model #=> String
    #   resp.db_instances[0].pending_modified_values.iops #=> Integer
    #   resp.db_instances[0].pending_modified_values.db_instance_identifier #=> String
    #   resp.db_instances[0].pending_modified_values.storage_type #=> String
    #   resp.db_instances[0].pending_modified_values.ca_certificate_identifier #=> String
    #   resp.db_instances[0].pending_modified_values.db_subnet_group_name #=> String
    #   resp.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array
    #   resp.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array
    #   resp.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable[0] #=> String
    #   resp.db_instances[0].latest_restorable_time #=> Time
    #   resp.db_instances[0].multi_az #=> Boolean
    #   resp.db_instances[0].engine_version #=> String
    #   resp.db_instances[0].auto_minor_version_upgrade #=> Boolean
    #   resp.db_instances[0].read_replica_source_db_instance_identifier #=> String
    #   resp.db_instances[0].read_replica_db_instance_identifiers #=> Array
    #   resp.db_instances[0].read_replica_db_instance_identifiers[0] #=> String
    #   resp.db_instances[0].read_replica_db_cluster_identifiers #=> Array
    #   resp.db_instances[0].read_replica_db_cluster_identifiers[0] #=> String
    #   resp.db_instances[0].license_model #=> String
    #   resp.db_instances[0].iops #=> Integer
    #   resp.db_instances[0].option_group_memberships #=> Array
    #   resp.db_instances[0].option_group_memberships[0].option_group_name #=> String
    #   resp.db_instances[0].option_group_memberships[0].status #=> String
    #   resp.db_instances[0].character_set_name #=> String
    #   resp.db_instances[0].secondary_availability_zone #=> String
    #   resp.db_instances[0].publicly_accessible #=> Boolean
    #   resp.db_instances[0].status_infos #=> Array
    #   resp.db_instances[0].status_infos[0].status_type #=> String
    #   resp.db_instances[0].status_infos[0].normal #=> Boolean
    #   resp.db_instances[0].status_infos[0].status #=> String
    #   resp.db_instances[0].status_infos[0].message #=> String
    #   resp.db_instances[0].storage_type #=> String
    #   resp.db_instances[0].tde_credential_arn #=> String
    #   resp.db_instances[0].db_instance_port #=> Integer
    #   resp.db_instances[0].db_cluster_identifier #=> String
    #   resp.db_instances[0].storage_encrypted #=> Boolean
    #   resp.db_instances[0].kms_key_id #=> String
    #   resp.db_instances[0].dbi_resource_id #=> String
    #   resp.db_instances[0].ca_certificate_identifier #=> String
    #   resp.db_instances[0].domain_memberships #=> Array
    #   resp.db_instances[0].domain_memberships[0].domain #=> String
    #   resp.db_instances[0].domain_memberships[0].status #=> String
    #   resp.db_instances[0].domain_memberships[0].fqdn #=> String
    #   resp.db_instances[0].domain_memberships[0].iam_role_name #=> String
    #   resp.db_instances[0].copy_tags_to_snapshot #=> Boolean
    #   resp.db_instances[0].monitoring_interval #=> Integer
    #   resp.db_instances[0].enhanced_monitoring_resource_arn #=> String
    #   resp.db_instances[0].monitoring_role_arn #=> String
    #   resp.db_instances[0].promotion_tier #=> Integer
    #   resp.db_instances[0].db_instance_arn #=> String
    #   resp.db_instances[0].timezone #=> String
    #   resp.db_instances[0].iam_database_authentication_enabled #=> Boolean
    #   resp.db_instances[0].performance_insights_enabled #=> Boolean
    #   resp.db_instances[0].performance_insights_kms_key_id #=> String
    #   resp.db_instances[0].enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instances[0].enabled_cloudwatch_logs_exports[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBInstances AWS API Documentation
    #
    # @overload describe_db_instances(params = {})
    # @param [Hash] params ({})
    def describe_db_instances(params = {}, options = {})
      req = build_request(:describe_db_instances, params)
      req.send_request(options)
    end

    # Returns a list of `DBParameterGroup` descriptions. If a
    # `DBParameterGroupName` is specified, the list will contain only the
    # description of the specified DB parameter group.
    #
    # @option params [String] :db_parameter_group_name
    #   The name of a specific DB parameter group to return details for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBParameterGroups` request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @return [Types::DBParameterGroupsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBParameterGroupsMessage#marker #marker} => String
    #   * {Types::DBParameterGroupsMessage#db_parameter_groups #db_parameter_groups} => Array&lt;Types::DBParameterGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_parameter_groups({
    #     db_parameter_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_parameter_groups #=> Array
    #   resp.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.db_parameter_groups[0].db_parameter_group_family #=> String
    #   resp.db_parameter_groups[0].description #=> String
    #   resp.db_parameter_groups[0].db_parameter_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBParameterGroups AWS API Documentation
    #
    # @overload describe_db_parameter_groups(params = {})
    # @param [Hash] params ({})
    def describe_db_parameter_groups(params = {}, options = {})
      req = build_request(:describe_db_parameter_groups, params)
      req.send_request(options)
    end

    # Returns the detailed parameter list for a particular DB parameter
    # group.
    #
    # @option params [required, String] :db_parameter_group_name
    #   The name of a specific DB parameter group to return details for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DBParameterGroup.
    #
    #   ^
    #
    # @option params [String] :source
    #   The parameter types to return.
    #
    #   Default: All parameter types returned
    #
    #   Valid Values: `user | system | engine-default`
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBParameters` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @return [Types::DBParameterGroupDetails] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBParameterGroupDetails#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::DBParameterGroupDetails#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_parameters({
    #     db_parameter_group_name: "String", # required
    #     source: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_name #=> String
    #   resp.parameters[0].parameter_value #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].source #=> String
    #   resp.parameters[0].apply_type #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.parameters[0].allowed_values #=> String
    #   resp.parameters[0].is_modifiable #=> Boolean
    #   resp.parameters[0].minimum_engine_version #=> String
    #   resp.parameters[0].apply_method #=> String, one of "immediate", "pending-reboot"
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBParameters AWS API Documentation
    #
    # @overload describe_db_parameters(params = {})
    # @param [Hash] params ({})
    def describe_db_parameters(params = {}, options = {})
      req = build_request(:describe_db_parameters, params)
      req.send_request(options)
    end

    # Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName
    # is specified, the list will contain only the descriptions of the
    # specified DBSubnetGroup.
    #
    # For an overview of CIDR ranges, go to the [Wikipedia Tutorial][1].
    #
    #
    #
    # [1]: http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #
    # @option params [String] :db_subnet_group_name
    #   The name of the DB subnet group to return details for.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   DescribeDBSubnetGroups request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @return [Types::DBSubnetGroupMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBSubnetGroupMessage#marker #marker} => String
    #   * {Types::DBSubnetGroupMessage#db_subnet_groups #db_subnet_groups} => Array&lt;Types::DBSubnetGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_subnet_groups({
    #     db_subnet_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_subnet_groups #=> Array
    #   resp.db_subnet_groups[0].db_subnet_group_name #=> String
    #   resp.db_subnet_groups[0].db_subnet_group_description #=> String
    #   resp.db_subnet_groups[0].vpc_id #=> String
    #   resp.db_subnet_groups[0].subnet_group_status #=> String
    #   resp.db_subnet_groups[0].subnets #=> Array
    #   resp.db_subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.db_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_subnet_groups[0].subnets[0].subnet_status #=> String
    #   resp.db_subnet_groups[0].db_subnet_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBSubnetGroups AWS API Documentation
    #
    # @overload describe_db_subnet_groups(params = {})
    # @param [Hash] params ({})
    def describe_db_subnet_groups(params = {}, options = {})
      req = build_request(:describe_db_subnet_groups, params)
      req.send_request(options)
    end

    # Returns the default engine and system parameter information for the
    # cluster database engine.
    #
    # @option params [required, String] :db_parameter_group_family
    #   The name of the DB cluster parameter group family to return engine
    #   parameter information for.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeEngineDefaultClusterParameters` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEngineDefaultClusterParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEngineDefaultClusterParametersResult#engine_defaults #engine_defaults} => Types::EngineDefaults
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_engine_default_cluster_parameters({
    #     db_parameter_group_family: "String", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.engine_defaults.db_parameter_group_family #=> String
    #   resp.engine_defaults.marker #=> String
    #   resp.engine_defaults.parameters #=> Array
    #   resp.engine_defaults.parameters[0].parameter_name #=> String
    #   resp.engine_defaults.parameters[0].parameter_value #=> String
    #   resp.engine_defaults.parameters[0].description #=> String
    #   resp.engine_defaults.parameters[0].source #=> String
    #   resp.engine_defaults.parameters[0].apply_type #=> String
    #   resp.engine_defaults.parameters[0].data_type #=> String
    #   resp.engine_defaults.parameters[0].allowed_values #=> String
    #   resp.engine_defaults.parameters[0].is_modifiable #=> Boolean
    #   resp.engine_defaults.parameters[0].minimum_engine_version #=> String
    #   resp.engine_defaults.parameters[0].apply_method #=> String, one of "immediate", "pending-reboot"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEngineDefaultClusterParameters AWS API Documentation
    #
    # @overload describe_engine_default_cluster_parameters(params = {})
    # @param [Hash] params ({})
    def describe_engine_default_cluster_parameters(params = {}, options = {})
      req = build_request(:describe_engine_default_cluster_parameters, params)
      req.send_request(options)
    end

    # Returns the default engine and system parameter information for the
    # specified database engine.
    #
    # @option params [required, String] :db_parameter_group_family
    #   The name of the DB parameter group family.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeEngineDefaultParameters` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEngineDefaultParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEngineDefaultParametersResult#engine_defaults #engine_defaults} => Types::EngineDefaults
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_engine_default_parameters({
    #     db_parameter_group_family: "String", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.engine_defaults.db_parameter_group_family #=> String
    #   resp.engine_defaults.marker #=> String
    #   resp.engine_defaults.parameters #=> Array
    #   resp.engine_defaults.parameters[0].parameter_name #=> String
    #   resp.engine_defaults.parameters[0].parameter_value #=> String
    #   resp.engine_defaults.parameters[0].description #=> String
    #   resp.engine_defaults.parameters[0].source #=> String
    #   resp.engine_defaults.parameters[0].apply_type #=> String
    #   resp.engine_defaults.parameters[0].data_type #=> String
    #   resp.engine_defaults.parameters[0].allowed_values #=> String
    #   resp.engine_defaults.parameters[0].is_modifiable #=> Boolean
    #   resp.engine_defaults.parameters[0].minimum_engine_version #=> String
    #   resp.engine_defaults.parameters[0].apply_method #=> String, one of "immediate", "pending-reboot"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEngineDefaultParameters AWS API Documentation
    #
    # @overload describe_engine_default_parameters(params = {})
    # @param [Hash] params ({})
    def describe_engine_default_parameters(params = {}, options = {})
      req = build_request(:describe_engine_default_parameters, params)
      req.send_request(options)
    end

    # Displays a list of categories for all event source types, or, if
    # specified, for a specified source type.
    #
    # @option params [String] :source_type
    #   The type of source that is generating the events.
    #
    #   Valid values: db-instance \| db-parameter-group \| db-security-group
    #   \| db-snapshot
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @return [Types::EventCategoriesMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventCategoriesMessage#event_categories_map_list #event_categories_map_list} => Array&lt;Types::EventCategoriesMap&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_categories({
    #     source_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_categories_map_list #=> Array
    #   resp.event_categories_map_list[0].source_type #=> String
    #   resp.event_categories_map_list[0].event_categories #=> Array
    #   resp.event_categories_map_list[0].event_categories[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEventCategories AWS API Documentation
    #
    # @overload describe_event_categories(params = {})
    # @param [Hash] params ({})
    def describe_event_categories(params = {}, options = {})
      req = build_request(:describe_event_categories, params)
      req.send_request(options)
    end

    # Lists all the subscription descriptions for a customer account. The
    # description for a subscription includes SubscriptionName, SNSTopicARN,
    # CustomerID, SourceType, SourceID, CreationTime, and Status.
    #
    # If you specify a SubscriptionName, lists the description for that
    # subscription.
    #
    # @option params [String] :subscription_name
    #   The name of the event notification subscription you want to describe.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   DescribeOrderableDBInstanceOptions request. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords` .
    #
    # @return [Types::EventSubscriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSubscriptionsMessage#marker #marker} => String
    #   * {Types::EventSubscriptionsMessage#event_subscriptions_list #event_subscriptions_list} => Array&lt;Types::EventSubscription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_subscriptions({
    #     subscription_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.event_subscriptions_list #=> Array
    #   resp.event_subscriptions_list[0].customer_aws_id #=> String
    #   resp.event_subscriptions_list[0].cust_subscription_id #=> String
    #   resp.event_subscriptions_list[0].sns_topic_arn #=> String
    #   resp.event_subscriptions_list[0].status #=> String
    #   resp.event_subscriptions_list[0].subscription_creation_time #=> String
    #   resp.event_subscriptions_list[0].source_type #=> String
    #   resp.event_subscriptions_list[0].source_ids_list #=> Array
    #   resp.event_subscriptions_list[0].source_ids_list[0] #=> String
    #   resp.event_subscriptions_list[0].event_categories_list #=> Array
    #   resp.event_subscriptions_list[0].event_categories_list[0] #=> String
    #   resp.event_subscriptions_list[0].enabled #=> Boolean
    #   resp.event_subscriptions_list[0].event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEventSubscriptions AWS API Documentation
    #
    # @overload describe_event_subscriptions(params = {})
    # @param [Hash] params ({})
    def describe_event_subscriptions(params = {}, options = {})
      req = build_request(:describe_event_subscriptions, params)
      req.send_request(options)
    end

    # Returns events related to DB instances, DB security groups, DB
    # snapshots, and DB parameter groups for the past 14 days. Events
    # specific to a particular DB instance, DB security group, database
    # snapshot, or DB parameter group can be obtained by providing the name
    # as a parameter. By default, the past hour of events are returned.
    #
    # @option params [String] :source_identifier
    #   The identifier of the event source for which events are returned. If
    #   not specified, then all sources are included in the response.
    #
    #   Constraints:
    #
    #   * If SourceIdentifier is supplied, SourceType must also be provided.
    #
    #   * If the source type is `DBInstance`, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is `DBSecurityGroup`, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is `DBParameterGroup`, a `DBParameterGroupName`
    #     must be supplied.
    #
    #   * If the source type is `DBSnapshot`, a `DBSnapshotIdentifier` must be
    #     supplied.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [String] :source_type
    #   The event source to retrieve events for. If no value is specified, all
    #   events are returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #
    # @option params [Integer] :duration
    #   The number of minutes to retrieve events for.
    #
    #   Default: 60
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories that trigger notifications for a event
    #   notification subscription.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous DescribeEvents
    #   request. If this parameter is specified, the response includes only
    #   records beyond the marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::EventsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventsMessage#marker #marker} => String
    #   * {Types::EventsMessage#events #events} => Array&lt;Types::Event&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     source_identifier: "String",
    #     source_type: "db-instance", # accepts db-instance, db-parameter-group, db-security-group, db-snapshot, db-cluster, db-cluster-snapshot
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: ["String"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.events #=> Array
    #   resp.events[0].source_identifier #=> String
    #   resp.events[0].source_type #=> String, one of "db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster", "db-cluster-snapshot"
    #   resp.events[0].message #=> String
    #   resp.events[0].event_categories #=> Array
    #   resp.events[0].event_categories[0] #=> String
    #   resp.events[0].date #=> Time
    #   resp.events[0].source_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Returns a list of orderable DB instance options for the specified
    # engine.
    #
    # @option params [required, String] :engine
    #   The name of the engine to retrieve DB instance options for.
    #
    # @option params [String] :engine_version
    #   The engine version filter value. Specify this parameter to show only
    #   the available offerings matching the specified engine version.
    #
    # @option params [String] :db_instance_class
    #   The DB instance class filter value. Specify this parameter to show
    #   only the available offerings matching the specified DB instance class.
    #
    # @option params [String] :license_model
    #   The license model filter value. Specify this parameter to show only
    #   the available offerings matching the specified license model.
    #
    # @option params [Boolean] :vpc
    #   The VPC filter value. Specify this parameter to show only the
    #   available VPC or non-VPC offerings.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   DescribeOrderableDBInstanceOptions request. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords` .
    #
    # @return [Types::OrderableDBInstanceOptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::OrderableDBInstanceOptionsMessage#orderable_db_instance_options #orderable_db_instance_options} => Array&lt;Types::OrderableDBInstanceOption&gt;
    #   * {Types::OrderableDBInstanceOptionsMessage#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_orderable_db_instance_options({
    #     engine: "String", # required
    #     engine_version: "String",
    #     db_instance_class: "String",
    #     license_model: "String",
    #     vpc: false,
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.orderable_db_instance_options #=> Array
    #   resp.orderable_db_instance_options[0].engine #=> String
    #   resp.orderable_db_instance_options[0].engine_version #=> String
    #   resp.orderable_db_instance_options[0].db_instance_class #=> String
    #   resp.orderable_db_instance_options[0].license_model #=> String
    #   resp.orderable_db_instance_options[0].availability_zones #=> Array
    #   resp.orderable_db_instance_options[0].availability_zones[0].name #=> String
    #   resp.orderable_db_instance_options[0].multi_az_capable #=> Boolean
    #   resp.orderable_db_instance_options[0].read_replica_capable #=> Boolean
    #   resp.orderable_db_instance_options[0].vpc #=> Boolean
    #   resp.orderable_db_instance_options[0].supports_storage_encryption #=> Boolean
    #   resp.orderable_db_instance_options[0].storage_type #=> String
    #   resp.orderable_db_instance_options[0].supports_iops #=> Boolean
    #   resp.orderable_db_instance_options[0].supports_enhanced_monitoring #=> Boolean
    #   resp.orderable_db_instance_options[0].supports_iam_database_authentication #=> Boolean
    #   resp.orderable_db_instance_options[0].supports_performance_insights #=> Boolean
    #   resp.orderable_db_instance_options[0].min_storage_size #=> Integer
    #   resp.orderable_db_instance_options[0].max_storage_size #=> Integer
    #   resp.orderable_db_instance_options[0].min_iops_per_db_instance #=> Integer
    #   resp.orderable_db_instance_options[0].max_iops_per_db_instance #=> Integer
    #   resp.orderable_db_instance_options[0].min_iops_per_gib #=> Float
    #   resp.orderable_db_instance_options[0].max_iops_per_gib #=> Float
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeOrderableDBInstanceOptions AWS API Documentation
    #
    # @overload describe_orderable_db_instance_options(params = {})
    # @param [Hash] params ({})
    def describe_orderable_db_instance_options(params = {}, options = {})
      req = build_request(:describe_orderable_db_instance_options, params)
      req.send_request(options)
    end

    # Returns a list of resources (for example, DB instances) that have at
    # least one pending maintenance action.
    #
    # @option params [String] :resource_identifier
    #   The ARN of a resource to return pending maintenance actions for.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A filter that specifies one or more resources to return pending
    #   maintenance actions for.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     pending maintenance actions for the DB clusters identified by these
    #     ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     ARNs. The results list will only include pending maintenance actions
    #     for the DB instances identified by these ARNs.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribePendingMaintenanceActions` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   a number of records specified by `MaxRecords`.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @return [Types::PendingMaintenanceActionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PendingMaintenanceActionsMessage#pending_maintenance_actions #pending_maintenance_actions} => Array&lt;Types::ResourcePendingMaintenanceActions&gt;
    #   * {Types::PendingMaintenanceActionsMessage#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pending_maintenance_actions({
    #     resource_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     marker: "String",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pending_maintenance_actions #=> Array
    #   resp.pending_maintenance_actions[0].resource_identifier #=> String
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details #=> Array
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].action #=> String
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].auto_applied_after_date #=> Time
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].forced_apply_date #=> Time
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].opt_in_status #=> String
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].current_apply_date #=> Time
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].description #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribePendingMaintenanceActions AWS API Documentation
    #
    # @overload describe_pending_maintenance_actions(params = {})
    # @param [Hash] params ({})
    def describe_pending_maintenance_actions(params = {}, options = {})
      req = build_request(:describe_pending_maintenance_actions, params)
      req.send_request(options)
    end

    # You can call DescribeValidDBInstanceModifications to learn what
    # modifications you can make to your DB instance. You can use this
    # information when you call ModifyDBInstance.
    #
    # @option params [required, String] :db_instance_identifier
    #   The customer identifier or the ARN of your DB instance.
    #
    # @return [Types::DescribeValidDBInstanceModificationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeValidDBInstanceModificationsResult#valid_db_instance_modifications_message #valid_db_instance_modifications_message} => Types::ValidDBInstanceModificationsMessage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_valid_db_instance_modifications({
    #     db_instance_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.valid_db_instance_modifications_message.storage #=> Array
    #   resp.valid_db_instance_modifications_message.storage[0].storage_type #=> String
    #   resp.valid_db_instance_modifications_message.storage[0].storage_size #=> Array
    #   resp.valid_db_instance_modifications_message.storage[0].storage_size[0].from #=> Integer
    #   resp.valid_db_instance_modifications_message.storage[0].storage_size[0].to #=> Integer
    #   resp.valid_db_instance_modifications_message.storage[0].storage_size[0].step #=> Integer
    #   resp.valid_db_instance_modifications_message.storage[0].provisioned_iops #=> Array
    #   resp.valid_db_instance_modifications_message.storage[0].provisioned_iops[0].from #=> Integer
    #   resp.valid_db_instance_modifications_message.storage[0].provisioned_iops[0].to #=> Integer
    #   resp.valid_db_instance_modifications_message.storage[0].provisioned_iops[0].step #=> Integer
    #   resp.valid_db_instance_modifications_message.storage[0].iops_to_storage_ratio #=> Array
    #   resp.valid_db_instance_modifications_message.storage[0].iops_to_storage_ratio[0].from #=> Float
    #   resp.valid_db_instance_modifications_message.storage[0].iops_to_storage_ratio[0].to #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeValidDBInstanceModifications AWS API Documentation
    #
    # @overload describe_valid_db_instance_modifications(params = {})
    # @param [Hash] params ({})
    def describe_valid_db_instance_modifications(params = {}, options = {})
      req = build_request(:describe_valid_db_instance_modifications, params)
      req.send_request(options)
    end

    # Forces a failover for a DB cluster.
    #
    # A failover for a DB cluster promotes one of the Read Replicas
    # (read-only instances) in the DB cluster to be the primary instance
    # (the cluster writer).
    #
    # Amazon Neptune will automatically fail over to a Read Replica, if one
    # exists, when the primary instance fails. You can force a failover when
    # you want to simulate a failure of a primary instance for testing.
    # Because each instance in a DB cluster has its own endpoint address,
    # you will need to clean up and re-establish any existing connections
    # that use those endpoint addresses when the failover is complete.
    #
    # @option params [String] :db_cluster_identifier
    #   A DB cluster identifier to force a failover for. This parameter is not
    #   case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #
    # @option params [String] :target_db_instance_identifier
    #   The name of the instance to promote to the primary instance.
    #
    #   You must specify the instance identifier for an Read Replica in the DB
    #   cluster. For example, `mydbcluster-replica1`.
    #
    # @return [Types::FailoverDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FailoverDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.failover_db_cluster({
    #     db_cluster_identifier: "String",
    #     target_db_instance_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.allocated_storage #=> Integer
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.character_set_name #=> String
    #   resp.db_cluster.database_name #=> String
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships #=> Array
    #   resp.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/FailoverDBCluster AWS API Documentation
    #
    # @overload failover_db_cluster(params = {})
    # @param [Hash] params ({})
    def failover_db_cluster(params = {}, options = {})
      req = build_request(:failover_db_cluster, params)
      req.send_request(options)
    end

    # Lists all tags on an Amazon Neptune resource.
    #
    # @option params [required, String] :resource_name
    #   The Amazon Neptune resource with tags to be listed. This value is an
    #   Amazon Resource Name (ARN). For information about creating an ARN, see
    #   [ Constructing an Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @return [Types::TagListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagListMessage#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_name: "String", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Modify a setting for a DB cluster. You can change one or more database
    # configuration parameters by specifying these parameters and the new
    # values in the request.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The DB cluster identifier for the cluster being modified. This
    #   parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #
    # @option params [String] :new_db_cluster_identifier
    #   The new DB cluster identifier for the DB cluster when renaming a DB
    #   cluster. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * The first character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-cluster2`
    #
    # @option params [Boolean] :apply_immediately
    #   A value that specifies whether the modifications in this request and
    #   any pending modifications are asynchronously applied as soon as
    #   possible, regardless of the `PreferredMaintenanceWindow` setting for
    #   the DB cluster. If this parameter is set to `false`, changes to the DB
    #   cluster are applied during the next maintenance window.
    #
    #   The `ApplyImmediately` parameter only affects the
    #   `NewDBClusterIdentifier` and `MasterUserPassword` values. If you set
    #   the `ApplyImmediately` parameter value to false, then changes to the
    #   `NewDBClusterIdentifier` and `MasterUserPassword` values are applied
    #   during the next maintenance window. All other changes are applied
    #   immediately, regardless of the value of the `ApplyImmediately`
    #   parameter.
    #
    #   Default: `false`
    #
    # @option params [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. You must
    #   specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35
    #
    #   ^
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to use for the DB cluster.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of VPC security groups that the DB cluster will belong to.
    #
    # @option params [Integer] :port
    #   The port number on which the DB cluster accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #
    # @option params [String] :master_user_password
    #   The new password for the master database user. This password can
    #   contain any printable ASCII character except "/", """, or "@".
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    # @option params [String] :option_group_name
    #   A value that indicates that the DB cluster should be associated with
    #   the specified option group. Changing this parameter doesn't result in
    #   an outage except in the following case, and the change is applied
    #   during the next maintenance window unless the `ApplyImmediately`
    #   parameter is set to `true` for this request. If the parameter change
    #   results in an option group that enables OEM, this change can cause a
    #   brief (sub-second) period during which new connections are rejected
    #   but existing connections are not interrupted.
    #
    #   Permanent options can't be removed from an option group. The option
    #   group can't be removed from a DB cluster once it is associated with a
    #   DB cluster.
    #
    # @option params [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region.
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #
    # @option params [String] :engine_version
    #   The version number of the database engine to which you want to
    #   upgrade. Changing this parameter results in an outage. The change is
    #   applied during the next maintenance window unless the ApplyImmediately
    #   parameter is set to true.
    #
    #   For a list of valid engine versions, see CreateDBInstance, or call
    #   DescribeDBEngineVersions.
    #
    # @return [Types::ModifyDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_cluster({
    #     db_cluster_identifier: "String", # required
    #     new_db_cluster_identifier: "String",
    #     apply_immediately: false,
    #     backup_retention_period: 1,
    #     db_cluster_parameter_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     port: 1,
    #     master_user_password: "String",
    #     option_group_name: "String",
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     enable_iam_database_authentication: false,
    #     engine_version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.allocated_storage #=> Integer
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.character_set_name #=> String
    #   resp.db_cluster.database_name #=> String
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships #=> Array
    #   resp.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBCluster AWS API Documentation
    #
    # @overload modify_db_cluster(params = {})
    # @param [Hash] params ({})
    def modify_db_cluster(params = {}, options = {})
      req = build_request(:modify_db_cluster, params)
      req.send_request(options)
    end

    # Modifies the parameters of a DB cluster parameter group. To modify
    # more than one parameter, submit a list of the following:
    # `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20
    # parameters can be modified in a single request.
    #
    # <note markdown="1"> Changes to dynamic parameters are applied immediately. Changes to
    # static parameters require a reboot without failover to the DB cluster
    # associated with the parameter group before the change can take effect.
    #
    #  </note>
    #
    # After you create a DB cluster parameter group, you should wait at
    # least 5 minutes before creating your first DB cluster that uses that
    # DB cluster parameter group as the default parameter group. This allows
    # Amazon Neptune to fully complete the create action before the
    # parameter group is used as the default for a new DB cluster. This is
    # especially important for parameters that are critical when creating
    # the default database for a DB cluster, such as the character set for
    # the default database defined by the `character_set_database`
    # parameter. You can use the *Parameter Groups* option of the Amazon
    # Neptune console or the DescribeDBClusterParameters command to verify
    # that your DB cluster parameter group has been created or modified.
    #
    # @option params [required, String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to modify.
    #
    # @option params [required, Array<Types::Parameter>] :parameters
    #   A list of parameters in the DB cluster parameter group to modify.
    #
    # @return [Types::DBClusterParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterParameterGroupNameMessage#db_cluster_parameter_group_name #db_cluster_parameter_group_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "String", # required
    #     parameters: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate", # accepts immediate, pending-reboot
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBClusterParameterGroup AWS API Documentation
    #
    # @overload modify_db_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def modify_db_cluster_parameter_group(params = {}, options = {})
      req = build_request(:modify_db_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Adds an attribute and values to, or removes an attribute and values
    # from, a manual DB cluster snapshot.
    #
    # To share a manual DB cluster snapshot with other AWS accounts, specify
    # `restore` as the `AttributeName` and use the `ValuesToAdd` parameter
    # to add a list of IDs of the AWS accounts that are authorized to
    # restore the manual DB cluster snapshot. Use the value `all` to make
    # the manual DB cluster snapshot public, which means that it can be
    # copied or restored by all AWS accounts. Do not add the `all` value for
    # any manual DB cluster snapshots that contain private information that
    # you don't want available to all AWS accounts. If a manual DB cluster
    # snapshot is encrypted, it can be shared, but only by specifying a list
    # of authorized AWS account IDs for the `ValuesToAdd` parameter. You
    # can't use `all` as a value for that parameter in this case.
    #
    # To view which AWS accounts have access to copy or restore a manual DB
    # cluster snapshot, or whether a manual DB cluster snapshot public or
    # private, use the DescribeDBClusterSnapshotAttributes API action.
    #
    # @option params [required, String] :db_cluster_snapshot_identifier
    #   The identifier for the DB cluster snapshot to modify the attributes
    #   for.
    #
    # @option params [required, String] :attribute_name
    #   The name of the DB cluster snapshot attribute to modify.
    #
    #   To manage authorization for other AWS accounts to copy or restore a
    #   manual DB cluster snapshot, set this value to `restore`.
    #
    # @option params [Array<String>] :values_to_add
    #   A list of DB cluster snapshot attributes to add to the attribute
    #   specified by `AttributeName`.
    #
    #   To authorize other AWS accounts to copy or restore a manual DB cluster
    #   snapshot, set this list to include one or more AWS account IDs, or
    #   `all` to make the manual DB cluster snapshot restorable by any AWS
    #   account. Do not add the `all` value for any manual DB cluster
    #   snapshots that contain private information that you don't want
    #   available to all AWS accounts.
    #
    # @option params [Array<String>] :values_to_remove
    #   A list of DB cluster snapshot attributes to remove from the attribute
    #   specified by `AttributeName`.
    #
    #   To remove authorization for other AWS accounts to copy or restore a
    #   manual DB cluster snapshot, set this list to include one or more AWS
    #   account identifiers, or `all` to remove authorization for any AWS
    #   account to copy or restore the DB cluster snapshot. If you specify
    #   `all`, an AWS account whose account ID is explicitly added to the
    #   `restore` attribute can still copy or restore a manual DB cluster
    #   snapshot.
    #
    # @return [Types::ModifyDBClusterSnapshotAttributeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBClusterSnapshotAttributeResult#db_cluster_snapshot_attributes_result #db_cluster_snapshot_attributes_result} => Types::DBClusterSnapshotAttributesResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_cluster_snapshot_attribute({
    #     db_cluster_snapshot_identifier: "String", # required
    #     attribute_name: "String", # required
    #     values_to_add: ["String"],
    #     values_to_remove: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes #=> Array
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_name #=> String
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values #=> Array
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBClusterSnapshotAttribute AWS API Documentation
    #
    # @overload modify_db_cluster_snapshot_attribute(params = {})
    # @param [Hash] params ({})
    def modify_db_cluster_snapshot_attribute(params = {}, options = {})
      req = build_request(:modify_db_cluster_snapshot_attribute, params)
      req.send_request(options)
    end

    # Modifies settings for a DB instance. You can change one or more
    # database configuration parameters by specifying these parameters and
    # the new values in the request. To learn what modifications you can
    # make to your DB instance, call DescribeValidDBInstanceModifications
    # before you call ModifyDBInstance.
    #
    # @option params [required, String] :db_instance_identifier
    #   The DB instance identifier. This value is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #
    # @option params [Integer] :allocated_storage
    #   The new amount of storage (in gibibytes) to allocate for the DB
    #   instance.
    #
    #   Not applicable. Storage is managed by the DB Cluster.
    #
    # @option params [String] :db_instance_class
    #   The new compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions.
    #
    #   If you modify the DB instance class, an outage occurs during the
    #   change. The change is applied during the next maintenance window,
    #   unless `ApplyImmediately` is specified as `true` for this request.
    #
    #   Default: Uses existing setting
    #
    # @option params [String] :db_subnet_group_name
    #   The new DB subnet group for the DB instance. You can use this
    #   parameter to move your DB instance to a different VPC.
    #
    #   Changing the subnet group causes an outage during the change. The
    #   change is applied during the next maintenance window, unless you
    #   specify `true` for the `ApplyImmediately` parameter.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetGroup`
    #
    # @option params [Array<String>] :db_security_groups
    #   A list of DB security groups to authorize on this DB instance.
    #   Changing this setting doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing DBSecurityGroups.
    #
    #   ^
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to authorize on this DB instance.
    #   This change is asynchronously applied as soon as possible.
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster. For more information, see ModifyDBCluster.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing VpcSecurityGroupIds.
    #
    #   ^
    #
    # @option params [Boolean] :apply_immediately
    #   Specifies whether the modifications in this request and any pending
    #   modifications are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the DB
    #   instance.
    #
    #   If this parameter is set to `false`, changes to the DB instance are
    #   applied during the next maintenance window. Some parameter changes can
    #   cause an outage and are applied on the next call to RebootDBInstance,
    #   or the next failure reboot.
    #
    #   Default: `false`
    #
    # @option params [String] :master_user_password
    #   The new password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   Not applicable.
    #
    #   Default: Uses existing setting
    #
    # @option params [String] :db_parameter_group_name
    #   The name of the DB parameter group to apply to the DB instance.
    #   Changing this setting doesn't result in an outage. The parameter
    #   group name itself is changed immediately, but the actual parameter
    #   changes are not applied until you reboot the instance without
    #   failover. The db instance will NOT be rebooted automatically and the
    #   parameter changes will NOT be applied during the next maintenance
    #   window.
    #
    #   Default: Uses existing setting
    #
    #   Constraints: The DB parameter group must be in the same DB parameter
    #   group family as this DB instance.
    #
    # @option params [Integer] :backup_retention_period
    #   The number of days to retain automated backups. Setting this parameter
    #   to a positive number enables backups. Setting this parameter to 0
    #   disables automated backups.
    #
    #   Not applicable. The retention period for automated backups is managed
    #   by the DB cluster. For more information, see ModifyDBCluster.
    #
    #   Default: Uses existing setting
    #
    # @option params [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled.
    #
    #   Not applicable. The daily time range for creating automated backups is
    #   managed by the DB cluster. For more information, see ModifyDBCluster.
    #
    #   Constraints:
    #
    #   * Must be in the format hh24:mi-hh24:mi
    #
    #   * Must be in Universal Time Coordinated (UTC)
    #
    #   * Must not conflict with the preferred maintenance window
    #
    #   * Must be at least 30 minutes
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, which might result in an outage. Changing this parameter
    #   doesn't result in an outage, except in the following situation, and
    #   the change is asynchronously applied as soon as possible. If there are
    #   pending actions that cause a reboot, and the maintenance window is
    #   changed to include the current time, then changing this parameter will
    #   cause a reboot of the DB instance. If moving this window to the
    #   current time, there must be at least 30 minutes between the current
    #   time and end of the window to ensure pending changes are applied.
    #
    #   Default: Uses existing setting
    #
    #   Format: ddd:hh24:mi-ddd:hh24:mi
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Must be at least 30 minutes
    #
    # @option params [Boolean] :multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment. Changing this
    #   parameter doesn't result in an outage and the change is applied
    #   during the next maintenance window unless the `ApplyImmediately`
    #   parameter is set to `true` for this request.
    #
    # @option params [String] :engine_version
    #   The version number of the database engine to upgrade to. Changing this
    #   parameter results in an outage and the change is applied during the
    #   next maintenance window unless the `ApplyImmediately` parameter is set
    #   to `true` for this request.
    #
    #   For major version upgrades, if a nondefault DB parameter group is
    #   currently in use, a new DB parameter group in the DB parameter group
    #   family for the new engine version must be specified. The new DB
    #   parameter group can be the default for that DB parameter group family.
    #
    # @option params [Boolean] :allow_major_version_upgrade
    #   Indicates that major version upgrades are allowed. Changing this
    #   parameter doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   Constraints: This parameter must be set to true when specifying a
    #   value for the EngineVersion parameter that is a different major
    #   version than the DB instance's current version.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor version upgrades are applied automatically to the
    #   DB instance during the maintenance window. Changing this parameter
    #   doesn't result in an outage except in the following case and the
    #   change is asynchronously applied as soon as possible. An outage will
    #   result if this parameter is set to `true` during the maintenance
    #   window, and a newer minor version is available, and Neptune has
    #   enabled auto patching for that engine version.
    #
    # @option params [String] :license_model
    #   The license model for the DB instance.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #
    # @option params [Integer] :iops
    #   The new Provisioned IOPS (I/O operations per second) value for the
    #   instance.
    #
    #   Changing this setting doesn't result in an outage and the change is
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is set to `true` for this request.
    #
    #   Default: Uses existing setting
    #
    # @option params [String] :option_group_name
    #   Indicates that the DB instance should be associated with the specified
    #   option group. Changing this parameter doesn't result in an outage
    #   except in the following case and the change is applied during the next
    #   maintenance window unless the `ApplyImmediately` parameter is set to
    #   `true` for this request. If the parameter change results in an option
    #   group that enables OEM, this change can cause a brief (sub-second)
    #   period during which new connections are rejected but existing
    #   connections are not interrupted.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance once it is associated with a DB
    #   instance
    #
    # @option params [String] :new_db_instance_identifier
    #   The new DB instance identifier for the DB instance when renaming a DB
    #   instance. When you change the DB instance identifier, an instance
    #   reboot will occur immediately if you set `Apply Immediately` to true,
    #   or will occur during the next maintenance window if `Apply
    #   Immediately` to false. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #
    # @option params [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   If you specify Provisioned IOPS (`io1`), you must also include a value
    #   for the `Iops` parameter.
    #
    #   If you choose to migrate your DB instance from using standard storage
    #   to using Provisioned IOPS, or from using Provisioned IOPS to using
    #   standard storage, the process can take time. The duration of the
    #   migration depends on several factors such as database load, storage
    #   size, storage type (standard or Provisioned IOPS), amount of IOPS
    #   provisioned (if any), and the number of prior scale storage
    #   operations. Typical migration times are under 24 hours, but the
    #   process can take up to several days in some cases. During the
    #   migration, the DB instance is available for use, but might experience
    #   performance degradation. While the migration takes place, nightly
    #   backups for the instance are suspended. No other Amazon Neptune
    #   operations can take place for the instance, including modifying the
    #   instance, rebooting the instance, deleting the instance, creating a
    #   Read Replica for the instance, and creating a DB snapshot of the
    #   instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    #
    # @option params [String] :tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #
    # @option params [String] :tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #
    # @option params [String] :ca_certificate_identifier
    #   Indicates the certificate that needs to be associated with the
    #   instance.
    #
    # @option params [String] :domain
    #   Not supported.
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the DB instance to snapshots of the DB
    #   instance, and otherwise false. The default is false.
    #
    # @option params [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    #
    # @option params [Integer] :db_port_number
    #   The port number on which the database accepts connections.
    #
    #   The value of the `DBPortNumber` parameter must not match any of the
    #   port values specified for options in the option group for the DB
    #   instance.
    #
    #   Your database will restart when you change the `DBPortNumber` value
    #   regardless of the value of the `ApplyImmediately` parameter.
    #
    #   Default: `8182`
    #
    # @option params [Boolean] :publicly_accessible
    #   This parameter is not supported.
    #
    # @option params [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits Neptune to send enhanced
    #   monitoring metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`.
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you must
    #   supply a `MonitoringRoleArn` value.
    #
    # @option params [String] :domain_iam_role_name
    #   Not supported
    #
    # @option params [Integer] :promotion_tier
    #   A value that specifies the order in which a Read Replica is promoted
    #   to the primary instance after a failure of the existing primary
    #   instance.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following database
    #   engines
    #
    #   Not applicable. Mapping AWS IAM accounts to database accounts is
    #   managed by the DB cluster. For more information, see ModifyDBCluster.
    #
    #   Default: `false`
    #
    # @option params [Boolean] :enable_performance_insights
    #   True to enable Performance Insights for the DB instance, and otherwise
    #   false.
    #
    # @option params [String] :performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #
    # @option params [Types::CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to CloudWatch Logs for a specific DB instance or DB cluster.
    #
    # @return [Types::ModifyDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_instance({
    #     db_instance_identifier: "String", # required
    #     allocated_storage: 1,
    #     db_instance_class: "String",
    #     db_subnet_group_name: "String",
    #     db_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     apply_immediately: false,
    #     master_user_password: "String",
    #     db_parameter_group_name: "String",
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     multi_az: false,
    #     engine_version: "String",
    #     allow_major_version_upgrade: false,
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     new_db_instance_identifier: "String",
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "String",
    #     ca_certificate_identifier: "String",
    #     domain: "String",
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     db_port_number: 1,
    #     publicly_accessible: false,
    #     monitoring_role_arn: "String",
    #     domain_iam_role_name: "String",
    #     promotion_tier: 1,
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: ["String"],
    #       disable_log_types: ["String"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.db_instance.db_instance_identifier #=> String
    #   resp.db_instance.db_instance_class #=> String
    #   resp.db_instance.engine #=> String
    #   resp.db_instance.db_instance_status #=> String
    #   resp.db_instance.master_username #=> String
    #   resp.db_instance.db_name #=> String
    #   resp.db_instance.endpoint.address #=> String
    #   resp.db_instance.endpoint.port #=> Integer
    #   resp.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.db_instance.allocated_storage #=> Integer
    #   resp.db_instance.instance_create_time #=> Time
    #   resp.db_instance.preferred_backup_window #=> String
    #   resp.db_instance.backup_retention_period #=> Integer
    #   resp.db_instance.db_security_groups #=> Array
    #   resp.db_instance.db_security_groups[0].db_security_group_name #=> String
    #   resp.db_instance.db_security_groups[0].status #=> String
    #   resp.db_instance.vpc_security_groups #=> Array
    #   resp.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_instance.vpc_security_groups[0].status #=> String
    #   resp.db_instance.db_parameter_groups #=> Array
    #   resp.db_instance.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.db_instance.db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.db_instance.availability_zone #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.db_instance.db_subnet_group.subnets #=> Array
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.db_instance.preferred_maintenance_window #=> String
    #   resp.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.db_instance.pending_modified_values.port #=> Integer
    #   resp.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.db_instance.pending_modified_values.engine_version #=> String
    #   resp.db_instance.pending_modified_values.license_model #=> String
    #   resp.db_instance.pending_modified_values.iops #=> Integer
    #   resp.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.db_instance.pending_modified_values.storage_type #=> String
    #   resp.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable[0] #=> String
    #   resp.db_instance.latest_restorable_time #=> Time
    #   resp.db_instance.multi_az #=> Boolean
    #   resp.db_instance.engine_version #=> String
    #   resp.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.db_instance.read_replica_source_db_instance_identifier #=> String
    #   resp.db_instance.read_replica_db_instance_identifiers #=> Array
    #   resp.db_instance.read_replica_db_instance_identifiers[0] #=> String
    #   resp.db_instance.read_replica_db_cluster_identifiers #=> Array
    #   resp.db_instance.read_replica_db_cluster_identifiers[0] #=> String
    #   resp.db_instance.license_model #=> String
    #   resp.db_instance.iops #=> Integer
    #   resp.db_instance.option_group_memberships #=> Array
    #   resp.db_instance.option_group_memberships[0].option_group_name #=> String
    #   resp.db_instance.option_group_memberships[0].status #=> String
    #   resp.db_instance.character_set_name #=> String
    #   resp.db_instance.secondary_availability_zone #=> String
    #   resp.db_instance.publicly_accessible #=> Boolean
    #   resp.db_instance.status_infos #=> Array
    #   resp.db_instance.status_infos[0].status_type #=> String
    #   resp.db_instance.status_infos[0].normal #=> Boolean
    #   resp.db_instance.status_infos[0].status #=> String
    #   resp.db_instance.status_infos[0].message #=> String
    #   resp.db_instance.storage_type #=> String
    #   resp.db_instance.tde_credential_arn #=> String
    #   resp.db_instance.db_instance_port #=> Integer
    #   resp.db_instance.db_cluster_identifier #=> String
    #   resp.db_instance.storage_encrypted #=> Boolean
    #   resp.db_instance.kms_key_id #=> String
    #   resp.db_instance.dbi_resource_id #=> String
    #   resp.db_instance.ca_certificate_identifier #=> String
    #   resp.db_instance.domain_memberships #=> Array
    #   resp.db_instance.domain_memberships[0].domain #=> String
    #   resp.db_instance.domain_memberships[0].status #=> String
    #   resp.db_instance.domain_memberships[0].fqdn #=> String
    #   resp.db_instance.domain_memberships[0].iam_role_name #=> String
    #   resp.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.db_instance.monitoring_interval #=> Integer
    #   resp.db_instance.enhanced_monitoring_resource_arn #=> String
    #   resp.db_instance.monitoring_role_arn #=> String
    #   resp.db_instance.promotion_tier #=> Integer
    #   resp.db_instance.db_instance_arn #=> String
    #   resp.db_instance.timezone #=> String
    #   resp.db_instance.iam_database_authentication_enabled #=> Boolean
    #   resp.db_instance.performance_insights_enabled #=> Boolean
    #   resp.db_instance.performance_insights_kms_key_id #=> String
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBInstance AWS API Documentation
    #
    # @overload modify_db_instance(params = {})
    # @param [Hash] params ({})
    def modify_db_instance(params = {}, options = {})
      req = build_request(:modify_db_instance, params)
      req.send_request(options)
    end

    # Modifies the parameters of a DB parameter group. To modify more than
    # one parameter, submit a list of the following: `ParameterName`,
    # `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
    # modified in a single request.
    #
    # <note markdown="1"> Changes to dynamic parameters are applied immediately. Changes to
    # static parameters require a reboot without failover to the DB instance
    # associated with the parameter group before the change can take effect.
    #
    #  </note>
    #
    # After you modify a DB parameter group, you should wait at least 5
    # minutes before creating your first DB instance that uses that DB
    # parameter group as the default parameter group. This allows Amazon
    # Neptune to fully complete the modify action before the parameter group
    # is used as the default for a new DB instance. This is especially
    # important for parameters that are critical when creating the default
    # database for a DB instance, such as the character set for the default
    # database defined by the `character_set_database` parameter. You can
    # use the *Parameter Groups* option of the Amazon Neptune console or the
    # *DescribeDBParameters* command to verify that your DB parameter group
    # has been created or modified.
    #
    # @option params [required, String] :db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DBParameterGroup.
    #
    #   ^
    #
    # @option params [required, Array<Types::Parameter>] :parameters
    #   An array of parameter names, values, and the apply method for the
    #   parameter update. At least one parameter name, value, and apply method
    #   must be supplied; subsequent arguments are optional. A maximum of 20
    #   parameters can be modified in a single request.
    #
    #   Valid Values (for the application method): `immediate |
    #   pending-reboot`
    #
    #   <note markdown="1"> You can use the immediate value with dynamic parameters only. You can
    #   use the pending-reboot value for both dynamic and static parameters,
    #   and changes are applied when you reboot the DB instance without
    #   failover.
    #
    #    </note>
    #
    # @return [Types::DBParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBParameterGroupNameMessage#db_parameter_group_name #db_parameter_group_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_parameter_group({
    #     db_parameter_group_name: "String", # required
    #     parameters: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate", # accepts immediate, pending-reboot
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBParameterGroup AWS API Documentation
    #
    # @overload modify_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def modify_db_parameter_group(params = {}, options = {})
      req = build_request(:modify_db_parameter_group, params)
      req.send_request(options)
    end

    # Modifies an existing DB subnet group. DB subnet groups must contain at
    # least one subnet in at least two AZs in the AWS Region.
    #
    # @option params [required, String] :db_subnet_group_name
    #   The name for the DB subnet group. This value is stored as a lowercase
    #   string. You can't modify the default subnet group.
    #
    #   Constraints: Must match the name of an existing DBSubnetGroup. Must
    #   not be default.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [String] :db_subnet_group_description
    #   The description for the DB subnet group.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The EC2 subnet IDs for the DB subnet group.
    #
    # @return [Types::ModifyDBSubnetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBSubnetGroupResult#db_subnet_group #db_subnet_group} => Types::DBSubnetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_subnet_group({
    #     db_subnet_group_name: "String", # required
    #     db_subnet_group_description: "String",
    #     subnet_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_subnet_group.vpc_id #=> String
    #   resp.db_subnet_group.subnet_group_status #=> String
    #   resp.db_subnet_group.subnets #=> Array
    #   resp.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_subnet_group.db_subnet_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBSubnetGroup AWS API Documentation
    #
    # @overload modify_db_subnet_group(params = {})
    # @param [Hash] params ({})
    def modify_db_subnet_group(params = {}, options = {})
      req = build_request(:modify_db_subnet_group, params)
      req.send_request(options)
    end

    # Modifies an existing event notification subscription. Note that you
    # can't modify the source identifiers using this call; to change source
    # identifiers for a subscription, use the
    # AddSourceIdentifierToSubscription and
    # RemoveSourceIdentifierFromSubscription calls.
    #
    # You can see a list of the event categories for a given SourceType by
    # using the **DescribeEventCategories** action.
    #
    # @option params [required, String] :subscription_name
    #   The name of the event notification subscription.
    #
    # @option params [String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic created for event
    #   notification. The ARN is created by Amazon SNS when you create a topic
    #   and subscribe to it.
    #
    # @option params [String] :source_type
    #   The type of source that is generating the events. For example, if you
    #   want to be notified of events generated by a DB instance, you would
    #   set this parameter to db-instance. if this value is not specified, all
    #   events are returned.
    #
    #   Valid values: db-instance \| db-parameter-group \| db-security-group
    #   \| db-snapshot
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories for a SourceType that you want to subscribe
    #   to. You can see a list of the categories for a given SourceType by
    #   using the **DescribeEventCategories** action.
    #
    # @option params [Boolean] :enabled
    #   A Boolean value; set to **true** to activate the subscription.
    #
    # @return [Types::ModifyEventSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyEventSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_event_subscription({
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String",
    #     source_type: "String",
    #     event_categories: ["String"],
    #     enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyEventSubscription AWS API Documentation
    #
    # @overload modify_event_subscription(params = {})
    # @param [Hash] params ({})
    def modify_event_subscription(params = {}, options = {})
      req = build_request(:modify_event_subscription, params)
      req.send_request(options)
    end

    # Promotes a Read Replica DB cluster to a standalone DB cluster.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The identifier of the DB cluster Read Replica to promote. This
    #   parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster Read Replica.
    #
    #   ^
    #
    #   Example: `my-cluster-replica1`
    #
    # @return [Types::PromoteReadReplicaDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PromoteReadReplicaDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.promote_read_replica_db_cluster({
    #     db_cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.allocated_storage #=> Integer
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.character_set_name #=> String
    #   resp.db_cluster.database_name #=> String
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships #=> Array
    #   resp.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/PromoteReadReplicaDBCluster AWS API Documentation
    #
    # @overload promote_read_replica_db_cluster(params = {})
    # @param [Hash] params ({})
    def promote_read_replica_db_cluster(params = {}, options = {})
      req = build_request(:promote_read_replica_db_cluster, params)
      req.send_request(options)
    end

    # You might need to reboot your DB instance, usually for maintenance
    # reasons. For example, if you make certain modifications, or if you
    # change the DB parameter group associated with the DB instance, you
    # must reboot the instance for the changes to take effect.
    #
    # Rebooting a DB instance restarts the database engine service.
    # Rebooting a DB instance results in a momentary outage, during which
    # the DB instance status is set to rebooting.
    #
    # @option params [required, String] :db_instance_identifier
    #   The DB instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #
    # @option params [Boolean] :force_failover
    #   When `true`, the reboot is conducted through a MultiAZ failover.
    #
    #   Constraint: You can't specify `true` if the instance is not
    #   configured for MultiAZ.
    #
    # @return [Types::RebootDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_db_instance({
    #     db_instance_identifier: "String", # required
    #     force_failover: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.db_instance.db_instance_identifier #=> String
    #   resp.db_instance.db_instance_class #=> String
    #   resp.db_instance.engine #=> String
    #   resp.db_instance.db_instance_status #=> String
    #   resp.db_instance.master_username #=> String
    #   resp.db_instance.db_name #=> String
    #   resp.db_instance.endpoint.address #=> String
    #   resp.db_instance.endpoint.port #=> Integer
    #   resp.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.db_instance.allocated_storage #=> Integer
    #   resp.db_instance.instance_create_time #=> Time
    #   resp.db_instance.preferred_backup_window #=> String
    #   resp.db_instance.backup_retention_period #=> Integer
    #   resp.db_instance.db_security_groups #=> Array
    #   resp.db_instance.db_security_groups[0].db_security_group_name #=> String
    #   resp.db_instance.db_security_groups[0].status #=> String
    #   resp.db_instance.vpc_security_groups #=> Array
    #   resp.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_instance.vpc_security_groups[0].status #=> String
    #   resp.db_instance.db_parameter_groups #=> Array
    #   resp.db_instance.db_parameter_groups[0].db_parameter_group_name #=> String
    #   resp.db_instance.db_parameter_groups[0].parameter_apply_status #=> String
    #   resp.db_instance.availability_zone #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.db_instance.db_subnet_group.subnets #=> Array
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.db_instance.preferred_maintenance_window #=> String
    #   resp.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.db_instance.pending_modified_values.port #=> Integer
    #   resp.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.db_instance.pending_modified_values.engine_version #=> String
    #   resp.db_instance.pending_modified_values.license_model #=> String
    #   resp.db_instance.pending_modified_values.iops #=> Integer
    #   resp.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.db_instance.pending_modified_values.storage_type #=> String
    #   resp.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable[0] #=> String
    #   resp.db_instance.latest_restorable_time #=> Time
    #   resp.db_instance.multi_az #=> Boolean
    #   resp.db_instance.engine_version #=> String
    #   resp.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.db_instance.read_replica_source_db_instance_identifier #=> String
    #   resp.db_instance.read_replica_db_instance_identifiers #=> Array
    #   resp.db_instance.read_replica_db_instance_identifiers[0] #=> String
    #   resp.db_instance.read_replica_db_cluster_identifiers #=> Array
    #   resp.db_instance.read_replica_db_cluster_identifiers[0] #=> String
    #   resp.db_instance.license_model #=> String
    #   resp.db_instance.iops #=> Integer
    #   resp.db_instance.option_group_memberships #=> Array
    #   resp.db_instance.option_group_memberships[0].option_group_name #=> String
    #   resp.db_instance.option_group_memberships[0].status #=> String
    #   resp.db_instance.character_set_name #=> String
    #   resp.db_instance.secondary_availability_zone #=> String
    #   resp.db_instance.publicly_accessible #=> Boolean
    #   resp.db_instance.status_infos #=> Array
    #   resp.db_instance.status_infos[0].status_type #=> String
    #   resp.db_instance.status_infos[0].normal #=> Boolean
    #   resp.db_instance.status_infos[0].status #=> String
    #   resp.db_instance.status_infos[0].message #=> String
    #   resp.db_instance.storage_type #=> String
    #   resp.db_instance.tde_credential_arn #=> String
    #   resp.db_instance.db_instance_port #=> Integer
    #   resp.db_instance.db_cluster_identifier #=> String
    #   resp.db_instance.storage_encrypted #=> Boolean
    #   resp.db_instance.kms_key_id #=> String
    #   resp.db_instance.dbi_resource_id #=> String
    #   resp.db_instance.ca_certificate_identifier #=> String
    #   resp.db_instance.domain_memberships #=> Array
    #   resp.db_instance.domain_memberships[0].domain #=> String
    #   resp.db_instance.domain_memberships[0].status #=> String
    #   resp.db_instance.domain_memberships[0].fqdn #=> String
    #   resp.db_instance.domain_memberships[0].iam_role_name #=> String
    #   resp.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.db_instance.monitoring_interval #=> Integer
    #   resp.db_instance.enhanced_monitoring_resource_arn #=> String
    #   resp.db_instance.monitoring_role_arn #=> String
    #   resp.db_instance.promotion_tier #=> Integer
    #   resp.db_instance.db_instance_arn #=> String
    #   resp.db_instance.timezone #=> String
    #   resp.db_instance.iam_database_authentication_enabled #=> Boolean
    #   resp.db_instance.performance_insights_enabled #=> Boolean
    #   resp.db_instance.performance_insights_kms_key_id #=> String
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RebootDBInstance AWS API Documentation
    #
    # @overload reboot_db_instance(params = {})
    # @param [Hash] params ({})
    def reboot_db_instance(params = {}, options = {})
      req = build_request(:reboot_db_instance, params)
      req.send_request(options)
    end

    # Disassociates an Identity and Access Management (IAM) role from a DB
    # cluster.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The name of the DB cluster to disassociate the IAM role from.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to disassociate from
    #   the DB cluster, for example
    #   `arn:aws:iam::123456789012:role/NeptuneAccessRole`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_role_from_db_cluster({
    #     db_cluster_identifier: "String", # required
    #     role_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveRoleFromDBCluster AWS API Documentation
    #
    # @overload remove_role_from_db_cluster(params = {})
    # @param [Hash] params ({})
    def remove_role_from_db_cluster(params = {}, options = {})
      req = build_request(:remove_role_from_db_cluster, params)
      req.send_request(options)
    end

    # Removes a source identifier from an existing event notification
    # subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the event notification subscription you want to remove a
    #   source identifier from.
    #
    # @option params [required, String] :source_identifier
    #   The source identifier to be removed from the subscription, such as the
    #   **DB instance identifier** for a DB instance or the name of a security
    #   group.
    #
    # @return [Types::RemoveSourceIdentifierFromSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveSourceIdentifierFromSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_source_identifier_from_subscription({
    #     subscription_name: "String", # required
    #     source_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveSourceIdentifierFromSubscription AWS API Documentation
    #
    # @overload remove_source_identifier_from_subscription(params = {})
    # @param [Hash] params ({})
    def remove_source_identifier_from_subscription(params = {}, options = {})
      req = build_request(:remove_source_identifier_from_subscription, params)
      req.send_request(options)
    end

    # Removes metadata tags from an Amazon Neptune resource.
    #
    # @option params [required, String] :resource_name
    #   The Amazon Neptune resource that the tags are removed from. This value
    #   is an Amazon Resource Name (ARN). For information about creating an
    #   ARN, see [ Constructing an Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key (name) of the tag to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_name: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveTagsFromResource AWS API Documentation
    #
    # @overload remove_tags_from_resource(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_resource(params = {}, options = {})
      req = build_request(:remove_tags_from_resource, params)
      req.send_request(options)
    end

    # Modifies the parameters of a DB cluster parameter group to the default
    # value. To reset specific parameters submit a list of the following:
    # `ParameterName` and `ApplyMethod`. To reset the entire DB cluster
    # parameter group, specify the `DBClusterParameterGroupName` and
    # `ResetAllParameters` parameters.
    #
    # When resetting the entire group, dynamic parameters are updated
    # immediately and static parameters are set to `pending-reboot` to take
    # effect on the next DB instance restart or RebootDBInstance request.
    # You must call RebootDBInstance for every DB instance in your DB
    # cluster that you want the updated static parameter to apply to.
    #
    # @option params [required, String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to reset.
    #
    # @option params [Boolean] :reset_all_parameters
    #   A value that is set to `true` to reset all parameters in the DB
    #   cluster parameter group to their default values, and `false`
    #   otherwise. You can't use this parameter if there is a list of
    #   parameter names specified for the `Parameters` parameter.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of parameter names in the DB cluster parameter group to reset
    #   to the default values. You can't use this parameter if the
    #   `ResetAllParameters` parameter is set to `true`.
    #
    # @return [Types::DBClusterParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterParameterGroupNameMessage#db_cluster_parameter_group_name #db_cluster_parameter_group_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "String", # required
    #     reset_all_parameters: false,
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate", # accepts immediate, pending-reboot
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ResetDBClusterParameterGroup AWS API Documentation
    #
    # @overload reset_db_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def reset_db_cluster_parameter_group(params = {}, options = {})
      req = build_request(:reset_db_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Modifies the parameters of a DB parameter group to the engine/system
    # default value. To reset specific parameters, provide a list of the
    # following: `ParameterName` and `ApplyMethod`. To reset the entire DB
    # parameter group, specify the `DBParameterGroup` name and
    # `ResetAllParameters` parameters. When resetting the entire group,
    # dynamic parameters are updated immediately and static parameters are
    # set to `pending-reboot` to take effect on the next DB instance restart
    # or `RebootDBInstance` request.
    #
    # @option params [required, String] :db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DBParameterGroup.
    #
    #   ^
    #
    # @option params [Boolean] :reset_all_parameters
    #   Specifies whether (`true`) or not (`false`) to reset all parameters in
    #   the DB parameter group to default values.
    #
    #   Default: `true`
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   To reset the entire DB parameter group, specify the `DBParameterGroup`
    #   name and `ResetAllParameters` parameters. To reset specific
    #   parameters, provide a list of the following: `ParameterName` and
    #   `ApplyMethod`. A maximum of 20 parameters can be modified in a single
    #   request.
    #
    #   Valid Values (for Apply method): `pending-reboot`
    #
    # @return [Types::DBParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBParameterGroupNameMessage#db_parameter_group_name #db_parameter_group_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_db_parameter_group({
    #     db_parameter_group_name: "String", # required
    #     reset_all_parameters: false,
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate", # accepts immediate, pending-reboot
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ResetDBParameterGroup AWS API Documentation
    #
    # @overload reset_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def reset_db_parameter_group(params = {}, options = {})
      req = build_request(:reset_db_parameter_group, params)
      req.send_request(options)
    end

    # Creates a new DB cluster from a DB snapshot or DB cluster snapshot.
    #
    # If a DB snapshot is specified, the target DB cluster is created from
    # the source DB snapshot with a default configuration and default
    # security group.
    #
    # If a DB cluster snapshot is specified, the target DB cluster is
    # created from the source DB cluster restore point with the same
    # configuration as the original source DB cluster, except that the new
    # DB cluster is created with the default security group.
    #
    # @option params [Array<String>] :availability_zones
    #   Provides the list of EC2 Availability Zones that instances in the
    #   restored DB cluster can be created in.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The name of the DB cluster to create from the DB snapshot or DB
    #   cluster snapshot. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    #
    # @option params [required, String] :snapshot_identifier
    #   The identifier for the DB snapshot or DB cluster snapshot to restore
    #   from.
    #
    #   You can use either the name or the Amazon Resource Name (ARN) to
    #   specify a DB cluster snapshot. However, you can use only the ARN to
    #   specify a DB snapshot.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing Snapshot.
    #
    #   ^
    #
    # @option params [required, String] :engine
    #   The database engine to use for the new DB cluster.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source
    #
    # @option params [String] :engine_version
    #   The version of the database engine to use for the new DB cluster.
    #
    # @option params [Integer] :port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #
    # @option params [String] :db_subnet_group_name
    #   The name of the DB subnet group to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [String] :database_name
    #   The database name for the restored DB cluster.
    #
    # @option params [String] :option_group_name
    #   The name of the option group to use for the restored DB cluster.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster will belong to.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the restored DB cluster.
    #
    # @option params [String] :kms_key_id
    #   The AWS KMS key identifier to use when restoring an encrypted DB
    #   cluster from a DB snapshot or DB cluster snapshot.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are restoring a DB cluster with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   cluster, then you can use the KMS key alias instead of the ARN for the
    #   KMS encryption key.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following will occur:
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier` is
    #     encrypted, then the restored DB cluster is encrypted using the KMS
    #     key that was used to encrypt the DB snapshot or DB cluster snapshot.
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier` is
    #     not encrypted, then the restored DB cluster is not encrypted.
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #
    # @return [Types::RestoreDBClusterFromSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreDBClusterFromSnapshotResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_db_cluster_from_snapshot({
    #     availability_zones: ["String"],
    #     db_cluster_identifier: "String", # required
    #     snapshot_identifier: "String", # required
    #     engine: "String", # required
    #     engine_version: "String",
    #     port: 1,
    #     db_subnet_group_name: "String",
    #     database_name: "String",
    #     option_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     kms_key_id: "String",
    #     enable_iam_database_authentication: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.allocated_storage #=> Integer
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.character_set_name #=> String
    #   resp.db_cluster.database_name #=> String
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships #=> Array
    #   resp.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RestoreDBClusterFromSnapshot AWS API Documentation
    #
    # @overload restore_db_cluster_from_snapshot(params = {})
    # @param [Hash] params ({})
    def restore_db_cluster_from_snapshot(params = {}, options = {})
      req = build_request(:restore_db_cluster_from_snapshot, params)
      req.send_request(options)
    end

    # Restores a DB cluster to an arbitrary point in time. Users can restore
    # to any point in time before `LatestRestorableTime` for up to
    # `BackupRetentionPeriod` days. The target DB cluster is created from
    # the source DB cluster with the same configuration as the original DB
    # cluster, except that the new DB cluster is created with the default DB
    # security group.
    #
    # <note markdown="1"> This action only restores the DB cluster, not the DB instances for
    # that DB cluster. You must invoke the CreateDBInstance action to create
    # DB instances for the restored DB cluster, specifying the identifier of
    # the restored DB cluster in `DBClusterIdentifier`. You can create DB
    # instances only after the `RestoreDBClusterToPointInTime` action has
    # completed and the DB cluster is available.
    #
    #  </note>
    #
    # @option params [required, String] :db_cluster_identifier
    #   The name of the new DB cluster to be created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    # @option params [String] :restore_type
    #   The type of restore to be performed. You can specify one of the
    #   following values:
    #
    #   * `full-copy` - The new DB cluster is restored as a full copy of the
    #     source DB cluster.
    #
    #   * `copy-on-write` - The new DB cluster is restored as a clone of the
    #     source DB cluster.
    #
    #   Constraints: You can't specify `copy-on-write` if the engine version
    #   of the source DB cluster is earlier than 1.11.
    #
    #   If you don't specify a `RestoreType` value, then the new DB cluster
    #   is restored as a full copy of the source DB cluster.
    #
    # @option params [required, String] :source_db_cluster_identifier
    #   The identifier of the source DB cluster from which to restore.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #
    # @option params [Time,DateTime,Date,Integer,String] :restore_to_time
    #   The date and time to restore the DB cluster to.
    #
    #   Valid Values: Value must be a time in Universal Coordinated Time (UTC)
    #   format
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the DB instance
    #
    #   * Must be specified if `UseLatestRestorableTime` parameter is not
    #     provided
    #
    #   * Cannot be specified if `UseLatestRestorableTime` parameter is true
    #
    #   * Cannot be specified if `RestoreType` parameter is `copy-on-write`
    #
    #   Example: `2015-03-07T23:45:00Z`
    #
    # @option params [Boolean] :use_latest_restorable_time
    #   A value that is set to `true` to restore the DB cluster to the latest
    #   restorable backup time, and `false` otherwise.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if `RestoreToTime` parameter is
    #   provided.
    #
    # @option params [Integer] :port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #
    # @option params [String] :db_subnet_group_name
    #   The DB subnet group name to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [String] :option_group_name
    #   The name of the option group for the new DB cluster.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster belongs to.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon Neptune
    #   Resources][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html
    #
    # @option params [String] :kms_key_id
    #   The AWS KMS key identifier to use when restoring an encrypted DB
    #   cluster from an encrypted DB cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are restoring a DB cluster with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   cluster, then you can use the KMS key alias instead of the ARN for the
    #   KMS encryption key.
    #
    #   You can restore to a new DB cluster and encrypt the new DB cluster
    #   with a KMS key that is different than the KMS key used to encrypt the
    #   source DB cluster. The new DB cluster is encrypted with the KMS key
    #   identified by the `KmsKeyId` parameter.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following will occur:
    #
    #   * If the DB cluster is encrypted, then the restored DB cluster is
    #     encrypted using the KMS key that was used to encrypt the source DB
    #     cluster.
    #
    #   * If the DB cluster is not encrypted, then the restored DB cluster is
    #     not encrypted.
    #
    #   If `DBClusterIdentifier` refers to a DB cluster that is not encrypted,
    #   then the restore request is rejected.
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #
    # @return [Types::RestoreDBClusterToPointInTimeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreDBClusterToPointInTimeResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_db_cluster_to_point_in_time({
    #     db_cluster_identifier: "String", # required
    #     restore_type: "String",
    #     source_db_cluster_identifier: "String", # required
    #     restore_to_time: Time.now,
    #     use_latest_restorable_time: false,
    #     port: 1,
    #     db_subnet_group_name: "String",
    #     option_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     kms_key_id: "String",
    #     enable_iam_database_authentication: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.allocated_storage #=> Integer
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.character_set_name #=> String
    #   resp.db_cluster.database_name #=> String
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships #=> Array
    #   resp.db_cluster.db_cluster_option_group_memberships[0].db_cluster_option_group_name #=> String
    #   resp.db_cluster.db_cluster_option_group_memberships[0].status #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RestoreDBClusterToPointInTime AWS API Documentation
    #
    # @overload restore_db_cluster_to_point_in_time(params = {})
    # @param [Hash] params ({})
    def restore_db_cluster_to_point_in_time(params = {}, options = {})
      req = build_request(:restore_db_cluster_to_point_in_time, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-neptune'
      context[:gem_version] = '1.4.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name           | params                   | :delay   | :max_attempts |
    # | --------------------- | ------------------------ | -------- | ------------- |
    # | db_instance_available | {#describe_db_instances} | 30       | 60            |
    # | db_instance_deleted   | {#describe_db_instances} | 30       | 60            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        db_instance_available: Waiters::DBInstanceAvailable,
        db_instance_deleted: Waiters::DBInstanceDeleted
      }
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
