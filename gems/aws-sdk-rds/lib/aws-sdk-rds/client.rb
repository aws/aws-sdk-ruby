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
require 'aws-sdk-rds/plugins/cross_region_copying.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:rds)

module Aws::RDS
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :rds

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
    add_plugin(Aws::RDS::Plugins::CrossRegionCopying)

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

    # Associates an Identity and Access Management (IAM) role from an Aurora
    # DB cluster. For more information, see [Authorizing Amazon Aurora MySQL
    # to Access Other AWS Services on Your Behalf][1] in the *Amazon Aurora
    # User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html
    #
    # @option params [required, String] :db_cluster_identifier
    #   The name of the DB cluster to associate the IAM role with.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to associate with the
    #   Aurora DB cluster, for example
    #   `arn:aws:iam::123456789012:role/AuroraAccessRole`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddRoleToDBCluster AWS API Documentation
    #
    # @overload add_role_to_db_cluster(params = {})
    # @param [Hash] params ({})
    def add_role_to_db_cluster(params = {}, options = {})
      req = build_request(:add_role_to_db_cluster, params)
      req.send_request(options)
    end

    # Adds a source identifier to an existing RDS event notification
    # subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to add a
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
    #
    # @example Example: To add a source identifier to an event notification subscription
    #
    #   # This example add a source identifier to an event notification subscription.
    #
    #   resp = client.add_source_identifier_to_subscription({
    #     source_identifier: "mymysqlinstance", 
    #     subscription_name: "mymysqleventsubscription", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_subscription: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddSourceIdentifierToSubscription AWS API Documentation
    #
    # @overload add_source_identifier_to_subscription(params = {})
    # @param [Hash] params ({})
    def add_source_identifier_to_subscription(params = {}, options = {})
      req = build_request(:add_source_identifier_to_subscription, params)
      req.send_request(options)
    end

    # Adds metadata tags to an Amazon RDS resource. These tags can also be
    # used with cost allocation reporting to track cost associated with
    # Amazon RDS resources, or used in a Condition statement in an IAM
    # policy for Amazon RDS.
    #
    # For an overview on tagging Amazon RDS resources, see [Tagging Amazon
    # RDS Resources][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html
    #
    # @option params [required, String] :resource_name
    #   The Amazon RDS resource that the tags are added to. This value is an
    #   Amazon Resource Name (ARN). For information about creating an ARN, see
    #   [ Constructing an RDS Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be assigned to the Amazon RDS resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add tags to a resource
    #
    #   # This example adds a tag to an option group.
    #
    #   resp = client.add_tags_to_resource({
    #     resource_name: "arn:aws:rds:us-east-1:992648334831:og:mymysqloptiongroup", 
    #     tags: [
    #       {
    #         key: "Staging", 
    #         value: "LocationDB", 
    #       }, 
    #     ], 
    #   })
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddTagsToResource AWS API Documentation
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
    #   The RDS Amazon Resource Name (ARN) of the resource that the pending
    #   maintenance action applies to. For information about creating an ARN,
    #   see [ Constructing an RDS Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
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
    #
    # @example Example: To apply a pending maintenance action
    #
    #   # This example immediately applies a pending system update to a DB instance.
    #
    #   resp = client.apply_pending_maintenance_action({
    #     apply_action: "system-update", 
    #     opt_in_type: "immediate", 
    #     resource_identifier: "arn:aws:rds:us-east-1:992648334831:db:mymysqlinstance", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     resource_pending_maintenance_actions: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ApplyPendingMaintenanceAction AWS API Documentation
    #
    # @overload apply_pending_maintenance_action(params = {})
    # @param [Hash] params ({})
    def apply_pending_maintenance_action(params = {}, options = {})
      req = build_request(:apply_pending_maintenance_action, params)
      req.send_request(options)
    end

    # Enables ingress to a DBSecurityGroup using one of two forms of
    # authorization. First, EC2 or VPC security groups can be added to the
    # DBSecurityGroup if the application using the database is running on
    # EC2 or VPC instances. Second, IP ranges are available if the
    # application accessing your database is running on the Internet.
    # Required parameters for this API are one of CIDR range,
    # EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either
    # EC2SecurityGroupName or EC2SecurityGroupId for non-VPC).
    #
    # <note markdown="1"> You can't authorize ingress from an EC2 security group in one AWS
    # Region to an Amazon RDS DB instance in another. You can't authorize
    # ingress from a VPC security group in one VPC to an Amazon RDS DB
    # instance in another.
    #
    #  </note>
    #
    # For an overview of CIDR ranges, go to the [Wikipedia Tutorial][1].
    #
    #
    #
    # [1]: http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #
    # @option params [required, String] :db_security_group_name
    #   The name of the DB security group to add authorization to.
    #
    # @option params [String] :cidrip
    #   The IP range to authorize.
    #
    # @option params [String] :ec2_security_group_name
    #   Name of the EC2 security group to authorize. For VPC DB security
    #   groups, `EC2SecurityGroupId` must be provided. Otherwise,
    #   `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    #
    # @option params [String] :ec2_security_group_id
    #   Id of the EC2 security group to authorize. For VPC DB security groups,
    #   `EC2SecurityGroupId` must be provided. Otherwise,
    #   `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    #
    # @option params [String] :ec2_security_group_owner_id
    #   AWS account number of the owner of the EC2 security group specified in
    #   the `EC2SecurityGroupName` parameter. The AWS Access Key ID is not an
    #   acceptable value. For VPC DB security groups, `EC2SecurityGroupId`
    #   must be provided. Otherwise, `EC2SecurityGroupOwnerId` and either
    #   `EC2SecurityGroupName` or `EC2SecurityGroupId` must be provided.
    #
    # @return [Types::AuthorizeDBSecurityGroupIngressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AuthorizeDBSecurityGroupIngressResult#db_security_group #db_security_group} => Types::DBSecurityGroup
    #
    #
    # @example Example: To authorize DB security group integress
    #
    #   # This example authorizes access to the specified security group by the specified CIDR block.
    #
    #   resp = client.authorize_db_security_group_ingress({
    #     cidrip: "203.0.113.5/32", 
    #     db_security_group_name: "mydbsecuritygroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_security_group: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_db_security_group_ingress({
    #     db_security_group_name: "String", # required
    #     cidrip: "String",
    #     ec2_security_group_name: "String",
    #     ec2_security_group_id: "String",
    #     ec2_security_group_owner_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_security_group.owner_id #=> String
    #   resp.db_security_group.db_security_group_name #=> String
    #   resp.db_security_group.db_security_group_description #=> String
    #   resp.db_security_group.vpc_id #=> String
    #   resp.db_security_group.ec2_security_groups #=> Array
    #   resp.db_security_group.ec2_security_groups[0].status #=> String
    #   resp.db_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.db_security_group.ec2_security_groups[0].ec2_security_group_id #=> String
    #   resp.db_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.db_security_group.ip_ranges #=> Array
    #   resp.db_security_group.ip_ranges[0].status #=> String
    #   resp.db_security_group.ip_ranges[0].cidrip #=> String
    #   resp.db_security_group.db_security_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AuthorizeDBSecurityGroupIngress AWS API Documentation
    #
    # @overload authorize_db_security_group_ingress(params = {})
    # @param [Hash] params ({})
    def authorize_db_security_group_ingress(params = {}, options = {})
      req = build_request(:authorize_db_security_group_ingress, params)
      req.send_request(options)
    end

    # Backtracks a DB cluster to a specific time, without creating a new DB
    # cluster.
    #
    # For more information on backtracking, see [ Backtracking an Aurora DB
    # Cluster][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Managing.Backtrack.html
    #
    # @option params [required, String] :db_cluster_identifier
    #   The DB cluster identifier of the DB cluster to be backtracked. This
    #   parameter is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :backtrack_to
    #   The timestamp of the time to backtrack the DB cluster to, specified in
    #   ISO 8601 format. For more information about ISO 8601, see the [ISO8601
    #   Wikipedia page.][1]
    #
    #   <note markdown="1"> If the specified time is not a consistent time for the DB cluster,
    #   Aurora automatically chooses the nearest possible consistent time for
    #   the DB cluster.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must contain a valid ISO 8601 timestamp.
    #
    #   * Cannot contain a timestamp set in the future.
    #
    #   Example: `2017-07-08T18:00Z`
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #
    # @option params [Boolean] :force
    #   A value that, if specified, forces the DB cluster to backtrack when
    #   binary logging is enabled. Otherwise, an error occurs when binary
    #   logging is enabled.
    #
    # @option params [Boolean] :use_earliest_time_on_point_in_time_unavailable
    #   If *BacktrackTo* is set to a timestamp earlier than the earliest
    #   backtrack time, this value backtracks the DB cluster to the earliest
    #   possible backtrack time. Otherwise, an error occurs.
    #
    # @return [Types::DBClusterBacktrack] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterBacktrack#db_cluster_identifier #db_cluster_identifier} => String
    #   * {Types::DBClusterBacktrack#backtrack_identifier #backtrack_identifier} => String
    #   * {Types::DBClusterBacktrack#backtrack_to #backtrack_to} => Time
    #   * {Types::DBClusterBacktrack#backtracked_from #backtracked_from} => Time
    #   * {Types::DBClusterBacktrack#backtrack_request_creation_time #backtrack_request_creation_time} => Time
    #   * {Types::DBClusterBacktrack#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.backtrack_db_cluster({
    #     db_cluster_identifier: "String", # required
    #     backtrack_to: Time.now, # required
    #     force: false,
    #     use_earliest_time_on_point_in_time_unavailable: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_identifier #=> String
    #   resp.backtrack_identifier #=> String
    #   resp.backtrack_to #=> Time
    #   resp.backtracked_from #=> Time
    #   resp.backtrack_request_creation_time #=> Time
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/BacktrackDBCluster AWS API Documentation
    #
    # @overload backtrack_db_cluster(params = {})
    # @param [Hash] params ({})
    def backtrack_db_cluster(params = {}, options = {})
      req = build_request(:backtrack_db_cluster, params)
      req.send_request(options)
    end

    # Copies the specified DB cluster parameter group.
    #
    # @option params [required, String] :source_db_cluster_parameter_group_identifier
    #   The identifier or Amazon Resource Name (ARN) for the source DB cluster
    #   parameter group. For information about creating an ARN, see [
    #   Constructing an ARN for Amazon RDS][1] in the *Amazon Aurora User
    #   Guide*.
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
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
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
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @return [Types::CopyDBClusterParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyDBClusterParameterGroupResult#db_cluster_parameter_group #db_cluster_parameter_group} => Types::DBClusterParameterGroup
    #
    #
    # @example Example: To copy a DB cluster parameter group
    #
    #   # This example copies a DB cluster parameter group.
    #
    #   resp = client.copy_db_cluster_parameter_group({
    #     source_db_cluster_parameter_group_identifier: "mydbclusterparametergroup", 
    #     target_db_cluster_parameter_group_description: "My DB cluster parameter group copy", 
    #     target_db_cluster_parameter_group_identifier: "mydbclusterparametergroup-copy", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster_parameter_group: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBClusterParameterGroup AWS API Documentation
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
    #     `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115`.
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
    # For more information on copying encrypted DB cluster snapshots from
    # one AWS Region to another, see [ Copying a Snapshot][3] in the *Amazon
    # Aurora User Guide.*
    #
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][4] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    # [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # [3]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html
    # [4]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #     specify a valid DB cluster snapshot ARN. For more information, go to
    #     [ Copying Snapshots Across AWS Regions][1] in the *Amazon Aurora
    #     User Guide.*
    #
    #   Example: `my-cluster-snapshot1`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html#USER_CopySnapshot.AcrossRegions
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
    #   If you copy an unencrypted DB cluster snapshot and specify a value for
    #   the `KmsKeyId` parameter, an error is returned.
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
    #     `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115`.
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
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @option params [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #
    # @return [Types::CopyDBClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyDBClusterSnapshotResult#db_cluster_snapshot #db_cluster_snapshot} => Types::DBClusterSnapshot
    #
    #
    # @example Example: To copy a DB cluster snapshot
    #
    #   # The following example copies an automated snapshot of a DB cluster to a new DB cluster snapshot.
    #
    #   resp = client.copy_db_cluster_snapshot({
    #     source_db_cluster_snapshot_identifier: "rds:sample-cluster-2016-09-14-10-38", 
    #     target_db_cluster_snapshot_identifier: "cluster-snapshot-copy-1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster_snapshot: {
    #     }, 
    #   }
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
    #     source_region: "String",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBClusterSnapshot AWS API Documentation
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
    #   information about creating an ARN, see [ Constructing an ARN for
    #   Amazon RDS][1] in the *Amazon RDS User Guide*.
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
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
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
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @return [Types::CopyDBParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyDBParameterGroupResult#db_parameter_group #db_parameter_group} => Types::DBParameterGroup
    #
    #
    # @example Example: To copy a DB parameter group
    #
    #   # This example copies a DB parameter group.
    #
    #   resp = client.copy_db_parameter_group({
    #     source_db_parameter_group_identifier: "mymysqlparametergroup", 
    #     target_db_parameter_group_description: "My MySQL parameter group copy", 
    #     target_db_parameter_group_identifier: "mymysqlparametergroup-copy", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_parameter_group: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBParameterGroup AWS API Documentation
    #
    # @overload copy_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def copy_db_parameter_group(params = {}, options = {})
      req = build_request(:copy_db_parameter_group, params)
      req.send_request(options)
    end

    # Copies the specified DB snapshot. The source DB snapshot must be in
    # the "available" state.
    #
    # You can copy a snapshot from one AWS Region to another. In that case,
    # the AWS Region where you call the `CopyDBSnapshot` action is the
    # destination AWS Region for the DB snapshot copy.
    #
    # For more information about copying snapshots, see [Copying a DB
    # Snapshot][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopyDBSnapshot.html
    #
    # @option params [required, String] :source_db_snapshot_identifier
    #   The identifier for the source DB snapshot.
    #
    #   If the source snapshot is in the same AWS Region as the copy, specify
    #   a valid DB snapshot identifier. For example, you might specify
    #   `rds:mysql-instance1-snapshot-20130805`.
    #
    #   If the source snapshot is in a different AWS Region than the copy,
    #   specify a valid DB snapshot ARN. For example, you might specify
    #   `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805`.
    #
    #   If you are copying from a shared manual DB snapshot, this parameter
    #   must be the Amazon Resource Name (ARN) of the shared DB snapshot.
    #
    #   If you are copying an encrypted snapshot this parameter must be in the
    #   ARN format for the source AWS Region, and must match the
    #   `SourceDBSnapshotIdentifier` in the `PreSignedUrl` parameter.
    #
    #   Constraints:
    #
    #   * Must specify a valid system snapshot in the "available" state.
    #
    #   ^
    #
    #   Example: `rds:mydb-2012-04-02-00-01`
    #
    #   Example:
    #   `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805`
    #
    # @option params [required, String] :target_db_snapshot_identifier
    #   The identifier for the copy of the snapshot.
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
    #   Example: `my-db-snapshot`
    #
    # @option params [String] :kms_key_id
    #   The AWS KMS key ID for an encrypted DB snapshot. The KMS key ID is the
    #   Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias
    #   for the KMS encryption key.
    #
    #   If you copy an encrypted DB snapshot from your AWS account, you can
    #   specify a value for this parameter to encrypt the copy with a new KMS
    #   encryption key. If you don't specify a value for this parameter, then
    #   the copy of the DB snapshot is encrypted with the same KMS key as the
    #   source DB snapshot.
    #
    #   If you copy an encrypted DB snapshot that is shared from another AWS
    #   account, then you must specify a value for this parameter.
    #
    #   If you specify this parameter when you copy an unencrypted snapshot,
    #   the copy is encrypted.
    #
    #   If you copy an encrypted snapshot to a different AWS Region, then you
    #   must specify a KMS key for the destination AWS Region. KMS encryption
    #   keys are specific to the AWS Region that they are created in, and you
    #   can't use encryption keys from one AWS Region in another AWS Region.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @option params [Boolean] :copy_tags
    #   True to copy all tags from the source DB snapshot to the target DB
    #   snapshot, and otherwise false. The default is false.
    #
    # @option params [String] :pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CopyDBSnapshot` API action in the source AWS Region that contains the
    #   source DB snapshot to copy.
    #
    #   You must specify this parameter when you copy an encrypted DB snapshot
    #   from another AWS Region by using the Amazon RDS API. You can specify
    #   the `--source-region` option instead of this parameter when you copy
    #   an encrypted DB snapshot from another AWS Region by using the AWS CLI.
    #
    #   The presigned URL must be a valid request for the `CopyDBSnapshot` API
    #   action that can be executed in the source AWS Region that contains the
    #   encrypted DB snapshot to be copied. The presigned URL request must
    #   contain the following parameter values:
    #
    #   * `DestinationRegion` - The AWS Region that the encrypted DB snapshot
    #     is copied to. This AWS Region is the same one where the
    #     `CopyDBSnapshot` action is called that contains this presigned URL.
    #
    #     For example, if you copy an encrypted DB snapshot from the us-west-2
    #     AWS Region to the us-east-1 AWS Region, then you call the
    #     `CopyDBSnapshot` action in the us-east-1 AWS Region and provide a
    #     presigned URL that contains a call to the `CopyDBSnapshot` action in
    #     the us-west-2 AWS Region. For this example, the `DestinationRegion`
    #     in the presigned URL must be set to the us-east-1 AWS Region.
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the copy of the DB snapshot in the destination AWS Region.
    #     This is the same identifier for both the `CopyDBSnapshot` action
    #     that is called in the destination AWS Region, and the action
    #     contained in the presigned URL.
    #
    #   * `SourceDBSnapshotIdentifier` - The DB snapshot identifier for the
    #     encrypted snapshot to be copied. This identifier must be in the
    #     Amazon Resource Name (ARN) format for the source AWS Region. For
    #     example, if you are copying an encrypted DB snapshot from the
    #     us-west-2 AWS Region, then your `SourceDBSnapshotIdentifier` looks
    #     like the following example:
    #     `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see
    #   [Authenticating Requests: Using Query Parameters (AWS Signature
    #   Version 4)][1] and [Signature Version 4 Signing Process][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [String] :option_group_name
    #   The name of an option group to associate with the copy of the
    #   snapshot.
    #
    #   Specify this option if you are copying a snapshot from one AWS Region
    #   to another, and your DB instance uses a nondefault option group. If
    #   your source DB instance uses Transparent Data Encryption for Oracle or
    #   Microsoft SQL Server, you must specify this option when copying across
    #   AWS Regions. For more information, see [Option Group
    #   Considerations][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options
    #
    # @option params [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #
    # @return [Types::CopyDBSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyDBSnapshotResult#db_snapshot #db_snapshot} => Types::DBSnapshot
    #
    #
    # @example Example: To copy a DB snapshot
    #
    #   # This example copies a DB snapshot.
    #
    #   resp = client.copy_db_snapshot({
    #     source_db_snapshot_identifier: "mydbsnapshot", 
    #     target_db_snapshot_identifier: "mydbsnapshot-copy", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_snapshot: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_db_snapshot({
    #     source_db_snapshot_identifier: "String", # required
    #     target_db_snapshot_identifier: "String", # required
    #     kms_key_id: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     copy_tags: false,
    #     pre_signed_url: "String",
    #     option_group_name: "String",
    #     source_region: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_snapshot.db_snapshot_identifier #=> String
    #   resp.db_snapshot.db_instance_identifier #=> String
    #   resp.db_snapshot.snapshot_create_time #=> Time
    #   resp.db_snapshot.engine #=> String
    #   resp.db_snapshot.allocated_storage #=> Integer
    #   resp.db_snapshot.status #=> String
    #   resp.db_snapshot.port #=> Integer
    #   resp.db_snapshot.availability_zone #=> String
    #   resp.db_snapshot.vpc_id #=> String
    #   resp.db_snapshot.instance_create_time #=> Time
    #   resp.db_snapshot.master_username #=> String
    #   resp.db_snapshot.engine_version #=> String
    #   resp.db_snapshot.license_model #=> String
    #   resp.db_snapshot.snapshot_type #=> String
    #   resp.db_snapshot.iops #=> Integer
    #   resp.db_snapshot.option_group_name #=> String
    #   resp.db_snapshot.percent_progress #=> Integer
    #   resp.db_snapshot.source_region #=> String
    #   resp.db_snapshot.source_db_snapshot_identifier #=> String
    #   resp.db_snapshot.storage_type #=> String
    #   resp.db_snapshot.tde_credential_arn #=> String
    #   resp.db_snapshot.encrypted #=> Boolean
    #   resp.db_snapshot.kms_key_id #=> String
    #   resp.db_snapshot.db_snapshot_arn #=> String
    #   resp.db_snapshot.timezone #=> String
    #   resp.db_snapshot.iam_database_authentication_enabled #=> Boolean
    #   resp.db_snapshot.processor_features #=> Array
    #   resp.db_snapshot.processor_features[0].name #=> String
    #   resp.db_snapshot.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBSnapshot AWS API Documentation
    #
    # @overload copy_db_snapshot(params = {})
    # @param [Hash] params ({})
    def copy_db_snapshot(params = {}, options = {})
      req = build_request(:copy_db_snapshot, params)
      req.send_request(options)
    end

    # Copies the specified option group.
    #
    # @option params [required, String] :source_option_group_identifier
    #   The identifier or ARN for the source option group. For information
    #   about creating an ARN, see [ Constructing an ARN for Amazon RDS][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   Constraints:
    #
    #   * Must specify a valid option group.
    #
    #   * If the source option group is in the same AWS Region as the copy,
    #     specify a valid option group identifier, for example
    #     `my-option-group`, or a valid ARN.
    #
    #   * If the source option group is in a different AWS Region than the
    #     copy, specify a valid option group ARN, for example
    #     `arn:aws:rds:us-west-2:123456789012:og:special-options`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #
    # @option params [required, String] :target_option_group_identifier
    #   The identifier for the copied option group.
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
    #   Example: `my-option-group`
    #
    # @option params [required, String] :target_option_group_description
    #   The description for the copied option group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @return [Types::CopyOptionGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyOptionGroupResult#option_group #option_group} => Types::OptionGroup
    #
    #
    # @example Example: To copy an option group
    #
    #   # This example copies an option group.
    #
    #   resp = client.copy_option_group({
    #     source_option_group_identifier: "mymysqloptiongroup", 
    #     target_option_group_description: "My MySQL option group copy", 
    #     target_option_group_identifier: "mymysqloptiongroup-copy", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     option_group: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_option_group({
    #     source_option_group_identifier: "String", # required
    #     target_option_group_identifier: "String", # required
    #     target_option_group_description: "String", # required
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
    #   resp.option_group.option_group_name #=> String
    #   resp.option_group.option_group_description #=> String
    #   resp.option_group.engine_name #=> String
    #   resp.option_group.major_engine_version #=> String
    #   resp.option_group.options #=> Array
    #   resp.option_group.options[0].option_name #=> String
    #   resp.option_group.options[0].option_description #=> String
    #   resp.option_group.options[0].persistent #=> Boolean
    #   resp.option_group.options[0].permanent #=> Boolean
    #   resp.option_group.options[0].port #=> Integer
    #   resp.option_group.options[0].option_version #=> String
    #   resp.option_group.options[0].option_settings #=> Array
    #   resp.option_group.options[0].option_settings[0].name #=> String
    #   resp.option_group.options[0].option_settings[0].value #=> String
    #   resp.option_group.options[0].option_settings[0].default_value #=> String
    #   resp.option_group.options[0].option_settings[0].description #=> String
    #   resp.option_group.options[0].option_settings[0].apply_type #=> String
    #   resp.option_group.options[0].option_settings[0].data_type #=> String
    #   resp.option_group.options[0].option_settings[0].allowed_values #=> String
    #   resp.option_group.options[0].option_settings[0].is_modifiable #=> Boolean
    #   resp.option_group.options[0].option_settings[0].is_collection #=> Boolean
    #   resp.option_group.options[0].db_security_group_memberships #=> Array
    #   resp.option_group.options[0].db_security_group_memberships[0].db_security_group_name #=> String
    #   resp.option_group.options[0].db_security_group_memberships[0].status #=> String
    #   resp.option_group.options[0].vpc_security_group_memberships #=> Array
    #   resp.option_group.options[0].vpc_security_group_memberships[0].vpc_security_group_id #=> String
    #   resp.option_group.options[0].vpc_security_group_memberships[0].status #=> String
    #   resp.option_group.allows_vpc_and_non_vpc_instance_memberships #=> Boolean
    #   resp.option_group.vpc_id #=> String
    #   resp.option_group.option_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyOptionGroup AWS API Documentation
    #
    # @overload copy_option_group(params = {})
    # @param [Hash] params ({})
    def copy_option_group(params = {}, options = {})
      req = build_request(:copy_option_group, params)
      req.send_request(options)
    end

    # Creates a new Amazon Aurora DB cluster.
    #
    # You can use the `ReplicationSourceIdentifier` parameter to create the
    # DB cluster as a Read Replica of another DB cluster or Amazon RDS MySQL
    # DB instance. For cross-region replication where the DB cluster
    # identified by `ReplicationSourceIdentifier` is encrypted, you must
    # also specify the `PreSignedUrl` parameter.
    #
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #
    # @option params [Array<String>] :availability_zones
    #   A list of EC2 Availability Zones that instances in the DB cluster can
    #   be created in. For information on AWS Regions and Availability Zones,
    #   see [Choosing the Regions and Availability Zones][1] in the *Amazon
    #   Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html
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
    #   you do not provide a name, Amazon RDS will not create a database in
    #   the DB cluster you are creating.
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
    #   cluster. If this argument is omitted, `default.aurora5.6` is used.
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
    #   Valid Values: `aurora` (for MySQL 5.6-compatible Aurora),
    #   `aurora-mysql` (for MySQL 5.7-compatible Aurora), and
    #   `aurora-postgresql`
    #
    # @option params [String] :engine_version
    #   The version number of the database engine to use.
    #
    #   **Aurora MySQL**
    #
    #   Example: `5.6.10a`, `5.7.12`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `9.6.3`
    #
    # @option params [Integer] :port
    #   The port number on which the instances in the DB cluster accept
    #   connections.
    #
    #   Default: `3306` if engine is set as aurora or `5432` if set to
    #   aurora-postgresql.
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
    #   see [ Adjusting the Preferred DB Cluster Maintenance Window][1] in the
    #   *Amazon Aurora User Guide.*
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
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
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
    #   DB Cluster Maintenance Window][1] in the *Amazon Aurora User Guide.*
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #
    # @option params [String] :replication_source_identifier
    #   The Amazon Resource Name (ARN) of the source DB instance or DB cluster
    #   if this DB cluster is created as a Read Replica.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #     then Amazon RDS will use the encryption key used to encrypt the
    #     source. Otherwise, Amazon RDS will use your default encryption key.
    #
    #   * If the `StorageEncrypted` parameter is true and
    #     `ReplicationSourceIdentifier` is not specified, then Amazon RDS will
    #     use your default encryption key.
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
    #   * `DestinationRegion` - The name of the AWS Region that Aurora Read
    #     Replica will be created in.
    #
    #   * `ReplicationSourceIdentifier` - The DB cluster identifier for the
    #     encrypted DB cluster to be copied. This identifier must be in the
    #     Amazon Resource Name (ARN) format for the source AWS Region. For
    #     example, if you are copying an encrypted DB cluster from the
    #     us-west-2 AWS Region, then your `ReplicationSourceIdentifier` would
    #     look like Example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1`.
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
    # @option params [Integer] :backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking, set
    #   this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of log types that need to be enabled for exporting to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #
    # @option params [String] :engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned`,
    #   `serverless`, or `parallelquery`.
    #
    # @option params [Types::ScalingConfiguration] :scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling properties
    #   of the DB cluster.
    #
    # @option params [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #
    # @return [Types::CreateDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    #
    # @example Example: To create a DB cluster
    #
    #   # This example creates a DB cluster.
    #
    #   resp = client.create_db_cluster({
    #     availability_zones: [
    #       "us-east-1a", 
    #     ], 
    #     backup_retention_period: 1, 
    #     db_cluster_identifier: "mydbcluster", 
    #     db_cluster_parameter_group_name: "mydbclusterparametergroup", 
    #     database_name: "myauroradb", 
    #     engine: "aurora", 
    #     engine_version: "5.6.10a", 
    #     master_user_password: "mypassword", 
    #     master_username: "myuser", 
    #     port: 3306, 
    #     storage_encrypted: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster: {
    #     }, 
    #   }
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
    #     backtrack_window: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     engine_mode: "String",
    #     scaling_configuration: {
    #       min_capacity: 1,
    #       max_capacity: 1,
    #       auto_pause: false,
    #       seconds_until_auto_pause: 1,
    #     },
    #     source_region: "String",
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
    #   resp.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.earliest_backtrack_time #=> Time
    #   resp.db_cluster.backtrack_window #=> Integer
    #   resp.db_cluster.backtrack_consumed_change_records #=> Integer
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.capacity #=> Integer
    #   resp.db_cluster.engine_mode #=> String
    #   resp.db_cluster.scaling_configuration_info.min_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.max_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.auto_pause #=> Boolean
    #   resp.db_cluster.scaling_configuration_info.seconds_until_auto_pause #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBCluster AWS API Documentation
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
    # Amazon RDS to fully complete the create action before the DB cluster
    # parameter group is used as the default for a new DB cluster. This is
    # especially important for parameters that are critical when creating
    # the default database for a DB cluster, such as the character set for
    # the default database defined by the `character_set_database`
    # parameter. You can use the *Parameter Groups* option of the [Amazon
    # RDS console][1] or the DescribeDBClusterParameters command to verify
    # that your DB cluster parameter group has been created or modified.
    #
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][2] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: https://console.aws.amazon.com/rds/
    # [2]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #   **Aurora MySQL**
    #
    #   Example: `aurora5.6`, `aurora-mysql5.7`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `aurora-postgresql9.6`
    #
    # @option params [required, String] :description
    #   The description for the DB cluster parameter group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @return [Types::CreateDBClusterParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBClusterParameterGroupResult#db_cluster_parameter_group #db_cluster_parameter_group} => Types::DBClusterParameterGroup
    #
    #
    # @example Example: To create a DB cluster parameter group
    #
    #   # This example creates a DB cluster parameter group.
    #
    #   resp = client.create_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "mydbclusterparametergroup", 
    #     db_parameter_group_family: "aurora5.6", 
    #     description: "My DB cluster parameter group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster_parameter_group: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterParameterGroup AWS API Documentation
    #
    # @overload create_db_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def create_db_cluster_parameter_group(params = {}, options = {})
      req = build_request(:create_db_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Creates a snapshot of a DB cluster. For more information on Amazon
    # Aurora, see [ What Is Amazon Aurora?][1] in the *Amazon Aurora User
    # Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #
    # @example Example: To create a DB cluster snapshot
    #
    #   # This example creates a DB cluster snapshot.
    #
    #   resp = client.create_db_cluster_snapshot({
    #     db_cluster_identifier: "mydbcluster", 
    #     db_cluster_snapshot_identifier: "mydbclustersnapshot", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster_snapshot: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterSnapshot AWS API Documentation
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
    #   The meaning of this parameter differs according to the database engine
    #   you use.
    #
    #   Type: String
    #
    #   **MySQL**
    #
    #   The name of the database to create when the DB instance is created. If
    #   this parameter is not specified, no database is created in the DB
    #   instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Cannot be a word reserved by the specified database engine
    #
    #   **MariaDB**
    #
    #   The name of the database to create when the DB instance is created. If
    #   this parameter is not specified, no database is created in the DB
    #   instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Cannot be a word reserved by the specified database engine
    #
    #   **PostgreSQL**
    #
    #   The name of the database to create when the DB instance is created. If
    #   this parameter is not specified, the default "postgres" database is
    #   created in the DB instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 63 letters, numbers, or underscores.
    #
    #   * Must begin with a letter or an underscore. Subsequent characters can
    #     be letters, underscores, or digits (0-9).
    #
    #   * Cannot be a word reserved by the specified database engine
    #
    #   **Oracle**
    #
    #   The Oracle System ID (SID) of the created DB instance. If you specify
    #   `null`, the default value `ORCL` is used. You can't specify the
    #   string NULL, or any other reserved word, for `DBName`.
    #
    #   Default: `ORCL`
    #
    #   Constraints:
    #
    #   * Cannot be longer than 8 characters
    #
    #   ^
    #
    #   **SQL Server**
    #
    #   Not applicable. Must be null.
    #
    #   **Amazon Aurora**
    #
    #   The name of the database to create when the primary instance of the DB
    #   cluster is created. If this parameter is not specified, no database is
    #   created in the DB instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Cannot be a word reserved by the specified database engine
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
    #   **Amazon Aurora**
    #
    #   Not applicable. Aurora cluster volumes automatically grow as the
    #   amount of data in your database increases, though you are only charged
    #   for the space that you use in an Aurora cluster volume.
    #
    #   **MySQL**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **MariaDB**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **PostgreSQL**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **Oracle**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 10 to 3072.
    #
    #   **SQL Server**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2):
    #
    #     * Enterprise and Standard editions: Must be an integer from 200 to
    #       16384.
    #
    #     * Web and Express editions: Must be an integer from 20 to 16384.
    #
    #   * Provisioned IOPS storage (io1):
    #
    #     * Enterprise and Standard editions: Must be an integer from 200 to
    #       16384.
    #
    #     * Web and Express editions: Must be an integer from 100 to 16384.
    #
    #   * Magnetic storage (standard):
    #
    #     * Enterprise and Standard editions: Must be an integer from 200 to
    #       1024.
    #
    #     * Web and Express editions: Must be an integer from 20 to 1024.
    #
    # @option params [required, String] :db_instance_class
    #   The compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB instance
    #   classes, and availability for your engine, see [DB Instance Class][1]
    #   in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #
    # @option params [required, String] :engine
    #   The name of the database engine to be used for this instance.
    #
    #   Not every database engine is available for every AWS Region.
    #
    #   Valid Values:
    #
    #   * `aurora` (for MySQL 5.6-compatible Aurora)
    #
    #   * `aurora-mysql` (for MySQL 5.7-compatible Aurora)
    #
    #   * `aurora-postgresql`
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se1`
    #
    #   * `oracle-se`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    #
    # @option params [String] :master_username
    #   The name for the master user.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The name for the master user is managed by the DB
    #   cluster. For more information, see CreateDBCluster.
    #
    #   **MariaDB**
    #
    #   Constraints:
    #
    #   * Required for MariaDB.
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **Microsoft SQL Server**
    #
    #   Constraints:
    #
    #   * Required for SQL Server.
    #
    #   * Must be 1 to 128 letters or numbers.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **MySQL**
    #
    #   Constraints:
    #
    #   * Required for MySQL.
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **Oracle**
    #
    #   Constraints:
    #
    #   * Required for Oracle.
    #
    #   * Must be 1 to 30 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **PostgreSQL**
    #
    #   Constraints:
    #
    #   * Required for PostgreSQL.
    #
    #   * Must be 1 to 63 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    # @option params [String] :master_user_password
    #   The password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The password for the master user is managed by the DB
    #   cluster. For more information, see CreateDBCluster.
    #
    #   **MariaDB**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Microsoft SQL Server**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #
    #   **MySQL**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Oracle**
    #
    #   Constraints: Must contain from 8 to 30 characters.
    #
    #   **PostgreSQL**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #
    # @option params [Array<String>] :db_security_groups
    #   A list of DB security groups to associate with this DB instance.
    #
    #   Default: The default DB security group for the database engine.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB instance.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster. For more information, see CreateDBCluster.
    #
    #   Default: The default EC2 VPC security group for the DB subnet group's
    #   VPC.
    #
    # @option params [String] :availability_zone
    #   The EC2 Availability Zone that the DB instance is created in. For
    #   information on AWS Regions and Availability Zones, see [Regions and
    #   Availability Zones][1].
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
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    #
    # @option params [String] :db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #
    #   If there is no DB subnet group, then it is a non-VPC DB instance.
    #
    # @option params [String] :preferred_maintenance_window
    #   The time range each week during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC). For more information, see [Amazon
    #   RDS Maintenance Window][1].
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
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance
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
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. Setting this
    #   parameter to 0 disables automated backups.
    #
    #   **Amazon Aurora**
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
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter. For more information, see [The Backup Window][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The daily time range for creating automated backups is
    #   managed by the DB cluster. For more information, see CreateDBCluster.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. To see the time blocks available,
    #   see [ Adjusting the Preferred DB Instance Maintenance Window][2] in
    #   the *Amazon RDS User Guide*.
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
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
    #   [2]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow
    #
    # @option params [Integer] :port
    #   The port number on which the database accepts connections.
    #
    #   **MySQL**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **MariaDB**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **PostgreSQL**
    #
    #   Default: `5432`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **Oracle**
    #
    #   Default: `1521`
    #
    #   Valid Values: `1150-65535`
    #
    #   **SQL Server**
    #
    #   Default: `1433`
    #
    #   Valid Values: `1150-65535` except for `1434`, `3389`, `47001`,
    #   `49152`, and `49152` through `49156`.
    #
    #   **Amazon Aurora**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
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
    #   For a list of valid engine versions, call DescribeDBEngineVersions.
    #
    #   The following are the database engines and links to information about
    #   the major and minor versions that are available with Amazon RDS. Not
    #   every database engine is available for every AWS Region.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The version number of the database engine to be used
    #   by the DB instance is managed by the DB cluster. For more information,
    #   see CreateDBCluster.
    #
    #   **MariaDB**
    #
    #   See [MariaDB on Amazon RDS Versions][1] in the *Amazon RDS User
    #   Guide.*
    #
    #   **Microsoft SQL Server**
    #
    #   See [Version and Feature Support on Amazon RDS][2] in the *Amazon RDS
    #   User Guide.*
    #
    #   **MySQL**
    #
    #   See [MySQL on Amazon RDS Versions][3] in the *Amazon RDS User Guide.*
    #
    #   **Oracle**
    #
    #   See [Oracle Database Engine Release Notes][4] in the *Amazon RDS User
    #   Guide.*
    #
    #   **PostgreSQL**
    #
    #   See [Supported PostgreSQL Database Versions][5] in the *Amazon RDS
    #   User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt
    #   [2]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.FeatureSupport
    #   [3]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
    #   [4]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html
    #   [5]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts.General.DBVersions
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
    #   be initially allocated for the DB instance. For information about
    #   valid Iops values, see see [Amazon RDS Provisioned IOPS Storage to
    #   Improve Performance][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints: Must be a multiple between 1 and 50 of the storage amount
    #   for the DB instance. Must also be an integer multiple of 1000. For
    #   example, if the size of your DB instance is 500 GiB, then your `Iops`
    #   value can be 2000, 3000, 4000, or 5000.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
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
    #   For supported engines, indicates that the DB instance should be
    #   associated with the specified CharacterSet.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The character set is managed by the DB cluster. For
    #   more information, see CreateDBCluster.
    #
    # @option params [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly resolvable
    #   DNS name, which resolves to a public IP address. A value of false
    #   specifies an internal instance with a DNS name that resolves to a
    #   private IP address.
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` is not specified, and `PubliclyAccessible` is
    #   not specified, the following applies:
    #
    #   * If the default VPC in the target region doesn’t have an Internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the default VPC in the target region has an Internet gateway
    #     attached to it, the DB instance is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` is not
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an Internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the subnets are part of a VPC that has an Internet gateway
    #     attached to it, the DB instance is public.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
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
    # @option params [Boolean] :storage_encrypted
    #   Specifies whether the DB instance is encrypted.
    #
    #   **Amazon Aurora**
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
    #   **Amazon Aurora**
    #
    #   Not applicable. The KMS key identifier is managed by the DB cluster.
    #   For more information, see CreateDBCluster.
    #
    #   If the `StorageEncrypted` parameter is true, and you do not specify a
    #   value for the `KmsKeyId` parameter, then Amazon RDS will use your
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
    #   The ARN for the IAM role that permits RDS to send enhanced monitoring
    #   metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, go to [Setting Up and Enabling Enhanced
    #   Monitoring][1] in the *Amazon RDS User Guide*.
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you must
    #   supply a `MonitoringRoleArn` value.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
    #
    # @option params [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #
    # @option params [Integer] :promotion_tier
    #   A value that specifies the order in which an Aurora Replica is
    #   promoted to the primary instance after a failure of the existing
    #   primary instance. For more information, see [ Fault Tolerance for an
    #   Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    #
    # @option params [String] :timezone
    #   The time zone of the DB instance. The time zone parameter is currently
    #   supported only by [Microsoft SQL Server][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following database
    #   engines:
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Mapping AWS IAM accounts to database accounts is
    #   managed by the DB cluster. For more information, see CreateDBCluster.
    #
    #   **MySQL**
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    #
    # @option params [Boolean] :enable_performance_insights
    #   True to enable Performance Insights for the DB instance, and otherwise
    #   false.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #
    # @option params [String] :performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #
    # @option params [Integer] :performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of log types that need to be enabled for exporting to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs ][1] in the *Amazon Relational Database Service User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #
    # @option params [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    #
    # @return [Types::CreateDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    #
    # @example Example: To create a DB instance.
    #
    #   # This example creates a DB instance.
    #
    #   resp = client.create_db_instance({
    #     allocated_storage: 5, 
    #     db_instance_class: "db.t2.micro", 
    #     db_instance_identifier: "mymysqlinstance", 
    #     engine: "MySQL", 
    #     master_user_password: "MyPassword", 
    #     master_username: "MyUser", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_instance: {
    #     }, 
    #   }
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
    #     performance_insights_retention_period: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
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
    #   resp.db_instance.pending_modified_values.processor_features #=> Array
    #   resp.db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instance.pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instance.performance_insights_retention_period #=> Integer
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.processor_features #=> Array
    #   resp.db_instance.processor_features[0].name #=> String
    #   resp.db_instance.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBInstance AWS API Documentation
    #
    # @overload create_db_instance(params = {})
    # @param [Hash] params ({})
    def create_db_instance(params = {}, options = {})
      req = build_request(:create_db_instance, params)
      req.send_request(options)
    end

    # Creates a new DB instance that acts as a Read Replica for an existing
    # source DB instance. You can create a Read Replica for a DB instance
    # running MySQL, MariaDB, or PostgreSQL. For more information, see
    # [Working with PostgreSQL, MySQL, and MariaDB Read Replicas][1] in the
    # *Amazon RDS User Guide*.
    #
    # Amazon Aurora doesn't support this action. You must call the
    # `CreateDBInstance` action to create a DB instance for an Aurora DB
    # cluster.
    #
    # All Read Replica DB instances are created with backups disabled. All
    # other DB instance attributes (including DB security groups and DB
    # parameter groups) are inherited from the source DB instance, except as
    # specified following.
    #
    # Your source DB instance must have backup retention enabled.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html
    #
    # @option params [required, String] :db_instance_identifier
    #   The DB instance identifier of the Read Replica. This identifier is the
    #   unique key that identifies a DB instance. This parameter is stored as
    #   a lowercase string.
    #
    # @option params [required, String] :source_db_instance_identifier
    #   The identifier of the DB instance that will act as the source for the
    #   Read Replica. Each DB instance can have up to five Read Replicas.
    #
    #   Constraints:
    #
    #   * Must be the identifier of an existing MySQL, MariaDB, or PostgreSQL
    #     DB instance.
    #
    #   * Can specify a DB instance that is a MySQL Read Replica only if the
    #     source is running MySQL 5.6.
    #
    #   * Can specify a DB instance that is a PostgreSQL DB instance only if
    #     the source is running PostgreSQL 9.3.5 or later (9.4.7 and higher
    #     for cross-region replication).
    #
    #   * The specified DB instance must have automatic backups enabled, its
    #     backup retention period must be greater than 0.
    #
    #   * If the source DB instance is in the same AWS Region as the Read
    #     Replica, specify a valid DB instance identifier.
    #
    #   * If the source DB instance is in a different AWS Region than the Read
    #     Replica, specify a valid DB instance ARN. For more information, go
    #     to [ Constructing an ARN for Amazon RDS][1] in the *Amazon RDS User
    #     Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #
    # @option params [String] :db_instance_class
    #   The compute and memory capacity of the Read Replica, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB instance
    #   classes, and availability for your engine, see [DB Instance Class][1]
    #   in the *Amazon RDS User Guide.*
    #
    #   Default: Inherits from the source DB instance.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #
    # @option params [String] :availability_zone
    #   The Amazon EC2 Availability Zone that the Read Replica is created in.
    #
    #   Default: A random, system-chosen Availability Zone in the endpoint's
    #   AWS Region.
    #
    #   Example: `us-east-1d`
    #
    # @option params [Integer] :port
    #   The port number that the DB instance uses for connections.
    #
    #   Default: Inherits from the source DB instance
    #
    #   Valid Values: `1150-65535`
    #
    # @option params [Boolean] :multi_az
    #   Specifies whether the Read Replica is in a Multi-AZ deployment.
    #
    #   You can create a Read Replica as a Multi-AZ DB instance. RDS creates a
    #   standby of your replica in another Availability Zone for failover
    #   support for the replica. Creating your Read Replica as a Multi-AZ DB
    #   instance is independent of whether the source database is a Multi-AZ
    #   DB instance.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor engine upgrades are applied automatically to the
    #   Read Replica during the maintenance window.
    #
    #   Default: Inherits from the source DB instance
    #
    # @option params [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for the DB instance.
    #
    # @option params [String] :option_group_name
    #   The option group the DB instance is associated with. If omitted, the
    #   default option group for the engine specified is used.
    #
    # @option params [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly resolvable
    #   DNS name, which resolves to a public IP address. A value of false
    #   specifies an internal instance with a DNS name that resolves to a
    #   private IP address. For more information, see CreateDBInstance.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @option params [String] :db_subnet_group_name
    #   Specifies a DB subnet group for the DB instance. The new DB instance
    #   is created in the VPC associated with the DB subnet group. If no DB
    #   subnet group is specified, then the new DB instance is not created in
    #   a VPC.
    #
    #   Constraints:
    #
    #   * Can only be specified if the source DB instance identifier specifies
    #     a DB instance in another AWS Region.
    #
    #   * If supplied, must match the name of an existing DBSubnetGroup.
    #
    #   * The specified DB subnet group must be in the same AWS Region in
    #     which the operation is running.
    #
    #   * All Read Replicas in one AWS Region that are created from the same
    #     source DB instance must either:&gt;
    #
    #     * Specify DB subnet groups from the same VPC. All these Read
    #       Replicas are created in the same VPC.
    #
    #     * Not specify a DB subnet group. All these Read Replicas are created
    #       outside of any VPC.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [String] :storage_type
    #   Specifies the storage type to be associated with the Read Replica.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the Read Replica to snapshots of the Read
    #   Replica, and otherwise false. The default is false.
    #
    # @option params [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the Read Replica. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    #
    # @option params [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced monitoring
    #   metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, go to [To create an IAM role for Amazon RDS
    #   Enhanced Monitoring][1] in the *Amazon RDS User Guide*.
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you must
    #   supply a `MonitoringRoleArn` value.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    #
    # @option params [String] :kms_key_id
    #   The AWS KMS key ID for an encrypted Read Replica. The KMS key ID is
    #   the Amazon Resource Name (ARN), KMS key identifier, or the KMS key
    #   alias for the KMS encryption key.
    #
    #   If you specify this parameter when you create a Read Replica from an
    #   unencrypted DB instance, the Read Replica is encrypted.
    #
    #   If you create an encrypted Read Replica in the same AWS Region as the
    #   source DB instance, then you do not have to specify a value for this
    #   parameter. The Read Replica is encrypted with the same KMS key as the
    #   source DB instance.
    #
    #   If you create an encrypted Read Replica in a different AWS Region,
    #   then you must specify a KMS key for the destination AWS Region. KMS
    #   encryption keys are specific to the AWS Region that they are created
    #   in, and you can't use encryption keys from one AWS Region in another
    #   AWS Region.
    #
    # @option params [String] :pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CreateDBInstanceReadReplica` API action in the source AWS Region that
    #   contains the source DB instance.
    #
    #   You must specify this parameter when you create an encrypted Read
    #   Replica from another AWS Region by using the Amazon RDS API. You can
    #   specify the `--source-region` option instead of this parameter when
    #   you create an encrypted Read Replica from another AWS Region by using
    #   the AWS CLI.
    #
    #   The presigned URL must be a valid request for the
    #   `CreateDBInstanceReadReplica` API action that can be executed in the
    #   source AWS Region that contains the encrypted source DB instance. The
    #   presigned URL request must contain the following parameter values:
    #
    #   * `DestinationRegion` - The AWS Region that the encrypted Read Replica
    #     is created in. This AWS Region is the same one where the
    #     `CreateDBInstanceReadReplica` action is called that contains this
    #     presigned URL.
    #
    #     For example, if you create an encrypted DB instance in the us-west-1
    #     AWS Region, from a source DB instance in the us-east-2 AWS Region,
    #     then you call the `CreateDBInstanceReadReplica` action in the
    #     us-east-1 AWS Region and provide a presigned URL that contains a
    #     call to the `CreateDBInstanceReadReplica` action in the us-west-2
    #     AWS Region. For this example, the `DestinationRegion` in the
    #     presigned URL must be set to the us-east-1 AWS Region.
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the Read Replica in the destination AWS Region. This is the
    #     same identifier for both the `CreateDBInstanceReadReplica` action
    #     that is called in the destination AWS Region, and the action
    #     contained in the presigned URL.
    #
    #   * `SourceDBInstanceIdentifier` - The DB instance identifier for the
    #     encrypted DB instance to be replicated. This identifier must be in
    #     the Amazon Resource Name (ARN) format for the source AWS Region. For
    #     example, if you are creating an encrypted Read Replica from a DB
    #     instance in the us-west-2 AWS Region, then your
    #     `SourceDBInstanceIdentifier` looks like the following example:
    #     `arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see
    #   [Authenticating Requests: Using Query Parameters (AWS Signature
    #   Version 4)][1] and [Signature Version 4 Signing Process][2].
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
    #   You can enable IAM database authentication for the following database
    #   engines
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   * Aurora 5.6 or higher.
    #
    #   Default: `false`
    #
    # @option params [Boolean] :enable_performance_insights
    #   True to enable Performance Insights for the read replica, and
    #   otherwise false.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #
    # @option params [String] :performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #
    # @option params [Integer] :performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the new DB instance is to export to CloudWatch
    #   Logs. The values in the list depend on the DB engine being used. For
    #   more information, see [Publishing Database Logs to Amazon CloudWatch
    #   Logs ][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #
    # @option params [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    #
    # @option params [Boolean] :use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    #
    # @option params [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #
    # @return [Types::CreateDBInstanceReadReplicaResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBInstanceReadReplicaResult#db_instance #db_instance} => Types::DBInstance
    #
    #
    # @example Example: To create a DB instance read replica.
    #
    #   # This example creates a DB instance read replica.
    #
    #   resp = client.create_db_instance_read_replica({
    #     availability_zone: "us-east-1a", 
    #     copy_tags_to_snapshot: true, 
    #     db_instance_class: "db.t2.micro", 
    #     db_instance_identifier: "mydbreadreplica", 
    #     publicly_accessible: true, 
    #     source_db_instance_identifier: "mymysqlinstance", 
    #     storage_type: "gp2", 
    #     tags: [
    #       {
    #         key: "mydbreadreplicakey", 
    #         value: "mydbreadreplicavalue", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_instance: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_instance_read_replica({
    #     db_instance_identifier: "String", # required
    #     source_db_instance_identifier: "String", # required
    #     db_instance_class: "String",
    #     availability_zone: "String",
    #     port: 1,
    #     multi_az: false,
    #     auto_minor_version_upgrade: false,
    #     iops: 1,
    #     option_group_name: "String",
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     db_subnet_group_name: "String",
    #     storage_type: "String",
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: "String",
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     performance_insights_retention_period: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     use_default_processor_features: false,
    #     source_region: "String",
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
    #   resp.db_instance.pending_modified_values.processor_features #=> Array
    #   resp.db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instance.pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instance.performance_insights_retention_period #=> Integer
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.processor_features #=> Array
    #   resp.db_instance.processor_features[0].name #=> String
    #   resp.db_instance.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBInstanceReadReplica AWS API Documentation
    #
    # @overload create_db_instance_read_replica(params = {})
    # @param [Hash] params ({})
    def create_db_instance_read_replica(params = {}, options = {})
      req = build_request(:create_db_instance_read_replica, params)
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
    # parameter group as the default parameter group. This allows Amazon RDS
    # to fully complete the create action before the parameter group is used
    # as the default for a new DB instance. This is especially important for
    # parameters that are critical when creating the default database for a
    # DB instance, such as the character set for the default database
    # defined by the `character_set_database` parameter. You can use the
    # *Parameter Groups* option of the [Amazon RDS console][1] or the
    # *DescribeDBParameters* command to verify that your DB parameter group
    # has been created or modified.
    #
    #
    #
    # [1]: https://console.aws.amazon.com/rds/
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
    #   To list all of the available parameter group families, use the
    #   following command:
    #
    #   `aws rds describe-db-engine-versions --query
    #   "DBEngineVersions[].DBParameterGroupFamily"`
    #
    #   <note markdown="1"> The output contains duplicates.
    #
    #    </note>
    #
    # @option params [required, String] :description
    #   The description for the DB parameter group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @return [Types::CreateDBParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBParameterGroupResult#db_parameter_group #db_parameter_group} => Types::DBParameterGroup
    #
    #
    # @example Example: To create a DB parameter group.
    #
    #   # This example creates a DB parameter group.
    #
    #   resp = client.create_db_parameter_group({
    #     db_parameter_group_family: "mysql5.6", 
    #     db_parameter_group_name: "mymysqlparametergroup", 
    #     description: "My MySQL parameter group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_parameter_group: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBParameterGroup AWS API Documentation
    #
    # @overload create_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def create_db_parameter_group(params = {}, options = {})
      req = build_request(:create_db_parameter_group, params)
      req.send_request(options)
    end

    # Creates a new DB security group. DB security groups control access to
    # a DB instance.
    #
    # <note markdown="1"> A DB security group controls access to EC2-Classic DB instances that
    # are not in a VPC.
    #
    #  </note>
    #
    # @option params [required, String] :db_security_group_name
    #   The name for the DB security group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   * Must not be "Default"
    #
    #   Example: `mysecuritygroup`
    #
    # @option params [required, String] :db_security_group_description
    #   The description for the DB security group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @return [Types::CreateDBSecurityGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBSecurityGroupResult#db_security_group #db_security_group} => Types::DBSecurityGroup
    #
    #
    # @example Example: To create a DB security group.
    #
    #   # This example creates a DB security group.
    #
    #   resp = client.create_db_security_group({
    #     db_security_group_description: "My DB security group", 
    #     db_security_group_name: "mydbsecuritygroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_security_group: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_security_group({
    #     db_security_group_name: "String", # required
    #     db_security_group_description: "String", # required
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
    #   resp.db_security_group.owner_id #=> String
    #   resp.db_security_group.db_security_group_name #=> String
    #   resp.db_security_group.db_security_group_description #=> String
    #   resp.db_security_group.vpc_id #=> String
    #   resp.db_security_group.ec2_security_groups #=> Array
    #   resp.db_security_group.ec2_security_groups[0].status #=> String
    #   resp.db_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.db_security_group.ec2_security_groups[0].ec2_security_group_id #=> String
    #   resp.db_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.db_security_group.ip_ranges #=> Array
    #   resp.db_security_group.ip_ranges[0].status #=> String
    #   resp.db_security_group.ip_ranges[0].cidrip #=> String
    #   resp.db_security_group.db_security_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSecurityGroup AWS API Documentation
    #
    # @overload create_db_security_group(params = {})
    # @param [Hash] params ({})
    def create_db_security_group(params = {}, options = {})
      req = build_request(:create_db_security_group, params)
      req.send_request(options)
    end

    # Creates a DBSnapshot. The source DBInstance must be in "available"
    # state.
    #
    # @option params [required, String] :db_snapshot_identifier
    #   The identifier for the DB snapshot.
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
    #   Example: `my-snapshot-id`
    #
    # @option params [required, String] :db_instance_identifier
    #   The identifier of the DB instance that you want to create the snapshot
    #   of.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @return [Types::CreateDBSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBSnapshotResult#db_snapshot #db_snapshot} => Types::DBSnapshot
    #
    #
    # @example Example: To create a DB snapshot.
    #
    #   # This example creates a DB snapshot.
    #
    #   resp = client.create_db_snapshot({
    #     db_instance_identifier: "mymysqlinstance", 
    #     db_snapshot_identifier: "mydbsnapshot", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_snapshot: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_snapshot({
    #     db_snapshot_identifier: "String", # required
    #     db_instance_identifier: "String", # required
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
    #   resp.db_snapshot.db_snapshot_identifier #=> String
    #   resp.db_snapshot.db_instance_identifier #=> String
    #   resp.db_snapshot.snapshot_create_time #=> Time
    #   resp.db_snapshot.engine #=> String
    #   resp.db_snapshot.allocated_storage #=> Integer
    #   resp.db_snapshot.status #=> String
    #   resp.db_snapshot.port #=> Integer
    #   resp.db_snapshot.availability_zone #=> String
    #   resp.db_snapshot.vpc_id #=> String
    #   resp.db_snapshot.instance_create_time #=> Time
    #   resp.db_snapshot.master_username #=> String
    #   resp.db_snapshot.engine_version #=> String
    #   resp.db_snapshot.license_model #=> String
    #   resp.db_snapshot.snapshot_type #=> String
    #   resp.db_snapshot.iops #=> Integer
    #   resp.db_snapshot.option_group_name #=> String
    #   resp.db_snapshot.percent_progress #=> Integer
    #   resp.db_snapshot.source_region #=> String
    #   resp.db_snapshot.source_db_snapshot_identifier #=> String
    #   resp.db_snapshot.storage_type #=> String
    #   resp.db_snapshot.tde_credential_arn #=> String
    #   resp.db_snapshot.encrypted #=> Boolean
    #   resp.db_snapshot.kms_key_id #=> String
    #   resp.db_snapshot.db_snapshot_arn #=> String
    #   resp.db_snapshot.timezone #=> String
    #   resp.db_snapshot.iam_database_authentication_enabled #=> Boolean
    #   resp.db_snapshot.processor_features #=> Array
    #   resp.db_snapshot.processor_features[0].name #=> String
    #   resp.db_snapshot.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSnapshot AWS API Documentation
    #
    # @overload create_db_snapshot(params = {})
    # @param [Hash] params ({})
    def create_db_snapshot(params = {}, options = {})
      req = build_request(:create_db_snapshot, params)
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
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @return [Types::CreateDBSubnetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBSubnetGroupResult#db_subnet_group #db_subnet_group} => Types::DBSubnetGroup
    #
    #
    # @example Example: To create a DB subnet group.
    #
    #   # This example creates a DB subnet group.
    #
    #   resp = client.create_db_subnet_group({
    #     db_subnet_group_description: "My DB subnet group", 
    #     db_subnet_group_name: "mydbsubnetgroup", 
    #     subnet_ids: [
    #       "subnet-1fab8a69", 
    #       "subnet-d43a468c", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_subnet_group: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSubnetGroup AWS API Documentation
    #
    # @overload create_db_subnet_group(params = {})
    # @param [Hash] params ({})
    def create_db_subnet_group(params = {}, options = {})
      req = build_request(:create_db_subnet_group, params)
      req.send_request(options)
    end

    # Creates an RDS event notification subscription. This action requires a
    # topic ARN (Amazon Resource Name) created by either the RDS console,
    # the SNS console, or the SNS API. To obtain an ARN with SNS, you must
    # create a topic in Amazon SNS and subscribe to the topic. The ARN is
    # displayed in the SNS console.
    #
    # You can specify the type of source (SourceType) you want to be
    # notified of, provide a list of RDS sources (SourceIds) that triggers
    # the events, and provide a list of event categories (EventCategories)
    # for events you want to be notified of. For example, you can specify
    # SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and
    # EventCategories = Availability, Backup.
    #
    # If you specify both the SourceType and SourceIds, such as SourceType =
    # db-instance and SourceIdentifier = myDBInstance1, you are notified of
    # all the db-instance events for the specified source. If you specify a
    # SourceType but do not specify a SourceIdentifier, you receive notice
    # of the events for that source type for all your RDS sources. If you do
    # not specify either the SourceType nor the SourceIdentifier, you are
    # notified of events generated from all RDS sources belonging to your
    # customer account.
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
    #   to. You can see a list of the categories for a given SourceType in the
    #   [Events][1] topic in the *Amazon RDS User Guide* or by using the
    #   **DescribeEventCategories** action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
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
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @return [Types::CreateEventSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    #
    # @example Example: To create an event notification subscription
    #
    #   # This example creates an event notification subscription.
    #
    #   resp = client.create_event_subscription({
    #     enabled: true, 
    #     event_categories: [
    #       "availability", 
    #     ], 
    #     sns_topic_arn: "arn:aws:sns:us-east-1:992648334831:MyDemoSNSTopic", 
    #     source_ids: [
    #       "mymysqlinstance", 
    #     ], 
    #     source_type: "db-instance", 
    #     subscription_name: "mymysqleventsubscription", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_subscription: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateEventSubscription AWS API Documentation
    #
    # @overload create_event_subscription(params = {})
    # @param [Hash] params ({})
    def create_event_subscription(params = {}, options = {})
      req = build_request(:create_event_subscription, params)
      req.send_request(options)
    end

    # Creates a new option group. You can create up to 20 option groups.
    #
    # @option params [required, String] :option_group_name
    #   Specifies the name of the option group to be created.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `myoptiongroup`
    #
    # @option params [required, String] :engine_name
    #   Specifies the name of the engine that this option group should be
    #   associated with.
    #
    # @option params [required, String] :major_engine_version
    #   Specifies the major version of the engine that this option group
    #   should be associated with.
    #
    # @option params [required, String] :option_group_description
    #   The description of the option group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @return [Types::CreateOptionGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOptionGroupResult#option_group #option_group} => Types::OptionGroup
    #
    #
    # @example Example: To create an option group
    #
    #   # This example creates an option group.
    #
    #   resp = client.create_option_group({
    #     engine_name: "MySQL", 
    #     major_engine_version: "5.6", 
    #     option_group_description: "My MySQL 5.6 option group", 
    #     option_group_name: "mymysqloptiongroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     option_group: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_option_group({
    #     option_group_name: "String", # required
    #     engine_name: "String", # required
    #     major_engine_version: "String", # required
    #     option_group_description: "String", # required
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
    #   resp.option_group.option_group_name #=> String
    #   resp.option_group.option_group_description #=> String
    #   resp.option_group.engine_name #=> String
    #   resp.option_group.major_engine_version #=> String
    #   resp.option_group.options #=> Array
    #   resp.option_group.options[0].option_name #=> String
    #   resp.option_group.options[0].option_description #=> String
    #   resp.option_group.options[0].persistent #=> Boolean
    #   resp.option_group.options[0].permanent #=> Boolean
    #   resp.option_group.options[0].port #=> Integer
    #   resp.option_group.options[0].option_version #=> String
    #   resp.option_group.options[0].option_settings #=> Array
    #   resp.option_group.options[0].option_settings[0].name #=> String
    #   resp.option_group.options[0].option_settings[0].value #=> String
    #   resp.option_group.options[0].option_settings[0].default_value #=> String
    #   resp.option_group.options[0].option_settings[0].description #=> String
    #   resp.option_group.options[0].option_settings[0].apply_type #=> String
    #   resp.option_group.options[0].option_settings[0].data_type #=> String
    #   resp.option_group.options[0].option_settings[0].allowed_values #=> String
    #   resp.option_group.options[0].option_settings[0].is_modifiable #=> Boolean
    #   resp.option_group.options[0].option_settings[0].is_collection #=> Boolean
    #   resp.option_group.options[0].db_security_group_memberships #=> Array
    #   resp.option_group.options[0].db_security_group_memberships[0].db_security_group_name #=> String
    #   resp.option_group.options[0].db_security_group_memberships[0].status #=> String
    #   resp.option_group.options[0].vpc_security_group_memberships #=> Array
    #   resp.option_group.options[0].vpc_security_group_memberships[0].vpc_security_group_id #=> String
    #   resp.option_group.options[0].vpc_security_group_memberships[0].status #=> String
    #   resp.option_group.allows_vpc_and_non_vpc_instance_memberships #=> Boolean
    #   resp.option_group.vpc_id #=> String
    #   resp.option_group.option_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateOptionGroup AWS API Documentation
    #
    # @overload create_option_group(params = {})
    # @param [Hash] params ({})
    def create_option_group(params = {}, options = {})
      req = build_request(:create_option_group, params)
      req.send_request(options)
    end

    # The DeleteDBCluster action deletes a previously provisioned DB
    # cluster. When you delete a DB cluster, all automated backups for that
    # DB cluster are deleted and can't be recovered. Manual DB cluster
    # snapshots of the specified DB cluster are not deleted.
    #
    #
    #
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #
    # @example Example: To delete a DB cluster.
    #
    #   # This example deletes the specified DB cluster.
    #
    #   resp = client.delete_db_cluster({
    #     db_cluster_identifier: "mydbcluster", 
    #     skip_final_snapshot: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster: {
    #     }, 
    #   }
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
    #   resp.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.earliest_backtrack_time #=> Time
    #   resp.db_cluster.backtrack_window #=> Integer
    #   resp.db_cluster.backtrack_consumed_change_records #=> Integer
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.capacity #=> Integer
    #   resp.db_cluster.engine_mode #=> String
    #   resp.db_cluster.scaling_configuration_info.min_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.max_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.auto_pause #=> Boolean
    #   resp.db_cluster.scaling_configuration_info.seconds_until_auto_pause #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBCluster AWS API Documentation
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
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #
    # @example Example: To delete a DB cluster parameter group.
    #
    #   # This example deletes the specified DB cluster parameter group.
    #
    #   resp = client.delete_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "mydbclusterparametergroup", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterParameterGroup AWS API Documentation
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
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #
    # @example Example: To delete a DB cluster snapshot.
    #
    #   # This example deletes the specified DB cluster snapshot.
    #
    #   resp = client.delete_db_cluster_snapshot({
    #     db_cluster_snapshot_identifier: "mydbclustersnapshot", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster_snapshot: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterSnapshot AWS API Documentation
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
    # If you request a final DB snapshot the status of the Amazon RDS DB
    # instance is `deleting` until the DB snapshot is created. The API
    # action `DescribeDBInstance` is used to monitor the status of this
    # operation. The action can't be canceled or reverted once submitted.
    #
    # Note that when a DB instance is in a failure state and has a status of
    # `failed`, `incompatible-restore`, or `incompatible-network`, you can
    # only delete it when the `SkipFinalSnapshot` parameter is set to
    # `true`.
    #
    # If the specified DB instance is part of an Amazon Aurora DB cluster,
    # you can't delete the DB instance if both of the following conditions
    # are true:
    #
    # * The DB cluster is a Read Replica of another Amazon Aurora DB
    #   cluster.
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
    #
    # @example Example: To delete a DB instance.
    #
    #   # This example deletes the specified DB instance.
    #
    #   resp = client.delete_db_instance({
    #     db_instance_identifier: "mymysqlinstance", 
    #     skip_final_snapshot: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_instance: {
    #     }, 
    #   }
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
    #   resp.db_instance.pending_modified_values.processor_features #=> Array
    #   resp.db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instance.pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instance.performance_insights_retention_period #=> Integer
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.processor_features #=> Array
    #   resp.db_instance.processor_features[0].name #=> String
    #   resp.db_instance.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBInstance AWS API Documentation
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
    #
    # @example Example: To delete a DB parameter group
    #
    #   # The following example deletes a DB parameter group.
    #
    #   resp = client.delete_db_parameter_group({
    #     db_parameter_group_name: "mydbparamgroup3", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_parameter_group({
    #     db_parameter_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBParameterGroup AWS API Documentation
    #
    # @overload delete_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def delete_db_parameter_group(params = {}, options = {})
      req = build_request(:delete_db_parameter_group, params)
      req.send_request(options)
    end

    # Deletes a DB security group.
    #
    # <note markdown="1"> The specified DB security group must not be associated with any DB
    # instances.
    #
    #  </note>
    #
    # @option params [required, String] :db_security_group_name
    #   The name of the DB security group to delete.
    #
    #   <note markdown="1"> You can't delete the default DB security group.
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
    #   * Must not be "Default"
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a DB security group
    #
    #   # The following example deletes a DB security group.
    #
    #   resp = client.delete_db_security_group({
    #     db_security_group_name: "mysecgroup", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_security_group({
    #     db_security_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBSecurityGroup AWS API Documentation
    #
    # @overload delete_db_security_group(params = {})
    # @param [Hash] params ({})
    def delete_db_security_group(params = {}, options = {})
      req = build_request(:delete_db_security_group, params)
      req.send_request(options)
    end

    # Deletes a DBSnapshot. If the snapshot is being copied, the copy
    # operation is terminated.
    #
    # <note markdown="1"> The DBSnapshot must be in the `available` state to be deleted.
    #
    #  </note>
    #
    # @option params [required, String] :db_snapshot_identifier
    #   The DBSnapshot identifier.
    #
    #   Constraints: Must be the name of an existing DB snapshot in the
    #   `available` state.
    #
    # @return [Types::DeleteDBSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDBSnapshotResult#db_snapshot #db_snapshot} => Types::DBSnapshot
    #
    #
    # @example Example: To delete a DB cluster snapshot.
    #
    #   # This example deletes the specified DB snapshot.
    #
    #   resp = client.delete_db_snapshot({
    #     db_snapshot_identifier: "mydbsnapshot", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_snapshot: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_snapshot({
    #     db_snapshot_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_snapshot.db_snapshot_identifier #=> String
    #   resp.db_snapshot.db_instance_identifier #=> String
    #   resp.db_snapshot.snapshot_create_time #=> Time
    #   resp.db_snapshot.engine #=> String
    #   resp.db_snapshot.allocated_storage #=> Integer
    #   resp.db_snapshot.status #=> String
    #   resp.db_snapshot.port #=> Integer
    #   resp.db_snapshot.availability_zone #=> String
    #   resp.db_snapshot.vpc_id #=> String
    #   resp.db_snapshot.instance_create_time #=> Time
    #   resp.db_snapshot.master_username #=> String
    #   resp.db_snapshot.engine_version #=> String
    #   resp.db_snapshot.license_model #=> String
    #   resp.db_snapshot.snapshot_type #=> String
    #   resp.db_snapshot.iops #=> Integer
    #   resp.db_snapshot.option_group_name #=> String
    #   resp.db_snapshot.percent_progress #=> Integer
    #   resp.db_snapshot.source_region #=> String
    #   resp.db_snapshot.source_db_snapshot_identifier #=> String
    #   resp.db_snapshot.storage_type #=> String
    #   resp.db_snapshot.tde_credential_arn #=> String
    #   resp.db_snapshot.encrypted #=> Boolean
    #   resp.db_snapshot.kms_key_id #=> String
    #   resp.db_snapshot.db_snapshot_arn #=> String
    #   resp.db_snapshot.timezone #=> String
    #   resp.db_snapshot.iam_database_authentication_enabled #=> Boolean
    #   resp.db_snapshot.processor_features #=> Array
    #   resp.db_snapshot.processor_features[0].name #=> String
    #   resp.db_snapshot.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBSnapshot AWS API Documentation
    #
    # @overload delete_db_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_db_snapshot(params = {}, options = {})
      req = build_request(:delete_db_snapshot, params)
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
    #
    # @example Example: To delete a DB subnet group.
    #
    #   # This example deletes the specified DB subnetgroup.
    #
    #   resp = client.delete_db_subnet_group({
    #     db_subnet_group_name: "mydbsubnetgroup", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_subnet_group({
    #     db_subnet_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBSubnetGroup AWS API Documentation
    #
    # @overload delete_db_subnet_group(params = {})
    # @param [Hash] params ({})
    def delete_db_subnet_group(params = {}, options = {})
      req = build_request(:delete_db_subnet_group, params)
      req.send_request(options)
    end

    # Deletes an RDS event notification subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to
    #   delete.
    #
    # @return [Types::DeleteEventSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEventSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    #
    # @example Example: To delete a DB event subscription.
    #
    #   # This example deletes the specified DB event subscription.
    #
    #   resp = client.delete_event_subscription({
    #     subscription_name: "myeventsubscription", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_subscription: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteEventSubscription AWS API Documentation
    #
    # @overload delete_event_subscription(params = {})
    # @param [Hash] params ({})
    def delete_event_subscription(params = {}, options = {})
      req = build_request(:delete_event_subscription, params)
      req.send_request(options)
    end

    # Deletes an existing option group.
    #
    # @option params [required, String] :option_group_name
    #   The name of the option group to be deleted.
    #
    #   <note markdown="1"> You can't delete default option groups.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an option group.
    #
    #   # This example deletes the specified option group.
    #
    #   resp = client.delete_option_group({
    #     option_group_name: "mydboptiongroup", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_option_group({
    #     option_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteOptionGroup AWS API Documentation
    #
    # @overload delete_option_group(params = {})
    # @param [Hash] params ({})
    def delete_option_group(params = {}, options = {})
      req = build_request(:delete_option_group, params)
      req.send_request(options)
    end

    # Lists all of the attributes for a customer account. The attributes
    # include Amazon RDS quotas for the account, such as the number of DB
    # instances allowed. The description for a quota includes the quota
    # name, current usage toward that quota, and the quota's maximum value.
    #
    # This command doesn't take any parameters.
    #
    # @return [Types::AccountAttributesMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AccountAttributesMessage#account_quotas #account_quotas} => Array&lt;Types::AccountQuota&gt;
    #
    #
    # @example Example: To list account attributes
    #
    #   # This example lists account attributes.
    #
    #   resp = client.describe_account_attributes({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Response structure
    #
    #   resp.account_quotas #=> Array
    #   resp.account_quotas[0].account_quota_name #=> String
    #   resp.account_quotas[0].used #=> Integer
    #   resp.account_quotas[0].max #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeAccountAttributes AWS API Documentation
    #
    # @overload describe_account_attributes(params = {})
    # @param [Hash] params ({})
    def describe_account_attributes(params = {}, options = {})
      req = build_request(:describe_account_attributes, params)
      req.send_request(options)
    end

    # Lists the set of CA certificates provided by Amazon RDS for this AWS
    # account.
    #
    # @option params [String] :certificate_identifier
    #   The user-supplied certificate identifier. If this parameter is
    #   specified, information for only the identified certificate is
    #   returned. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match an existing CertificateIdentifier.
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
    #   DescribeCertificates request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @return [Types::CertificateMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CertificateMessage#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #   * {Types::CertificateMessage#marker #marker} => String
    #
    #
    # @example Example: To list certificates
    #
    #   # This example lists up to 20 certificates for the specified certificate identifier.
    #
    #   resp = client.describe_certificates({
    #     certificate_identifier: "rds-ca-2015", 
    #     max_records: 20, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificates({
    #     certificate_identifier: "String",
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
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_identifier #=> String
    #   resp.certificates[0].certificate_type #=> String
    #   resp.certificates[0].thumbprint #=> String
    #   resp.certificates[0].valid_from #=> Time
    #   resp.certificates[0].valid_till #=> Time
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeCertificates AWS API Documentation
    #
    # @overload describe_certificates(params = {})
    # @param [Hash] params ({})
    def describe_certificates(params = {}, options = {})
      req = build_request(:describe_certificates, params)
      req.send_request(options)
    end

    # Returns information about backtracks for a DB cluster.
    #
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #
    # @option params [required, String] :db_cluster_identifier
    #   The DB cluster identifier of the DB cluster to be described. This
    #   parameter is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
    #
    # @option params [String] :backtrack_identifier
    #   If specified, this value is the backtrack identifier of the backtrack
    #   to be described.
    #
    #   Constraints:
    #
    #   * Must contain a valid universally unique identifier (UUID). For more
    #     information about UUIDs, see [A Universally Unique Identifier (UUID)
    #     URN Namespace][1].
    #
    #   ^
    #
    #   Example: `123e4567-e89b-12d3-a456-426655440000`
    #
    #
    #
    #   [1]: http://www.ietf.org/rfc/rfc4122.txt
    #
    # @option params [Array<Types::Filter>] :filters
    #   A filter that specifies one or more DB clusters to describe. Supported
    #   filters include the following:
    #
    #   * `db-cluster-backtrack-id` - Accepts backtrack identifiers. The
    #     results list includes information about only the backtracks
    #     identified by these identifiers.
    #
    #   * `db-cluster-backtrack-status` - Accepts any of the following
    #     backtrack status values:
    #
    #     * `applying`
    #
    #     * `completed`
    #
    #     * `failed`
    #
    #     * `pending`
    #
    #     The results list includes information about only the backtracks
    #     identified by these values. For more information about backtrack
    #     status values, see DBClusterBacktrack.
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
    #   DescribeDBClusterBacktracks request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @return [Types::DBClusterBacktrackMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterBacktrackMessage#marker #marker} => String
    #   * {Types::DBClusterBacktrackMessage#db_cluster_backtracks #db_cluster_backtracks} => Array&lt;Types::DBClusterBacktrack&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_backtracks({
    #     db_cluster_identifier: "String", # required
    #     backtrack_identifier: "String",
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
    #   resp.db_cluster_backtracks #=> Array
    #   resp.db_cluster_backtracks[0].db_cluster_identifier #=> String
    #   resp.db_cluster_backtracks[0].backtrack_identifier #=> String
    #   resp.db_cluster_backtracks[0].backtrack_to #=> Time
    #   resp.db_cluster_backtracks[0].backtracked_from #=> Time
    #   resp.db_cluster_backtracks[0].backtrack_request_creation_time #=> Time
    #   resp.db_cluster_backtracks[0].status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterBacktracks AWS API Documentation
    #
    # @overload describe_db_cluster_backtracks(params = {})
    # @param [Hash] params ({})
    def describe_db_cluster_backtracks(params = {}, options = {})
      req = build_request(:describe_db_cluster_backtracks, params)
      req.send_request(options)
    end

    # Returns a list of `DBClusterParameterGroup` descriptions. If a
    # `DBClusterParameterGroupName` parameter is specified, the list will
    # contain only the description of the specified DB cluster parameter
    # group.
    #
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #
    # @example Example: To list DB cluster parameter group settings
    #
    #   # This example lists settings for the specified DB cluster parameter group.
    #
    #   resp = client.describe_db_cluster_parameter_groups({
    #     db_cluster_parameter_group_name: "mydbclusterparametergroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterParameterGroups AWS API Documentation
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
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #
    # @example Example: To list DB cluster parameters
    #
    #   # This example lists system parameters for the specified DB cluster parameter group.
    #
    #   resp = client.describe_db_cluster_parameters({
    #     db_cluster_parameter_group_name: "mydbclusterparametergroup", 
    #     source: "system", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    #   resp.parameters[0].supported_engine_modes #=> Array
    #   resp.parameters[0].supported_engine_modes[0] #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterParameters AWS API Documentation
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
    #
    # @example Example: To list DB cluster snapshot attributes
    #
    #   # This example lists attributes for the specified DB cluster snapshot.
    #
    #   resp = client.describe_db_cluster_snapshot_attributes({
    #     db_cluster_snapshot_identifier: "mydbclustersnapshot", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster_snapshot_attributes_result: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterSnapshotAttributes AWS API Documentation
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
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #     automatically taken by Amazon RDS for my AWS account.
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
    #
    # @example Example: To list DB cluster snapshots
    #
    #   # This example lists settings for the specified, manually-created cluster snapshot.
    #
    #   resp = client.describe_db_cluster_snapshots({
    #     db_cluster_snapshot_identifier: "mydbclustersnapshot", 
    #     snapshot_type: "manual", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterSnapshots AWS API Documentation
    #
    # @overload describe_db_cluster_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_db_cluster_snapshots(params = {}, options = {})
      req = build_request(:describe_db_cluster_snapshots, params)
      req.send_request(options)
    end

    # Returns information about provisioned Aurora DB clusters. This API
    # supports pagination.
    #
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #
    # @example Example: To list DB clusters
    #
    #   # This example lists settings for the specified DB cluster.
    #
    #   resp = client.describe_db_clusters({
    #     db_cluster_identifier: "mynewdbcluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    #   resp.db_clusters[0].associated_roles[0].feature_name #=> String
    #   resp.db_clusters[0].iam_database_authentication_enabled #=> Boolean
    #   resp.db_clusters[0].clone_group_id #=> String
    #   resp.db_clusters[0].cluster_create_time #=> Time
    #   resp.db_clusters[0].earliest_backtrack_time #=> Time
    #   resp.db_clusters[0].backtrack_window #=> Integer
    #   resp.db_clusters[0].backtrack_consumed_change_records #=> Integer
    #   resp.db_clusters[0].enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_clusters[0].enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_clusters[0].capacity #=> Integer
    #   resp.db_clusters[0].engine_mode #=> String
    #   resp.db_clusters[0].scaling_configuration_info.min_capacity #=> Integer
    #   resp.db_clusters[0].scaling_configuration_info.max_capacity #=> Integer
    #   resp.db_clusters[0].scaling_configuration_info.auto_pause #=> Boolean
    #   resp.db_clusters[0].scaling_configuration_info.seconds_until_auto_pause #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusters AWS API Documentation
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
    #   This parameter is not currently supported.
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
    #
    # @example Example: To list DB engine version settings
    #
    #   # This example lists settings for the specified DB engine version.
    #
    #   resp = client.describe_db_engine_versions({
    #     db_parameter_group_family: "mysql5.6", 
    #     default_only: true, 
    #     engine: "mysql", 
    #     engine_version: "5.6", 
    #     list_supported_character_sets: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    #   resp.db_engine_versions[0].supported_engine_modes #=> Array
    #   resp.db_engine_versions[0].supported_engine_modes[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBEngineVersions AWS API Documentation
    #
    # @overload describe_db_engine_versions(params = {})
    # @param [Hash] params ({})
    def describe_db_engine_versions(params = {}, options = {})
      req = build_request(:describe_db_engine_versions, params)
      req.send_request(options)
    end

    # Returns information about provisioned RDS instances. This API supports
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
    #
    # @example Example: To list DB instance settings
    #
    #   # This example lists settings for the specified DB instance.
    #
    #   resp = client.describe_db_instances({
    #     db_instance_identifier: "mymysqlinstance", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    #   resp.db_instances[0].pending_modified_values.processor_features #=> Array
    #   resp.db_instances[0].pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instances[0].pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instances[0].performance_insights_retention_period #=> Integer
    #   resp.db_instances[0].enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instances[0].enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instances[0].processor_features #=> Array
    #   resp.db_instances[0].processor_features[0].name #=> String
    #   resp.db_instances[0].processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBInstances AWS API Documentation
    #
    # @overload describe_db_instances(params = {})
    # @param [Hash] params ({})
    def describe_db_instances(params = {}, options = {})
      req = build_request(:describe_db_instances, params)
      req.send_request(options)
    end

    # Returns a list of DB log files for the DB instance.
    #
    # @option params [required, String] :db_instance_identifier
    #   The customer-assigned name of the DB instance that contains the log
    #   files you want to list.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #
    # @option params [String] :filename_contains
    #   Filters the available log files for log file names that contain the
    #   specified string.
    #
    # @option params [Integer] :file_last_written
    #   Filters the available log files for files written since the specified
    #   date, in POSIX timestamp format with milliseconds.
    #
    # @option params [Integer] :file_size
    #   Filters the available log files for files larger than the specified
    #   size.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxRecords value, a pagination token
    #   called a marker is included in the response so that the remaining
    #   results can be retrieved.
    #
    # @option params [String] :marker
    #   The pagination token provided in the previous request. If this
    #   parameter is specified the response includes only records beyond the
    #   marker, up to MaxRecords.
    #
    # @return [Types::DescribeDBLogFilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDBLogFilesResponse#describe_db_log_files #describe_db_log_files} => Array&lt;Types::DescribeDBLogFilesDetails&gt;
    #   * {Types::DescribeDBLogFilesResponse#marker #marker} => String
    #
    #
    # @example Example: To list DB log file names
    #
    #   # This example lists matching log file names for the specified DB instance, file name pattern, last write date in POSIX
    #   # time with milleseconds, and minimum file size.
    #
    #   resp = client.describe_db_log_files({
    #     db_instance_identifier: "mymysqlinstance", 
    #     file_last_written: 1470873600000, 
    #     file_size: 0, 
    #     filename_contains: "error", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_log_files({
    #     db_instance_identifier: "String", # required
    #     filename_contains: "String",
    #     file_last_written: 1,
    #     file_size: 1,
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
    #   resp.describe_db_log_files #=> Array
    #   resp.describe_db_log_files[0].log_file_name #=> String
    #   resp.describe_db_log_files[0].last_written #=> Integer
    #   resp.describe_db_log_files[0].size #=> Integer
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBLogFiles AWS API Documentation
    #
    # @overload describe_db_log_files(params = {})
    # @param [Hash] params ({})
    def describe_db_log_files(params = {}, options = {})
      req = build_request(:describe_db_log_files, params)
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
    #
    # @example Example: To list information about DB parameter groups
    #
    #   # This example lists information about the specified DB parameter group.
    #
    #   resp = client.describe_db_parameter_groups({
    #     db_parameter_group_name: "mymysqlparametergroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBParameterGroups AWS API Documentation
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
    #
    # @example Example: To list information about DB parameters
    #
    #   # This example lists information for up to the first 20 system parameters for the specified DB parameter group.
    #
    #   resp = client.describe_db_parameters({
    #     db_parameter_group_name: "mymysqlparametergroup", 
    #     max_records: 20, 
    #     source: "system", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    #   resp.parameters[0].supported_engine_modes #=> Array
    #   resp.parameters[0].supported_engine_modes[0] #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBParameters AWS API Documentation
    #
    # @overload describe_db_parameters(params = {})
    # @param [Hash] params ({})
    def describe_db_parameters(params = {}, options = {})
      req = build_request(:describe_db_parameters, params)
      req.send_request(options)
    end

    # Returns a list of `DBSecurityGroup` descriptions. If a
    # `DBSecurityGroupName` is specified, the list will contain only the
    # descriptions of the specified DB security group.
    #
    # @option params [String] :db_security_group_name
    #   The name of the DB security group to return details for.
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
    #   `DescribeDBSecurityGroups` request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @return [Types::DBSecurityGroupMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBSecurityGroupMessage#marker #marker} => String
    #   * {Types::DBSecurityGroupMessage#db_security_groups #db_security_groups} => Array&lt;Types::DBSecurityGroup&gt;
    #
    #
    # @example Example: To list DB security group settings
    #
    #   # This example lists settings for the specified security group.
    #
    #   resp = client.describe_db_security_groups({
    #     db_security_group_name: "mydbsecuritygroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_security_groups({
    #     db_security_group_name: "String",
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
    #   resp.db_security_groups #=> Array
    #   resp.db_security_groups[0].owner_id #=> String
    #   resp.db_security_groups[0].db_security_group_name #=> String
    #   resp.db_security_groups[0].db_security_group_description #=> String
    #   resp.db_security_groups[0].vpc_id #=> String
    #   resp.db_security_groups[0].ec2_security_groups #=> Array
    #   resp.db_security_groups[0].ec2_security_groups[0].status #=> String
    #   resp.db_security_groups[0].ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.db_security_groups[0].ec2_security_groups[0].ec2_security_group_id #=> String
    #   resp.db_security_groups[0].ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.db_security_groups[0].ip_ranges #=> Array
    #   resp.db_security_groups[0].ip_ranges[0].status #=> String
    #   resp.db_security_groups[0].ip_ranges[0].cidrip #=> String
    #   resp.db_security_groups[0].db_security_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSecurityGroups AWS API Documentation
    #
    # @overload describe_db_security_groups(params = {})
    # @param [Hash] params ({})
    def describe_db_security_groups(params = {}, options = {})
      req = build_request(:describe_db_security_groups, params)
      req.send_request(options)
    end

    # Returns a list of DB snapshot attribute names and values for a manual
    # DB snapshot.
    #
    # When sharing snapshots with other AWS accounts,
    # `DescribeDBSnapshotAttributes` returns the `restore` attribute and a
    # list of IDs for the AWS accounts that are authorized to copy or
    # restore the manual DB snapshot. If `all` is included in the list of
    # values for the `restore` attribute, then the manual DB snapshot is
    # public and can be copied or restored by all AWS accounts.
    #
    # To add or remove access for an AWS account to copy or restore a manual
    # DB snapshot, or to make the manual DB snapshot public or private, use
    # the ModifyDBSnapshotAttribute API action.
    #
    # @option params [required, String] :db_snapshot_identifier
    #   The identifier for the DB snapshot to describe the attributes for.
    #
    # @return [Types::DescribeDBSnapshotAttributesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDBSnapshotAttributesResult#db_snapshot_attributes_result #db_snapshot_attributes_result} => Types::DBSnapshotAttributesResult
    #
    #
    # @example Example: To list DB snapshot attributes
    #
    #   # This example lists attributes for the specified DB snapshot.
    #
    #   resp = client.describe_db_snapshot_attributes({
    #     db_snapshot_identifier: "mydbsnapshot", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_snapshot_attributes_result: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_snapshot_attributes({
    #     db_snapshot_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_snapshot_attributes_result.db_snapshot_identifier #=> String
    #   resp.db_snapshot_attributes_result.db_snapshot_attributes #=> Array
    #   resp.db_snapshot_attributes_result.db_snapshot_attributes[0].attribute_name #=> String
    #   resp.db_snapshot_attributes_result.db_snapshot_attributes[0].attribute_values #=> Array
    #   resp.db_snapshot_attributes_result.db_snapshot_attributes[0].attribute_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSnapshotAttributes AWS API Documentation
    #
    # @overload describe_db_snapshot_attributes(params = {})
    # @param [Hash] params ({})
    def describe_db_snapshot_attributes(params = {}, options = {})
      req = build_request(:describe_db_snapshot_attributes, params)
      req.send_request(options)
    end

    # Returns information about DB snapshots. This API action supports
    # pagination.
    #
    # @option params [String] :db_instance_identifier
    #   The ID of the DB instance to retrieve the list of DB snapshots for.
    #   This parameter can't be used in conjunction with
    #   `DBSnapshotIdentifier`. This parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBInstance.
    #
    #   ^
    #
    # @option params [String] :db_snapshot_identifier
    #   A specific DB snapshot identifier to describe. This parameter can't
    #   be used in conjunction with `DBInstanceIdentifier`. This value is
    #   stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBSnapshot.
    #
    #   * If this identifier is for an automated snapshot, the `SnapshotType`
    #     parameter must also be specified.
    #
    # @option params [String] :snapshot_type
    #   The type of snapshots to be returned. You can specify one of the
    #   following values:
    #
    #   * `automated` - Return all DB snapshots that have been automatically
    #     taken by Amazon RDS for my AWS account.
    #
    #   * `manual` - Return all DB snapshots that have been taken by my AWS
    #     account.
    #
    #   * `shared` - Return all manual DB snapshots that have been shared to
    #     my AWS account.
    #
    #   * `public` - Return all DB snapshots that have been marked as public.
    #
    #   If you don't specify a `SnapshotType` value, then both automated and
    #   manual snapshots are returned. Shared and public DB snapshots are not
    #   included in the returned results by default. You can include shared
    #   snapshots with these results by setting the `IncludeShared` parameter
    #   to `true`. You can include public snapshots with these results by
    #   setting the `IncludePublic` parameter to `true`.
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
    #   `DescribeDBSnapshots` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @option params [Boolean] :include_shared
    #   True to include shared manual DB snapshots from other AWS accounts
    #   that this AWS account has been given permission to copy or restore,
    #   and otherwise false. The default is `false`.
    #
    #   You can give an AWS account permission to restore a manual DB snapshot
    #   from another AWS account by using the ModifyDBSnapshotAttribute API
    #   action.
    #
    # @option params [Boolean] :include_public
    #   True to include manual DB snapshots that are public and can be copied
    #   or restored by any AWS account, and otherwise false. The default is
    #   false.
    #
    #   You can share a manual DB snapshot as public by using the
    #   ModifyDBSnapshotAttribute API.
    #
    # @return [Types::DBSnapshotMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBSnapshotMessage#marker #marker} => String
    #   * {Types::DBSnapshotMessage#db_snapshots #db_snapshots} => Array&lt;Types::DBSnapshot&gt;
    #
    #
    # @example Example: To list DB snapshot attributes
    #
    #   # This example lists all manually-created, shared snapshots for the specified DB instance.
    #
    #   resp = client.describe_db_snapshots({
    #     db_instance_identifier: "mymysqlinstance", 
    #     include_public: false, 
    #     include_shared: true, 
    #     snapshot_type: "manual", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_snapshots({
    #     db_instance_identifier: "String",
    #     db_snapshot_identifier: "String",
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
    #   resp.db_snapshots #=> Array
    #   resp.db_snapshots[0].db_snapshot_identifier #=> String
    #   resp.db_snapshots[0].db_instance_identifier #=> String
    #   resp.db_snapshots[0].snapshot_create_time #=> Time
    #   resp.db_snapshots[0].engine #=> String
    #   resp.db_snapshots[0].allocated_storage #=> Integer
    #   resp.db_snapshots[0].status #=> String
    #   resp.db_snapshots[0].port #=> Integer
    #   resp.db_snapshots[0].availability_zone #=> String
    #   resp.db_snapshots[0].vpc_id #=> String
    #   resp.db_snapshots[0].instance_create_time #=> Time
    #   resp.db_snapshots[0].master_username #=> String
    #   resp.db_snapshots[0].engine_version #=> String
    #   resp.db_snapshots[0].license_model #=> String
    #   resp.db_snapshots[0].snapshot_type #=> String
    #   resp.db_snapshots[0].iops #=> Integer
    #   resp.db_snapshots[0].option_group_name #=> String
    #   resp.db_snapshots[0].percent_progress #=> Integer
    #   resp.db_snapshots[0].source_region #=> String
    #   resp.db_snapshots[0].source_db_snapshot_identifier #=> String
    #   resp.db_snapshots[0].storage_type #=> String
    #   resp.db_snapshots[0].tde_credential_arn #=> String
    #   resp.db_snapshots[0].encrypted #=> Boolean
    #   resp.db_snapshots[0].kms_key_id #=> String
    #   resp.db_snapshots[0].db_snapshot_arn #=> String
    #   resp.db_snapshots[0].timezone #=> String
    #   resp.db_snapshots[0].iam_database_authentication_enabled #=> Boolean
    #   resp.db_snapshots[0].processor_features #=> Array
    #   resp.db_snapshots[0].processor_features[0].name #=> String
    #   resp.db_snapshots[0].processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSnapshots AWS API Documentation
    #
    # @overload describe_db_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_db_snapshots(params = {}, options = {})
      req = build_request(:describe_db_snapshots, params)
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
    #
    # @example Example: To list information about DB subnet groups
    #
    #   # This example lists information about the specified DB subnet group.
    #
    #   resp = client.describe_db_subnet_groups({
    #     db_subnet_group_name: "mydbsubnetgroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSubnetGroups AWS API Documentation
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
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #
    # @example Example: To list default parameters for a DB cluster engine
    #
    #   # This example lists default parameters for the specified DB cluster engine.
    #
    #   resp = client.describe_engine_default_cluster_parameters({
    #     db_parameter_group_family: "aurora5.6", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     engine_defaults: {
    #     }, 
    #   }
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
    #   resp.engine_defaults.parameters[0].supported_engine_modes #=> Array
    #   resp.engine_defaults.parameters[0].supported_engine_modes[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEngineDefaultClusterParameters AWS API Documentation
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
    #   `DescribeEngineDefaultParameters` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEngineDefaultParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEngineDefaultParametersResult#engine_defaults #engine_defaults} => Types::EngineDefaults
    #
    #
    # @example Example: To list default parameters for a DB engine
    #
    #   # This example lists default parameters for the specified DB engine.
    #
    #   resp = client.describe_engine_default_parameters({
    #     db_parameter_group_family: "mysql5.6", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     engine_defaults: {
    #     }, 
    #   }
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
    #   resp.engine_defaults.parameters[0].supported_engine_modes #=> Array
    #   resp.engine_defaults.parameters[0].supported_engine_modes[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEngineDefaultParameters AWS API Documentation
    #
    # @overload describe_engine_default_parameters(params = {})
    # @param [Hash] params ({})
    def describe_engine_default_parameters(params = {}, options = {})
      req = build_request(:describe_engine_default_parameters, params)
      req.send_request(options)
    end

    # Displays a list of categories for all event source types, or, if
    # specified, for a specified source type. You can see a list of the
    # event categories and source types in the [ Events][1] topic in the
    # *Amazon RDS User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
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
    #
    # @example Example: To list event categories.
    #
    #   # This example lists all DB instance event categories.
    #
    #   resp = client.describe_event_categories({
    #     source_type: "db-instance", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEventCategories AWS API Documentation
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
    #   The name of the RDS event notification subscription you want to
    #   describe.
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
    #
    # @example Example: To list information about DB event notification subscriptions
    #
    #   # This example lists information for the specified DB event notification subscription.
    #
    #   resp = client.describe_event_subscriptions({
    #     subscription_name: "mymysqleventsubscription", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEventSubscriptions AWS API Documentation
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
    #
    # @example Example: To list information about events
    #
    #   # This example lists information for all backup-related events for the specified DB instance for the past 7 days (7 days *
    #   # 24 hours * 60 minutes = 10,080 minutes).
    #
    #   resp = client.describe_events({
    #     duration: 10080, 
    #     event_categories: [
    #       "backup", 
    #     ], 
    #     source_identifier: "mymysqlinstance", 
    #     source_type: "db-instance", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Describes all available options.
    #
    # @option params [required, String] :engine_name
    #   A required parameter. Options available for the given engine name are
    #   described.
    #
    # @option params [String] :major_engine_version
    #   If specified, filters the results to include only options for the
    #   specified major engine version.
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
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::OptionGroupOptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::OptionGroupOptionsMessage#option_group_options #option_group_options} => Array&lt;Types::OptionGroupOption&gt;
    #   * {Types::OptionGroupOptionsMessage#marker #marker} => String
    #
    #
    # @example Example: To list information about DB option group options
    #
    #   # This example lists information for all option group options for the specified DB engine.
    #
    #   resp = client.describe_option_group_options({
    #     engine_name: "mysql", 
    #     major_engine_version: "5.6", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_option_group_options({
    #     engine_name: "String", # required
    #     major_engine_version: "String",
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
    #   resp.option_group_options #=> Array
    #   resp.option_group_options[0].name #=> String
    #   resp.option_group_options[0].description #=> String
    #   resp.option_group_options[0].engine_name #=> String
    #   resp.option_group_options[0].major_engine_version #=> String
    #   resp.option_group_options[0].minimum_required_minor_engine_version #=> String
    #   resp.option_group_options[0].port_required #=> Boolean
    #   resp.option_group_options[0].default_port #=> Integer
    #   resp.option_group_options[0].options_depended_on #=> Array
    #   resp.option_group_options[0].options_depended_on[0] #=> String
    #   resp.option_group_options[0].options_conflicts_with #=> Array
    #   resp.option_group_options[0].options_conflicts_with[0] #=> String
    #   resp.option_group_options[0].persistent #=> Boolean
    #   resp.option_group_options[0].permanent #=> Boolean
    #   resp.option_group_options[0].requires_auto_minor_engine_version_upgrade #=> Boolean
    #   resp.option_group_options[0].vpc_only #=> Boolean
    #   resp.option_group_options[0].supports_option_version_downgrade #=> Boolean
    #   resp.option_group_options[0].option_group_option_settings #=> Array
    #   resp.option_group_options[0].option_group_option_settings[0].setting_name #=> String
    #   resp.option_group_options[0].option_group_option_settings[0].setting_description #=> String
    #   resp.option_group_options[0].option_group_option_settings[0].default_value #=> String
    #   resp.option_group_options[0].option_group_option_settings[0].apply_type #=> String
    #   resp.option_group_options[0].option_group_option_settings[0].allowed_values #=> String
    #   resp.option_group_options[0].option_group_option_settings[0].is_modifiable #=> Boolean
    #   resp.option_group_options[0].option_group_option_settings[0].is_required #=> Boolean
    #   resp.option_group_options[0].option_group_option_settings[0].minimum_engine_version_per_allowed_value #=> Array
    #   resp.option_group_options[0].option_group_option_settings[0].minimum_engine_version_per_allowed_value[0].allowed_value #=> String
    #   resp.option_group_options[0].option_group_option_settings[0].minimum_engine_version_per_allowed_value[0].minimum_engine_version #=> String
    #   resp.option_group_options[0].option_group_option_versions #=> Array
    #   resp.option_group_options[0].option_group_option_versions[0].version #=> String
    #   resp.option_group_options[0].option_group_option_versions[0].is_default #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeOptionGroupOptions AWS API Documentation
    #
    # @overload describe_option_group_options(params = {})
    # @param [Hash] params ({})
    def describe_option_group_options(params = {}, options = {})
      req = build_request(:describe_option_group_options, params)
      req.send_request(options)
    end

    # Describes the available option groups.
    #
    # @option params [String] :option_group_name
    #   The name of the option group to describe. Cannot be supplied together
    #   with EngineName or MajorEngineVersion.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   DescribeOptionGroups request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
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
    # @option params [String] :engine_name
    #   Filters the list of option groups to only include groups associated
    #   with a specific database engine.
    #
    # @option params [String] :major_engine_version
    #   Filters the list of option groups to only include groups associated
    #   with a specific database engine version. If specified, then EngineName
    #   must also be specified.
    #
    # @return [Types::OptionGroups] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::OptionGroups#option_groups_list #option_groups_list} => Array&lt;Types::OptionGroup&gt;
    #   * {Types::OptionGroups#marker #marker} => String
    #
    #
    # @example Example: To list information about DB option groups
    #
    #   # This example lists information for all option groups for the specified DB engine.
    #
    #   resp = client.describe_option_groups({
    #     engine_name: "mysql", 
    #     major_engine_version: "5.6", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_option_groups({
    #     option_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     marker: "String",
    #     max_records: 1,
    #     engine_name: "String",
    #     major_engine_version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.option_groups_list #=> Array
    #   resp.option_groups_list[0].option_group_name #=> String
    #   resp.option_groups_list[0].option_group_description #=> String
    #   resp.option_groups_list[0].engine_name #=> String
    #   resp.option_groups_list[0].major_engine_version #=> String
    #   resp.option_groups_list[0].options #=> Array
    #   resp.option_groups_list[0].options[0].option_name #=> String
    #   resp.option_groups_list[0].options[0].option_description #=> String
    #   resp.option_groups_list[0].options[0].persistent #=> Boolean
    #   resp.option_groups_list[0].options[0].permanent #=> Boolean
    #   resp.option_groups_list[0].options[0].port #=> Integer
    #   resp.option_groups_list[0].options[0].option_version #=> String
    #   resp.option_groups_list[0].options[0].option_settings #=> Array
    #   resp.option_groups_list[0].options[0].option_settings[0].name #=> String
    #   resp.option_groups_list[0].options[0].option_settings[0].value #=> String
    #   resp.option_groups_list[0].options[0].option_settings[0].default_value #=> String
    #   resp.option_groups_list[0].options[0].option_settings[0].description #=> String
    #   resp.option_groups_list[0].options[0].option_settings[0].apply_type #=> String
    #   resp.option_groups_list[0].options[0].option_settings[0].data_type #=> String
    #   resp.option_groups_list[0].options[0].option_settings[0].allowed_values #=> String
    #   resp.option_groups_list[0].options[0].option_settings[0].is_modifiable #=> Boolean
    #   resp.option_groups_list[0].options[0].option_settings[0].is_collection #=> Boolean
    #   resp.option_groups_list[0].options[0].db_security_group_memberships #=> Array
    #   resp.option_groups_list[0].options[0].db_security_group_memberships[0].db_security_group_name #=> String
    #   resp.option_groups_list[0].options[0].db_security_group_memberships[0].status #=> String
    #   resp.option_groups_list[0].options[0].vpc_security_group_memberships #=> Array
    #   resp.option_groups_list[0].options[0].vpc_security_group_memberships[0].vpc_security_group_id #=> String
    #   resp.option_groups_list[0].options[0].vpc_security_group_memberships[0].status #=> String
    #   resp.option_groups_list[0].allows_vpc_and_non_vpc_instance_memberships #=> Boolean
    #   resp.option_groups_list[0].vpc_id #=> String
    #   resp.option_groups_list[0].option_group_arn #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeOptionGroups AWS API Documentation
    #
    # @overload describe_option_groups(params = {})
    # @param [Hash] params ({})
    def describe_option_groups(params = {}, options = {})
      req = build_request(:describe_option_groups, params)
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
    #
    # @example Example: To list information about orderable DB instance options
    #
    #   # This example lists information for all orderable DB instance options for the specified DB engine, engine version, DB
    #   # instance class, license model, and VPC settings.
    #
    #   resp = client.describe_orderable_db_instance_options({
    #     db_instance_class: "db.t2.micro", 
    #     engine: "mysql", 
    #     engine_version: "5.6.27", 
    #     license_model: "general-public-license", 
    #     vpc: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    #   resp.orderable_db_instance_options[0].available_processor_features #=> Array
    #   resp.orderable_db_instance_options[0].available_processor_features[0].name #=> String
    #   resp.orderable_db_instance_options[0].available_processor_features[0].default_value #=> String
    #   resp.orderable_db_instance_options[0].available_processor_features[0].allowed_values #=> String
    #   resp.orderable_db_instance_options[0].supported_engine_modes #=> Array
    #   resp.orderable_db_instance_options[0].supported_engine_modes[0] #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeOrderableDBInstanceOptions AWS API Documentation
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
    #
    # @example Example: To list information about pending maintenance actions
    #
    #   # This example lists information for all pending maintenance actions for the specified DB instance.
    #
    #   resp = client.describe_pending_maintenance_actions({
    #     resource_identifier: "arn:aws:rds:us-east-1:992648334831:db:mymysqlinstance", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribePendingMaintenanceActions AWS API Documentation
    #
    # @overload describe_pending_maintenance_actions(params = {})
    # @param [Hash] params ({})
    def describe_pending_maintenance_actions(params = {}, options = {})
      req = build_request(:describe_pending_maintenance_actions, params)
      req.send_request(options)
    end

    # Returns information about reserved DB instances for this account, or
    # about a specified reserved DB instance.
    #
    # @option params [String] :reserved_db_instance_id
    #   The reserved DB instance identifier filter value. Specify this
    #   parameter to show only the reservation that matches the specified
    #   reservation ID.
    #
    # @option params [String] :reserved_db_instances_offering_id
    #   The offering identifier filter value. Specify this parameter to show
    #   only purchased reservations matching the specified offering
    #   identifier.
    #
    # @option params [String] :db_instance_class
    #   The DB instance class filter value. Specify this parameter to show
    #   only those reservations matching the specified DB instances class.
    #
    # @option params [String] :duration
    #   The duration filter value, specified in years or seconds. Specify this
    #   parameter to show only reservations for this duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    #
    # @option params [String] :product_description
    #   The product description filter value. Specify this parameter to show
    #   only those reservations matching the specified product description.
    #
    # @option params [String] :offering_type
    #   The offering type filter value. Specify this parameter to show only
    #   the available offerings matching the specified offering type.
    #
    #   Valid Values: `"Partial Upfront" | "All Upfront" | "No Upfront" `
    #
    # @option params [Boolean] :multi_az
    #   The Multi-AZ filter value. Specify this parameter to show only those
    #   reservations matching the specified Multi-AZ parameter.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
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
    # @return [Types::ReservedDBInstanceMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReservedDBInstanceMessage#marker #marker} => String
    #   * {Types::ReservedDBInstanceMessage#reserved_db_instances #reserved_db_instances} => Array&lt;Types::ReservedDBInstance&gt;
    #
    #
    # @example Example: To list information about reserved DB instances
    #
    #   # This example lists information for all reserved DB instances for the specified DB instance class, duration, product,
    #   # offering type, and availability zone settings.
    #
    #   resp = client.describe_reserved_db_instances({
    #     db_instance_class: "db.t2.micro", 
    #     duration: "1y", 
    #     multi_az: false, 
    #     offering_type: "No Upfront", 
    #     product_description: "mysql", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_db_instances({
    #     reserved_db_instance_id: "String",
    #     reserved_db_instances_offering_id: "String",
    #     db_instance_class: "String",
    #     duration: "String",
    #     product_description: "String",
    #     offering_type: "String",
    #     multi_az: false,
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
    #   resp.reserved_db_instances #=> Array
    #   resp.reserved_db_instances[0].reserved_db_instance_id #=> String
    #   resp.reserved_db_instances[0].reserved_db_instances_offering_id #=> String
    #   resp.reserved_db_instances[0].db_instance_class #=> String
    #   resp.reserved_db_instances[0].start_time #=> Time
    #   resp.reserved_db_instances[0].duration #=> Integer
    #   resp.reserved_db_instances[0].fixed_price #=> Float
    #   resp.reserved_db_instances[0].usage_price #=> Float
    #   resp.reserved_db_instances[0].currency_code #=> String
    #   resp.reserved_db_instances[0].db_instance_count #=> Integer
    #   resp.reserved_db_instances[0].product_description #=> String
    #   resp.reserved_db_instances[0].offering_type #=> String
    #   resp.reserved_db_instances[0].multi_az #=> Boolean
    #   resp.reserved_db_instances[0].state #=> String
    #   resp.reserved_db_instances[0].recurring_charges #=> Array
    #   resp.reserved_db_instances[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_db_instances[0].recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.reserved_db_instances[0].reserved_db_instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeReservedDBInstances AWS API Documentation
    #
    # @overload describe_reserved_db_instances(params = {})
    # @param [Hash] params ({})
    def describe_reserved_db_instances(params = {}, options = {})
      req = build_request(:describe_reserved_db_instances, params)
      req.send_request(options)
    end

    # Lists available reserved DB instance offerings.
    #
    # @option params [String] :reserved_db_instances_offering_id
    #   The offering identifier filter value. Specify this parameter to show
    #   only the available offering that matches the specified reservation
    #   identifier.
    #
    #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
    #
    # @option params [String] :db_instance_class
    #   The DB instance class filter value. Specify this parameter to show
    #   only the available offerings matching the specified DB instance class.
    #
    # @option params [String] :duration
    #   Duration filter value, specified in years or seconds. Specify this
    #   parameter to show only reservations for this duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    #
    # @option params [String] :product_description
    #   Product description filter value. Specify this parameter to show only
    #   the available offerings that contain the specified product
    #   description.
    #
    #   <note markdown="1"> The results show offerings that partially match the filter value.
    #
    #    </note>
    #
    # @option params [String] :offering_type
    #   The offering type filter value. Specify this parameter to show only
    #   the available offerings matching the specified offering type.
    #
    #   Valid Values: `"Partial Upfront" | "All Upfront" | "No Upfront" `
    #
    # @option params [Boolean] :multi_az
    #   The Multi-AZ filter value. Specify this parameter to show only the
    #   available offerings matching the specified Multi-AZ parameter.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
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
    # @return [Types::ReservedDBInstancesOfferingMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReservedDBInstancesOfferingMessage#marker #marker} => String
    #   * {Types::ReservedDBInstancesOfferingMessage#reserved_db_instances_offerings #reserved_db_instances_offerings} => Array&lt;Types::ReservedDBInstancesOffering&gt;
    #
    #
    # @example Example: To list information about reserved DB instance offerings
    #
    #   # This example lists information for all reserved DB instance offerings for the specified DB instance class, duration,
    #   # product, offering type, and availability zone settings.
    #
    #   resp = client.describe_reserved_db_instances_offerings({
    #     db_instance_class: "db.t2.micro", 
    #     duration: "1y", 
    #     multi_az: false, 
    #     offering_type: "No Upfront", 
    #     product_description: "mysql", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_db_instances_offerings({
    #     reserved_db_instances_offering_id: "String",
    #     db_instance_class: "String",
    #     duration: "String",
    #     product_description: "String",
    #     offering_type: "String",
    #     multi_az: false,
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
    #   resp.reserved_db_instances_offerings #=> Array
    #   resp.reserved_db_instances_offerings[0].reserved_db_instances_offering_id #=> String
    #   resp.reserved_db_instances_offerings[0].db_instance_class #=> String
    #   resp.reserved_db_instances_offerings[0].duration #=> Integer
    #   resp.reserved_db_instances_offerings[0].fixed_price #=> Float
    #   resp.reserved_db_instances_offerings[0].usage_price #=> Float
    #   resp.reserved_db_instances_offerings[0].currency_code #=> String
    #   resp.reserved_db_instances_offerings[0].product_description #=> String
    #   resp.reserved_db_instances_offerings[0].offering_type #=> String
    #   resp.reserved_db_instances_offerings[0].multi_az #=> Boolean
    #   resp.reserved_db_instances_offerings[0].recurring_charges #=> Array
    #   resp.reserved_db_instances_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_db_instances_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeReservedDBInstancesOfferings AWS API Documentation
    #
    # @overload describe_reserved_db_instances_offerings(params = {})
    # @param [Hash] params ({})
    def describe_reserved_db_instances_offerings(params = {}, options = {})
      req = build_request(:describe_reserved_db_instances_offerings, params)
      req.send_request(options)
    end

    # Returns a list of the source AWS Regions where the current AWS Region
    # can create a Read Replica or copy a DB snapshot from. This API action
    # supports pagination.
    #
    # @option params [String] :region_name
    #   The source AWS Region name. For example, `us-east-1`.
    #
    #   Constraints:
    #
    #   * Must specify a valid AWS Region name.
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
    #   An optional pagination token provided by a previous
    #   DescribeSourceRegions request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @return [Types::SourceRegionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceRegionMessage#marker #marker} => String
    #   * {Types::SourceRegionMessage#source_regions #source_regions} => Array&lt;Types::SourceRegion&gt;
    #
    #
    # @example Example: To describe source regions
    #
    #   # To list the AWS regions where a Read Replica can be created.
    #
    #   resp = client.describe_source_regions({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     source_regions: [
    #       {
    #         endpoint: "https://rds.ap-northeast-1.amazonaws.com", 
    #         region_name: "ap-northeast-1", 
    #         status: "available", 
    #       }, 
    #       {
    #         endpoint: "https://rds.ap-northeast-2.amazonaws.com", 
    #         region_name: "ap-northeast-2", 
    #         status: "available", 
    #       }, 
    #       {
    #         endpoint: "https://rds.ap-south-1.amazonaws.com", 
    #         region_name: "ap-south-1", 
    #         status: "available", 
    #       }, 
    #       {
    #         endpoint: "https://rds.ap-southeast-1.amazonaws.com", 
    #         region_name: "ap-southeast-1", 
    #         status: "available", 
    #       }, 
    #       {
    #         endpoint: "https://rds.ap-southeast-2.amazonaws.com", 
    #         region_name: "ap-southeast-2", 
    #         status: "available", 
    #       }, 
    #       {
    #         endpoint: "https://rds.eu-central-1.amazonaws.com", 
    #         region_name: "eu-central-1", 
    #         status: "available", 
    #       }, 
    #       {
    #         endpoint: "https://rds.eu-west-1.amazonaws.com", 
    #         region_name: "eu-west-1", 
    #         status: "available", 
    #       }, 
    #       {
    #         endpoint: "https://rds.sa-east-1.amazonaws.com", 
    #         region_name: "sa-east-1", 
    #         status: "available", 
    #       }, 
    #       {
    #         endpoint: "https://rds.us-west-1.amazonaws.com", 
    #         region_name: "us-west-1", 
    #         status: "available", 
    #       }, 
    #       {
    #         endpoint: "https://rds.us-west-2.amazonaws.com", 
    #         region_name: "us-west-2", 
    #         status: "available", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_source_regions({
    #     region_name: "String",
    #     max_records: 1,
    #     marker: "String",
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
    #   resp.marker #=> String
    #   resp.source_regions #=> Array
    #   resp.source_regions[0].region_name #=> String
    #   resp.source_regions[0].endpoint #=> String
    #   resp.source_regions[0].status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeSourceRegions AWS API Documentation
    #
    # @overload describe_source_regions(params = {})
    # @param [Hash] params ({})
    def describe_source_regions(params = {}, options = {})
      req = build_request(:describe_source_regions, params)
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
    #   resp.valid_db_instance_modifications_message.valid_processor_features #=> Array
    #   resp.valid_db_instance_modifications_message.valid_processor_features[0].name #=> String
    #   resp.valid_db_instance_modifications_message.valid_processor_features[0].default_value #=> String
    #   resp.valid_db_instance_modifications_message.valid_processor_features[0].allowed_values #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeValidDBInstanceModifications AWS API Documentation
    #
    # @overload describe_valid_db_instance_modifications(params = {})
    # @param [Hash] params ({})
    def describe_valid_db_instance_modifications(params = {}, options = {})
      req = build_request(:describe_valid_db_instance_modifications, params)
      req.send_request(options)
    end

    # Downloads all or a portion of the specified log file, up to 1 MB in
    # size.
    #
    # @option params [required, String] :db_instance_identifier
    #   The customer-assigned name of the DB instance that contains the log
    #   files you want to list.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #
    # @option params [required, String] :log_file_name
    #   The name of the log file to be downloaded.
    #
    # @option params [String] :marker
    #   The pagination token provided in the previous request or "0". If the
    #   Marker parameter is specified the response includes only records
    #   beyond the marker until the end of the file or up to NumberOfLines.
    #
    # @option params [Integer] :number_of_lines
    #   The number of lines to download. If the number of lines specified
    #   results in a file over 1 MB in size, the file is truncated at 1 MB in
    #   size.
    #
    #   If the NumberOfLines parameter is specified, then the block of lines
    #   returned can be from the beginning or the end of the log file,
    #   depending on the value of the Marker parameter.
    #
    #   * If neither Marker or NumberOfLines are specified, the entire log
    #     file is returned up to a maximum of 10000 lines, starting with the
    #     most recent log entries first.
    #
    #   * If NumberOfLines is specified and Marker is not specified, then the
    #     most recent lines from the end of the log file are returned.
    #
    #   * If Marker is specified as "0", then the specified number of lines
    #     from the beginning of the log file are returned.
    #
    #   * You can download the log file in blocks of lines by specifying the
    #     size of the block using the NumberOfLines parameter, and by
    #     specifying a value of "0" for the Marker parameter in your first
    #     request. Include the Marker value returned in the response as the
    #     Marker value for the next request, continuing until the
    #     AdditionalDataPending response element returns false.
    #
    # @return [Types::DownloadDBLogFilePortionDetails] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DownloadDBLogFilePortionDetails#log_file_data #log_file_data} => String
    #   * {Types::DownloadDBLogFilePortionDetails#marker #marker} => String
    #   * {Types::DownloadDBLogFilePortionDetails#additional_data_pending #additional_data_pending} => Boolean
    #
    #
    # @example Example: To list information about DB log files
    #
    #   # This example lists information for the specified log file for the specified DB instance.
    #
    #   resp = client.download_db_log_file_portion({
    #     db_instance_identifier: "mymysqlinstance", 
    #     log_file_name: "mysqlUpgrade", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.download_db_log_file_portion({
    #     db_instance_identifier: "String", # required
    #     log_file_name: "String", # required
    #     marker: "String",
    #     number_of_lines: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.log_file_data #=> String
    #   resp.marker #=> String
    #   resp.additional_data_pending #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DownloadDBLogFilePortion AWS API Documentation
    #
    # @overload download_db_log_file_portion(params = {})
    # @param [Hash] params ({})
    def download_db_log_file_portion(params = {}, options = {})
      req = build_request(:download_db_log_file_portion, params)
      req.send_request(options)
    end

    # Forces a failover for a DB cluster.
    #
    # A failover for a DB cluster promotes one of the Aurora Replicas
    # (read-only instances) in the DB cluster to be the primary instance
    # (the cluster writer).
    #
    # Amazon Aurora will automatically fail over to an Aurora Replica, if
    # one exists, when the primary instance fails. You can force a failover
    # when you want to simulate a failure of a primary instance for testing.
    # Because each instance in a DB cluster has its own endpoint address,
    # you will need to clean up and re-establish any existing connections
    # that use those endpoint addresses when the failover is complete.
    #
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #   You must specify the instance identifier for an Aurora Replica in the
    #   DB cluster. For example, `mydbcluster-replica1`.
    #
    # @return [Types::FailoverDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FailoverDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    #
    # @example Example: To perform a failover for a DB cluster
    #
    #   # This example performs a failover for the specified DB cluster to the specified DB instance.
    #
    #   resp = client.failover_db_cluster({
    #     db_cluster_identifier: "myaurorainstance-cluster", 
    #     target_db_instance_identifier: "myaurorareplica", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster: {
    #     }, 
    #   }
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
    #   resp.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.earliest_backtrack_time #=> Time
    #   resp.db_cluster.backtrack_window #=> Integer
    #   resp.db_cluster.backtrack_consumed_change_records #=> Integer
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.capacity #=> Integer
    #   resp.db_cluster.engine_mode #=> String
    #   resp.db_cluster.scaling_configuration_info.min_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.max_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.auto_pause #=> Boolean
    #   resp.db_cluster.scaling_configuration_info.seconds_until_auto_pause #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/FailoverDBCluster AWS API Documentation
    #
    # @overload failover_db_cluster(params = {})
    # @param [Hash] params ({})
    def failover_db_cluster(params = {}, options = {})
      req = build_request(:failover_db_cluster, params)
      req.send_request(options)
    end

    # Lists all tags on an Amazon RDS resource.
    #
    # For an overview on tagging an Amazon RDS resource, see [Tagging Amazon
    # RDS Resources][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html
    #
    # @option params [required, String] :resource_name
    #   The Amazon RDS resource with tags to be listed. This value is an
    #   Amazon Resource Name (ARN). For information about creating an ARN, see
    #   [ Constructing an ARN for Amazon RDS][1] in the *Amazon RDS User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @return [Types::TagListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagListMessage#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: To list information about tags associated with a resource
    #
    #   # This example lists information about all tags associated with the specified DB option group.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_name: "arn:aws:rds:us-east-1:992648334831:og:mymysqloptiongroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Set the capacity of an Aurora Serverless DB cluster to a specific
    # value.
    #
    # Aurora Serverless scales seamlessly based on the workload on the DB
    # cluster. In some cases, the capacity might not scale fast enough to
    # meet a sudden change in workload, such as a large number of new
    # transactions. Call `ModifyCurrentDBClusterCapacity` to set the
    # capacity explicitly.
    #
    # After this call sets the DB cluster capacity, Aurora Serverless can
    # automatically scale the DB cluster based on the cooldown period for
    # scaling up and the cooldown period for scaling down.
    #
    # For more information about Aurora Serverless, see [Using Amazon Aurora
    # Serverless][1] in the *Amazon Aurora User Guide*.
    #
    # If you call `ModifyCurrentDBClusterCapacity` with the default
    # `TimeoutAction`, connections that prevent Aurora Serverless from
    # finding a scaling point might be dropped. For more information about
    # scaling points, see [ Autoscaling for Aurora Serverless][2] in the
    # *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    # [2]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling
    #
    # @option params [required, String] :db_cluster_identifier
    #   The DB cluster identifier for the cluster being modified. This
    #   parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DB cluster.
    #
    #   ^
    #
    # @option params [Integer] :capacity
    #   The DB cluster capacity.
    #
    #   Constraints:
    #
    #   * Value must be `2`, `4`, `8`, `16`, `32`, `64`, `128`, or `256`.
    #
    #   ^
    #
    # @option params [Integer] :seconds_before_timeout
    #   The amount of time, in seconds, that Aurora Serverless tries to find a
    #   scaling point to perform seamless scaling before enforcing the timeout
    #   action. The default is 300.
    #
    #   * Value must be from 10 through 600.
    #
    #   ^
    #
    # @option params [String] :timeout_action
    #   The action to take when the timeout is reached, either
    #   `ForceApplyCapacityChange` or `RollbackCapacityChange`.
    #
    #   `ForceApplyCapacityChange`, the default, sets the capacity to the
    #   specified value as soon as possible.
    #
    #   `RollbackCapacityChange` ignores the capacity change if a scaling
    #   point is not found in the timeout period.
    #
    # @return [Types::DBClusterCapacityInfo] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterCapacityInfo#db_cluster_identifier #db_cluster_identifier} => String
    #   * {Types::DBClusterCapacityInfo#pending_capacity #pending_capacity} => Integer
    #   * {Types::DBClusterCapacityInfo#current_capacity #current_capacity} => Integer
    #   * {Types::DBClusterCapacityInfo#seconds_before_timeout #seconds_before_timeout} => Integer
    #   * {Types::DBClusterCapacityInfo#timeout_action #timeout_action} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_current_db_cluster_capacity({
    #     db_cluster_identifier: "String", # required
    #     capacity: 1,
    #     seconds_before_timeout: 1,
    #     timeout_action: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_identifier #=> String
    #   resp.pending_capacity #=> Integer
    #   resp.current_capacity #=> Integer
    #   resp.seconds_before_timeout #=> Integer
    #   resp.timeout_action #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyCurrentDBClusterCapacity AWS API Documentation
    #
    # @overload modify_current_db_cluster_capacity(params = {})
    # @param [Hash] params ({})
    def modify_current_db_cluster_capacity(params = {}, options = {})
      req = build_request(:modify_current_db_cluster_capacity, params)
      req.send_request(options)
    end

    # Modify a setting for an Amazon Aurora DB cluster. You can change one
    # or more database configuration parameters by specifying these
    # parameters and the new values in the request. For more information on
    # Amazon Aurora, see [ What Is Amazon Aurora?][1] in the *Amazon Aurora
    # User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #   `EnableIAMDatabaseAuthentication`, `MasterUserPassword`, and
    #   `NewDBClusterIdentifier` values. If you set the `ApplyImmediately`
    #   parameter value to false, then changes to the
    #   `EnableIAMDatabaseAuthentication`, `MasterUserPassword`, and
    #   `NewDBClusterIdentifier` values are applied during the next
    #   maintenance window. All other changes are applied immediately,
    #   regardless of the value of the `ApplyImmediately` parameter.
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
    #   block of time for each AWS Region. To see the time blocks available,
    #   see [ Adjusting the Preferred DB Cluster Maintenance Window][1] in the
    #   *Amazon Aurora User Guide.*
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
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
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
    #   DB Cluster Maintenance Window][1] in the *Amazon Aurora User Guide.*
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #
    # @option params [Integer] :backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking, set
    #   this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #
    # @option params [Types::CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to CloudWatch Logs for a specific DB cluster.
    #
    # @option params [String] :engine_version
    #   The version number of the database engine to which you want to
    #   upgrade. Changing this parameter results in an outage. The change is
    #   applied during the next maintenance window unless the ApplyImmediately
    #   parameter is set to true.
    #
    #   For a list of valid engine versions, see CreateDBCluster, or call
    #   DescribeDBEngineVersions.
    #
    # @option params [Types::ScalingConfiguration] :scaling_configuration
    #   The scaling properties of the DB cluster. You can only modify scaling
    #   properties for DB clusters in `serverless` DB engine mode.
    #
    # @return [Types::ModifyDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    #
    # @example Example: To change DB cluster settings
    #
    #   # This example changes the specified settings for the specified DB cluster.
    #
    #   resp = client.modify_db_cluster({
    #     apply_immediately: true, 
    #     db_cluster_identifier: "mydbcluster", 
    #     master_user_password: "mynewpassword", 
    #     new_db_cluster_identifier: "mynewdbcluster", 
    #     preferred_backup_window: "04:00-04:30", 
    #     preferred_maintenance_window: "Tue:05:00-Tue:05:30", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster: {
    #     }, 
    #   }
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
    #     backtrack_window: 1,
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: ["String"],
    #       disable_log_types: ["String"],
    #     },
    #     engine_version: "String",
    #     scaling_configuration: {
    #       min_capacity: 1,
    #       max_capacity: 1,
    #       auto_pause: false,
    #       seconds_until_auto_pause: 1,
    #     },
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
    #   resp.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.earliest_backtrack_time #=> Time
    #   resp.db_cluster.backtrack_window #=> Integer
    #   resp.db_cluster.backtrack_consumed_change_records #=> Integer
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.capacity #=> Integer
    #   resp.db_cluster.engine_mode #=> String
    #   resp.db_cluster.scaling_configuration_info.min_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.max_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.auto_pause #=> Boolean
    #   resp.db_cluster.scaling_configuration_info.seconds_until_auto_pause #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBCluster AWS API Documentation
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
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
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
    # Amazon RDS to fully complete the create action before the parameter
    # group is used as the default for a new DB cluster. This is especially
    # important for parameters that are critical when creating the default
    # database for a DB cluster, such as the character set for the default
    # database defined by the `character_set_database` parameter. You can
    # use the *Parameter Groups* option of the [Amazon RDS console][2] or
    # the DescribeDBClusterParameters command to verify that your DB cluster
    # parameter group has been created or modified.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    # [2]: https://console.aws.amazon.com/rds/
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
    #
    # @example Example: To change DB cluster parameter group settings
    #
    #   # This example immediately changes the specified setting for the specified DB cluster parameter group.
    #
    #   resp = client.modify_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "mydbclusterparametergroup", 
    #     parameters: [
    #       {
    #         apply_method: "immediate", 
    #         parameter_name: "time_zone", 
    #         parameter_value: "America/Phoenix", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    #         supported_engine_modes: ["String"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterParameterGroup AWS API Documentation
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
    #
    # @example Example: To add or remove access to a manual DB cluster snapshot
    #
    #   # The following example gives two AWS accounts access to a manual DB cluster snapshot and ensures that the DB cluster
    #   # snapshot is private by removing the value "all".
    #
    #   resp = client.modify_db_cluster_snapshot_attribute({
    #     attribute_name: "restore", 
    #     db_cluster_snapshot_identifier: "manual-cluster-snapshot1", 
    #     values_to_add: [
    #       "123451234512", 
    #       "123456789012", 
    #     ], 
    #     values_to_remove: [
    #       "all", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster_snapshot_attributes_result: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterSnapshotAttribute AWS API Documentation
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
    #   For MariaDB, MySQL, Oracle, and PostgreSQL, the value supplied must be
    #   at least 10% greater than the current value. Values that are not at
    #   least 10% greater than the existing value are rounded up so that they
    #   are 10% greater than the current value.
    #
    #   For the valid values for allocated storage for each engine, see
    #   CreateDBInstance.
    #
    # @option params [String] :db_instance_class
    #   The new compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB instance
    #   classes, and availability for your engine, see [DB Instance Class][1]
    #   in the *Amazon RDS User Guide.*
    #
    #   If you modify the DB instance class, an outage occurs during the
    #   change. The change is applied during the next maintenance window,
    #   unless `ApplyImmediately` is specified as `true` for this request.
    #
    #   Default: Uses existing setting
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #
    # @option params [String] :db_subnet_group_name
    #   The new DB subnet group for the DB instance. You can use this
    #   parameter to move your DB instance to a different VPC. If your DB
    #   instance is not in a VPC, you can also use this parameter to move your
    #   DB instance into a VPC. For more information, see [Updating the VPC
    #   for a DB Instance][1] in the *Amazon RDS User Guide.*
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
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC
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
    #   **Amazon Aurora**
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
    #   or the next failure reboot. Review the table of parameters in
    #   [Modifying a DB Instance and Using the Apply Immediately Parameter][1]
    #   in the *Amazon RDS User Guide.* to see the impact that setting
    #   `ApplyImmediately` to `true` or `false` has for each modified
    #   parameter and to determine when the changes are applied.
    #
    #   Default: `false`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html
    #
    # @option params [String] :master_user_password
    #   The new password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   Changing this parameter doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible. Between the time of the
    #   request and the completion of the request, the `MasterUserPassword`
    #   element exists in the `PendingModifiedValues` element of the operation
    #   response.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The password for the master user is managed by the DB
    #   cluster. For more information, see ModifyDBCluster.
    #
    #   Default: Uses existing setting
    #
    #   **MariaDB**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Microsoft SQL Server**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #
    #   **MySQL**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Oracle**
    #
    #   Constraints: Must contain from 8 to 30 characters.
    #
    #   **PostgreSQL**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #
    #   <note markdown="1"> Amazon RDS API actions never return the password, so this action
    #   provides a way to regain access to a primary instance user if the
    #   password is lost. This includes restoring privileges that might have
    #   been accidentally revoked.
    #
    #    </note>
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
    #   Changing this parameter can result in an outage if you change from 0
    #   to a non-zero value or from a non-zero value to 0. These changes are
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is set to `true` for this request. If you
    #   change the parameter from one non-zero value to another non-zero
    #   value, the change is asynchronously applied as soon as possible.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The retention period for automated backups is managed
    #   by the DB cluster. For more information, see ModifyDBCluster.
    #
    #   Default: Uses existing setting
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35
    #
    #   * Can be specified for a MySQL Read Replica only if the source is
    #     running MySQL 5.6
    #
    #   * Can be specified for a PostgreSQL Read Replica only if the source is
    #     running PostgreSQL 9.3.5
    #
    #   * Cannot be set to 0 if the DB instance is a source to Read Replicas
    #
    # @option params [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod` parameter. Changing this parameter doesn't
    #   result in an outage and the change is asynchronously applied as soon
    #   as possible.
    #
    #   **Amazon Aurora**
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
    #   For information about valid engine versions, see CreateDBInstance, or
    #   call DescribeDBEngineVersions.
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
    #   window, and a newer minor version is available, and RDS has enabled
    #   auto patching for that engine version.
    #
    # @option params [String] :license_model
    #   The license model for the DB instance.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #
    # @option params [Integer] :iops
    #   The new Provisioned IOPS (I/O operations per second) value for the RDS
    #   instance.
    #
    #   Changing this setting doesn't result in an outage and the change is
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is set to `true` for this request. If you
    #   are migrating from Provisioned IOPS to standard storage, set this
    #   value to 0. The DB instance will require a reboot for the change in
    #   storage type to take effect.
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
    #   backups for the instance are suspended. No other Amazon RDS operations
    #   can take place for the instance, including modifying the instance,
    #   rebooting the instance, deleting the instance, creating a Read Replica
    #   for the instance, and creating a DB snapshot of the instance.
    #
    #   Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL, the value
    #   supplied must be at least 10% greater than the current value. Values
    #   that are not at least 10% greater than the existing value are rounded
    #   up so that they are 10% greater than the current value.
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
    #   backups for the instance are suspended. No other Amazon RDS operations
    #   can take place for the instance, including modifying the instance,
    #   rebooting the instance, deleting the instance, creating a Read Replica
    #   for the instance, and creating a DB snapshot of the instance.
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
    #   The Active Directory Domain to move the instance to. Specify `none` to
    #   remove the instance from its current domain. The domain must be
    #   created prior to this operation. Currently only a Microsoft SQL Server
    #   instance can be created in a Active Directory Domain.
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
    #   **MySQL**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   **MariaDB**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   **PostgreSQL**
    #
    #   Default: `5432`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **Oracle**
    #
    #   Default: `1521`
    #
    #   Valid Values: `1150-65535`
    #
    #   **SQL Server**
    #
    #   Default: `1433`
    #
    #   Valid Values: `1150-65535` except for `1434`, `3389`, `47001`,
    #   `49152`, and `49152` through `49156`.
    #
    #   **Amazon Aurora**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    # @option params [Boolean] :publicly_accessible
    #   Boolean value that indicates if the DB instance has a publicly
    #   resolvable DNS name. Set to `True` to make the DB instance
    #   Internet-facing with a publicly resolvable DNS name, which resolves to
    #   a public IP address. Set to `False` to make the DB instance internal
    #   with a DNS name that resolves to a private IP address.
    #
    #   `PubliclyAccessible` only applies to DB instances in a VPC. The DB
    #   instance must be part of a public subnet and `PubliclyAccessible` must
    #   be true in order for it to be publicly accessible.
    #
    #   Changes to the `PubliclyAccessible` parameter are applied immediately
    #   regardless of the value of the `ApplyImmediately` parameter.
    #
    #   Default: false
    #
    # @option params [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced monitoring
    #   metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, go to [To create an IAM role for Amazon RDS
    #   Enhanced Monitoring][1] in the *Amazon RDS User Guide.*
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you must
    #   supply a `MonitoringRoleArn` value.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    #
    # @option params [String] :domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the Directory
    #   Service.
    #
    # @option params [Integer] :promotion_tier
    #   A value that specifies the order in which an Aurora Replica is
    #   promoted to the primary instance after a failure of the existing
    #   primary instance. For more information, see [ Fault Tolerance for an
    #   Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following database
    #   engines
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Mapping AWS IAM accounts to database accounts is
    #   managed by the DB cluster. For more information, see ModifyDBCluster.
    #
    #   **MySQL**
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    #
    # @option params [Boolean] :enable_performance_insights
    #   True to enable Performance Insights for the DB instance, and otherwise
    #   false.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #
    # @option params [String] :performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #
    # @option params [Integer] :performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #
    # @option params [Types::CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to CloudWatch Logs for a specific DB instance.
    #
    # @option params [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    #
    # @option params [Boolean] :use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    #
    # @return [Types::ModifyDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    #
    # @example Example: To change DB instance settings
    #
    #   # This example immediately changes the specified settings for the specified DB instance.
    #
    #   resp = client.modify_db_instance({
    #     allocated_storage: 10, 
    #     apply_immediately: true, 
    #     backup_retention_period: 1, 
    #     db_instance_class: "db.t2.small", 
    #     db_instance_identifier: "mymysqlinstance", 
    #     master_user_password: "mynewpassword", 
    #     preferred_backup_window: "04:00-04:30", 
    #     preferred_maintenance_window: "Tue:05:00-Tue:05:30", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_instance: {
    #     }, 
    #   }
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
    #     performance_insights_retention_period: 1,
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: ["String"],
    #       disable_log_types: ["String"],
    #     },
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     use_default_processor_features: false,
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
    #   resp.db_instance.pending_modified_values.processor_features #=> Array
    #   resp.db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instance.pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instance.performance_insights_retention_period #=> Integer
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.processor_features #=> Array
    #   resp.db_instance.processor_features[0].name #=> String
    #   resp.db_instance.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBInstance AWS API Documentation
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
    # parameter group as the default parameter group. This allows Amazon RDS
    # to fully complete the modify action before the parameter group is used
    # as the default for a new DB instance. This is especially important for
    # parameters that are critical when creating the default database for a
    # DB instance, such as the character set for the default database
    # defined by the `character_set_database` parameter. You can use the
    # *Parameter Groups* option of the [Amazon RDS console][1] or the
    # *DescribeDBParameters* command to verify that your DB parameter group
    # has been created or modified.
    #
    #
    #
    # [1]: https://console.aws.amazon.com/rds/
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
    #
    # @example Example: To change DB parameter group settings
    #
    #   # This example immediately changes the specified setting for the specified DB parameter group.
    #
    #   resp = client.modify_db_parameter_group({
    #     db_parameter_group_name: "mymysqlparametergroup", 
    #     parameters: [
    #       {
    #         apply_method: "immediate", 
    #         parameter_name: "time_zone", 
    #         parameter_value: "America/Phoenix", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    #         supported_engine_modes: ["String"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBParameterGroup AWS API Documentation
    #
    # @overload modify_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def modify_db_parameter_group(params = {}, options = {})
      req = build_request(:modify_db_parameter_group, params)
      req.send_request(options)
    end

    # Updates a manual DB snapshot, which can be encrypted or not encrypted,
    # with a new engine version.
    #
    # Amazon RDS supports upgrading DB snapshots for MySQL and Oracle.
    #
    # @option params [required, String] :db_snapshot_identifier
    #   The identifier of the DB snapshot to modify.
    #
    # @option params [String] :engine_version
    #   The engine version to upgrade the DB snapshot to.
    #
    #   The following are the database engines and engine versions that are
    #   available when you upgrade a DB snapshot.
    #
    #   **MySQL**
    #
    #   * `5.5.46` (supported for 5.1 DB snapshots)
    #
    #   ^
    #
    #   **Oracle**
    #
    #   * `12.1.0.2.v8` (supported for 12.1.0.1 DB snapshots)
    #
    #   * `11.2.0.4.v12` (supported for 11.2.0.2 DB snapshots)
    #
    #   * `11.2.0.4.v11` (supported for 11.2.0.3 DB snapshots)
    #
    # @option params [String] :option_group_name
    #   The option group to identify with the upgraded DB snapshot.
    #
    #   You can specify this parameter when you upgrade an Oracle DB snapshot.
    #   The same option group considerations apply when upgrading a DB
    #   snapshot as when upgrading a DB instance. For more information, see
    #   [Option Group Considerations][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Oracle.html#USER_UpgradeDBInstance.Oracle.OGPG.OG
    #
    # @return [Types::ModifyDBSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBSnapshotResult#db_snapshot #db_snapshot} => Types::DBSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_snapshot({
    #     db_snapshot_identifier: "String", # required
    #     engine_version: "String",
    #     option_group_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_snapshot.db_snapshot_identifier #=> String
    #   resp.db_snapshot.db_instance_identifier #=> String
    #   resp.db_snapshot.snapshot_create_time #=> Time
    #   resp.db_snapshot.engine #=> String
    #   resp.db_snapshot.allocated_storage #=> Integer
    #   resp.db_snapshot.status #=> String
    #   resp.db_snapshot.port #=> Integer
    #   resp.db_snapshot.availability_zone #=> String
    #   resp.db_snapshot.vpc_id #=> String
    #   resp.db_snapshot.instance_create_time #=> Time
    #   resp.db_snapshot.master_username #=> String
    #   resp.db_snapshot.engine_version #=> String
    #   resp.db_snapshot.license_model #=> String
    #   resp.db_snapshot.snapshot_type #=> String
    #   resp.db_snapshot.iops #=> Integer
    #   resp.db_snapshot.option_group_name #=> String
    #   resp.db_snapshot.percent_progress #=> Integer
    #   resp.db_snapshot.source_region #=> String
    #   resp.db_snapshot.source_db_snapshot_identifier #=> String
    #   resp.db_snapshot.storage_type #=> String
    #   resp.db_snapshot.tde_credential_arn #=> String
    #   resp.db_snapshot.encrypted #=> Boolean
    #   resp.db_snapshot.kms_key_id #=> String
    #   resp.db_snapshot.db_snapshot_arn #=> String
    #   resp.db_snapshot.timezone #=> String
    #   resp.db_snapshot.iam_database_authentication_enabled #=> Boolean
    #   resp.db_snapshot.processor_features #=> Array
    #   resp.db_snapshot.processor_features[0].name #=> String
    #   resp.db_snapshot.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSnapshot AWS API Documentation
    #
    # @overload modify_db_snapshot(params = {})
    # @param [Hash] params ({})
    def modify_db_snapshot(params = {}, options = {})
      req = build_request(:modify_db_snapshot, params)
      req.send_request(options)
    end

    # Adds an attribute and values to, or removes an attribute and values
    # from, a manual DB snapshot.
    #
    # To share a manual DB snapshot with other AWS accounts, specify
    # `restore` as the `AttributeName` and use the `ValuesToAdd` parameter
    # to add a list of IDs of the AWS accounts that are authorized to
    # restore the manual DB snapshot. Uses the value `all` to make the
    # manual DB snapshot public, which means it can be copied or restored by
    # all AWS accounts. Do not add the `all` value for any manual DB
    # snapshots that contain private information that you don't want
    # available to all AWS accounts. If the manual DB snapshot is encrypted,
    # it can be shared, but only by specifying a list of authorized AWS
    # account IDs for the `ValuesToAdd` parameter. You can't use `all` as a
    # value for that parameter in this case.
    #
    # To view which AWS accounts have access to copy or restore a manual DB
    # snapshot, or whether a manual DB snapshot public or private, use the
    # DescribeDBSnapshotAttributes API action.
    #
    # @option params [required, String] :db_snapshot_identifier
    #   The identifier for the DB snapshot to modify the attributes for.
    #
    # @option params [required, String] :attribute_name
    #   The name of the DB snapshot attribute to modify.
    #
    #   To manage authorization for other AWS accounts to copy or restore a
    #   manual DB snapshot, set this value to `restore`.
    #
    # @option params [Array<String>] :values_to_add
    #   A list of DB snapshot attributes to add to the attribute specified by
    #   `AttributeName`.
    #
    #   To authorize other AWS accounts to copy or restore a manual snapshot,
    #   set this list to include one or more AWS account IDs, or `all` to make
    #   the manual DB snapshot restorable by any AWS account. Do not add the
    #   `all` value for any manual DB snapshots that contain private
    #   information that you don't want available to all AWS accounts.
    #
    # @option params [Array<String>] :values_to_remove
    #   A list of DB snapshot attributes to remove from the attribute
    #   specified by `AttributeName`.
    #
    #   To remove authorization for other AWS accounts to copy or restore a
    #   manual snapshot, set this list to include one or more AWS account
    #   identifiers, or `all` to remove authorization for any AWS account to
    #   copy or restore the DB snapshot. If you specify `all`, an AWS account
    #   whose account ID is explicitly added to the `restore` attribute can
    #   still copy or restore the manual DB snapshot.
    #
    # @return [Types::ModifyDBSnapshotAttributeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBSnapshotAttributeResult#db_snapshot_attributes_result #db_snapshot_attributes_result} => Types::DBSnapshotAttributesResult
    #
    #
    # @example Example: To change DB snapshot attributes
    #
    #   # This example adds the specified attribute for the specified DB snapshot.
    #
    #   resp = client.modify_db_snapshot_attribute({
    #     attribute_name: "restore", 
    #     db_snapshot_identifier: "mydbsnapshot", 
    #     values_to_add: [
    #       "all", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_snapshot_attributes_result: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_snapshot_attribute({
    #     db_snapshot_identifier: "String", # required
    #     attribute_name: "String", # required
    #     values_to_add: ["String"],
    #     values_to_remove: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_snapshot_attributes_result.db_snapshot_identifier #=> String
    #   resp.db_snapshot_attributes_result.db_snapshot_attributes #=> Array
    #   resp.db_snapshot_attributes_result.db_snapshot_attributes[0].attribute_name #=> String
    #   resp.db_snapshot_attributes_result.db_snapshot_attributes[0].attribute_values #=> Array
    #   resp.db_snapshot_attributes_result.db_snapshot_attributes[0].attribute_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSnapshotAttribute AWS API Documentation
    #
    # @overload modify_db_snapshot_attribute(params = {})
    # @param [Hash] params ({})
    def modify_db_snapshot_attribute(params = {}, options = {})
      req = build_request(:modify_db_snapshot_attribute, params)
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
    #
    # @example Example: To change DB subnet group settings
    #
    #   # This example changes the specified setting for the specified DB subnet group.
    #
    #   resp = client.modify_db_subnet_group({
    #     db_subnet_group_name: "mydbsubnetgroup", 
    #     subnet_ids: [
    #       "subnet-70e1975a", 
    #       "subnet-747a5c49", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_subnet_group: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSubnetGroup AWS API Documentation
    #
    # @overload modify_db_subnet_group(params = {})
    # @param [Hash] params ({})
    def modify_db_subnet_group(params = {}, options = {})
      req = build_request(:modify_db_subnet_group, params)
      req.send_request(options)
    end

    # Modifies an existing RDS event notification subscription. Note that
    # you can't modify the source identifiers using this call; to change
    # source identifiers for a subscription, use the
    # AddSourceIdentifierToSubscription and
    # RemoveSourceIdentifierFromSubscription calls.
    #
    # You can see a list of the event categories for a given SourceType in
    # the [Events][1] topic in the *Amazon RDS User Guide* or by using the
    # **DescribeEventCategories** action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
    #
    # @option params [required, String] :subscription_name
    #   The name of the RDS event notification subscription.
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
    #   to. You can see a list of the categories for a given SourceType in the
    #   [Events][1] topic in the *Amazon RDS User Guide* or by using the
    #   **DescribeEventCategories** action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
    #
    # @option params [Boolean] :enabled
    #   A Boolean value; set to **true** to activate the subscription.
    #
    # @return [Types::ModifyEventSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyEventSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    #
    # @example Example: To change event notification subscription settings
    #
    #   # This example changes the specified setting for the specified event notification subscription.
    #
    #   resp = client.modify_event_subscription({
    #     enabled: true, 
    #     event_categories: [
    #       "deletion", 
    #       "low storage", 
    #     ], 
    #     source_type: "db-instance", 
    #     subscription_name: "mymysqleventsubscription", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_subscription: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyEventSubscription AWS API Documentation
    #
    # @overload modify_event_subscription(params = {})
    # @param [Hash] params ({})
    def modify_event_subscription(params = {}, options = {})
      req = build_request(:modify_event_subscription, params)
      req.send_request(options)
    end

    # Modifies an existing option group.
    #
    # @option params [required, String] :option_group_name
    #   The name of the option group to be modified.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance once it is associated with a DB
    #   instance
    #
    # @option params [Array<Types::OptionConfiguration>] :options_to_include
    #   Options in this list are added to the option group or, if already
    #   present, the specified configuration is used to update the existing
    #   configuration.
    #
    # @option params [Array<String>] :options_to_remove
    #   Options in this list are removed from the option group.
    #
    # @option params [Boolean] :apply_immediately
    #   Indicates whether the changes should be applied immediately, or during
    #   the next maintenance window for each instance associated with the
    #   option group.
    #
    # @return [Types::ModifyOptionGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyOptionGroupResult#option_group #option_group} => Types::OptionGroup
    #
    #
    # @example Example: To modify an option group
    #
    #   # The following example adds an option to an option group.
    #
    #   resp = client.modify_option_group({
    #     apply_immediately: true, 
    #     option_group_name: "myawsuser-og02", 
    #     options_to_include: [
    #       {
    #         db_security_group_memberships: [
    #           "default", 
    #         ], 
    #         option_name: "MEMCACHED", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     option_group: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_option_group({
    #     option_group_name: "String", # required
    #     options_to_include: [
    #       {
    #         option_name: "String", # required
    #         port: 1,
    #         option_version: "String",
    #         db_security_group_memberships: ["String"],
    #         vpc_security_group_memberships: ["String"],
    #         option_settings: [
    #           {
    #             name: "String",
    #             value: "String",
    #             default_value: "String",
    #             description: "String",
    #             apply_type: "String",
    #             data_type: "String",
    #             allowed_values: "String",
    #             is_modifiable: false,
    #             is_collection: false,
    #           },
    #         ],
    #       },
    #     ],
    #     options_to_remove: ["String"],
    #     apply_immediately: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.option_group.option_group_name #=> String
    #   resp.option_group.option_group_description #=> String
    #   resp.option_group.engine_name #=> String
    #   resp.option_group.major_engine_version #=> String
    #   resp.option_group.options #=> Array
    #   resp.option_group.options[0].option_name #=> String
    #   resp.option_group.options[0].option_description #=> String
    #   resp.option_group.options[0].persistent #=> Boolean
    #   resp.option_group.options[0].permanent #=> Boolean
    #   resp.option_group.options[0].port #=> Integer
    #   resp.option_group.options[0].option_version #=> String
    #   resp.option_group.options[0].option_settings #=> Array
    #   resp.option_group.options[0].option_settings[0].name #=> String
    #   resp.option_group.options[0].option_settings[0].value #=> String
    #   resp.option_group.options[0].option_settings[0].default_value #=> String
    #   resp.option_group.options[0].option_settings[0].description #=> String
    #   resp.option_group.options[0].option_settings[0].apply_type #=> String
    #   resp.option_group.options[0].option_settings[0].data_type #=> String
    #   resp.option_group.options[0].option_settings[0].allowed_values #=> String
    #   resp.option_group.options[0].option_settings[0].is_modifiable #=> Boolean
    #   resp.option_group.options[0].option_settings[0].is_collection #=> Boolean
    #   resp.option_group.options[0].db_security_group_memberships #=> Array
    #   resp.option_group.options[0].db_security_group_memberships[0].db_security_group_name #=> String
    #   resp.option_group.options[0].db_security_group_memberships[0].status #=> String
    #   resp.option_group.options[0].vpc_security_group_memberships #=> Array
    #   resp.option_group.options[0].vpc_security_group_memberships[0].vpc_security_group_id #=> String
    #   resp.option_group.options[0].vpc_security_group_memberships[0].status #=> String
    #   resp.option_group.allows_vpc_and_non_vpc_instance_memberships #=> Boolean
    #   resp.option_group.vpc_id #=> String
    #   resp.option_group.option_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyOptionGroup AWS API Documentation
    #
    # @overload modify_option_group(params = {})
    # @param [Hash] params ({})
    def modify_option_group(params = {}, options = {})
      req = build_request(:modify_option_group, params)
      req.send_request(options)
    end

    # Promotes a Read Replica DB instance to a standalone DB instance.
    #
    # <note markdown="1"> * Backup duration is a function of the amount of changes to the
    #   database since the previous backup. If you plan to promote a Read
    #   Replica to a standalone instance, we recommend that you enable
    #   backups and complete at least one backup prior to promotion. In
    #   addition, a Read Replica cannot be promoted to a standalone instance
    #   when it is in the `backing-up` status. If you have enabled backups
    #   on your Read Replica, configure the automated backup window so that
    #   daily backups do not interfere with Read Replica promotion.
    #
    # * This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.
    #
    #  </note>
    #
    # @option params [required, String] :db_instance_identifier
    #   The DB instance identifier. This value is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing Read Replica DB instance.
    #
    #   ^
    #
    #   Example: `mydbinstance`
    #
    # @option params [Integer] :backup_retention_period
    #   The number of days to retain automated backups. Setting this parameter
    #   to a positive number enables backups. Setting this parameter to 0
    #   disables automated backups.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 8
    #
    #   ^
    #
    # @option params [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. To see the time blocks available,
    #   see [ Adjusting the Preferred Maintenance Window][1] in the *Amazon
    #   RDS User Guide.*
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
    # @return [Types::PromoteReadReplicaResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PromoteReadReplicaResult#db_instance #db_instance} => Types::DBInstance
    #
    #
    # @example Example: To promote a read replica
    #
    #   # This example promotes the specified read replica and sets its backup retention period and preferred backup window.
    #
    #   resp = client.promote_read_replica({
    #     backup_retention_period: 1, 
    #     db_instance_identifier: "mydbreadreplica", 
    #     preferred_backup_window: "03:30-04:00", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_instance: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.promote_read_replica({
    #     db_instance_identifier: "String", # required
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
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
    #   resp.db_instance.pending_modified_values.processor_features #=> Array
    #   resp.db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instance.pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instance.performance_insights_retention_period #=> Integer
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.processor_features #=> Array
    #   resp.db_instance.processor_features[0].name #=> String
    #   resp.db_instance.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PromoteReadReplica AWS API Documentation
    #
    # @overload promote_read_replica(params = {})
    # @param [Hash] params ({})
    def promote_read_replica(params = {}, options = {})
      req = build_request(:promote_read_replica, params)
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
    #   resp.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.earliest_backtrack_time #=> Time
    #   resp.db_cluster.backtrack_window #=> Integer
    #   resp.db_cluster.backtrack_consumed_change_records #=> Integer
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.capacity #=> Integer
    #   resp.db_cluster.engine_mode #=> String
    #   resp.db_cluster.scaling_configuration_info.min_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.max_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.auto_pause #=> Boolean
    #   resp.db_cluster.scaling_configuration_info.seconds_until_auto_pause #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PromoteReadReplicaDBCluster AWS API Documentation
    #
    # @overload promote_read_replica_db_cluster(params = {})
    # @param [Hash] params ({})
    def promote_read_replica_db_cluster(params = {}, options = {})
      req = build_request(:promote_read_replica_db_cluster, params)
      req.send_request(options)
    end

    # Purchases a reserved DB instance offering.
    #
    # @option params [required, String] :reserved_db_instances_offering_id
    #   The ID of the Reserved DB instance offering to purchase.
    #
    #   Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706
    #
    # @option params [String] :reserved_db_instance_id
    #   Customer-specified identifier to track this reservation.
    #
    #   Example: myreservationID
    #
    # @option params [Integer] :db_instance_count
    #   The number of instances to reserve.
    #
    #   Default: `1`
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @return [Types::PurchaseReservedDBInstancesOfferingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseReservedDBInstancesOfferingResult#reserved_db_instance #reserved_db_instance} => Types::ReservedDBInstance
    #
    #
    # @example Example: To purchase a reserved DB instance offering
    #
    #   # This example purchases a reserved DB instance offering that matches the specified settings.
    #
    #   resp = client.purchase_reserved_db_instances_offering({
    #     reserved_db_instance_id: "myreservationid", 
    #     reserved_db_instances_offering_id: "fb29428a-646d-4390-850e-5fe89926e727", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     reserved_db_instance: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_db_instances_offering({
    #     reserved_db_instances_offering_id: "String", # required
    #     reserved_db_instance_id: "String",
    #     db_instance_count: 1,
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
    #   resp.reserved_db_instance.reserved_db_instance_id #=> String
    #   resp.reserved_db_instance.reserved_db_instances_offering_id #=> String
    #   resp.reserved_db_instance.db_instance_class #=> String
    #   resp.reserved_db_instance.start_time #=> Time
    #   resp.reserved_db_instance.duration #=> Integer
    #   resp.reserved_db_instance.fixed_price #=> Float
    #   resp.reserved_db_instance.usage_price #=> Float
    #   resp.reserved_db_instance.currency_code #=> String
    #   resp.reserved_db_instance.db_instance_count #=> Integer
    #   resp.reserved_db_instance.product_description #=> String
    #   resp.reserved_db_instance.offering_type #=> String
    #   resp.reserved_db_instance.multi_az #=> Boolean
    #   resp.reserved_db_instance.state #=> String
    #   resp.reserved_db_instance.recurring_charges #=> Array
    #   resp.reserved_db_instance.recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_db_instance.recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.reserved_db_instance.reserved_db_instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PurchaseReservedDBInstancesOffering AWS API Documentation
    #
    # @overload purchase_reserved_db_instances_offering(params = {})
    # @param [Hash] params ({})
    def purchase_reserved_db_instances_offering(params = {}, options = {})
      req = build_request(:purchase_reserved_db_instances_offering, params)
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
    # For more information about rebooting, see [Rebooting a DB Instance][1]
    # in the *Amazon RDS User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html
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
    #
    # @example Example: To reboot a DB instance
    #
    #   # This example reboots the specified DB instance without forcing a failover.
    #
    #   resp = client.reboot_db_instance({
    #     db_instance_identifier: "mymysqlinstance", 
    #     force_failover: false, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_instance: {
    #     }, 
    #   }
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
    #   resp.db_instance.pending_modified_values.processor_features #=> Array
    #   resp.db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instance.pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instance.performance_insights_retention_period #=> Integer
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.processor_features #=> Array
    #   resp.db_instance.processor_features[0].name #=> String
    #   resp.db_instance.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RebootDBInstance AWS API Documentation
    #
    # @overload reboot_db_instance(params = {})
    # @param [Hash] params ({})
    def reboot_db_instance(params = {}, options = {})
      req = build_request(:reboot_db_instance, params)
      req.send_request(options)
    end

    # Disassociates an Identity and Access Management (IAM) role from an
    # Aurora DB cluster. For more information, see [Authorizing Amazon
    # Aurora MySQL to Access Other AWS Services on Your Behalf ][1] in the
    # *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html
    #
    # @option params [required, String] :db_cluster_identifier
    #   The name of the DB cluster to disassociate the IAM role from.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to disassociate from
    #   the Aurora DB cluster, for example
    #   `arn:aws:iam::123456789012:role/AuroraAccessRole`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveRoleFromDBCluster AWS API Documentation
    #
    # @overload remove_role_from_db_cluster(params = {})
    # @param [Hash] params ({})
    def remove_role_from_db_cluster(params = {}, options = {})
      req = build_request(:remove_role_from_db_cluster, params)
      req.send_request(options)
    end

    # Removes a source identifier from an existing RDS event notification
    # subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to remove
    #   a source identifier from.
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
    #
    # @example Example: To remove a source identifier from a DB event subscription
    #
    #   # This example removes the specified source identifier from the specified DB event subscription.
    #
    #   resp = client.remove_source_identifier_from_subscription({
    #     source_identifier: "mymysqlinstance", 
    #     subscription_name: "myeventsubscription", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     event_subscription: {
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveSourceIdentifierFromSubscription AWS API Documentation
    #
    # @overload remove_source_identifier_from_subscription(params = {})
    # @param [Hash] params ({})
    def remove_source_identifier_from_subscription(params = {}, options = {})
      req = build_request(:remove_source_identifier_from_subscription, params)
      req.send_request(options)
    end

    # Removes metadata tags from an Amazon RDS resource.
    #
    # For an overview on tagging an Amazon RDS resource, see [Tagging Amazon
    # RDS Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html
    #
    # @option params [required, String] :resource_name
    #   The Amazon RDS resource that the tags are removed from. This value is
    #   an Amazon Resource Name (ARN). For information about creating an ARN,
    #   see [ Constructing an ARN for Amazon RDS][1] in the *Amazon RDS User
    #   Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key (name) of the tag to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove tags from a resource
    #
    #   # This example removes the specified tag associated with the specified DB option group.
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_name: "arn:aws:rds:us-east-1:992648334831:og:mydboptiongroup", 
    #     tag_keys: [
    #       "MyKey", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_name: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveTagsFromResource AWS API Documentation
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
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #
    # @example Example: To reset the values of a DB cluster parameter group
    #
    #   # This example resets all parameters for the specified DB cluster parameter group to their default values.
    #
    #   resp = client.reset_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "mydbclusterparametergroup", 
    #     reset_all_parameters: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    #         supported_engine_modes: ["String"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ResetDBClusterParameterGroup AWS API Documentation
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
    #   **MySQL**
    #
    #   Valid Values (for Apply method): `immediate` \| `pending-reboot`
    #
    #   You can use the immediate value with dynamic parameters only. You can
    #   use the `pending-reboot` value for both dynamic and static parameters,
    #   and changes are applied when DB instance reboots.
    #
    #   **MariaDB**
    #
    #   Valid Values (for Apply method): `immediate` \| `pending-reboot`
    #
    #   You can use the immediate value with dynamic parameters only. You can
    #   use the `pending-reboot` value for both dynamic and static parameters,
    #   and changes are applied when DB instance reboots.
    #
    #   **Oracle**
    #
    #   Valid Values (for Apply method): `pending-reboot`
    #
    # @return [Types::DBParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBParameterGroupNameMessage#db_parameter_group_name #db_parameter_group_name} => String
    #
    #
    # @example Example: To reset the values of a DB parameter group
    #
    #   # This example resets all parameters for the specified DB parameter group to their default values.
    #
    #   resp = client.reset_db_parameter_group({
    #     db_parameter_group_name: "mydbparametergroup", 
    #     reset_all_parameters: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    #         supported_engine_modes: ["String"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ResetDBParameterGroup AWS API Documentation
    #
    # @overload reset_db_parameter_group(params = {})
    # @param [Hash] params ({})
    def reset_db_parameter_group(params = {}, options = {})
      req = build_request(:reset_db_parameter_group, params)
      req.send_request(options)
    end

    # Creates an Amazon Aurora DB cluster from data stored in an Amazon S3
    # bucket. Amazon RDS must be authorized to access the Amazon S3 bucket
    # and the data must be created using the Percona XtraBackup utility as
    # described in [ Migrating Data to an Amazon Aurora MySQL DB Cluster][1]
    # in the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.html
    #
    # @option params [Array<String>] :availability_zones
    #   A list of EC2 Availability Zones that instances in the restored DB
    #   cluster can be created in.
    #
    # @option params [Integer] :backup_retention_period
    #   The number of days for which automated backups of the restored DB
    #   cluster are retained. You must specify a minimum value of 1.
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
    #   A value that indicates that the restored DB cluster should be
    #   associated with the specified CharacterSet.
    #
    # @option params [String] :database_name
    #   The database name for the restored DB cluster.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The name of the DB cluster to create from the source data in the
    #   Amazon S3 bucket. This parameter is isn't case-sensitive.
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
    #   The name of the DB cluster parameter group to associate with the
    #   restored DB cluster. If this argument is omitted, `default.aurora5.6`
    #   is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the restored DB
    #   cluster.
    #
    # @option params [String] :db_subnet_group_name
    #   A DB subnet group to associate with the restored DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [required, String] :engine
    #   The name of the database engine to be used for the restored DB
    #   cluster.
    #
    #   Valid Values: `aurora`, `aurora-postgresql`
    #
    # @option params [String] :engine_version
    #   The version number of the database engine to use.
    #
    #   **Aurora MySQL**
    #
    #   Example: `5.6.10a`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `9.6.3`
    #
    # @option params [Integer] :port
    #   The port number on which the instances in the restored DB cluster
    #   accept connections.
    #
    #   Default: `3306`
    #
    # @option params [required, String] :master_username
    #   The name of the master user for the restored DB cluster.
    #
    #   Constraints:
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    # @option params [required, String] :master_user_password
    #   The password for the master database user. This password can contain
    #   any printable ASCII character except "/", """, or "@".
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    # @option params [String] :option_group_name
    #   A value that indicates that the restored DB cluster should be
    #   associated with the specified option group.
    #
    #   Permanent options can't be removed from an option group. An option
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
    #   Aurora User Guide.*
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
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
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
    #   Maintenance Window][1] in the *Amazon Aurora User Guide.*
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @option params [Boolean] :storage_encrypted
    #   Specifies whether the restored DB cluster is encrypted.
    #
    # @option params [String] :kms_key_id
    #   The AWS KMS key identifier for an encrypted DB cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB cluster with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   cluster, then you can use the KMS key alias instead of the ARN for the
    #   KM encryption key.
    #
    #   If the `StorageEncrypted` parameter is true, and you do not specify a
    #   value for the `KmsKeyId` parameter, then Amazon RDS will use your
    #   default encryption key. AWS KMS creates the default encryption key for
    #   your AWS account. Your AWS account has a different default encryption
    #   key for each AWS Region.
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #
    # @option params [required, String] :source_engine
    #   The identifier for the database engine that was backed up to create
    #   the files stored in the Amazon S3 bucket.
    #
    #   Valid values: `mysql`
    #
    # @option params [required, String] :source_engine_version
    #   The version of the database that the backup files were created from.
    #
    #   MySQL version 5.5 and 5.6 are supported.
    #
    #   Example: `5.6.22`
    #
    # @option params [required, String] :s3_bucket_name
    #   The name of the Amazon S3 bucket that contains the data used to create
    #   the Amazon Aurora DB cluster.
    #
    # @option params [String] :s3_prefix
    #   The prefix for all of the file names that contain the data used to
    #   create the Amazon Aurora DB cluster. If you do not specify a
    #   **SourceS3Prefix** value, then the Amazon Aurora DB cluster is created
    #   by using all of the files in the Amazon S3 bucket.
    #
    # @option params [required, String] :s3_ingestion_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that authorizes Amazon RDS to access the Amazon
    #   S3 bucket on your behalf.
    #
    # @option params [Integer] :backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking, set
    #   this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #
    # @return [Types::RestoreDBClusterFromS3Result] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreDBClusterFromS3Result#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_db_cluster_from_s3({
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
    #     master_username: "String", # required
    #     master_user_password: "String", # required
    #     option_group_name: "String",
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     storage_encrypted: false,
    #     kms_key_id: "String",
    #     enable_iam_database_authentication: false,
    #     source_engine: "String", # required
    #     source_engine_version: "String", # required
    #     s3_bucket_name: "String", # required
    #     s3_prefix: "String",
    #     s3_ingestion_role_arn: "String", # required
    #     backtrack_window: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
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
    #   resp.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.earliest_backtrack_time #=> Time
    #   resp.db_cluster.backtrack_window #=> Integer
    #   resp.db_cluster.backtrack_consumed_change_records #=> Integer
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.capacity #=> Integer
    #   resp.db_cluster.engine_mode #=> String
    #   resp.db_cluster.scaling_configuration_info.min_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.max_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.auto_pause #=> Boolean
    #   resp.db_cluster.scaling_configuration_info.seconds_until_auto_pause #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterFromS3 AWS API Documentation
    #
    # @overload restore_db_cluster_from_s3(params = {})
    # @param [Hash] params ({})
    def restore_db_cluster_from_s3(params = {}, options = {})
      req = build_request(:restore_db_cluster_from_s3, params)
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
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    # @option params [Integer] :backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking, set
    #   this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs ][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #
    # @option params [String] :engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned`,
    #   `serverless`, or `parallelquery`.
    #
    # @option params [Types::ScalingConfiguration] :scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling properties
    #   of the DB cluster.
    #
    # @return [Types::RestoreDBClusterFromSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreDBClusterFromSnapshotResult#db_cluster #db_cluster} => Types::DBCluster
    #
    #
    # @example Example: To restore an Amazon Aurora DB cluster from a DB cluster snapshot
    #
    #   # The following example restores an Amazon Aurora DB cluster from a DB cluster snapshot.
    #
    #   resp = client.restore_db_cluster_from_snapshot({
    #     db_cluster_identifier: "restored-cluster1", 
    #     engine: "aurora", 
    #     snapshot_identifier: "sample-cluster-snapshot1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster: {
    #     }, 
    #   }
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
    #     backtrack_window: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     engine_mode: "String",
    #     scaling_configuration: {
    #       min_capacity: 1,
    #       max_capacity: 1,
    #       auto_pause: false,
    #       seconds_until_auto_pause: 1,
    #     },
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
    #   resp.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.earliest_backtrack_time #=> Time
    #   resp.db_cluster.backtrack_window #=> Integer
    #   resp.db_cluster.backtrack_consumed_change_records #=> Integer
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.capacity #=> Integer
    #   resp.db_cluster.engine_mode #=> String
    #   resp.db_cluster.scaling_configuration_info.min_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.max_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.auto_pause #=> Boolean
    #   resp.db_cluster.scaling_configuration_info.seconds_until_auto_pause #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterFromSnapshot AWS API Documentation
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
    # For more information on Amazon Aurora, see [ What Is Amazon
    # Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
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
    #   Constraints: A value from `1150-65535`.
    #
    #   Default: The default port for the engine.
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
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    # @option params [Integer] :backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking, set
    #   this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #
    # @return [Types::RestoreDBClusterToPointInTimeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreDBClusterToPointInTimeResult#db_cluster #db_cluster} => Types::DBCluster
    #
    #
    # @example Example: To restore a DB cluster to a point in time.
    #
    #   # The following example restores a DB cluster to a new DB cluster at a point in time from the source DB cluster.
    #
    #   resp = client.restore_db_cluster_to_point_in_time({
    #     db_cluster_identifier: "sample-restored-cluster1", 
    #     restore_to_time: Time.parse("2016-09-13T18:45:00Z"), 
    #     source_db_cluster_identifier: "sample-cluster1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_cluster: {
    #     }, 
    #   }
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
    #     backtrack_window: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
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
    #   resp.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.earliest_backtrack_time #=> Time
    #   resp.db_cluster.backtrack_window #=> Integer
    #   resp.db_cluster.backtrack_consumed_change_records #=> Integer
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.capacity #=> Integer
    #   resp.db_cluster.engine_mode #=> String
    #   resp.db_cluster.scaling_configuration_info.min_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.max_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.auto_pause #=> Boolean
    #   resp.db_cluster.scaling_configuration_info.seconds_until_auto_pause #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterToPointInTime AWS API Documentation
    #
    # @overload restore_db_cluster_to_point_in_time(params = {})
    # @param [Hash] params ({})
    def restore_db_cluster_to_point_in_time(params = {}, options = {})
      req = build_request(:restore_db_cluster_to_point_in_time, params)
      req.send_request(options)
    end

    # Creates a new DB instance from a DB snapshot. The target database is
    # created from the source database restore point with the most of
    # original configuration with the default security group and the default
    # DB parameter group. By default, the new DB instance is created as a
    # single-AZ deployment except when the instance is a SQL Server instance
    # that has an option group that is associated with mirroring; in this
    # case, the instance becomes a mirrored AZ deployment and not a
    # single-AZ deployment.
    #
    # If your intent is to replace your original DB instance with the new,
    # restored DB instance, then rename your original DB instance before you
    # call the RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow
    # two DB instances with the same name. Once you have renamed your
    # original DB instance with a different identifier, then you can pass
    # the original name of the DB instance as the DBInstanceIdentifier in
    # the call to the RestoreDBInstanceFromDBSnapshot action. The result is
    # that you will replace the original DB instance with the DB instance
    # created from the snapshot.
    #
    # If you are restoring from a shared manual DB snapshot, the
    # `DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.
    #
    # <note markdown="1"> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
    # Aurora, use RestoreDBClusterFromSnapshot.
    #
    #  </note>
    #
    # @option params [required, String] :db_instance_identifier
    #   Name of the DB instance to create from the DB snapshot. This parameter
    #   isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 numbers, letters, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    #
    # @option params [required, String] :db_snapshot_identifier
    #   The identifier for the DB snapshot to restore from.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBSnapshot.
    #
    #   * If you are restoring from a shared manual DB snapshot, the
    #     `DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.
    #
    # @option params [String] :db_instance_class
    #   The compute and memory capacity of the Amazon RDS DB instance, for
    #   example, `db.m4.large`. Not all DB instance classes are available in
    #   all AWS Regions, or for all database engines. For the full list of DB
    #   instance classes, and availability for your engine, see [DB Instance
    #   Class][1] in the *Amazon RDS User Guide.*
    #
    #   Default: The same DBInstanceClass as the original DB instance.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #
    # @option params [Integer] :port
    #   The port number on which the database accepts connections.
    #
    #   Default: The same port as the original DB instance
    #
    #   Constraints: Value must be `1150-65535`
    #
    # @option params [String] :availability_zone
    #   The EC2 Availability Zone that the DB instance is created in.
    #
    #   Default: A random, system-chosen Availability Zone.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to `true`.
    #
    #   Example: `us-east-1a`
    #
    # @option params [String] :db_subnet_group_name
    #   The DB subnet group name to use for the new instance.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [Boolean] :multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to `true`.
    #
    # @option params [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly resolvable
    #   DNS name, which resolves to a public IP address. A value of false
    #   specifies an internal instance with a DNS name that resolves to a
    #   private IP address. For more information, see CreateDBInstance.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor version upgrades are applied automatically to the
    #   DB instance during the maintenance window.
    #
    # @option params [String] :license_model
    #   License model information for the restored DB instance.
    #
    #   Default: Same as source.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #
    # @option params [String] :db_name
    #   The database name for the restored DB instance.
    #
    #   <note markdown="1"> This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB
    #   engines.
    #
    #    </note>
    #
    # @option params [String] :engine
    #   The database engine to use for the new instance.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source. For
    #   example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6
    #   snapshot.
    #
    #   Valid Values:
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se1`
    #
    #   * `oracle-se`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    #
    # @option params [Integer] :iops
    #   Specifies the amount of provisioned IOPS for the DB instance,
    #   expressed in I/O operations per second. If this parameter is not
    #   specified, the IOPS value is taken from the backup. If this parameter
    #   is set to 0, the new instance is converted to a non-PIOPS instance.
    #   The conversion takes additional time, though your DB instance is
    #   available for connections before the conversion starts.
    #
    #   The provisioned IOPS value must follow the requirements for your
    #   database engine. For more information, see [Amazon RDS Provisioned
    #   IOPS Storage to Improve Performance][1] in the *Amazon RDS User
    #   Guide.*
    #
    #   Constraints: Must be an integer greater than 1000.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    #
    # @option params [String] :option_group_name
    #   The name of the option group to be used for the restored DB instance.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance once it is associated with a DB
    #   instance
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @option params [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
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
    # @option params [String] :domain
    #   Specify the Active Directory Domain to restore the instance in.
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the restored DB instance to snapshots of
    #   the DB instance, and otherwise false. The default is false.
    #
    # @option params [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following database
    #   engines
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB instance is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #
    # @option params [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    #
    # @option params [Boolean] :use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    #
    # @return [Types::RestoreDBInstanceFromDBSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreDBInstanceFromDBSnapshotResult#db_instance #db_instance} => Types::DBInstance
    #
    #
    # @example Example: To restore a DB instance from a DB snapshot.
    #
    #   # The following example restores a DB instance from a DB snapshot.
    #
    #   resp = client.restore_db_instance_from_db_snapshot({
    #     db_instance_identifier: "mysqldb-restored", 
    #     db_snapshot_identifier: "rds:mysqldb-2014-04-22-08-15", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_instance: {
    #       allocated_storage: 200, 
    #       auto_minor_version_upgrade: true, 
    #       availability_zone: "us-west-2b", 
    #       backup_retention_period: 7, 
    #       ca_certificate_identifier: "rds-ca-2015", 
    #       copy_tags_to_snapshot: false, 
    #       db_instance_arn: "arn:aws:rds:us-west-2:123456789012:db:mysqldb-restored", 
    #       db_instance_class: "db.t2.small", 
    #       db_instance_identifier: "mysqldb-restored", 
    #       db_instance_status: "available", 
    #       db_name: "sample", 
    #       db_parameter_groups: [
    #         {
    #           db_parameter_group_name: "default.mysql5.6", 
    #           parameter_apply_status: "in-sync", 
    #         }, 
    #       ], 
    #       db_security_groups: [
    #       ], 
    #       db_subnet_group: {
    #         db_subnet_group_description: "default", 
    #         db_subnet_group_name: "default", 
    #         subnet_group_status: "Complete", 
    #         subnets: [
    #           {
    #             subnet_availability_zone: {
    #               name: "us-west-2a", 
    #             }, 
    #             subnet_identifier: "subnet-77e8db03", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-west-2b", 
    #             }, 
    #             subnet_identifier: "subnet-c39989a1", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-west-2c", 
    #             }, 
    #             subnet_identifier: "subnet-4b267b0d", 
    #             subnet_status: "Active", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-c1c5b3a3", 
    #       }, 
    #       db_instance_port: 0, 
    #       dbi_resource_id: "db-VNZUCCBTEDC4WR7THXNJO72HVQ", 
    #       domain_memberships: [
    #       ], 
    #       engine: "mysql", 
    #       engine_version: "5.6.27", 
    #       license_model: "general-public-license", 
    #       master_username: "mymasteruser", 
    #       monitoring_interval: 0, 
    #       multi_az: false, 
    #       option_group_memberships: [
    #         {
    #           option_group_name: "default:mysql-5-6", 
    #           status: "in-sync", 
    #         }, 
    #       ], 
    #       pending_modified_values: {
    #       }, 
    #       preferred_backup_window: "12:58-13:28", 
    #       preferred_maintenance_window: "tue:10:16-tue:10:46", 
    #       publicly_accessible: true, 
    #       read_replica_db_instance_identifiers: [
    #       ], 
    #       storage_encrypted: false, 
    #       storage_type: "gp2", 
    #       vpc_security_groups: [
    #         {
    #           status: "active", 
    #           vpc_security_group_id: "sg-e5e5b0d2", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_db_instance_from_db_snapshot({
    #     db_instance_identifier: "String", # required
    #     db_snapshot_identifier: "String", # required
    #     db_instance_class: "String",
    #     port: 1,
    #     availability_zone: "String",
    #     db_subnet_group_name: "String",
    #     multi_az: false,
    #     publicly_accessible: false,
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     db_name: "String",
    #     engine: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "String",
    #     domain: "String",
    #     copy_tags_to_snapshot: false,
    #     domain_iam_role_name: "String",
    #     enable_iam_database_authentication: false,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     use_default_processor_features: false,
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
    #   resp.db_instance.pending_modified_values.processor_features #=> Array
    #   resp.db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instance.pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instance.performance_insights_retention_period #=> Integer
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.processor_features #=> Array
    #   resp.db_instance.processor_features[0].name #=> String
    #   resp.db_instance.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceFromDBSnapshot AWS API Documentation
    #
    # @overload restore_db_instance_from_db_snapshot(params = {})
    # @param [Hash] params ({})
    def restore_db_instance_from_db_snapshot(params = {}, options = {})
      req = build_request(:restore_db_instance_from_db_snapshot, params)
      req.send_request(options)
    end

    # Amazon Relational Database Service (Amazon RDS) supports importing
    # MySQL databases by using backup files. You can create a backup of your
    # on-premises database, store it on Amazon Simple Storage Service
    # (Amazon S3), and then restore the backup file onto a new Amazon RDS DB
    # instance running MySQL. For more information, see [Importing Data into
    # an Amazon RDS MySQL DB Instance][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html
    #
    # @option params [String] :db_name
    #   The name of the database to create when the DB instance is created.
    #   Follow the naming rules specified in CreateDBInstance.
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
    #   The amount of storage (in gigabytes) to allocate initially for the DB
    #   instance. Follow the allocation rules specified in CreateDBInstance.
    #
    #   <note markdown="1"> Be sure to allocate enough memory for your new DB instance so that the
    #   restore operation can succeed. You can also allocate additional memory
    #   for future growth.
    #
    #    </note>
    #
    # @option params [required, String] :db_instance_class
    #   The compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB instance
    #   classes, and availability for your engine, see [DB Instance Class][1]
    #   in the *Amazon RDS User Guide.*
    #
    #   Importing from Amazon S3 is not supported on the db.t2.micro DB
    #   instance class.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #
    # @option params [required, String] :engine
    #   The name of the database engine to be used for this instance.
    #
    #   Valid Values: `mysql`
    #
    # @option params [String] :master_username
    #   The name for the master user.
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
    #   The password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    # @option params [Array<String>] :db_security_groups
    #   A list of DB security groups to associate with this DB instance.
    #
    #   Default: The default DB security group for the database engine.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of VPC security groups to associate with this DB instance.
    #
    # @option params [String] :availability_zone
    #   The Availability Zone that the DB instance is created in. For
    #   information about AWS Regions and Availability Zones, see [Regions and
    #   Availability Zones][1] in the *Amazon RDS User Guide.*
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
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    #
    # @option params [String] :db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #
    # @option params [String] :preferred_maintenance_window
    #   The time range each week during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC). For more information, see [Amazon
    #   RDS Maintenance Window][1] in the *Amazon RDS User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `ddd:hh24:mi-ddd:hh24:mi`.
    #
    #   * Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred backup window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance
    #
    # @option params [String] :db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB instance.
    #   If this argument is omitted, the default parameter group for the
    #   specified engine is used.
    #
    # @option params [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. For more
    #   information, see CreateDBInstance.
    #
    # @option params [String] :preferred_backup_window
    #   The time range each day during which automated backups are created if
    #   automated backups are enabled. For more information, see [The Backup
    #   Window][1] in the *Amazon RDS User Guide.*
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
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
    #
    # @option params [Integer] :port
    #   The port number on which the database accepts connections.
    #
    #   Type: Integer
    #
    #   Valid Values: `1150`-`65535`
    #
    #   Default: `3306`
    #
    # @option params [Boolean] :multi_az
    #   Specifies whether the DB instance is a Multi-AZ deployment. If MultiAZ
    #   is set to `true`, you can't set the AvailabilityZone parameter.
    #
    # @option params [String] :engine_version
    #   The version number of the database engine to use. Choose the latest
    #   minor version of your database engine. For information about engine
    #   versions, see CreateDBInstance, or call DescribeDBEngineVersions.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   True to indicate that minor engine upgrades are applied automatically
    #   to the DB instance during the maintenance window, and otherwise false.
    #
    #   Default: `true`
    #
    # @option params [String] :license_model
    #   The license model for this DB instance. Use `general-public-license`.
    #
    # @option params [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   allocate initially for the DB instance. For information about valid
    #   Iops values, see see [Amazon RDS Provisioned IOPS Storage to Improve
    #   Performance][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    #
    # @option params [String] :option_group_name
    #   The name of the option group to associate with this DB instance. If
    #   this argument is omitted, the default option group for the specified
    #   engine is used.
    #
    # @option params [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly resolvable
    #   DNS name, which resolves to a public IP address. A value of false
    #   specifies an internal instance with a DNS name that resolves to a
    #   private IP address. For more information, see CreateDBInstance.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to associate with this DB instance. For more
    #   information, see [Tagging Amazon RDS Resources][1] in the *Amazon RDS
    #   User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @option params [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `standard` \| `gp2` \| `io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified; otherwise
    #   `standard`
    #
    # @option params [Boolean] :storage_encrypted
    #   Specifies whether the new DB instance is encrypted or not.
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
    #   If the `StorageEncrypted` parameter is true, and you do not specify a
    #   value for the `KmsKeyId` parameter, then Amazon RDS will use your
    #   default encryption key. AWS KMS creates the default encryption key for
    #   your AWS account. Your AWS account has a different default encryption
    #   key for each AWS Region.
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the DB instance to snapshots of the DB
    #   instance, and otherwise false.
    #
    #   Default: false.
    #
    # @option params [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collecting
    #   Enhanced Monitoring metrics, specify 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: 0, 1, 5, 10, 15, 30, 60
    #
    #   Default: `0`
    #
    # @option params [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced monitoring
    #   metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, see [Setting Up and Enabling Enhanced
    #   Monitoring][1] in the *Amazon RDS User Guide.*
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you must
    #   supply a `MonitoringRoleArn` value.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #
    # @option params [required, String] :source_engine
    #   The name of the engine of your source database.
    #
    #   Valid Values: `mysql`
    #
    # @option params [required, String] :source_engine_version
    #   The engine version of your source database.
    #
    #   Valid Values: `5.6`
    #
    # @option params [required, String] :s3_bucket_name
    #   The name of your Amazon S3 bucket that contains your database backup
    #   file.
    #
    # @option params [String] :s3_prefix
    #   The prefix of your Amazon S3 bucket.
    #
    # @option params [required, String] :s3_ingestion_role_arn
    #   An AWS Identity and Access Management (IAM) role to allow Amazon RDS
    #   to access your Amazon S3 bucket.
    #
    # @option params [Boolean] :enable_performance_insights
    #   True to enable Performance Insights for the DB instance, and otherwise
    #   false.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #
    # @option params [String] :performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), the KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #
    # @option params [Integer] :performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB instance is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #
    # @option params [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    #
    # @option params [Boolean] :use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    #
    # @return [Types::RestoreDBInstanceFromS3Result] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreDBInstanceFromS3Result#db_instance #db_instance} => Types::DBInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_db_instance_from_s3({
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
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     storage_type: "String",
    #     storage_encrypted: false,
    #     kms_key_id: "String",
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: "String",
    #     enable_iam_database_authentication: false,
    #     source_engine: "String", # required
    #     source_engine_version: "String", # required
    #     s3_bucket_name: "String", # required
    #     s3_prefix: "String",
    #     s3_ingestion_role_arn: "String", # required
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     performance_insights_retention_period: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     use_default_processor_features: false,
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
    #   resp.db_instance.pending_modified_values.processor_features #=> Array
    #   resp.db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instance.pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instance.performance_insights_retention_period #=> Integer
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.processor_features #=> Array
    #   resp.db_instance.processor_features[0].name #=> String
    #   resp.db_instance.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceFromS3 AWS API Documentation
    #
    # @overload restore_db_instance_from_s3(params = {})
    # @param [Hash] params ({})
    def restore_db_instance_from_s3(params = {}, options = {})
      req = build_request(:restore_db_instance_from_s3, params)
      req.send_request(options)
    end

    # Restores a DB instance to an arbitrary point in time. You can restore
    # to any point in time before the time identified by the
    # LatestRestorableTime property. You can restore to a point up to the
    # number of days specified by the BackupRetentionPeriod property.
    #
    # The target database is created with most of the original
    # configuration, but in a system-selected Availability Zone, with the
    # default security group, the default subnet group, and the default DB
    # parameter group. By default, the new DB instance is created as a
    # single-AZ deployment except when the instance is a SQL Server instance
    # that has an option group that is associated with mirroring; in this
    # case, the instance becomes a mirrored deployment and not a single-AZ
    # deployment.
    #
    # <note markdown="1"> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
    # Aurora, use RestoreDBClusterToPointInTime.
    #
    #  </note>
    #
    # @option params [required, String] :source_db_instance_identifier
    #   The identifier of the source DB instance from which to restore.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DB instance.
    #
    #   ^
    #
    # @option params [required, String] :target_db_instance_identifier
    #   The name of the new DB instance to be created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    # @option params [Time,DateTime,Date,Integer,String] :restore_time
    #   The date and time to restore from.
    #
    #   Valid Values: Value must be a time in Universal Coordinated Time (UTC)
    #   format
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the DB instance
    #
    #   * Cannot be specified if UseLatestRestorableTime parameter is true
    #
    #   Example: `2009-09-07T23:45:00Z`
    #
    # @option params [Boolean] :use_latest_restorable_time
    #   Specifies whether (`true`) or not (`false`) the DB instance is
    #   restored from the latest backup time.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if RestoreTime parameter is provided.
    #
    # @option params [String] :db_instance_class
    #   The compute and memory capacity of the Amazon RDS DB instance, for
    #   example, `db.m4.large`. Not all DB instance classes are available in
    #   all AWS Regions, or for all database engines. For the full list of DB
    #   instance classes, and availability for your engine, see [DB Instance
    #   Class][1] in the *Amazon RDS User Guide.*
    #
    #   Default: The same DBInstanceClass as the original DB instance.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #
    # @option params [Integer] :port
    #   The port number on which the database accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB instance.
    #
    # @option params [String] :availability_zone
    #   The EC2 Availability Zone that the DB instance is created in.
    #
    #   Default: A random, system-chosen Availability Zone.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to true.
    #
    #   Example: `us-east-1a`
    #
    # @option params [String] :db_subnet_group_name
    #   The DB subnet group name to use for the new instance.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [Boolean] :multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to `true`.
    #
    # @option params [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly resolvable
    #   DNS name, which resolves to a public IP address. A value of false
    #   specifies an internal instance with a DNS name that resolves to a
    #   private IP address. For more information, see CreateDBInstance.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor version upgrades are applied automatically to the
    #   DB instance during the maintenance window.
    #
    # @option params [String] :license_model
    #   License model information for the restored DB instance.
    #
    #   Default: Same as source.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #
    # @option params [String] :db_name
    #   The database name for the restored DB instance.
    #
    #   <note markdown="1"> This parameter is not used for the MySQL or MariaDB engines.
    #
    #    </note>
    #
    # @option params [String] :engine
    #   The database engine to use for the new instance.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source
    #
    #   Valid Values:
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se1`
    #
    #   * `oracle-se`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    #
    # @option params [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for the DB instance.
    #
    #   Constraints: Must be an integer greater than 1000.
    #
    #   **SQL Server**
    #
    #   Setting the IOPS value for the SQL Server database engine is not
    #   supported.
    #
    # @option params [String] :option_group_name
    #   The name of the option group to be used for the restored DB instance.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance once it is associated with a DB
    #   instance
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the restored DB instance to snapshots of
    #   the DB instance, and otherwise false. The default is false.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @option params [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
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
    # @option params [String] :domain
    #   Specify the Active Directory Domain to restore the instance in.
    #
    # @option params [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #
    # @option params [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following database
    #   engines
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB instance is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #
    # @option params [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    #
    # @option params [Boolean] :use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    #
    # @return [Types::RestoreDBInstanceToPointInTimeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreDBInstanceToPointInTimeResult#db_instance #db_instance} => Types::DBInstance
    #
    #
    # @example Example: To restore a DB instance to a point in time.
    #
    #   # The following example restores a DB instance to a new DB instance at a point in time from the source DB instance.
    #
    #   resp = client.restore_db_instance_to_point_in_time({
    #     restore_time: Time.parse("2016-09-13T18:45:00Z"), 
    #     source_db_instance_identifier: "mysql-sample", 
    #     target_db_instance_identifier: "mysql-sample-restored", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_instance: {
    #       allocated_storage: 200, 
    #       auto_minor_version_upgrade: true, 
    #       availability_zone: "us-west-2b", 
    #       backup_retention_period: 7, 
    #       ca_certificate_identifier: "rds-ca-2015", 
    #       copy_tags_to_snapshot: false, 
    #       db_instance_arn: "arn:aws:rds:us-west-2:123456789012:db:mysql-sample-restored", 
    #       db_instance_class: "db.t2.small", 
    #       db_instance_identifier: "mysql-sample-restored", 
    #       db_instance_status: "available", 
    #       db_name: "sample", 
    #       db_parameter_groups: [
    #         {
    #           db_parameter_group_name: "default.mysql5.6", 
    #           parameter_apply_status: "in-sync", 
    #         }, 
    #       ], 
    #       db_security_groups: [
    #       ], 
    #       db_subnet_group: {
    #         db_subnet_group_description: "default", 
    #         db_subnet_group_name: "default", 
    #         subnet_group_status: "Complete", 
    #         subnets: [
    #           {
    #             subnet_availability_zone: {
    #               name: "us-west-2a", 
    #             }, 
    #             subnet_identifier: "subnet-77e8db03", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-west-2b", 
    #             }, 
    #             subnet_identifier: "subnet-c39989a1", 
    #             subnet_status: "Active", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-west-2c", 
    #             }, 
    #             subnet_identifier: "subnet-4b267b0d", 
    #             subnet_status: "Active", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-c1c5b3a3", 
    #       }, 
    #       db_instance_port: 0, 
    #       dbi_resource_id: "db-VNZUCCBTEDC4WR7THXNJO72HVQ", 
    #       domain_memberships: [
    #       ], 
    #       engine: "mysql", 
    #       engine_version: "5.6.27", 
    #       license_model: "general-public-license", 
    #       master_username: "mymasteruser", 
    #       monitoring_interval: 0, 
    #       multi_az: false, 
    #       option_group_memberships: [
    #         {
    #           option_group_name: "default:mysql-5-6", 
    #           status: "in-sync", 
    #         }, 
    #       ], 
    #       pending_modified_values: {
    #       }, 
    #       preferred_backup_window: "12:58-13:28", 
    #       preferred_maintenance_window: "tue:10:16-tue:10:46", 
    #       publicly_accessible: true, 
    #       read_replica_db_instance_identifiers: [
    #       ], 
    #       storage_encrypted: false, 
    #       storage_type: "gp2", 
    #       vpc_security_groups: [
    #         {
    #           status: "active", 
    #           vpc_security_group_id: "sg-e5e5b0d2", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_db_instance_to_point_in_time({
    #     source_db_instance_identifier: "String", # required
    #     target_db_instance_identifier: "String", # required
    #     restore_time: Time.now,
    #     use_latest_restorable_time: false,
    #     db_instance_class: "String",
    #     port: 1,
    #     availability_zone: "String",
    #     db_subnet_group_name: "String",
    #     multi_az: false,
    #     publicly_accessible: false,
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     db_name: "String",
    #     engine: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     copy_tags_to_snapshot: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "String",
    #     domain: "String",
    #     domain_iam_role_name: "String",
    #     enable_iam_database_authentication: false,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     use_default_processor_features: false,
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
    #   resp.db_instance.pending_modified_values.processor_features #=> Array
    #   resp.db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instance.pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instance.performance_insights_retention_period #=> Integer
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.processor_features #=> Array
    #   resp.db_instance.processor_features[0].name #=> String
    #   resp.db_instance.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceToPointInTime AWS API Documentation
    #
    # @overload restore_db_instance_to_point_in_time(params = {})
    # @param [Hash] params ({})
    def restore_db_instance_to_point_in_time(params = {}, options = {})
      req = build_request(:restore_db_instance_to_point_in_time, params)
      req.send_request(options)
    end

    # Revokes ingress from a DBSecurityGroup for previously authorized IP
    # ranges or EC2 or VPC Security Groups. Required parameters for this API
    # are one of CIDRIP, EC2SecurityGroupId for VPC, or
    # (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
    # EC2SecurityGroupId).
    #
    # @option params [required, String] :db_security_group_name
    #   The name of the DB security group to revoke ingress from.
    #
    # @option params [String] :cidrip
    #   The IP range to revoke access from. Must be a valid CIDR range. If
    #   `CIDRIP` is specified, `EC2SecurityGroupName`, `EC2SecurityGroupId`
    #   and `EC2SecurityGroupOwnerId` can't be provided.
    #
    # @option params [String] :ec2_security_group_name
    #   The name of the EC2 security group to revoke access from. For VPC DB
    #   security groups, `EC2SecurityGroupId` must be provided. Otherwise,
    #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    #
    # @option params [String] :ec2_security_group_id
    #   The id of the EC2 security group to revoke access from. For VPC DB
    #   security groups, `EC2SecurityGroupId` must be provided. Otherwise,
    #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    #
    # @option params [String] :ec2_security_group_owner_id
    #   The AWS Account Number of the owner of the EC2 security group
    #   specified in the `EC2SecurityGroupName` parameter. The AWS Access Key
    #   ID is not an acceptable value. For VPC DB security groups,
    #   `EC2SecurityGroupId` must be provided. Otherwise,
    #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    #
    # @return [Types::RevokeDBSecurityGroupIngressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RevokeDBSecurityGroupIngressResult#db_security_group #db_security_group} => Types::DBSecurityGroup
    #
    #
    # @example Example: To revoke ingress for a DB security group
    #
    #   # This example revokes ingress for the specified CIDR block associated with the specified DB security group.
    #
    #   resp = client.revoke_db_security_group_ingress({
    #     cidrip: "203.0.113.5/32", 
    #     db_security_group_name: "mydbsecuritygroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     db_security_group: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_db_security_group_ingress({
    #     db_security_group_name: "String", # required
    #     cidrip: "String",
    #     ec2_security_group_name: "String",
    #     ec2_security_group_id: "String",
    #     ec2_security_group_owner_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_security_group.owner_id #=> String
    #   resp.db_security_group.db_security_group_name #=> String
    #   resp.db_security_group.db_security_group_description #=> String
    #   resp.db_security_group.vpc_id #=> String
    #   resp.db_security_group.ec2_security_groups #=> Array
    #   resp.db_security_group.ec2_security_groups[0].status #=> String
    #   resp.db_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.db_security_group.ec2_security_groups[0].ec2_security_group_id #=> String
    #   resp.db_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.db_security_group.ip_ranges #=> Array
    #   resp.db_security_group.ip_ranges[0].status #=> String
    #   resp.db_security_group.ip_ranges[0].cidrip #=> String
    #   resp.db_security_group.db_security_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RevokeDBSecurityGroupIngress AWS API Documentation
    #
    # @overload revoke_db_security_group_ingress(params = {})
    # @param [Hash] params ({})
    def revoke_db_security_group_ingress(params = {}, options = {})
      req = build_request(:revoke_db_security_group_ingress, params)
      req.send_request(options)
    end

    # Starts an Amazon Aurora DB cluster that was stopped using the AWS
    # console, the stop-db-cluster AWS CLI command, or the StopDBCluster
    # action.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The DB cluster identifier of the Amazon Aurora DB cluster to be
    #   started. This parameter is stored as a lowercase string.
    #
    # @return [Types::StartDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_db_cluster({
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
    #   resp.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.earliest_backtrack_time #=> Time
    #   resp.db_cluster.backtrack_window #=> Integer
    #   resp.db_cluster.backtrack_consumed_change_records #=> Integer
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.capacity #=> Integer
    #   resp.db_cluster.engine_mode #=> String
    #   resp.db_cluster.scaling_configuration_info.min_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.max_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.auto_pause #=> Boolean
    #   resp.db_cluster.scaling_configuration_info.seconds_until_auto_pause #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBCluster AWS API Documentation
    #
    # @overload start_db_cluster(params = {})
    # @param [Hash] params ({})
    def start_db_cluster(params = {}, options = {})
      req = build_request(:start_db_cluster, params)
      req.send_request(options)
    end

    # Starts an Amazon RDS DB instance that was stopped using the AWS
    # console, the stop-db-instance AWS CLI command, or the StopDBInstance
    # action.
    #
    # For more information, see [ Starting an Amazon RDS DB Instance That
    # Was Previously Stopped][1] in the *Amazon RDS User Guide.*
    #
    # <note markdown="1"> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
    # Aurora DB clusters, use StartDBCluster instead.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StartInstance.html
    #
    # @option params [required, String] :db_instance_identifier
    #   The user-supplied instance identifier.
    #
    # @return [Types::StartDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_db_instance({
    #     db_instance_identifier: "String", # required
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
    #   resp.db_instance.pending_modified_values.processor_features #=> Array
    #   resp.db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instance.pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instance.performance_insights_retention_period #=> Integer
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.processor_features #=> Array
    #   resp.db_instance.processor_features[0].name #=> String
    #   resp.db_instance.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBInstance AWS API Documentation
    #
    # @overload start_db_instance(params = {})
    # @param [Hash] params ({})
    def start_db_instance(params = {}, options = {})
      req = build_request(:start_db_instance, params)
      req.send_request(options)
    end

    # Stops an Amazon Aurora DB cluster. When you stop a DB cluster, Aurora
    # retains the DB cluster's metadata, including its endpoints and DB
    # parameter groups. Aurora also retains the transaction logs so you can
    # do a point-in-time restore if necessary.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The DB cluster identifier of the Amazon Aurora DB cluster to be
    #   stopped. This parameter is stored as a lowercase string.
    #
    # @return [Types::StopDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_db_cluster({
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
    #   resp.db_cluster.associated_roles[0].feature_name #=> String
    #   resp.db_cluster.iam_database_authentication_enabled #=> Boolean
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.earliest_backtrack_time #=> Time
    #   resp.db_cluster.backtrack_window #=> Integer
    #   resp.db_cluster.backtrack_consumed_change_records #=> Integer
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.capacity #=> Integer
    #   resp.db_cluster.engine_mode #=> String
    #   resp.db_cluster.scaling_configuration_info.min_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.max_capacity #=> Integer
    #   resp.db_cluster.scaling_configuration_info.auto_pause #=> Boolean
    #   resp.db_cluster.scaling_configuration_info.seconds_until_auto_pause #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBCluster AWS API Documentation
    #
    # @overload stop_db_cluster(params = {})
    # @param [Hash] params ({})
    def stop_db_cluster(params = {}, options = {})
      req = build_request(:stop_db_cluster, params)
      req.send_request(options)
    end

    # Stops an Amazon RDS DB instance. When you stop a DB instance, Amazon
    # RDS retains the DB instance's metadata, including its endpoint, DB
    # parameter group, and option group membership. Amazon RDS also retains
    # the transaction logs so you can do a point-in-time restore if
    # necessary.
    #
    # For more information, see [ Stopping an Amazon RDS DB Instance
    # Temporarily][1] in the *Amazon RDS User Guide.*
    #
    # <note markdown="1"> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For
    # Aurora clusters, use StopDBCluster instead.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StopInstance.html
    #
    # @option params [required, String] :db_instance_identifier
    #   The user-supplied instance identifier.
    #
    # @option params [String] :db_snapshot_identifier
    #   The user-supplied instance identifier of the DB Snapshot created
    #   immediately before the DB instance is stopped.
    #
    # @return [Types::StopDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_db_instance({
    #     db_instance_identifier: "String", # required
    #     db_snapshot_identifier: "String",
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
    #   resp.db_instance.pending_modified_values.processor_features #=> Array
    #   resp.db_instance.pending_modified_values.processor_features[0].name #=> String
    #   resp.db_instance.pending_modified_values.processor_features[0].value #=> String
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
    #   resp.db_instance.performance_insights_retention_period #=> Integer
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.processor_features #=> Array
    #   resp.db_instance.processor_features[0].name #=> String
    #   resp.db_instance.processor_features[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBInstance AWS API Documentation
    #
    # @overload stop_db_instance(params = {})
    # @param [Hash] params ({})
    def stop_db_instance(params = {}, options = {})
      req = build_request(:stop_db_instance, params)
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
      context[:gem_name] = 'aws-sdk-rds'
      context[:gem_version] = '1.31.0'
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
    # | db_snapshot_available | {#describe_db_snapshots} | 30       | 60            |
    # | db_snapshot_deleted   | {#describe_db_snapshots} | 30       | 60            |
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
        db_instance_deleted: Waiters::DBInstanceDeleted,
        db_snapshot_available: Waiters::DBSnapshotAvailable,
        db_snapshot_deleted: Waiters::DBSnapshotDeleted
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
