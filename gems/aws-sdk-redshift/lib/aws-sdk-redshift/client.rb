# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:redshift)

module Aws::Redshift
  # An API client for Redshift.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Redshift::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :redshift

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::Query)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes
    # to the configuration (term, payment type, or number of nodes) and no
    # additional costs.
    #
    # @option params [required, String] :reserved_node_id
    #   A string representing the node identifier of the DC1 Reserved Node to
    #   be exchanged.
    #
    # @option params [required, String] :target_reserved_node_offering_id
    #   The unique identifier of the DC2 Reserved Node offering to be used for
    #   the exchange. You can obtain the value for the parameter by calling
    #   GetReservedNodeExchangeOfferings
    #
    # @return [Types::AcceptReservedNodeExchangeOutputMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptReservedNodeExchangeOutputMessage#exchanged_reserved_node #exchanged_reserved_node} => Types::ReservedNode
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_reserved_node_exchange({
    #     reserved_node_id: "String", # required
    #     target_reserved_node_offering_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.exchanged_reserved_node.reserved_node_id #=> String
    #   resp.exchanged_reserved_node.reserved_node_offering_id #=> String
    #   resp.exchanged_reserved_node.node_type #=> String
    #   resp.exchanged_reserved_node.start_time #=> Time
    #   resp.exchanged_reserved_node.duration #=> Integer
    #   resp.exchanged_reserved_node.fixed_price #=> Float
    #   resp.exchanged_reserved_node.usage_price #=> Float
    #   resp.exchanged_reserved_node.currency_code #=> String
    #   resp.exchanged_reserved_node.node_count #=> Integer
    #   resp.exchanged_reserved_node.state #=> String
    #   resp.exchanged_reserved_node.offering_type #=> String
    #   resp.exchanged_reserved_node.recurring_charges #=> Array
    #   resp.exchanged_reserved_node.recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.exchanged_reserved_node.recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.exchanged_reserved_node.reserved_node_offering_type #=> String, one of "Regular", "Upgradable"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AcceptReservedNodeExchange AWS API Documentation
    #
    # @overload accept_reserved_node_exchange(params = {})
    # @param [Hash] params ({})
    def accept_reserved_node_exchange(params = {}, options = {})
      req = build_request(:accept_reserved_node_exchange, params)
      req.send_request(options)
    end

    # Adds an inbound (ingress) rule to an Amazon Redshift security group.
    # Depending on whether the application accessing your cluster is running
    # on the Internet or an Amazon EC2 instance, you can authorize inbound
    # access to either a Classless Interdomain Routing (CIDR)/Internet
    # Protocol (IP) range or to an Amazon EC2 security group. You can add as
    # many as 20 ingress rules to an Amazon Redshift security group.
    #
    # If you authorize access to an Amazon EC2 security group, specify
    # *EC2SecurityGroupName* and *EC2SecurityGroupOwnerId*. The Amazon EC2
    # security group and Amazon Redshift cluster must be in the same AWS
    # Region.
    #
    # If you authorize access to a CIDR/IP address range, specify *CIDRIP*.
    # For an overview of CIDR blocks, see the Wikipedia article on
    # [Classless Inter-Domain Routing][1].
    #
    # You must also associate the security group with a cluster so that
    # clients running on these IP addresses or the EC2 instance are
    # authorized to connect to the cluster. For information about managing
    # security groups, go to [Working with Security Groups][2] in the
    # *Amazon Redshift Cluster Management Guide*.
    #
    #
    #
    # [1]: http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    # [2]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html
    #
    # @option params [required, String] :cluster_security_group_name
    #   The name of the security group to which the ingress rule is added.
    #
    # @option params [String] :cidrip
    #   The IP range to be added the Amazon Redshift security group.
    #
    # @option params [String] :ec2_security_group_name
    #   The EC2 security group to be added the Amazon Redshift security group.
    #
    # @option params [String] :ec2_security_group_owner_id
    #   The AWS account number of the owner of the security group specified by
    #   the *EC2SecurityGroupName* parameter. The AWS Access Key ID is not an
    #   acceptable value.
    #
    #   Example: `111122223333`
    #
    # @return [Types::AuthorizeClusterSecurityGroupIngressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AuthorizeClusterSecurityGroupIngressResult#cluster_security_group #cluster_security_group} => Types::ClusterSecurityGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_cluster_security_group_ingress({
    #     cluster_security_group_name: "String", # required
    #     cidrip: "String",
    #     ec2_security_group_name: "String",
    #     ec2_security_group_owner_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_security_group.cluster_security_group_name #=> String
    #   resp.cluster_security_group.description #=> String
    #   resp.cluster_security_group.ec2_security_groups #=> Array
    #   resp.cluster_security_group.ec2_security_groups[0].status #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].tags #=> Array
    #   resp.cluster_security_group.ec2_security_groups[0].tags[0].key #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].tags[0].value #=> String
    #   resp.cluster_security_group.ip_ranges #=> Array
    #   resp.cluster_security_group.ip_ranges[0].status #=> String
    #   resp.cluster_security_group.ip_ranges[0].cidrip #=> String
    #   resp.cluster_security_group.ip_ranges[0].tags #=> Array
    #   resp.cluster_security_group.ip_ranges[0].tags[0].key #=> String
    #   resp.cluster_security_group.ip_ranges[0].tags[0].value #=> String
    #   resp.cluster_security_group.tags #=> Array
    #   resp.cluster_security_group.tags[0].key #=> String
    #   resp.cluster_security_group.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AuthorizeClusterSecurityGroupIngress AWS API Documentation
    #
    # @overload authorize_cluster_security_group_ingress(params = {})
    # @param [Hash] params ({})
    def authorize_cluster_security_group_ingress(params = {}, options = {})
      req = build_request(:authorize_cluster_security_group_ingress, params)
      req.send_request(options)
    end

    # Authorizes the specified AWS customer account to restore the specified
    # snapshot.
    #
    # For more information about working with snapshots, go to [Amazon
    # Redshift Snapshots][1] in the *Amazon Redshift Cluster Management
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html
    #
    # @option params [required, String] :snapshot_identifier
    #   The identifier of the snapshot the account is authorized to restore.
    #
    # @option params [String] :snapshot_cluster_identifier
    #   The identifier of the cluster the snapshot was created from. This
    #   parameter is required if your IAM user has a policy containing a
    #   snapshot resource element that specifies anything other than * for
    #   the cluster name.
    #
    # @option params [required, String] :account_with_restore_access
    #   The identifier of the AWS customer account authorized to restore the
    #   specified snapshot.
    #
    #   To share a snapshot with AWS support, specify amazon-redshift-support.
    #
    # @return [Types::AuthorizeSnapshotAccessResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AuthorizeSnapshotAccessResult#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_snapshot_access({
    #     snapshot_identifier: "String", # required
    #     snapshot_cluster_identifier: "String",
    #     account_with_restore_access: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.snapshot_identifier #=> String
    #   resp.snapshot.cluster_identifier #=> String
    #   resp.snapshot.snapshot_create_time #=> Time
    #   resp.snapshot.status #=> String
    #   resp.snapshot.port #=> Integer
    #   resp.snapshot.availability_zone #=> String
    #   resp.snapshot.cluster_create_time #=> Time
    #   resp.snapshot.master_username #=> String
    #   resp.snapshot.cluster_version #=> String
    #   resp.snapshot.snapshot_type #=> String
    #   resp.snapshot.node_type #=> String
    #   resp.snapshot.number_of_nodes #=> Integer
    #   resp.snapshot.db_name #=> String
    #   resp.snapshot.vpc_id #=> String
    #   resp.snapshot.encrypted #=> Boolean
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.snapshot.accounts_with_restore_access #=> Array
    #   resp.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.snapshot.owner_account #=> String
    #   resp.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.snapshot.source_region #=> String
    #   resp.snapshot.tags #=> Array
    #   resp.snapshot.tags[0].key #=> String
    #   resp.snapshot.tags[0].value #=> String
    #   resp.snapshot.restorable_node_types #=> Array
    #   resp.snapshot.restorable_node_types[0] #=> String
    #   resp.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.snapshot.maintenance_track_name #=> String
    #   resp.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.snapshot.snapshot_retention_start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AuthorizeSnapshotAccess AWS API Documentation
    #
    # @overload authorize_snapshot_access(params = {})
    # @param [Hash] params ({})
    def authorize_snapshot_access(params = {}, options = {})
      req = build_request(:authorize_snapshot_access, params)
      req.send_request(options)
    end

    # Deletes a set of cluster snapshots.
    #
    # @option params [required, Array<Types::DeleteClusterSnapshotMessage>] :identifiers
    #   A list of identifiers for the snapshots that you want to delete.
    #
    # @return [Types::BatchDeleteClusterSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteClusterSnapshotsResult#resources #resources} => Array&lt;String&gt;
    #   * {Types::BatchDeleteClusterSnapshotsResult#errors #errors} => Array&lt;Types::SnapshotErrorMessage&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_cluster_snapshots({
    #     identifiers: [ # required
    #       {
    #         snapshot_identifier: "String", # required
    #         snapshot_cluster_identifier: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].snapshot_identifier #=> String
    #   resp.errors[0].snapshot_cluster_identifier #=> String
    #   resp.errors[0].failure_code #=> String
    #   resp.errors[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/BatchDeleteClusterSnapshots AWS API Documentation
    #
    # @overload batch_delete_cluster_snapshots(params = {})
    # @param [Hash] params ({})
    def batch_delete_cluster_snapshots(params = {}, options = {})
      req = build_request(:batch_delete_cluster_snapshots, params)
      req.send_request(options)
    end

    # Modifies the settings for a set of cluster snapshots.
    #
    # @option params [required, Array<String>] :snapshot_identifier_list
    #   A list of snapshot identifiers you want to modify.
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   The number of days that a manual snapshot is retained. If you specify
    #   the value -1, the manual snapshot is retained indefinitely.
    #
    #   The number must be either -1 or an integer between 1 and 3,653.
    #
    #   If you decrease the manual snapshot retention period from its current
    #   value, existing manual snapshots that fall outside of the new
    #   retention period will return an error. If you want to suppress the
    #   errors and delete the snapshots, use the force option.
    #
    # @option params [Boolean] :force
    #   A boolean value indicating whether to override an exception if the
    #   retention period has passed.
    #
    # @return [Types::BatchModifyClusterSnapshotsOutputMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchModifyClusterSnapshotsOutputMessage#resources #resources} => Array&lt;String&gt;
    #   * {Types::BatchModifyClusterSnapshotsOutputMessage#errors #errors} => Array&lt;Types::SnapshotErrorMessage&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_modify_cluster_snapshots({
    #     snapshot_identifier_list: ["String"], # required
    #     manual_snapshot_retention_period: 1,
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].snapshot_identifier #=> String
    #   resp.errors[0].snapshot_cluster_identifier #=> String
    #   resp.errors[0].failure_code #=> String
    #   resp.errors[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/BatchModifyClusterSnapshots AWS API Documentation
    #
    # @overload batch_modify_cluster_snapshots(params = {})
    # @param [Hash] params ({})
    def batch_modify_cluster_snapshots(params = {}, options = {})
      req = build_request(:batch_modify_cluster_snapshots, params)
      req.send_request(options)
    end

    # Cancels a resize operation for a cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The unique identifier for the cluster that you want to cancel a resize
    #   operation for.
    #
    # @return [Types::ResizeProgressMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResizeProgressMessage#target_node_type #target_node_type} => String
    #   * {Types::ResizeProgressMessage#target_number_of_nodes #target_number_of_nodes} => Integer
    #   * {Types::ResizeProgressMessage#target_cluster_type #target_cluster_type} => String
    #   * {Types::ResizeProgressMessage#status #status} => String
    #   * {Types::ResizeProgressMessage#import_tables_completed #import_tables_completed} => Array&lt;String&gt;
    #   * {Types::ResizeProgressMessage#import_tables_in_progress #import_tables_in_progress} => Array&lt;String&gt;
    #   * {Types::ResizeProgressMessage#import_tables_not_started #import_tables_not_started} => Array&lt;String&gt;
    #   * {Types::ResizeProgressMessage#avg_resize_rate_in_mega_bytes_per_second #avg_resize_rate_in_mega_bytes_per_second} => Float
    #   * {Types::ResizeProgressMessage#total_resize_data_in_mega_bytes #total_resize_data_in_mega_bytes} => Integer
    #   * {Types::ResizeProgressMessage#progress_in_mega_bytes #progress_in_mega_bytes} => Integer
    #   * {Types::ResizeProgressMessage#elapsed_time_in_seconds #elapsed_time_in_seconds} => Integer
    #   * {Types::ResizeProgressMessage#estimated_time_to_completion_in_seconds #estimated_time_to_completion_in_seconds} => Integer
    #   * {Types::ResizeProgressMessage#resize_type #resize_type} => String
    #   * {Types::ResizeProgressMessage#message #message} => String
    #   * {Types::ResizeProgressMessage#target_encryption_type #target_encryption_type} => String
    #   * {Types::ResizeProgressMessage#data_transfer_progress_percent #data_transfer_progress_percent} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_resize({
    #     cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_node_type #=> String
    #   resp.target_number_of_nodes #=> Integer
    #   resp.target_cluster_type #=> String
    #   resp.status #=> String
    #   resp.import_tables_completed #=> Array
    #   resp.import_tables_completed[0] #=> String
    #   resp.import_tables_in_progress #=> Array
    #   resp.import_tables_in_progress[0] #=> String
    #   resp.import_tables_not_started #=> Array
    #   resp.import_tables_not_started[0] #=> String
    #   resp.avg_resize_rate_in_mega_bytes_per_second #=> Float
    #   resp.total_resize_data_in_mega_bytes #=> Integer
    #   resp.progress_in_mega_bytes #=> Integer
    #   resp.elapsed_time_in_seconds #=> Integer
    #   resp.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.resize_type #=> String
    #   resp.message #=> String
    #   resp.target_encryption_type #=> String
    #   resp.data_transfer_progress_percent #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CancelResize AWS API Documentation
    #
    # @overload cancel_resize(params = {})
    # @param [Hash] params ({})
    def cancel_resize(params = {}, options = {})
      req = build_request(:cancel_resize, params)
      req.send_request(options)
    end

    # Copies the specified automated cluster snapshot to a new manual
    # cluster snapshot. The source must be an automated snapshot and it must
    # be in the available state.
    #
    # When you delete a cluster, Amazon Redshift deletes any automated
    # snapshots of the cluster. Also, when the retention period of the
    # snapshot expires, Amazon Redshift automatically deletes it. If you
    # want to keep an automated snapshot for a longer period, you can make a
    # manual copy of the snapshot. Manual snapshots are retained until you
    # delete them.
    #
    # For more information about working with snapshots, go to [Amazon
    # Redshift Snapshots][1] in the *Amazon Redshift Cluster Management
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html
    #
    # @option params [required, String] :source_snapshot_identifier
    #   The identifier for the source snapshot.
    #
    #   Constraints:
    #
    #   * Must be the identifier for a valid automated snapshot whose state is
    #     `available`.
    #
    #   ^
    #
    # @option params [String] :source_snapshot_cluster_identifier
    #   The identifier of the cluster the source snapshot was created from.
    #   This parameter is required if your IAM user has a policy containing a
    #   snapshot resource element that specifies anything other than * for
    #   the cluster name.
    #
    #   Constraints:
    #
    #   * Must be the identifier for a valid cluster.
    #
    #   ^
    #
    # @option params [required, String] :target_snapshot_identifier
    #   The identifier given to the new manual snapshot.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank.
    #
    #   * Must contain from 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique for the AWS account that is making the request.
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   The number of days that a manual snapshot is retained. If the value is
    #   -1, the manual snapshot is retained indefinitely.
    #
    #   The value must be either -1 or an integer between 1 and 3,653.
    #
    #   The default value is -1.
    #
    # @return [Types::CopyClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyClusterSnapshotResult#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_cluster_snapshot({
    #     source_snapshot_identifier: "String", # required
    #     source_snapshot_cluster_identifier: "String",
    #     target_snapshot_identifier: "String", # required
    #     manual_snapshot_retention_period: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.snapshot_identifier #=> String
    #   resp.snapshot.cluster_identifier #=> String
    #   resp.snapshot.snapshot_create_time #=> Time
    #   resp.snapshot.status #=> String
    #   resp.snapshot.port #=> Integer
    #   resp.snapshot.availability_zone #=> String
    #   resp.snapshot.cluster_create_time #=> Time
    #   resp.snapshot.master_username #=> String
    #   resp.snapshot.cluster_version #=> String
    #   resp.snapshot.snapshot_type #=> String
    #   resp.snapshot.node_type #=> String
    #   resp.snapshot.number_of_nodes #=> Integer
    #   resp.snapshot.db_name #=> String
    #   resp.snapshot.vpc_id #=> String
    #   resp.snapshot.encrypted #=> Boolean
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.snapshot.accounts_with_restore_access #=> Array
    #   resp.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.snapshot.owner_account #=> String
    #   resp.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.snapshot.source_region #=> String
    #   resp.snapshot.tags #=> Array
    #   resp.snapshot.tags[0].key #=> String
    #   resp.snapshot.tags[0].value #=> String
    #   resp.snapshot.restorable_node_types #=> Array
    #   resp.snapshot.restorable_node_types[0] #=> String
    #   resp.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.snapshot.maintenance_track_name #=> String
    #   resp.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.snapshot.snapshot_retention_start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CopyClusterSnapshot AWS API Documentation
    #
    # @overload copy_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def copy_cluster_snapshot(params = {}, options = {})
      req = build_request(:copy_cluster_snapshot, params)
      req.send_request(options)
    end

    # Creates a new cluster with the specified parameters.
    #
    # To create a cluster in Virtual Private Cloud (VPC), you must provide a
    # cluster subnet group name. The cluster subnet group identifies the
    # subnets of your VPC that Amazon Redshift uses when creating the
    # cluster. For more information about managing clusters, go to [Amazon
    # Redshift Clusters][1] in the *Amazon Redshift Cluster Management
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
    #
    # @option params [String] :db_name
    #   The name of the first database to be created when the cluster is
    #   created.
    #
    #   To create additional databases after the cluster is created, connect
    #   to the cluster with a SQL client and use SQL commands to create a
    #   database. For more information, go to [Create a Database][1] in the
    #   Amazon Redshift Database Developer Guide.
    #
    #   Default: `dev`
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 alphanumeric characters.
    #
    #   * Must contain only lowercase letters.
    #
    #   * Cannot be a word that is reserved by the service. A list of reserved
    #     words can be found in [Reserved Words][2] in the Amazon Redshift
    #     Database Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html
    #   [2]: https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #
    # @option params [required, String] :cluster_identifier
    #   A unique identifier for the cluster. You use this identifier to refer
    #   to the cluster for any subsequent cluster operations such as deleting
    #   or modifying. The identifier also appears in the Amazon Redshift
    #   console.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * Alphabetic characters must be lowercase.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique for all clusters within an AWS account.
    #
    #   Example: `myexamplecluster`
    #
    # @option params [String] :cluster_type
    #   The type of the cluster. When cluster type is specified as
    #
    #   * `single-node`, the **NumberOfNodes** parameter is not required.
    #
    #   * `multi-node`, the **NumberOfNodes** parameter is required.
    #
    #   Valid Values: `multi-node` \| `single-node`
    #
    #   Default: `multi-node`
    #
    # @option params [required, String] :node_type
    #   The node type to be provisioned for the cluster. For information about
    #   node types, go to [ Working with Clusters][1] in the *Amazon Redshift
    #   Cluster Management Guide*.
    #
    #   Valid Values: `ds2.xlarge` \| `ds2.8xlarge` \| `dc1.large` \|
    #   `dc1.8xlarge` \| `dc2.large` \| `dc2.8xlarge` \| `ra3.4xlarge` \|
    #   `ra3.16xlarge`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes
    #
    # @option params [required, String] :master_username
    #   The user name associated with the master user account for the cluster
    #   that is being created.
    #
    #   Constraints:
    #
    #   * Must be 1 - 128 alphanumeric characters. The user name can't be
    #     `PUBLIC`.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word. A list of reserved words can be found in
    #     [Reserved Words][1] in the Amazon Redshift Database Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #
    # @option params [required, String] :master_user_password
    #   The password associated with the master user account for the cluster
    #   that is being created.
    #
    #   Constraints:
    #
    #   * Must be between 8 and 64 characters in length.
    #
    #   * Must contain at least one uppercase letter.
    #
    #   * Must contain at least one lowercase letter.
    #
    #   * Must contain one number.
    #
    #   * Can be any printable ASCII character (ASCII code 33 to 126) except
    #     ' (single quote), " (double quote), \\, /, @, or space.
    #
    # @option params [Array<String>] :cluster_security_groups
    #   A list of security groups to be associated with this cluster.
    #
    #   Default: The default cluster security group for Amazon Redshift.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of Virtual Private Cloud (VPC) security groups to be associated
    #   with the cluster.
    #
    #   Default: The default VPC security group is associated with the
    #   cluster.
    #
    # @option params [String] :cluster_subnet_group_name
    #   The name of a cluster subnet group to be associated with this cluster.
    #
    #   If this parameter is not provided the resulting cluster will be
    #   deployed outside virtual private cloud (VPC).
    #
    # @option params [String] :availability_zone
    #   The EC2 Availability Zone (AZ) in which you want Amazon Redshift to
    #   provision the cluster. For example, if you have several EC2 instances
    #   running in a specific Availability Zone, then you might want the
    #   cluster to be provisioned in the same zone in order to decrease
    #   network latency.
    #
    #   Default: A random, system-chosen Availability Zone in the region that
    #   is specified by the endpoint.
    #
    #   Example: `us-east-2d`
    #
    #   Constraint: The specified Availability Zone must be in the same region
    #   as the current endpoint.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range (in UTC) during which automated cluster
    #   maintenance can occur.
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Default: A 30-minute window selected at random from an 8-hour block of
    #   time per region, occurring on a random day of the week. For more
    #   information about the time blocks for each region, see [Maintenance
    #   Windows][1] in Amazon Redshift Cluster Management Guide.
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows
    #
    # @option params [String] :cluster_parameter_group_name
    #   The name of the parameter group to be associated with this cluster.
    #
    #   Default: The default Amazon Redshift cluster parameter group. For
    #   information about the default parameter group, go to [Working with
    #   Amazon Redshift Parameter Groups][1]
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #
    # @option params [Integer] :automated_snapshot_retention_period
    #   The number of days that automated snapshots are retained. If the value
    #   is 0, automated snapshots are disabled. Even if automated snapshots
    #   are disabled, you can still create manual snapshots when you want with
    #   CreateClusterSnapshot.
    #
    #   Default: `1`
    #
    #   Constraints: Must be a value from 0 to 35.
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   The default number of days to retain a manual snapshot. If the value
    #   is -1, the snapshot is retained indefinitely. This setting doesn't
    #   change the retention period of existing snapshots.
    #
    #   The value must be either -1 or an integer between 1 and 3,653.
    #
    # @option params [Integer] :port
    #   The port number on which the cluster accepts incoming connections.
    #
    #   The cluster is accessible only via the JDBC and ODBC connection
    #   strings. Part of the connection string requires the port on which the
    #   cluster will listen for incoming connections.
    #
    #   Default: `5439`
    #
    #   Valid Values: `1150-65535`
    #
    # @option params [String] :cluster_version
    #   The version of the Amazon Redshift engine software that you want to
    #   deploy on the cluster.
    #
    #   The version selected runs on all the nodes in the cluster.
    #
    #   Constraints: Only version 1.0 is currently available.
    #
    #   Example: `1.0`
    #
    # @option params [Boolean] :allow_version_upgrade
    #   If `true`, major version upgrades can be applied during the
    #   maintenance window to the Amazon Redshift engine that is running on
    #   the cluster.
    #
    #   When a new major version of the Amazon Redshift engine is released,
    #   you can request that the service automatically apply upgrades during
    #   the maintenance window to the Amazon Redshift engine that is running
    #   on your cluster.
    #
    #   Default: `true`
    #
    # @option params [Integer] :number_of_nodes
    #   The number of compute nodes in the cluster. This parameter is required
    #   when the **ClusterType** parameter is specified as `multi-node`.
    #
    #   For information about determining how many nodes you need, go to [
    #   Working with Clusters][1] in the *Amazon Redshift Cluster Management
    #   Guide*.
    #
    #   If you don't specify this parameter, you get a single-node cluster.
    #   When requesting a multi-node cluster, you must specify the number of
    #   nodes that you want in the cluster.
    #
    #   Default: `1`
    #
    #   Constraints: Value must be at least 1 and no more than 100.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes
    #
    # @option params [Boolean] :publicly_accessible
    #   If `true`, the cluster can be accessed from a public network.
    #
    # @option params [Boolean] :encrypted
    #   If `true`, the data in the cluster is encrypted at rest.
    #
    #   Default: false
    #
    # @option params [String] :hsm_client_certificate_identifier
    #   Specifies the name of the HSM client certificate the Amazon Redshift
    #   cluster uses to retrieve the data encryption keys stored in an HSM.
    #
    # @option params [String] :hsm_configuration_identifier
    #   Specifies the name of the HSM configuration that contains the
    #   information the Amazon Redshift cluster can use to retrieve and store
    #   keys in an HSM.
    #
    # @option params [String] :elastic_ip
    #   The Elastic IP (EIP) address for the cluster.
    #
    #   Constraints: The cluster must be provisioned in EC2-VPC and
    #   publicly-accessible through an Internet gateway. For more information
    #   about provisioning clusters in EC2-VPC, go to [Supported Platforms to
    #   Launch Your Cluster][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag instances.
    #
    # @option params [String] :kms_key_id
    #   The AWS Key Management Service (KMS) key ID of the encryption key that
    #   you want to use to encrypt data in the cluster.
    #
    # @option params [Boolean] :enhanced_vpc_routing
    #   An option that specifies whether to create the cluster with enhanced
    #   VPC routing enabled. To create a cluster that uses enhanced VPC
    #   routing, the cluster must be in a VPC. For more information, see
    #   [Enhanced VPC Routing][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #   If this option is `true`, enhanced VPC routing is enabled.
    #
    #   Default: false
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html
    #
    # @option params [String] :additional_info
    #   Reserved.
    #
    # @option params [Array<String>] :iam_roles
    #   A list of AWS Identity and Access Management (IAM) roles that can be
    #   used by the cluster to access other AWS services. You must supply the
    #   IAM roles in their Amazon Resource Name (ARN) format. You can supply
    #   up to 10 IAM roles in a single request.
    #
    #   A cluster can have up to 10 IAM roles associated with it at any time.
    #
    # @option params [String] :maintenance_track_name
    #   An optional parameter for the name of the maintenance track for the
    #   cluster. If you don't provide a maintenance track name, the cluster
    #   is assigned to the `current` track.
    #
    # @option params [String] :snapshot_schedule_identifier
    #   A unique identifier for the snapshot schedule.
    #
    # @return [Types::CreateClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     db_name: "String",
    #     cluster_identifier: "String", # required
    #     cluster_type: "String",
    #     node_type: "String", # required
    #     master_username: "String", # required
    #     master_user_password: "String", # required
    #     cluster_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     cluster_subnet_group_name: "String",
    #     availability_zone: "String",
    #     preferred_maintenance_window: "String",
    #     cluster_parameter_group_name: "String",
    #     automated_snapshot_retention_period: 1,
    #     manual_snapshot_retention_period: 1,
    #     port: 1,
    #     cluster_version: "String",
    #     allow_version_upgrade: false,
    #     number_of_nodes: 1,
    #     publicly_accessible: false,
    #     encrypted: false,
    #     hsm_client_certificate_identifier: "String",
    #     hsm_configuration_identifier: "String",
    #     elastic_ip: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     kms_key_id: "String",
    #     enhanced_vpc_routing: false,
    #     additional_info: "String",
    #     iam_roles: ["String"],
    #     maintenance_track_name: "String",
    #     snapshot_schedule_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates an Amazon Redshift parameter group.
    #
    # Creating parameter groups is independent of creating clusters. You can
    # associate a cluster with a parameter group when you create the
    # cluster. You can also associate an existing cluster with a parameter
    # group after the cluster is created by using ModifyCluster.
    #
    # Parameters in the parameter group define specific behavior that
    # applies to the databases you create on the cluster. For more
    # information about parameters and parameter groups, go to [Amazon
    # Redshift Parameter Groups][1] in the *Amazon Redshift Cluster
    # Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters or hyphens
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique withing your AWS account.
    #
    #   <note markdown="1"> This value is stored as a lower-case string.
    #
    #    </note>
    #
    # @option params [required, String] :parameter_group_family
    #   The Amazon Redshift engine version to which the cluster parameter
    #   group applies. The cluster engine version determines the set of
    #   parameters.
    #
    #   To get a list of valid parameter group family names, you can call
    #   DescribeClusterParameterGroups. By default, Amazon Redshift returns a
    #   list of all the parameter groups that are owned by your AWS account,
    #   including the default parameter groups for each Amazon Redshift engine
    #   version. The parameter group family names associated with the default
    #   parameter groups provide you the valid values. For example, a valid
    #   family name is "redshift-1.0".
    #
    # @option params [required, String] :description
    #   A description of the parameter group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag instances.
    #
    # @return [Types::CreateClusterParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterParameterGroupResult#cluster_parameter_group #cluster_parameter_group} => Types::ClusterParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster_parameter_group({
    #     parameter_group_name: "String", # required
    #     parameter_group_family: "String", # required
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
    #   resp.cluster_parameter_group.parameter_group_name #=> String
    #   resp.cluster_parameter_group.parameter_group_family #=> String
    #   resp.cluster_parameter_group.description #=> String
    #   resp.cluster_parameter_group.tags #=> Array
    #   resp.cluster_parameter_group.tags[0].key #=> String
    #   resp.cluster_parameter_group.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterParameterGroup AWS API Documentation
    #
    # @overload create_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def create_cluster_parameter_group(params = {}, options = {})
      req = build_request(:create_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Creates a new Amazon Redshift security group. You use security groups
    # to control access to non-VPC clusters.
    #
    # For information about managing security groups, go to [Amazon Redshift
    # Cluster Security Groups][1] in the *Amazon Redshift Cluster Management
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html
    #
    # @option params [required, String] :cluster_security_group_name
    #   The name for the security group. Amazon Redshift stores the value as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain no more than 255 alphanumeric characters or hyphens.
    #
    #   * Must not be "Default".
    #
    #   * Must be unique for all security groups that are created by your AWS
    #     account.
    #
    #   Example: `examplesecuritygroup`
    #
    # @option params [required, String] :description
    #   A description for the security group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag instances.
    #
    # @return [Types::CreateClusterSecurityGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterSecurityGroupResult#cluster_security_group #cluster_security_group} => Types::ClusterSecurityGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster_security_group({
    #     cluster_security_group_name: "String", # required
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
    #   resp.cluster_security_group.cluster_security_group_name #=> String
    #   resp.cluster_security_group.description #=> String
    #   resp.cluster_security_group.ec2_security_groups #=> Array
    #   resp.cluster_security_group.ec2_security_groups[0].status #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].tags #=> Array
    #   resp.cluster_security_group.ec2_security_groups[0].tags[0].key #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].tags[0].value #=> String
    #   resp.cluster_security_group.ip_ranges #=> Array
    #   resp.cluster_security_group.ip_ranges[0].status #=> String
    #   resp.cluster_security_group.ip_ranges[0].cidrip #=> String
    #   resp.cluster_security_group.ip_ranges[0].tags #=> Array
    #   resp.cluster_security_group.ip_ranges[0].tags[0].key #=> String
    #   resp.cluster_security_group.ip_ranges[0].tags[0].value #=> String
    #   resp.cluster_security_group.tags #=> Array
    #   resp.cluster_security_group.tags[0].key #=> String
    #   resp.cluster_security_group.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSecurityGroup AWS API Documentation
    #
    # @overload create_cluster_security_group(params = {})
    # @param [Hash] params ({})
    def create_cluster_security_group(params = {}, options = {})
      req = build_request(:create_cluster_security_group, params)
      req.send_request(options)
    end

    # Creates a manual snapshot of the specified cluster. The cluster must
    # be in the `available` state.
    #
    # For more information about working with snapshots, go to [Amazon
    # Redshift Snapshots][1] in the *Amazon Redshift Cluster Management
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html
    #
    # @option params [required, String] :snapshot_identifier
    #   A unique identifier for the snapshot that you are requesting. This
    #   identifier must be unique for all snapshots within the AWS account.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 alphanumeric characters or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    #
    # @option params [required, String] :cluster_identifier
    #   The cluster identifier for which you want a snapshot.
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   The number of days that a manual snapshot is retained. If the value is
    #   -1, the manual snapshot is retained indefinitely.
    #
    #   The value must be either -1 or an integer between 1 and 3,653.
    #
    #   The default value is -1.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag instances.
    #
    # @return [Types::CreateClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterSnapshotResult#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster_snapshot({
    #     snapshot_identifier: "String", # required
    #     cluster_identifier: "String", # required
    #     manual_snapshot_retention_period: 1,
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
    #   resp.snapshot.snapshot_identifier #=> String
    #   resp.snapshot.cluster_identifier #=> String
    #   resp.snapshot.snapshot_create_time #=> Time
    #   resp.snapshot.status #=> String
    #   resp.snapshot.port #=> Integer
    #   resp.snapshot.availability_zone #=> String
    #   resp.snapshot.cluster_create_time #=> Time
    #   resp.snapshot.master_username #=> String
    #   resp.snapshot.cluster_version #=> String
    #   resp.snapshot.snapshot_type #=> String
    #   resp.snapshot.node_type #=> String
    #   resp.snapshot.number_of_nodes #=> Integer
    #   resp.snapshot.db_name #=> String
    #   resp.snapshot.vpc_id #=> String
    #   resp.snapshot.encrypted #=> Boolean
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.snapshot.accounts_with_restore_access #=> Array
    #   resp.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.snapshot.owner_account #=> String
    #   resp.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.snapshot.source_region #=> String
    #   resp.snapshot.tags #=> Array
    #   resp.snapshot.tags[0].key #=> String
    #   resp.snapshot.tags[0].value #=> String
    #   resp.snapshot.restorable_node_types #=> Array
    #   resp.snapshot.restorable_node_types[0] #=> String
    #   resp.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.snapshot.maintenance_track_name #=> String
    #   resp.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.snapshot.snapshot_retention_start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSnapshot AWS API Documentation
    #
    # @overload create_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def create_cluster_snapshot(params = {}, options = {})
      req = build_request(:create_cluster_snapshot, params)
      req.send_request(options)
    end

    # Creates a new Amazon Redshift subnet group. You must provide a list of
    # one or more subnets in your existing Amazon Virtual Private Cloud
    # (Amazon VPC) when creating Amazon Redshift subnet group.
    #
    # For information about subnet groups, go to [Amazon Redshift Cluster
    # Subnet Groups][1] in the *Amazon Redshift Cluster Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html
    #
    # @option params [required, String] :cluster_subnet_group_name
    #   The name for the subnet group. Amazon Redshift stores the value as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain no more than 255 alphanumeric characters or hyphens.
    #
    #   * Must not be "Default".
    #
    #   * Must be unique for all subnet groups that are created by your AWS
    #     account.
    #
    #   Example: `examplesubnetgroup`
    #
    # @option params [required, String] :description
    #   A description for the subnet group.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   An array of VPC subnet IDs. A maximum of 20 subnets can be modified in
    #   a single request.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag instances.
    #
    # @return [Types::CreateClusterSubnetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterSubnetGroupResult#cluster_subnet_group #cluster_subnet_group} => Types::ClusterSubnetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster_subnet_group({
    #     cluster_subnet_group_name: "String", # required
    #     description: "String", # required
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
    #   resp.cluster_subnet_group.cluster_subnet_group_name #=> String
    #   resp.cluster_subnet_group.description #=> String
    #   resp.cluster_subnet_group.vpc_id #=> String
    #   resp.cluster_subnet_group.subnet_group_status #=> String
    #   resp.cluster_subnet_group.subnets #=> Array
    #   resp.cluster_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.cluster_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.cluster_subnet_group.subnets[0].subnet_availability_zone.supported_platforms #=> Array
    #   resp.cluster_subnet_group.subnets[0].subnet_availability_zone.supported_platforms[0].name #=> String
    #   resp.cluster_subnet_group.subnets[0].subnet_status #=> String
    #   resp.cluster_subnet_group.tags #=> Array
    #   resp.cluster_subnet_group.tags[0].key #=> String
    #   resp.cluster_subnet_group.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSubnetGroup AWS API Documentation
    #
    # @overload create_cluster_subnet_group(params = {})
    # @param [Hash] params ({})
    def create_cluster_subnet_group(params = {}, options = {})
      req = build_request(:create_cluster_subnet_group, params)
      req.send_request(options)
    end

    # Creates an Amazon Redshift event notification subscription. This
    # action requires an ARN (Amazon Resource Name) of an Amazon SNS topic
    # created by either the Amazon Redshift console, the Amazon SNS console,
    # or the Amazon SNS API. To obtain an ARN with Amazon SNS, you must
    # create a topic in Amazon SNS and subscribe to the topic. The ARN is
    # displayed in the SNS console.
    #
    # You can specify the source type, and lists of Amazon Redshift source
    # IDs, event categories, and event severities. Notifications will be
    # sent for all events you want that match those criteria. For example,
    # you can specify source type = cluster, source ID = my-cluster-1 and
    # mycluster2, event categories = Availability, Backup, and severity =
    # ERROR. The subscription will only send notifications for those ERROR
    # events in the Availability and Backup categories for the specified
    # clusters.
    #
    # If you specify both the source type and source IDs, such as source
    # type = cluster and source identifier = my-cluster-1, notifications
    # will be sent for all the cluster events for my-cluster-1. If you
    # specify a source type but do not specify a source identifier, you will
    # receive notice of the events for the objects of that type in your AWS
    # account. If you do not specify either the SourceType nor the
    # SourceIdentifier, you will be notified of events generated from all
    # Amazon Redshift sources belonging to your AWS account. You must
    # specify a source type if you specify a source ID.
    #
    # @option params [required, String] :subscription_name
    #   The name of the event subscription to be created.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank.
    #
    #   * Must contain from 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [required, String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic used to
    #   transmit the event notifications. The ARN is created by Amazon SNS
    #   when you create a topic and subscribe to it.
    #
    # @option params [String] :source_type
    #   The type of source that will be generating the events. For example, if
    #   you want to be notified of events generated by a cluster, you would
    #   set this parameter to cluster. If this value is not specified, events
    #   are returned for all Amazon Redshift objects in your AWS account. You
    #   must specify a source type in order to specify source IDs.
    #
    #   Valid values: cluster, cluster-parameter-group,
    #   cluster-security-group, cluster-snapshot, and scheduled-action.
    #
    # @option params [Array<String>] :source_ids
    #   A list of one or more identifiers of Amazon Redshift source objects.
    #   All of the objects must be of the same type as was specified in the
    #   source type parameter. The event subscription will return only events
    #   generated by the specified objects. If not specified, then events are
    #   returned for all objects within the source type specified.
    #
    #   Example: my-cluster-1, my-cluster-2
    #
    #   Example: my-snapshot-20131010
    #
    # @option params [Array<String>] :event_categories
    #   Specifies the Amazon Redshift event categories to be published by the
    #   event notification subscription.
    #
    #   Values: configuration, management, monitoring, security
    #
    # @option params [String] :severity
    #   Specifies the Amazon Redshift event severity to be published by the
    #   event notification subscription.
    #
    #   Values: ERROR, INFO
    #
    # @option params [Boolean] :enabled
    #   A boolean value; set to `true` to activate the subscription, and set
    #   to `false` to create the subscription but not activate it.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag instances.
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
    #     source_ids: ["String"],
    #     event_categories: ["String"],
    #     severity: "String",
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
    #   resp.event_subscription.subscription_creation_time #=> Time
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.severity #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.tags #=> Array
    #   resp.event_subscription.tags[0].key #=> String
    #   resp.event_subscription.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateEventSubscription AWS API Documentation
    #
    # @overload create_event_subscription(params = {})
    # @param [Hash] params ({})
    def create_event_subscription(params = {}, options = {})
      req = build_request(:create_event_subscription, params)
      req.send_request(options)
    end

    # Creates an HSM client certificate that an Amazon Redshift cluster will
    # use to connect to the client's HSM in order to store and retrieve the
    # keys used to encrypt the cluster databases.
    #
    # The command returns a public key, which you must store in the HSM. In
    # addition to creating the HSM certificate, you must create an Amazon
    # Redshift HSM configuration that provides a cluster the information
    # needed to store and use encryption keys in the HSM. For more
    # information, go to [Hardware Security Modules][1] in the Amazon
    # Redshift Cluster Management Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html
    #
    # @option params [required, String] :hsm_client_certificate_identifier
    #   The identifier to be assigned to the new HSM client certificate that
    #   the cluster will use to connect to the HSM to use the database
    #   encryption keys.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag instances.
    #
    # @return [Types::CreateHsmClientCertificateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHsmClientCertificateResult#hsm_client_certificate #hsm_client_certificate} => Types::HsmClientCertificate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hsm_client_certificate({
    #     hsm_client_certificate_identifier: "String", # required
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
    #   resp.hsm_client_certificate.hsm_client_certificate_identifier #=> String
    #   resp.hsm_client_certificate.hsm_client_certificate_public_key #=> String
    #   resp.hsm_client_certificate.tags #=> Array
    #   resp.hsm_client_certificate.tags[0].key #=> String
    #   resp.hsm_client_certificate.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateHsmClientCertificate AWS API Documentation
    #
    # @overload create_hsm_client_certificate(params = {})
    # @param [Hash] params ({})
    def create_hsm_client_certificate(params = {}, options = {})
      req = build_request(:create_hsm_client_certificate, params)
      req.send_request(options)
    end

    # Creates an HSM configuration that contains the information required by
    # an Amazon Redshift cluster to store and use database encryption keys
    # in a Hardware Security Module (HSM). After creating the HSM
    # configuration, you can specify it as a parameter when creating a
    # cluster. The cluster will then store its encryption keys in the HSM.
    #
    # In addition to creating an HSM configuration, you must also create an
    # HSM client certificate. For more information, go to [Hardware Security
    # Modules][1] in the Amazon Redshift Cluster Management Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html
    #
    # @option params [required, String] :hsm_configuration_identifier
    #   The identifier to be assigned to the new Amazon Redshift HSM
    #   configuration.
    #
    # @option params [required, String] :description
    #   A text description of the HSM configuration to be created.
    #
    # @option params [required, String] :hsm_ip_address
    #   The IP address that the Amazon Redshift cluster must use to access the
    #   HSM.
    #
    # @option params [required, String] :hsm_partition_name
    #   The name of the partition in the HSM where the Amazon Redshift
    #   clusters will store their database encryption keys.
    #
    # @option params [required, String] :hsm_partition_password
    #   The password required to access the HSM partition.
    #
    # @option params [required, String] :hsm_server_public_certificate
    #   The HSMs public certificate file. When using Cloud HSM, the file name
    #   is server.pem.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag instances.
    #
    # @return [Types::CreateHsmConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHsmConfigurationResult#hsm_configuration #hsm_configuration} => Types::HsmConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hsm_configuration({
    #     hsm_configuration_identifier: "String", # required
    #     description: "String", # required
    #     hsm_ip_address: "String", # required
    #     hsm_partition_name: "String", # required
    #     hsm_partition_password: "String", # required
    #     hsm_server_public_certificate: "String", # required
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
    #   resp.hsm_configuration.hsm_configuration_identifier #=> String
    #   resp.hsm_configuration.description #=> String
    #   resp.hsm_configuration.hsm_ip_address #=> String
    #   resp.hsm_configuration.hsm_partition_name #=> String
    #   resp.hsm_configuration.tags #=> Array
    #   resp.hsm_configuration.tags[0].key #=> String
    #   resp.hsm_configuration.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateHsmConfiguration AWS API Documentation
    #
    # @overload create_hsm_configuration(params = {})
    # @param [Hash] params ({})
    def create_hsm_configuration(params = {}, options = {})
      req = build_request(:create_hsm_configuration, params)
      req.send_request(options)
    end

    # Creates a scheduled action. A scheduled action contains a schedule and
    # an Amazon Redshift API action. For example, you can create a schedule
    # of when to run the `ResizeCluster` API operation.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of the scheduled action. The name must be unique within an
    #   account. For more information about this parameter, see
    #   ScheduledAction.
    #
    # @option params [required, Types::ScheduledActionType] :target_action
    #   A JSON format string of the Amazon Redshift API operation with input
    #   parameters. For more information about this parameter, see
    #   ScheduledAction.
    #
    # @option params [required, String] :schedule
    #   The schedule in `at( )` or `cron( )` format. For more information
    #   about this parameter, see ScheduledAction.
    #
    # @option params [required, String] :iam_role
    #   The IAM role to assume to run the target action. For more information
    #   about this parameter, see ScheduledAction.
    #
    # @option params [String] :scheduled_action_description
    #   The description of the scheduled action.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time in UTC of the scheduled action. Before this time, the
    #   scheduled action does not trigger. For more information about this
    #   parameter, see ScheduledAction.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time in UTC of the scheduled action. After this time, the
    #   scheduled action does not trigger. For more information about this
    #   parameter, see ScheduledAction.
    #
    # @option params [Boolean] :enable
    #   If true, the schedule is enabled. If false, the scheduled action does
    #   not trigger. For more information about `state` of the scheduled
    #   action, see ScheduledAction.
    #
    # @return [Types::ScheduledAction] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScheduledAction#scheduled_action_name #scheduled_action_name} => String
    #   * {Types::ScheduledAction#target_action #target_action} => Types::ScheduledActionType
    #   * {Types::ScheduledAction#schedule #schedule} => String
    #   * {Types::ScheduledAction#iam_role #iam_role} => String
    #   * {Types::ScheduledAction#scheduled_action_description #scheduled_action_description} => String
    #   * {Types::ScheduledAction#state #state} => String
    #   * {Types::ScheduledAction#next_invocations #next_invocations} => Array&lt;Time&gt;
    #   * {Types::ScheduledAction#start_time #start_time} => Time
    #   * {Types::ScheduledAction#end_time #end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scheduled_action({
    #     scheduled_action_name: "String", # required
    #     target_action: { # required
    #       resize_cluster: {
    #         cluster_identifier: "String", # required
    #         cluster_type: "String",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         classic: false,
    #       },
    #       pause_cluster: {
    #         cluster_identifier: "String", # required
    #       },
    #       resume_cluster: {
    #         cluster_identifier: "String", # required
    #       },
    #     },
    #     schedule: "String", # required
    #     iam_role: "String", # required
    #     scheduled_action_description: "String",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     enable: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_action_name #=> String
    #   resp.target_action.resize_cluster.cluster_identifier #=> String
    #   resp.target_action.resize_cluster.cluster_type #=> String
    #   resp.target_action.resize_cluster.node_type #=> String
    #   resp.target_action.resize_cluster.number_of_nodes #=> Integer
    #   resp.target_action.resize_cluster.classic #=> Boolean
    #   resp.target_action.pause_cluster.cluster_identifier #=> String
    #   resp.target_action.resume_cluster.cluster_identifier #=> String
    #   resp.schedule #=> String
    #   resp.iam_role #=> String
    #   resp.scheduled_action_description #=> String
    #   resp.state #=> String, one of "ACTIVE", "DISABLED"
    #   resp.next_invocations #=> Array
    #   resp.next_invocations[0] #=> Time
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateScheduledAction AWS API Documentation
    #
    # @overload create_scheduled_action(params = {})
    # @param [Hash] params ({})
    def create_scheduled_action(params = {}, options = {})
      req = build_request(:create_scheduled_action, params)
      req.send_request(options)
    end

    # Creates a snapshot copy grant that permits Amazon Redshift to use a
    # customer master key (CMK) from AWS Key Management Service (AWS KMS) to
    # encrypt copied snapshots in a destination region.
    #
    # For more information about managing snapshot copy grants, go to
    # [Amazon Redshift Database Encryption][1] in the *Amazon Redshift
    # Cluster Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html
    #
    # @option params [required, String] :snapshot_copy_grant_name
    #   The name of the snapshot copy grant. This name must be unique in the
    #   region for the AWS account.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * Alphabetic characters must be lowercase.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique for all clusters within an AWS account.
    #
    # @option params [String] :kms_key_id
    #   The unique identifier of the customer master key (CMK) to which to
    #   grant Amazon Redshift permission. If no key is specified, the default
    #   key is used.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag instances.
    #
    # @return [Types::CreateSnapshotCopyGrantResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotCopyGrantResult#snapshot_copy_grant #snapshot_copy_grant} => Types::SnapshotCopyGrant
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot_copy_grant({
    #     snapshot_copy_grant_name: "String", # required
    #     kms_key_id: "String",
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
    #   resp.snapshot_copy_grant.snapshot_copy_grant_name #=> String
    #   resp.snapshot_copy_grant.kms_key_id #=> String
    #   resp.snapshot_copy_grant.tags #=> Array
    #   resp.snapshot_copy_grant.tags[0].key #=> String
    #   resp.snapshot_copy_grant.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateSnapshotCopyGrant AWS API Documentation
    #
    # @overload create_snapshot_copy_grant(params = {})
    # @param [Hash] params ({})
    def create_snapshot_copy_grant(params = {}, options = {})
      req = build_request(:create_snapshot_copy_grant, params)
      req.send_request(options)
    end

    # Create a snapshot schedule that can be associated to a cluster and
    # which overrides the default system backup schedule.
    #
    # @option params [Array<String>] :schedule_definitions
    #   The definition of the snapshot schedule. The definition is made up of
    #   schedule expressions, for example "cron(30 12 *)" or "rate(12
    #   hours)".
    #
    # @option params [String] :schedule_identifier
    #   A unique identifier for a snapshot schedule. Only alphanumeric
    #   characters are allowed for the identifier.
    #
    # @option params [String] :schedule_description
    #   The description of the snapshot schedule.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An optional set of tags you can use to search for the schedule.
    #
    # @option params [Boolean] :dry_run
    #
    # @option params [Integer] :next_invocations
    #
    # @return [Types::SnapshotSchedule] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SnapshotSchedule#schedule_definitions #schedule_definitions} => Array&lt;String&gt;
    #   * {Types::SnapshotSchedule#schedule_identifier #schedule_identifier} => String
    #   * {Types::SnapshotSchedule#schedule_description #schedule_description} => String
    #   * {Types::SnapshotSchedule#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::SnapshotSchedule#next_invocations #next_invocations} => Array&lt;Time&gt;
    #   * {Types::SnapshotSchedule#associated_cluster_count #associated_cluster_count} => Integer
    #   * {Types::SnapshotSchedule#associated_clusters #associated_clusters} => Array&lt;Types::ClusterAssociatedToSchedule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot_schedule({
    #     schedule_definitions: ["String"],
    #     schedule_identifier: "String",
    #     schedule_description: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     dry_run: false,
    #     next_invocations: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.schedule_definitions #=> Array
    #   resp.schedule_definitions[0] #=> String
    #   resp.schedule_identifier #=> String
    #   resp.schedule_description #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_invocations #=> Array
    #   resp.next_invocations[0] #=> Time
    #   resp.associated_cluster_count #=> Integer
    #   resp.associated_clusters #=> Array
    #   resp.associated_clusters[0].cluster_identifier #=> String
    #   resp.associated_clusters[0].schedule_association_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateSnapshotSchedule AWS API Documentation
    #
    # @overload create_snapshot_schedule(params = {})
    # @param [Hash] params ({})
    def create_snapshot_schedule(params = {}, options = {})
      req = build_request(:create_snapshot_schedule, params)
      req.send_request(options)
    end

    # Adds tags to a cluster.
    #
    # A resource can have up to 50 tags. If you try to create more than 50
    # tags for a resource, you will receive an error and the attempt will
    # fail.
    #
    # If you specify a key that already exists for the resource, the value
    # for that key will be updated with the new value.
    #
    # @option params [required, String] :resource_name
    #   The Amazon Resource Name (ARN) to which you want to add the tag or
    #   tags. For example, `arn:aws:redshift:us-east-2:123456789:cluster:t1`.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more name/value pairs to add as tags to the specified resource.
    #   Each tag name is passed in with the parameter `Key` and the
    #   corresponding value is passed in with the parameter `Value`. The `Key`
    #   and `Value` parameters are separated by a comma (,). Separate multiple
    #   tags with a space. For example, `--tags "Key"="owner","Value"="admin"
    #   "Key"="environment","Value"="test" "Key"="version","Value"="1.0"`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags({
    #     resource_name: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateTags AWS API Documentation
    #
    # @overload create_tags(params = {})
    # @param [Hash] params ({})
    def create_tags(params = {}, options = {})
      req = build_request(:create_tags, params)
      req.send_request(options)
    end

    # Creates a usage limit for a specified Amazon Redshift feature on a
    # cluster. The usage limit is identified by the returned usage limit
    # identifier.
    #
    # @option params [required, String] :cluster_identifier
    #   The identifier of the cluster that you want to limit usage.
    #
    # @option params [required, String] :feature_type
    #   The Amazon Redshift feature that you want to limit.
    #
    # @option params [required, String] :limit_type
    #   The type of limit. Depending on the feature type, this can be based on
    #   a time duration or data size. If `FeatureType` is `spectrum`, then
    #   `LimitType` must be `data-scanned`. If `FeatureType` is
    #   `concurrency-scaling`, then `LimitType` must be `time`.
    #
    # @option params [required, Integer] :amount
    #   The limit amount. If time-based, this amount is in minutes. If
    #   data-based, this amount is in terabytes (TB). The value must be a
    #   positive number.
    #
    # @option params [String] :period
    #   The time period that the amount applies to. A `weekly` period begins
    #   on Sunday. The default is `monthly`.
    #
    # @option params [String] :breach_action
    #   The action that Amazon Redshift takes when the limit is reached. The
    #   default is log. For more information about this parameter, see
    #   UsageLimit.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag instances.
    #
    # @return [Types::UsageLimit] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UsageLimit#usage_limit_id #usage_limit_id} => String
    #   * {Types::UsageLimit#cluster_identifier #cluster_identifier} => String
    #   * {Types::UsageLimit#feature_type #feature_type} => String
    #   * {Types::UsageLimit#limit_type #limit_type} => String
    #   * {Types::UsageLimit#amount #amount} => Integer
    #   * {Types::UsageLimit#period #period} => String
    #   * {Types::UsageLimit#breach_action #breach_action} => String
    #   * {Types::UsageLimit#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_usage_limit({
    #     cluster_identifier: "String", # required
    #     feature_type: "spectrum", # required, accepts spectrum, concurrency-scaling
    #     limit_type: "time", # required, accepts time, data-scanned
    #     amount: 1, # required
    #     period: "daily", # accepts daily, weekly, monthly
    #     breach_action: "log", # accepts log, emit-metric, disable
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
    #   resp.usage_limit_id #=> String
    #   resp.cluster_identifier #=> String
    #   resp.feature_type #=> String, one of "spectrum", "concurrency-scaling"
    #   resp.limit_type #=> String, one of "time", "data-scanned"
    #   resp.amount #=> Integer
    #   resp.period #=> String, one of "daily", "weekly", "monthly"
    #   resp.breach_action #=> String, one of "log", "emit-metric", "disable"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateUsageLimit AWS API Documentation
    #
    # @overload create_usage_limit(params = {})
    # @param [Hash] params ({})
    def create_usage_limit(params = {}, options = {})
      req = build_request(:create_usage_limit, params)
      req.send_request(options)
    end

    # Deletes a previously provisioned cluster without its final snapshot
    # being created. A successful response from the web service indicates
    # that the request was received correctly. Use DescribeClusters to
    # monitor the status of the deletion. The delete operation cannot be
    # canceled or reverted once submitted. For more information about
    # managing clusters, go to [Amazon Redshift Clusters][1] in the *Amazon
    # Redshift Cluster Management Guide*.
    #
    # If you want to shut down the cluster and retain it for future use, set
    # *SkipFinalClusterSnapshot* to `false` and specify a name for
    # *FinalClusterSnapshotIdentifier*. You can later restore this snapshot
    # to resume using the cluster. If a final cluster snapshot is requested,
    # the status of the cluster will be "final-snapshot" while the
    # snapshot is being taken, then it's "deleting" once Amazon Redshift
    # begins deleting the cluster.
    #
    # For more information about managing clusters, go to [Amazon Redshift
    # Clusters][1] in the *Amazon Redshift Cluster Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
    #
    # @option params [required, String] :cluster_identifier
    #   The identifier of the cluster to be deleted.
    #
    #   Constraints:
    #
    #   * Must contain lowercase characters.
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [Boolean] :skip_final_cluster_snapshot
    #   Determines whether a final snapshot of the cluster is created before
    #   Amazon Redshift deletes the cluster. If `true`, a final cluster
    #   snapshot is not created. If `false`, a final cluster snapshot is
    #   created before the cluster is deleted.
    #
    #   <note markdown="1"> The *FinalClusterSnapshotIdentifier* parameter must be specified if
    #   *SkipFinalClusterSnapshot* is `false`.
    #
    #    </note>
    #
    #   Default: `false`
    #
    # @option params [String] :final_cluster_snapshot_identifier
    #   The identifier of the final snapshot that is to be created immediately
    #   before deleting the cluster. If this parameter is provided,
    #   *SkipFinalClusterSnapshot* must be `false`.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [Integer] :final_cluster_snapshot_retention_period
    #   The number of days that a manual snapshot is retained. If the value is
    #   -1, the manual snapshot is retained indefinitely.
    #
    #   The value must be either -1 or an integer between 1 and 3,653.
    #
    #   The default value is -1.
    #
    # @return [Types::DeleteClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster_identifier: "String", # required
    #     skip_final_cluster_snapshot: false,
    #     final_cluster_snapshot_identifier: "String",
    #     final_cluster_snapshot_retention_period: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes a specified Amazon Redshift parameter group.
    #
    # <note markdown="1"> You cannot delete a parameter group if it is associated with a
    # cluster.
    #
    #  </note>
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the parameter group to be deleted.
    #
    #   Constraints:
    #
    #   * Must be the name of an existing cluster parameter group.
    #
    #   * Cannot delete a default cluster parameter group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster_parameter_group({
    #     parameter_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterParameterGroup AWS API Documentation
    #
    # @overload delete_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def delete_cluster_parameter_group(params = {}, options = {})
      req = build_request(:delete_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Deletes an Amazon Redshift security group.
    #
    # <note markdown="1"> You cannot delete a security group that is associated with any
    # clusters. You cannot delete the default security group.
    #
    #  </note>
    #
    # For information about managing security groups, go to [Amazon Redshift
    # Cluster Security Groups][1] in the *Amazon Redshift Cluster Management
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html
    #
    # @option params [required, String] :cluster_security_group_name
    #   The name of the cluster security group to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster_security_group({
    #     cluster_security_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterSecurityGroup AWS API Documentation
    #
    # @overload delete_cluster_security_group(params = {})
    # @param [Hash] params ({})
    def delete_cluster_security_group(params = {}, options = {})
      req = build_request(:delete_cluster_security_group, params)
      req.send_request(options)
    end

    # Deletes the specified manual snapshot. The snapshot must be in the
    # `available` state, with no other users authorized to access the
    # snapshot.
    #
    # Unlike automated snapshots, manual snapshots are retained even after
    # you delete your cluster. Amazon Redshift does not delete your manual
    # snapshots. You must delete manual snapshot explicitly to avoid getting
    # charged. If other accounts are authorized to access the snapshot, you
    # must revoke all of the authorizations before you can delete the
    # snapshot.
    #
    # @option params [required, String] :snapshot_identifier
    #   The unique identifier of the manual snapshot to be deleted.
    #
    #   Constraints: Must be the name of an existing snapshot that is in the
    #   `available`, `failed`, or `cancelled` state.
    #
    # @option params [String] :snapshot_cluster_identifier
    #   The unique identifier of the cluster the snapshot was created from.
    #   This parameter is required if your IAM user has a policy containing a
    #   snapshot resource element that specifies anything other than * for
    #   the cluster name.
    #
    #   Constraints: Must be the name of valid cluster.
    #
    # @return [Types::DeleteClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterSnapshotResult#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster_snapshot({
    #     snapshot_identifier: "String", # required
    #     snapshot_cluster_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.snapshot_identifier #=> String
    #   resp.snapshot.cluster_identifier #=> String
    #   resp.snapshot.snapshot_create_time #=> Time
    #   resp.snapshot.status #=> String
    #   resp.snapshot.port #=> Integer
    #   resp.snapshot.availability_zone #=> String
    #   resp.snapshot.cluster_create_time #=> Time
    #   resp.snapshot.master_username #=> String
    #   resp.snapshot.cluster_version #=> String
    #   resp.snapshot.snapshot_type #=> String
    #   resp.snapshot.node_type #=> String
    #   resp.snapshot.number_of_nodes #=> Integer
    #   resp.snapshot.db_name #=> String
    #   resp.snapshot.vpc_id #=> String
    #   resp.snapshot.encrypted #=> Boolean
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.snapshot.accounts_with_restore_access #=> Array
    #   resp.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.snapshot.owner_account #=> String
    #   resp.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.snapshot.source_region #=> String
    #   resp.snapshot.tags #=> Array
    #   resp.snapshot.tags[0].key #=> String
    #   resp.snapshot.tags[0].value #=> String
    #   resp.snapshot.restorable_node_types #=> Array
    #   resp.snapshot.restorable_node_types[0] #=> String
    #   resp.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.snapshot.maintenance_track_name #=> String
    #   resp.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.snapshot.snapshot_retention_start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterSnapshot AWS API Documentation
    #
    # @overload delete_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_cluster_snapshot(params = {}, options = {})
      req = build_request(:delete_cluster_snapshot, params)
      req.send_request(options)
    end

    # Deletes the specified cluster subnet group.
    #
    # @option params [required, String] :cluster_subnet_group_name
    #   The name of the cluster subnet group name to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster_subnet_group({
    #     cluster_subnet_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterSubnetGroup AWS API Documentation
    #
    # @overload delete_cluster_subnet_group(params = {})
    # @param [Hash] params ({})
    def delete_cluster_subnet_group(params = {}, options = {})
      req = build_request(:delete_cluster_subnet_group, params)
      req.send_request(options)
    end

    # Deletes an Amazon Redshift event notification subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the Amazon Redshift event notification subscription to be
    #   deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_subscription({
    #     subscription_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteEventSubscription AWS API Documentation
    #
    # @overload delete_event_subscription(params = {})
    # @param [Hash] params ({})
    def delete_event_subscription(params = {}, options = {})
      req = build_request(:delete_event_subscription, params)
      req.send_request(options)
    end

    # Deletes the specified HSM client certificate.
    #
    # @option params [required, String] :hsm_client_certificate_identifier
    #   The identifier of the HSM client certificate to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hsm_client_certificate({
    #     hsm_client_certificate_identifier: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteHsmClientCertificate AWS API Documentation
    #
    # @overload delete_hsm_client_certificate(params = {})
    # @param [Hash] params ({})
    def delete_hsm_client_certificate(params = {}, options = {})
      req = build_request(:delete_hsm_client_certificate, params)
      req.send_request(options)
    end

    # Deletes the specified Amazon Redshift HSM configuration.
    #
    # @option params [required, String] :hsm_configuration_identifier
    #   The identifier of the Amazon Redshift HSM configuration to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hsm_configuration({
    #     hsm_configuration_identifier: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteHsmConfiguration AWS API Documentation
    #
    # @overload delete_hsm_configuration(params = {})
    # @param [Hash] params ({})
    def delete_hsm_configuration(params = {}, options = {})
      req = build_request(:delete_hsm_configuration, params)
      req.send_request(options)
    end

    # Deletes a scheduled action.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of the scheduled action to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_action({
    #     scheduled_action_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteScheduledAction AWS API Documentation
    #
    # @overload delete_scheduled_action(params = {})
    # @param [Hash] params ({})
    def delete_scheduled_action(params = {}, options = {})
      req = build_request(:delete_scheduled_action, params)
      req.send_request(options)
    end

    # Deletes the specified snapshot copy grant.
    #
    # @option params [required, String] :snapshot_copy_grant_name
    #   The name of the snapshot copy grant to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot_copy_grant({
    #     snapshot_copy_grant_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteSnapshotCopyGrant AWS API Documentation
    #
    # @overload delete_snapshot_copy_grant(params = {})
    # @param [Hash] params ({})
    def delete_snapshot_copy_grant(params = {}, options = {})
      req = build_request(:delete_snapshot_copy_grant, params)
      req.send_request(options)
    end

    # Deletes a snapshot schedule.
    #
    # @option params [required, String] :schedule_identifier
    #   A unique identifier of the snapshot schedule to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot_schedule({
    #     schedule_identifier: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteSnapshotSchedule AWS API Documentation
    #
    # @overload delete_snapshot_schedule(params = {})
    # @param [Hash] params ({})
    def delete_snapshot_schedule(params = {}, options = {})
      req = build_request(:delete_snapshot_schedule, params)
      req.send_request(options)
    end

    # Deletes tags from a resource. You must provide the ARN of the resource
    # from which you want to delete the tag or tags.
    #
    # @option params [required, String] :resource_name
    #   The Amazon Resource Name (ARN) from which you want to remove the tag
    #   or tags. For example,
    #   `arn:aws:redshift:us-east-2:123456789:cluster:t1`.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     resource_name: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Deletes a usage limit from a cluster.
    #
    # @option params [required, String] :usage_limit_id
    #   The identifier of the usage limit to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_usage_limit({
    #     usage_limit_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteUsageLimit AWS API Documentation
    #
    # @overload delete_usage_limit(params = {})
    # @param [Hash] params ({})
    def delete_usage_limit(params = {}, options = {})
      req = build_request(:delete_usage_limit, params)
      req.send_request(options)
    end

    # Returns a list of attributes attached to an account
    #
    # @option params [Array<String>] :attribute_names
    #   A list of attribute names.
    #
    # @return [Types::AccountAttributeList] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AccountAttributeList#account_attributes #account_attributes} => Array&lt;Types::AccountAttribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_attributes({
    #     attribute_names: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.account_attributes #=> Array
    #   resp.account_attributes[0].attribute_name #=> String
    #   resp.account_attributes[0].attribute_values #=> Array
    #   resp.account_attributes[0].attribute_values[0].attribute_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeAccountAttributes AWS API Documentation
    #
    # @overload describe_account_attributes(params = {})
    # @param [Hash] params ({})
    def describe_account_attributes(params = {}, options = {})
      req = build_request(:describe_account_attributes, params)
      req.send_request(options)
    end

    # Returns an array of `ClusterDbRevision` objects.
    #
    # @option params [String] :cluster_identifier
    #   A unique identifier for a cluster whose `ClusterDbRevisions` you are
    #   requesting. This parameter is case sensitive. All clusters defined for
    #   an account are returned by default.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified MaxRecords
    #   value, a value is returned in the `marker` field of the response. You
    #   can retrieve the next set of response records by providing the
    #   returned `marker` value in the `marker` parameter and retrying the
    #   request.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point for returning
    #   a set of response records. When the results of a
    #   `DescribeClusterDbRevisions` request exceed the value specified in
    #   `MaxRecords`, Amazon Redshift returns a value in the `marker` field of
    #   the response. You can retrieve the next set of response records by
    #   providing the returned `marker` value in the `marker` parameter and
    #   retrying the request.
    #
    #   Constraints: You can specify either the `ClusterIdentifier` parameter,
    #   or the `marker` parameter, but not both.
    #
    # @return [Types::ClusterDbRevisionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClusterDbRevisionsMessage#marker #marker} => String
    #   * {Types::ClusterDbRevisionsMessage#cluster_db_revisions #cluster_db_revisions} => Array&lt;Types::ClusterDbRevision&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_db_revisions({
    #     cluster_identifier: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.cluster_db_revisions #=> Array
    #   resp.cluster_db_revisions[0].cluster_identifier #=> String
    #   resp.cluster_db_revisions[0].current_database_revision #=> String
    #   resp.cluster_db_revisions[0].database_revision_release_date #=> Time
    #   resp.cluster_db_revisions[0].revision_targets #=> Array
    #   resp.cluster_db_revisions[0].revision_targets[0].database_revision #=> String
    #   resp.cluster_db_revisions[0].revision_targets[0].description #=> String
    #   resp.cluster_db_revisions[0].revision_targets[0].database_revision_release_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterDbRevisions AWS API Documentation
    #
    # @overload describe_cluster_db_revisions(params = {})
    # @param [Hash] params ({})
    def describe_cluster_db_revisions(params = {}, options = {})
      req = build_request(:describe_cluster_db_revisions, params)
      req.send_request(options)
    end

    # Returns a list of Amazon Redshift parameter groups, including
    # parameter groups you created and the default parameter group. For each
    # parameter group, the response includes the parameter group name,
    # description, and parameter group family name. You can optionally
    # specify a name to retrieve the description of a specific parameter
    # group.
    #
    # For more information about parameters and parameter groups, go to
    # [Amazon Redshift Parameter Groups][1] in the *Amazon Redshift Cluster
    # Management Guide*.
    #
    # If you specify both tag keys and tag values in the same request,
    # Amazon Redshift returns all parameter groups that match any
    # combination of the specified keys and values. For example, if you have
    # `owner` and `environment` for tag keys, and `admin` and `test` for tag
    # values, all parameter groups that have any combination of those values
    # are returned.
    #
    # If both tag keys and values are omitted from the request, parameter
    # groups are returned regardless of whether they have tag keys or values
    # associated with them.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #
    # @option params [String] :parameter_group_name
    #   The name of a specific parameter group for which to return details. By
    #   default, details about all parameter groups and the default parameter
    #   group are returned.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeClusterParameterGroups request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @option params [Array<String>] :tag_keys
    #   A tag key or keys for which you want to return all matching cluster
    #   parameter groups that are associated with the specified key or keys.
    #   For example, suppose that you have parameter groups that are tagged
    #   with keys called `owner` and `environment`. If you specify both of
    #   these tag keys in the request, Amazon Redshift returns a response with
    #   the parameter groups that have either or both of these tag keys
    #   associated with them.
    #
    # @option params [Array<String>] :tag_values
    #   A tag value or values for which you want to return all matching
    #   cluster parameter groups that are associated with the specified tag
    #   value or values. For example, suppose that you have parameter groups
    #   that are tagged with values called `admin` and `test`. If you specify
    #   both of these tag values in the request, Amazon Redshift returns a
    #   response with the parameter groups that have either or both of these
    #   tag values associated with them.
    #
    # @return [Types::ClusterParameterGroupsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClusterParameterGroupsMessage#marker #marker} => String
    #   * {Types::ClusterParameterGroupsMessage#parameter_groups #parameter_groups} => Array&lt;Types::ClusterParameterGroup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_parameter_groups({
    #     parameter_group_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.parameter_groups #=> Array
    #   resp.parameter_groups[0].parameter_group_name #=> String
    #   resp.parameter_groups[0].parameter_group_family #=> String
    #   resp.parameter_groups[0].description #=> String
    #   resp.parameter_groups[0].tags #=> Array
    #   resp.parameter_groups[0].tags[0].key #=> String
    #   resp.parameter_groups[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterParameterGroups AWS API Documentation
    #
    # @overload describe_cluster_parameter_groups(params = {})
    # @param [Hash] params ({})
    def describe_cluster_parameter_groups(params = {}, options = {})
      req = build_request(:describe_cluster_parameter_groups, params)
      req.send_request(options)
    end

    # Returns a detailed list of parameters contained within the specified
    # Amazon Redshift parameter group. For each parameter the response
    # includes information such as parameter name, description, data type,
    # value, whether the parameter value is modifiable, and so on.
    #
    # You can specify *source* filter to retrieve parameters of only
    # specific type. For example, to retrieve parameters that were modified
    # by a user action such as from ModifyClusterParameterGroup, you can
    # specify *source* equal to *user*.
    #
    # For more information about parameters and parameter groups, go to
    # [Amazon Redshift Parameter Groups][1] in the *Amazon Redshift Cluster
    # Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #
    # @option params [required, String] :parameter_group_name
    #   The name of a cluster parameter group for which to return details.
    #
    # @option params [String] :source
    #   The parameter types to return. Specify `user` to show parameters that
    #   are different form the default. Similarly, specify `engine-default` to
    #   show parameters that are the same as the default parameter group.
    #
    #   Default: All parameter types returned.
    #
    #   Valid Values: `user` \| `engine-default`
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeClusterParameters request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @return [Types::ClusterParameterGroupDetails] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClusterParameterGroupDetails#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::ClusterParameterGroupDetails#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_parameters({
    #     parameter_group_name: "String", # required
    #     source: "String",
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
    #   resp.parameters[0].data_type #=> String
    #   resp.parameters[0].allowed_values #=> String
    #   resp.parameters[0].apply_type #=> String, one of "static", "dynamic"
    #   resp.parameters[0].is_modifiable #=> Boolean
    #   resp.parameters[0].minimum_engine_version #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterParameters AWS API Documentation
    #
    # @overload describe_cluster_parameters(params = {})
    # @param [Hash] params ({})
    def describe_cluster_parameters(params = {}, options = {})
      req = build_request(:describe_cluster_parameters, params)
      req.send_request(options)
    end

    # Returns information about Amazon Redshift security groups. If the name
    # of a security group is specified, the response will contain only
    # information about only that security group.
    #
    # For information about managing security groups, go to [Amazon Redshift
    # Cluster Security Groups][1] in the *Amazon Redshift Cluster Management
    # Guide*.
    #
    # If you specify both tag keys and tag values in the same request,
    # Amazon Redshift returns all security groups that match any combination
    # of the specified keys and values. For example, if you have `owner` and
    # `environment` for tag keys, and `admin` and `test` for tag values, all
    # security groups that have any combination of those values are
    # returned.
    #
    # If both tag keys and values are omitted from the request, security
    # groups are returned regardless of whether they have tag keys or values
    # associated with them.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html
    #
    # @option params [String] :cluster_security_group_name
    #   The name of a cluster security group for which you are requesting
    #   details. You can specify either the **Marker** parameter or a
    #   **ClusterSecurityGroupName** parameter, but not both.
    #
    #   Example: `securitygroup1`
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeClusterSecurityGroups request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    #   Constraints: You can specify either the **ClusterSecurityGroupName**
    #   parameter or the **Marker** parameter, but not both.
    #
    # @option params [Array<String>] :tag_keys
    #   A tag key or keys for which you want to return all matching cluster
    #   security groups that are associated with the specified key or keys.
    #   For example, suppose that you have security groups that are tagged
    #   with keys called `owner` and `environment`. If you specify both of
    #   these tag keys in the request, Amazon Redshift returns a response with
    #   the security groups that have either or both of these tag keys
    #   associated with them.
    #
    # @option params [Array<String>] :tag_values
    #   A tag value or values for which you want to return all matching
    #   cluster security groups that are associated with the specified tag
    #   value or values. For example, suppose that you have security groups
    #   that are tagged with values called `admin` and `test`. If you specify
    #   both of these tag values in the request, Amazon Redshift returns a
    #   response with the security groups that have either or both of these
    #   tag values associated with them.
    #
    # @return [Types::ClusterSecurityGroupMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClusterSecurityGroupMessage#marker #marker} => String
    #   * {Types::ClusterSecurityGroupMessage#cluster_security_groups #cluster_security_groups} => Array&lt;Types::ClusterSecurityGroup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_security_groups({
    #     cluster_security_group_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.cluster_security_groups #=> Array
    #   resp.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster_security_groups[0].description #=> String
    #   resp.cluster_security_groups[0].ec2_security_groups #=> Array
    #   resp.cluster_security_groups[0].ec2_security_groups[0].status #=> String
    #   resp.cluster_security_groups[0].ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.cluster_security_groups[0].ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.cluster_security_groups[0].ec2_security_groups[0].tags #=> Array
    #   resp.cluster_security_groups[0].ec2_security_groups[0].tags[0].key #=> String
    #   resp.cluster_security_groups[0].ec2_security_groups[0].tags[0].value #=> String
    #   resp.cluster_security_groups[0].ip_ranges #=> Array
    #   resp.cluster_security_groups[0].ip_ranges[0].status #=> String
    #   resp.cluster_security_groups[0].ip_ranges[0].cidrip #=> String
    #   resp.cluster_security_groups[0].ip_ranges[0].tags #=> Array
    #   resp.cluster_security_groups[0].ip_ranges[0].tags[0].key #=> String
    #   resp.cluster_security_groups[0].ip_ranges[0].tags[0].value #=> String
    #   resp.cluster_security_groups[0].tags #=> Array
    #   resp.cluster_security_groups[0].tags[0].key #=> String
    #   resp.cluster_security_groups[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterSecurityGroups AWS API Documentation
    #
    # @overload describe_cluster_security_groups(params = {})
    # @param [Hash] params ({})
    def describe_cluster_security_groups(params = {}, options = {})
      req = build_request(:describe_cluster_security_groups, params)
      req.send_request(options)
    end

    # Returns one or more snapshot objects, which contain metadata about
    # your cluster snapshots. By default, this operation returns information
    # about all snapshots of all clusters that are owned by you AWS customer
    # account. No information is returned for snapshots owned by inactive
    # AWS customer accounts.
    #
    # If you specify both tag keys and tag values in the same request,
    # Amazon Redshift returns all snapshots that match any combination of
    # the specified keys and values. For example, if you have `owner` and
    # `environment` for tag keys, and `admin` and `test` for tag values, all
    # snapshots that have any combination of those values are returned. Only
    # snapshots that you own are returned in the response; shared snapshots
    # are not returned with the tag key and tag value request parameters.
    #
    # If both tag keys and values are omitted from the request, snapshots
    # are returned regardless of whether they have tag keys or values
    # associated with them.
    #
    # @option params [String] :cluster_identifier
    #   The identifier of the cluster which generated the requested snapshots.
    #
    # @option params [String] :snapshot_identifier
    #   The snapshot identifier of the snapshot about which to return
    #   information.
    #
    # @option params [String] :snapshot_type
    #   The type of snapshots for which you are requesting information. By
    #   default, snapshots of all types are returned.
    #
    #   Valid Values: `automated` \| `manual`
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   A value that requests only snapshots created at or after the specified
    #   time. The time value is specified in ISO 8601 format. For more
    #   information about ISO 8601, go to the [ISO8601 Wikipedia page.][1]
    #
    #   Example: `2012-07-16T18:00:00Z`
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   A time value that requests only snapshots created at or before the
    #   specified time. The time value is specified in ISO 8601 format. For
    #   more information about ISO 8601, go to the [ISO8601 Wikipedia
    #   page.][1]
    #
    #   Example: `2012-07-16T18:00:00Z`
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeClusterSnapshots request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @option params [String] :owner_account
    #   The AWS customer account used to create or copy the snapshot. Use this
    #   field to filter the results to snapshots owned by a particular
    #   account. To describe snapshots you own, either specify your AWS
    #   customer account, or do not specify the parameter.
    #
    # @option params [Array<String>] :tag_keys
    #   A tag key or keys for which you want to return all matching cluster
    #   snapshots that are associated with the specified key or keys. For
    #   example, suppose that you have snapshots that are tagged with keys
    #   called `owner` and `environment`. If you specify both of these tag
    #   keys in the request, Amazon Redshift returns a response with the
    #   snapshots that have either or both of these tag keys associated with
    #   them.
    #
    # @option params [Array<String>] :tag_values
    #   A tag value or values for which you want to return all matching
    #   cluster snapshots that are associated with the specified tag value or
    #   values. For example, suppose that you have snapshots that are tagged
    #   with values called `admin` and `test`. If you specify both of these
    #   tag values in the request, Amazon Redshift returns a response with the
    #   snapshots that have either or both of these tag values associated with
    #   them.
    #
    # @option params [Boolean] :cluster_exists
    #   A value that indicates whether to return snapshots only for an
    #   existing cluster. You can perform table-level restore only by using a
    #   snapshot of an existing cluster, that is, a cluster that has not been
    #   deleted. Values for this parameter work as follows:
    #
    #   * If `ClusterExists` is set to `true`, `ClusterIdentifier` is
    #     required.
    #
    #   * If `ClusterExists` is set to `false` and `ClusterIdentifier` isn't
    #     specified, all snapshots associated with deleted clusters (orphaned
    #     snapshots) are returned.
    #
    #   * If `ClusterExists` is set to `false` and `ClusterIdentifier` is
    #     specified for a deleted cluster, snapshots associated with that
    #     cluster are returned.
    #
    #   * If `ClusterExists` is set to `false` and `ClusterIdentifier` is
    #     specified for an existing cluster, no snapshots are returned.
    #
    # @option params [Array<Types::SnapshotSortingEntity>] :sorting_entities
    #
    # @return [Types::SnapshotMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SnapshotMessage#marker #marker} => String
    #   * {Types::SnapshotMessage#snapshots #snapshots} => Array&lt;Types::Snapshot&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_snapshots({
    #     cluster_identifier: "String",
    #     snapshot_identifier: "String",
    #     snapshot_type: "String",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_records: 1,
    #     marker: "String",
    #     owner_account: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #     cluster_exists: false,
    #     sorting_entities: [
    #       {
    #         attribute: "SOURCE_TYPE", # required, accepts SOURCE_TYPE, TOTAL_SIZE, CREATE_TIME
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].snapshot_identifier #=> String
    #   resp.snapshots[0].cluster_identifier #=> String
    #   resp.snapshots[0].snapshot_create_time #=> Time
    #   resp.snapshots[0].status #=> String
    #   resp.snapshots[0].port #=> Integer
    #   resp.snapshots[0].availability_zone #=> String
    #   resp.snapshots[0].cluster_create_time #=> Time
    #   resp.snapshots[0].master_username #=> String
    #   resp.snapshots[0].cluster_version #=> String
    #   resp.snapshots[0].snapshot_type #=> String
    #   resp.snapshots[0].node_type #=> String
    #   resp.snapshots[0].number_of_nodes #=> Integer
    #   resp.snapshots[0].db_name #=> String
    #   resp.snapshots[0].vpc_id #=> String
    #   resp.snapshots[0].encrypted #=> Boolean
    #   resp.snapshots[0].kms_key_id #=> String
    #   resp.snapshots[0].encrypted_with_hsm #=> Boolean
    #   resp.snapshots[0].accounts_with_restore_access #=> Array
    #   resp.snapshots[0].accounts_with_restore_access[0].account_id #=> String
    #   resp.snapshots[0].accounts_with_restore_access[0].account_alias #=> String
    #   resp.snapshots[0].owner_account #=> String
    #   resp.snapshots[0].total_backup_size_in_mega_bytes #=> Float
    #   resp.snapshots[0].actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshots[0].backup_progress_in_mega_bytes #=> Float
    #   resp.snapshots[0].current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshots[0].estimated_seconds_to_completion #=> Integer
    #   resp.snapshots[0].elapsed_time_in_seconds #=> Integer
    #   resp.snapshots[0].source_region #=> String
    #   resp.snapshots[0].tags #=> Array
    #   resp.snapshots[0].tags[0].key #=> String
    #   resp.snapshots[0].tags[0].value #=> String
    #   resp.snapshots[0].restorable_node_types #=> Array
    #   resp.snapshots[0].restorable_node_types[0] #=> String
    #   resp.snapshots[0].enhanced_vpc_routing #=> Boolean
    #   resp.snapshots[0].maintenance_track_name #=> String
    #   resp.snapshots[0].manual_snapshot_retention_period #=> Integer
    #   resp.snapshots[0].manual_snapshot_remaining_days #=> Integer
    #   resp.snapshots[0].snapshot_retention_start_time #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * snapshot_available
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterSnapshots AWS API Documentation
    #
    # @overload describe_cluster_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_cluster_snapshots(params = {}, options = {})
      req = build_request(:describe_cluster_snapshots, params)
      req.send_request(options)
    end

    # Returns one or more cluster subnet group objects, which contain
    # metadata about your cluster subnet groups. By default, this operation
    # returns information about all cluster subnet groups that are defined
    # in you AWS account.
    #
    # If you specify both tag keys and tag values in the same request,
    # Amazon Redshift returns all subnet groups that match any combination
    # of the specified keys and values. For example, if you have `owner` and
    # `environment` for tag keys, and `admin` and `test` for tag values, all
    # subnet groups that have any combination of those values are returned.
    #
    # If both tag keys and values are omitted from the request, subnet
    # groups are returned regardless of whether they have tag keys or values
    # associated with them.
    #
    # @option params [String] :cluster_subnet_group_name
    #   The name of the cluster subnet group for which information is
    #   requested.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeClusterSubnetGroups request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @option params [Array<String>] :tag_keys
    #   A tag key or keys for which you want to return all matching cluster
    #   subnet groups that are associated with the specified key or keys. For
    #   example, suppose that you have subnet groups that are tagged with keys
    #   called `owner` and `environment`. If you specify both of these tag
    #   keys in the request, Amazon Redshift returns a response with the
    #   subnet groups that have either or both of these tag keys associated
    #   with them.
    #
    # @option params [Array<String>] :tag_values
    #   A tag value or values for which you want to return all matching
    #   cluster subnet groups that are associated with the specified tag value
    #   or values. For example, suppose that you have subnet groups that are
    #   tagged with values called `admin` and `test`. If you specify both of
    #   these tag values in the request, Amazon Redshift returns a response
    #   with the subnet groups that have either or both of these tag values
    #   associated with them.
    #
    # @return [Types::ClusterSubnetGroupMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClusterSubnetGroupMessage#marker #marker} => String
    #   * {Types::ClusterSubnetGroupMessage#cluster_subnet_groups #cluster_subnet_groups} => Array&lt;Types::ClusterSubnetGroup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_subnet_groups({
    #     cluster_subnet_group_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.cluster_subnet_groups #=> Array
    #   resp.cluster_subnet_groups[0].cluster_subnet_group_name #=> String
    #   resp.cluster_subnet_groups[0].description #=> String
    #   resp.cluster_subnet_groups[0].vpc_id #=> String
    #   resp.cluster_subnet_groups[0].subnet_group_status #=> String
    #   resp.cluster_subnet_groups[0].subnets #=> Array
    #   resp.cluster_subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.cluster_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
    #   resp.cluster_subnet_groups[0].subnets[0].subnet_availability_zone.supported_platforms #=> Array
    #   resp.cluster_subnet_groups[0].subnets[0].subnet_availability_zone.supported_platforms[0].name #=> String
    #   resp.cluster_subnet_groups[0].subnets[0].subnet_status #=> String
    #   resp.cluster_subnet_groups[0].tags #=> Array
    #   resp.cluster_subnet_groups[0].tags[0].key #=> String
    #   resp.cluster_subnet_groups[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterSubnetGroups AWS API Documentation
    #
    # @overload describe_cluster_subnet_groups(params = {})
    # @param [Hash] params ({})
    def describe_cluster_subnet_groups(params = {}, options = {})
      req = build_request(:describe_cluster_subnet_groups, params)
      req.send_request(options)
    end

    # Returns a list of all the available maintenance tracks.
    #
    # @option params [String] :maintenance_track_name
    #   The name of the maintenance track.
    #
    # @option params [Integer] :max_records
    #   An integer value for the maximum number of maintenance tracks to
    #   return.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a `DescribeClusterTracks`
    #   request exceed the value specified in `MaxRecords`, Amazon Redshift
    #   returns a value in the `Marker` field of the response. You can
    #   retrieve the next set of response records by providing the returned
    #   marker value in the `Marker` parameter and retrying the request.
    #
    # @return [Types::TrackListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TrackListMessage#maintenance_tracks #maintenance_tracks} => Array&lt;Types::MaintenanceTrack&gt;
    #   * {Types::TrackListMessage#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_tracks({
    #     maintenance_track_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.maintenance_tracks #=> Array
    #   resp.maintenance_tracks[0].maintenance_track_name #=> String
    #   resp.maintenance_tracks[0].database_version #=> String
    #   resp.maintenance_tracks[0].update_targets #=> Array
    #   resp.maintenance_tracks[0].update_targets[0].maintenance_track_name #=> String
    #   resp.maintenance_tracks[0].update_targets[0].database_version #=> String
    #   resp.maintenance_tracks[0].update_targets[0].supported_operations #=> Array
    #   resp.maintenance_tracks[0].update_targets[0].supported_operations[0].operation_name #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterTracks AWS API Documentation
    #
    # @overload describe_cluster_tracks(params = {})
    # @param [Hash] params ({})
    def describe_cluster_tracks(params = {}, options = {})
      req = build_request(:describe_cluster_tracks, params)
      req.send_request(options)
    end

    # Returns descriptions of the available Amazon Redshift cluster
    # versions. You can call this operation even before creating any
    # clusters to learn more about the Amazon Redshift versions. For more
    # information about managing clusters, go to [Amazon Redshift
    # Clusters][1] in the *Amazon Redshift Cluster Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
    #
    # @option params [String] :cluster_version
    #   The specific cluster version to return.
    #
    #   Example: `1.0`
    #
    # @option params [String] :cluster_parameter_group_family
    #   The name of a specific cluster parameter group family to return
    #   details for.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a DescribeClusterVersions
    #   request exceed the value specified in `MaxRecords`, AWS returns a
    #   value in the `Marker` field of the response. You can retrieve the next
    #   set of response records by providing the returned marker value in the
    #   `Marker` parameter and retrying the request.
    #
    # @return [Types::ClusterVersionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClusterVersionsMessage#marker #marker} => String
    #   * {Types::ClusterVersionsMessage#cluster_versions #cluster_versions} => Array&lt;Types::ClusterVersion&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_versions({
    #     cluster_version: "String",
    #     cluster_parameter_group_family: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.cluster_versions #=> Array
    #   resp.cluster_versions[0].cluster_version #=> String
    #   resp.cluster_versions[0].cluster_parameter_group_family #=> String
    #   resp.cluster_versions[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterVersions AWS API Documentation
    #
    # @overload describe_cluster_versions(params = {})
    # @param [Hash] params ({})
    def describe_cluster_versions(params = {}, options = {})
      req = build_request(:describe_cluster_versions, params)
      req.send_request(options)
    end

    # Returns properties of provisioned clusters including general cluster
    # properties, cluster database properties, maintenance and backup
    # properties, and security and access properties. This operation
    # supports pagination. For more information about managing clusters, go
    # to [Amazon Redshift Clusters][1] in the *Amazon Redshift Cluster
    # Management Guide*.
    #
    # If you specify both tag keys and tag values in the same request,
    # Amazon Redshift returns all clusters that match any combination of the
    # specified keys and values. For example, if you have `owner` and
    # `environment` for tag keys, and `admin` and `test` for tag values, all
    # clusters that have any combination of those values are returned.
    #
    # If both tag keys and values are omitted from the request, clusters are
    # returned regardless of whether they have tag keys or values associated
    # with them.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
    #
    # @option params [String] :cluster_identifier
    #   The unique identifier of a cluster whose properties you are
    #   requesting. This parameter is case sensitive.
    #
    #   The default is that all clusters defined for an account are returned.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a DescribeClusters
    #   request exceed the value specified in `MaxRecords`, AWS returns a
    #   value in the `Marker` field of the response. You can retrieve the next
    #   set of response records by providing the returned marker value in the
    #   `Marker` parameter and retrying the request.
    #
    #   Constraints: You can specify either the **ClusterIdentifier**
    #   parameter or the **Marker** parameter, but not both.
    #
    # @option params [Array<String>] :tag_keys
    #   A tag key or keys for which you want to return all matching clusters
    #   that are associated with the specified key or keys. For example,
    #   suppose that you have clusters that are tagged with keys called
    #   `owner` and `environment`. If you specify both of these tag keys in
    #   the request, Amazon Redshift returns a response with the clusters that
    #   have either or both of these tag keys associated with them.
    #
    # @option params [Array<String>] :tag_values
    #   A tag value or values for which you want to return all matching
    #   clusters that are associated with the specified tag value or values.
    #   For example, suppose that you have clusters that are tagged with
    #   values called `admin` and `test`. If you specify both of these tag
    #   values in the request, Amazon Redshift returns a response with the
    #   clusters that have either or both of these tag values associated with
    #   them.
    #
    # @return [Types::ClustersMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClustersMessage#marker #marker} => String
    #   * {Types::ClustersMessage#clusters #clusters} => Array&lt;Types::Cluster&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters({
    #     cluster_identifier: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.clusters #=> Array
    #   resp.clusters[0].cluster_identifier #=> String
    #   resp.clusters[0].node_type #=> String
    #   resp.clusters[0].cluster_status #=> String
    #   resp.clusters[0].cluster_availability_status #=> String
    #   resp.clusters[0].modify_status #=> String
    #   resp.clusters[0].master_username #=> String
    #   resp.clusters[0].db_name #=> String
    #   resp.clusters[0].endpoint.address #=> String
    #   resp.clusters[0].endpoint.port #=> Integer
    #   resp.clusters[0].cluster_create_time #=> Time
    #   resp.clusters[0].automated_snapshot_retention_period #=> Integer
    #   resp.clusters[0].manual_snapshot_retention_period #=> Integer
    #   resp.clusters[0].cluster_security_groups #=> Array
    #   resp.clusters[0].cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.clusters[0].cluster_security_groups[0].status #=> String
    #   resp.clusters[0].vpc_security_groups #=> Array
    #   resp.clusters[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.clusters[0].vpc_security_groups[0].status #=> String
    #   resp.clusters[0].cluster_parameter_groups #=> Array
    #   resp.clusters[0].cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.clusters[0].cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.clusters[0].cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.clusters[0].cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.clusters[0].cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.clusters[0].cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.clusters[0].cluster_subnet_group_name #=> String
    #   resp.clusters[0].vpc_id #=> String
    #   resp.clusters[0].availability_zone #=> String
    #   resp.clusters[0].preferred_maintenance_window #=> String
    #   resp.clusters[0].pending_modified_values.master_user_password #=> String
    #   resp.clusters[0].pending_modified_values.node_type #=> String
    #   resp.clusters[0].pending_modified_values.number_of_nodes #=> Integer
    #   resp.clusters[0].pending_modified_values.cluster_type #=> String
    #   resp.clusters[0].pending_modified_values.cluster_version #=> String
    #   resp.clusters[0].pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.clusters[0].pending_modified_values.cluster_identifier #=> String
    #   resp.clusters[0].pending_modified_values.publicly_accessible #=> Boolean
    #   resp.clusters[0].pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.clusters[0].pending_modified_values.maintenance_track_name #=> String
    #   resp.clusters[0].pending_modified_values.encryption_type #=> String
    #   resp.clusters[0].cluster_version #=> String
    #   resp.clusters[0].allow_version_upgrade #=> Boolean
    #   resp.clusters[0].number_of_nodes #=> Integer
    #   resp.clusters[0].publicly_accessible #=> Boolean
    #   resp.clusters[0].encrypted #=> Boolean
    #   resp.clusters[0].restore_status.status #=> String
    #   resp.clusters[0].restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.clusters[0].restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.clusters[0].restore_status.progress_in_mega_bytes #=> Integer
    #   resp.clusters[0].restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.clusters[0].restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.clusters[0].data_transfer_progress.status #=> String
    #   resp.clusters[0].data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.clusters[0].data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.clusters[0].data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.clusters[0].data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.clusters[0].data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.clusters[0].hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.clusters[0].hsm_status.hsm_configuration_identifier #=> String
    #   resp.clusters[0].hsm_status.status #=> String
    #   resp.clusters[0].cluster_snapshot_copy_status.destination_region #=> String
    #   resp.clusters[0].cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.clusters[0].cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.clusters[0].cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.clusters[0].cluster_public_key #=> String
    #   resp.clusters[0].cluster_nodes #=> Array
    #   resp.clusters[0].cluster_nodes[0].node_role #=> String
    #   resp.clusters[0].cluster_nodes[0].private_ip_address #=> String
    #   resp.clusters[0].cluster_nodes[0].public_ip_address #=> String
    #   resp.clusters[0].elastic_ip_status.elastic_ip #=> String
    #   resp.clusters[0].elastic_ip_status.status #=> String
    #   resp.clusters[0].cluster_revision_number #=> String
    #   resp.clusters[0].tags #=> Array
    #   resp.clusters[0].tags[0].key #=> String
    #   resp.clusters[0].tags[0].value #=> String
    #   resp.clusters[0].kms_key_id #=> String
    #   resp.clusters[0].enhanced_vpc_routing #=> Boolean
    #   resp.clusters[0].iam_roles #=> Array
    #   resp.clusters[0].iam_roles[0].iam_role_arn #=> String
    #   resp.clusters[0].iam_roles[0].apply_status #=> String
    #   resp.clusters[0].pending_actions #=> Array
    #   resp.clusters[0].pending_actions[0] #=> String
    #   resp.clusters[0].maintenance_track_name #=> String
    #   resp.clusters[0].elastic_resize_number_of_node_options #=> String
    #   resp.clusters[0].deferred_maintenance_windows #=> Array
    #   resp.clusters[0].deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.clusters[0].deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.clusters[0].deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.clusters[0].snapshot_schedule_identifier #=> String
    #   resp.clusters[0].snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.clusters[0].expected_next_snapshot_schedule_time #=> Time
    #   resp.clusters[0].expected_next_snapshot_schedule_time_status #=> String
    #   resp.clusters[0].next_maintenance_window_start_time #=> Time
    #   resp.clusters[0].resize_info.resize_type #=> String
    #   resp.clusters[0].resize_info.allow_cancel_resize #=> Boolean
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * cluster_available
    #   * cluster_deleted
    #   * cluster_restored
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusters AWS API Documentation
    #
    # @overload describe_clusters(params = {})
    # @param [Hash] params ({})
    def describe_clusters(params = {}, options = {})
      req = build_request(:describe_clusters, params)
      req.send_request(options)
    end

    # Returns a list of parameter settings for the specified parameter group
    # family.
    #
    # For more information about parameters and parameter groups, go to
    # [Amazon Redshift Parameter Groups][1] in the *Amazon Redshift Cluster
    # Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #
    # @option params [required, String] :parameter_group_family
    #   The name of the cluster parameter group family.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeDefaultClusterParameters request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @return [Types::DescribeDefaultClusterParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDefaultClusterParametersResult#default_cluster_parameters #default_cluster_parameters} => Types::DefaultClusterParameters
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_default_cluster_parameters({
    #     parameter_group_family: "String", # required
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.default_cluster_parameters.parameter_group_family #=> String
    #   resp.default_cluster_parameters.marker #=> String
    #   resp.default_cluster_parameters.parameters #=> Array
    #   resp.default_cluster_parameters.parameters[0].parameter_name #=> String
    #   resp.default_cluster_parameters.parameters[0].parameter_value #=> String
    #   resp.default_cluster_parameters.parameters[0].description #=> String
    #   resp.default_cluster_parameters.parameters[0].source #=> String
    #   resp.default_cluster_parameters.parameters[0].data_type #=> String
    #   resp.default_cluster_parameters.parameters[0].allowed_values #=> String
    #   resp.default_cluster_parameters.parameters[0].apply_type #=> String, one of "static", "dynamic"
    #   resp.default_cluster_parameters.parameters[0].is_modifiable #=> Boolean
    #   resp.default_cluster_parameters.parameters[0].minimum_engine_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeDefaultClusterParameters AWS API Documentation
    #
    # @overload describe_default_cluster_parameters(params = {})
    # @param [Hash] params ({})
    def describe_default_cluster_parameters(params = {}, options = {})
      req = build_request(:describe_default_cluster_parameters, params)
      req.send_request(options)
    end

    # Displays a list of event categories for all event source types, or for
    # a specified source type. For a list of the event categories and source
    # types, go to [Amazon Redshift Event Notifications][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html
    #
    # @option params [String] :source_type
    #   The source type, such as cluster or parameter group, to which the
    #   described event categories apply.
    #
    #   Valid values: cluster, cluster-snapshot, cluster-parameter-group,
    #   cluster-security-group, and scheduled-action.
    #
    # @return [Types::EventCategoriesMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventCategoriesMessage#event_categories_map_list #event_categories_map_list} => Array&lt;Types::EventCategoriesMap&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_categories({
    #     source_type: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_categories_map_list #=> Array
    #   resp.event_categories_map_list[0].source_type #=> String
    #   resp.event_categories_map_list[0].events #=> Array
    #   resp.event_categories_map_list[0].events[0].event_id #=> String
    #   resp.event_categories_map_list[0].events[0].event_categories #=> Array
    #   resp.event_categories_map_list[0].events[0].event_categories[0] #=> String
    #   resp.event_categories_map_list[0].events[0].event_description #=> String
    #   resp.event_categories_map_list[0].events[0].severity #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeEventCategories AWS API Documentation
    #
    # @overload describe_event_categories(params = {})
    # @param [Hash] params ({})
    def describe_event_categories(params = {}, options = {})
      req = build_request(:describe_event_categories, params)
      req.send_request(options)
    end

    # Lists descriptions of all the Amazon Redshift event notification
    # subscriptions for a customer account. If you specify a subscription
    # name, lists the description for that subscription.
    #
    # If you specify both tag keys and tag values in the same request,
    # Amazon Redshift returns all event notification subscriptions that
    # match any combination of the specified keys and values. For example,
    # if you have `owner` and `environment` for tag keys, and `admin` and
    # `test` for tag values, all subscriptions that have any combination of
    # those values are returned.
    #
    # If both tag keys and values are omitted from the request,
    # subscriptions are returned regardless of whether they have tag keys or
    # values associated with them.
    #
    # @option params [String] :subscription_name
    #   The name of the Amazon Redshift event notification subscription to be
    #   described.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeEventSubscriptions request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @option params [Array<String>] :tag_keys
    #   A tag key or keys for which you want to return all matching event
    #   notification subscriptions that are associated with the specified key
    #   or keys. For example, suppose that you have subscriptions that are
    #   tagged with keys called `owner` and `environment`. If you specify both
    #   of these tag keys in the request, Amazon Redshift returns a response
    #   with the subscriptions that have either or both of these tag keys
    #   associated with them.
    #
    # @option params [Array<String>] :tag_values
    #   A tag value or values for which you want to return all matching event
    #   notification subscriptions that are associated with the specified tag
    #   value or values. For example, suppose that you have subscriptions that
    #   are tagged with values called `admin` and `test`. If you specify both
    #   of these tag values in the request, Amazon Redshift returns a response
    #   with the subscriptions that have either or both of these tag values
    #   associated with them.
    #
    # @return [Types::EventSubscriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSubscriptionsMessage#marker #marker} => String
    #   * {Types::EventSubscriptionsMessage#event_subscriptions_list #event_subscriptions_list} => Array&lt;Types::EventSubscription&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_subscriptions({
    #     subscription_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
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
    #   resp.event_subscriptions_list[0].subscription_creation_time #=> Time
    #   resp.event_subscriptions_list[0].source_type #=> String
    #   resp.event_subscriptions_list[0].source_ids_list #=> Array
    #   resp.event_subscriptions_list[0].source_ids_list[0] #=> String
    #   resp.event_subscriptions_list[0].event_categories_list #=> Array
    #   resp.event_subscriptions_list[0].event_categories_list[0] #=> String
    #   resp.event_subscriptions_list[0].severity #=> String
    #   resp.event_subscriptions_list[0].enabled #=> Boolean
    #   resp.event_subscriptions_list[0].tags #=> Array
    #   resp.event_subscriptions_list[0].tags[0].key #=> String
    #   resp.event_subscriptions_list[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeEventSubscriptions AWS API Documentation
    #
    # @overload describe_event_subscriptions(params = {})
    # @param [Hash] params ({})
    def describe_event_subscriptions(params = {}, options = {})
      req = build_request(:describe_event_subscriptions, params)
      req.send_request(options)
    end

    # Returns events related to clusters, security groups, snapshots, and
    # parameter groups for the past 14 days. Events specific to a particular
    # cluster, security group, snapshot or parameter group can be obtained
    # by providing the name as a parameter. By default, the past hour of
    # events are returned.
    #
    # @option params [String] :source_identifier
    #   The identifier of the event source for which events will be returned.
    #   If this parameter is not specified, then all sources are included in
    #   the response.
    #
    #   Constraints:
    #
    #   If *SourceIdentifier* is supplied, *SourceType* must also be provided.
    #
    #   * Specify a cluster identifier when *SourceType* is `cluster`.
    #
    #   * Specify a cluster security group name when *SourceType* is
    #     `cluster-security-group`.
    #
    #   * Specify a cluster parameter group name when *SourceType* is
    #     `cluster-parameter-group`.
    #
    #   * Specify a cluster snapshot identifier when *SourceType* is
    #     `cluster-snapshot`.
    #
    # @option params [String] :source_type
    #   The event source to retrieve events for. If no value is specified, all
    #   events are returned.
    #
    #   Constraints:
    #
    #   If *SourceType* is supplied, *SourceIdentifier* must also be provided.
    #
    #   * Specify `cluster` when *SourceIdentifier* is a cluster identifier.
    #
    #   * Specify `cluster-security-group` when *SourceIdentifier* is a
    #     cluster security group name.
    #
    #   * Specify `cluster-parameter-group` when *SourceIdentifier* is a
    #     cluster parameter group name.
    #
    #   * Specify `cluster-snapshot` when *SourceIdentifier* is a cluster
    #     snapshot identifier.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: `2009-07-08T18:00Z`
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
    #   Example: `2009-07-08T18:00Z`
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #
    # @option params [Integer] :duration
    #   The number of minutes prior to the time of the request for which to
    #   retrieve events. For example, if the request is sent at 18:00 and you
    #   specify a duration of 60, then only events which have occurred after
    #   17:00 will be returned.
    #
    #   Default: `60`
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a DescribeEvents request
    #   exceed the value specified in `MaxRecords`, AWS returns a value in the
    #   `Marker` field of the response. You can retrieve the next set of
    #   response records by providing the returned marker value in the
    #   `Marker` parameter and retrying the request.
    #
    # @return [Types::EventsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventsMessage#marker #marker} => String
    #   * {Types::EventsMessage#events #events} => Array&lt;Types::Event&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     source_identifier: "String",
    #     source_type: "cluster", # accepts cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, scheduled-action
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.events #=> Array
    #   resp.events[0].source_identifier #=> String
    #   resp.events[0].source_type #=> String, one of "cluster", "cluster-parameter-group", "cluster-security-group", "cluster-snapshot", "scheduled-action"
    #   resp.events[0].message #=> String
    #   resp.events[0].event_categories #=> Array
    #   resp.events[0].event_categories[0] #=> String
    #   resp.events[0].severity #=> String
    #   resp.events[0].date #=> Time
    #   resp.events[0].event_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Returns information about the specified HSM client certificate. If no
    # certificate ID is specified, returns information about all the HSM
    # certificates owned by your AWS customer account.
    #
    # If you specify both tag keys and tag values in the same request,
    # Amazon Redshift returns all HSM client certificates that match any
    # combination of the specified keys and values. For example, if you have
    # `owner` and `environment` for tag keys, and `admin` and `test` for tag
    # values, all HSM client certificates that have any combination of those
    # values are returned.
    #
    # If both tag keys and values are omitted from the request, HSM client
    # certificates are returned regardless of whether they have tag keys or
    # values associated with them.
    #
    # @option params [String] :hsm_client_certificate_identifier
    #   The identifier of a specific HSM client certificate for which you want
    #   information. If no identifier is specified, information is returned
    #   for all HSM client certificates owned by your AWS customer account.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeHsmClientCertificates request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @option params [Array<String>] :tag_keys
    #   A tag key or keys for which you want to return all matching HSM client
    #   certificates that are associated with the specified key or keys. For
    #   example, suppose that you have HSM client certificates that are tagged
    #   with keys called `owner` and `environment`. If you specify both of
    #   these tag keys in the request, Amazon Redshift returns a response with
    #   the HSM client certificates that have either or both of these tag keys
    #   associated with them.
    #
    # @option params [Array<String>] :tag_values
    #   A tag value or values for which you want to return all matching HSM
    #   client certificates that are associated with the specified tag value
    #   or values. For example, suppose that you have HSM client certificates
    #   that are tagged with values called `admin` and `test`. If you specify
    #   both of these tag values in the request, Amazon Redshift returns a
    #   response with the HSM client certificates that have either or both of
    #   these tag values associated with them.
    #
    # @return [Types::HsmClientCertificateMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::HsmClientCertificateMessage#marker #marker} => String
    #   * {Types::HsmClientCertificateMessage#hsm_client_certificates #hsm_client_certificates} => Array&lt;Types::HsmClientCertificate&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hsm_client_certificates({
    #     hsm_client_certificate_identifier: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.hsm_client_certificates #=> Array
    #   resp.hsm_client_certificates[0].hsm_client_certificate_identifier #=> String
    #   resp.hsm_client_certificates[0].hsm_client_certificate_public_key #=> String
    #   resp.hsm_client_certificates[0].tags #=> Array
    #   resp.hsm_client_certificates[0].tags[0].key #=> String
    #   resp.hsm_client_certificates[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeHsmClientCertificates AWS API Documentation
    #
    # @overload describe_hsm_client_certificates(params = {})
    # @param [Hash] params ({})
    def describe_hsm_client_certificates(params = {}, options = {})
      req = build_request(:describe_hsm_client_certificates, params)
      req.send_request(options)
    end

    # Returns information about the specified Amazon Redshift HSM
    # configuration. If no configuration ID is specified, returns
    # information about all the HSM configurations owned by your AWS
    # customer account.
    #
    # If you specify both tag keys and tag values in the same request,
    # Amazon Redshift returns all HSM connections that match any combination
    # of the specified keys and values. For example, if you have `owner` and
    # `environment` for tag keys, and `admin` and `test` for tag values, all
    # HSM connections that have any combination of those values are
    # returned.
    #
    # If both tag keys and values are omitted from the request, HSM
    # connections are returned regardless of whether they have tag keys or
    # values associated with them.
    #
    # @option params [String] :hsm_configuration_identifier
    #   The identifier of a specific Amazon Redshift HSM configuration to be
    #   described. If no identifier is specified, information is returned for
    #   all HSM configurations owned by your AWS customer account.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeHsmConfigurations request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @option params [Array<String>] :tag_keys
    #   A tag key or keys for which you want to return all matching HSM
    #   configurations that are associated with the specified key or keys. For
    #   example, suppose that you have HSM configurations that are tagged with
    #   keys called `owner` and `environment`. If you specify both of these
    #   tag keys in the request, Amazon Redshift returns a response with the
    #   HSM configurations that have either or both of these tag keys
    #   associated with them.
    #
    # @option params [Array<String>] :tag_values
    #   A tag value or values for which you want to return all matching HSM
    #   configurations that are associated with the specified tag value or
    #   values. For example, suppose that you have HSM configurations that are
    #   tagged with values called `admin` and `test`. If you specify both of
    #   these tag values in the request, Amazon Redshift returns a response
    #   with the HSM configurations that have either or both of these tag
    #   values associated with them.
    #
    # @return [Types::HsmConfigurationMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::HsmConfigurationMessage#marker #marker} => String
    #   * {Types::HsmConfigurationMessage#hsm_configurations #hsm_configurations} => Array&lt;Types::HsmConfiguration&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hsm_configurations({
    #     hsm_configuration_identifier: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.hsm_configurations #=> Array
    #   resp.hsm_configurations[0].hsm_configuration_identifier #=> String
    #   resp.hsm_configurations[0].description #=> String
    #   resp.hsm_configurations[0].hsm_ip_address #=> String
    #   resp.hsm_configurations[0].hsm_partition_name #=> String
    #   resp.hsm_configurations[0].tags #=> Array
    #   resp.hsm_configurations[0].tags[0].key #=> String
    #   resp.hsm_configurations[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeHsmConfigurations AWS API Documentation
    #
    # @overload describe_hsm_configurations(params = {})
    # @param [Hash] params ({})
    def describe_hsm_configurations(params = {}, options = {})
      req = build_request(:describe_hsm_configurations, params)
      req.send_request(options)
    end

    # Describes whether information, such as queries and connection
    # attempts, is being logged for the specified Amazon Redshift cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The identifier of the cluster from which to get the logging status.
    #
    #   Example: `examplecluster`
    #
    # @return [Types::LoggingStatus] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LoggingStatus#logging_enabled #logging_enabled} => Boolean
    #   * {Types::LoggingStatus#bucket_name #bucket_name} => String
    #   * {Types::LoggingStatus#s3_key_prefix #s3_key_prefix} => String
    #   * {Types::LoggingStatus#last_successful_delivery_time #last_successful_delivery_time} => Time
    #   * {Types::LoggingStatus#last_failure_time #last_failure_time} => Time
    #   * {Types::LoggingStatus#last_failure_message #last_failure_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_logging_status({
    #     cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_enabled #=> Boolean
    #   resp.bucket_name #=> String
    #   resp.s3_key_prefix #=> String
    #   resp.last_successful_delivery_time #=> Time
    #   resp.last_failure_time #=> Time
    #   resp.last_failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeLoggingStatus AWS API Documentation
    #
    # @overload describe_logging_status(params = {})
    # @param [Hash] params ({})
    def describe_logging_status(params = {}, options = {})
      req = build_request(:describe_logging_status, params)
      req.send_request(options)
    end

    # Returns properties of possible node configurations such as node type,
    # number of nodes, and disk usage for the specified action type.
    #
    # @option params [required, String] :action_type
    #   The action type to evaluate for possible node configurations. Specify
    #   "restore-cluster" to get configuration combinations based on an
    #   existing snapshot. Specify "recommend-node-config" to get
    #   configuration recommendations based on an existing cluster or
    #   snapshot. Specify "resize-cluster" to get configuration combinations
    #   for elastic resize based on an existing cluster.
    #
    # @option params [String] :cluster_identifier
    #   The identifier of the cluster to evaluate for possible node
    #   configurations.
    #
    # @option params [String] :snapshot_identifier
    #   The identifier of the snapshot to evaluate for possible node
    #   configurations.
    #
    # @option params [String] :owner_account
    #   The AWS customer account used to create or copy the snapshot. Required
    #   if you are restoring a snapshot you do not own, optional if you own
    #   the snapshot.
    #
    # @option params [Array<Types::NodeConfigurationOptionsFilter>] :filters
    #   A set of name, operator, and value items to filter the results.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeNodeConfigurationOptions request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `500`
    #
    #   Constraints: minimum 100, maximum 500.
    #
    # @return [Types::NodeConfigurationOptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::NodeConfigurationOptionsMessage#node_configuration_option_list #node_configuration_option_list} => Array&lt;Types::NodeConfigurationOption&gt;
    #   * {Types::NodeConfigurationOptionsMessage#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_node_configuration_options({
    #     action_type: "restore-cluster", # required, accepts restore-cluster, recommend-node-config, resize-cluster
    #     cluster_identifier: "String",
    #     snapshot_identifier: "String",
    #     owner_account: "String",
    #     filters: [
    #       {
    #         name: "NodeType", # accepts NodeType, NumberOfNodes, EstimatedDiskUtilizationPercent, Mode
    #         operator: "eq", # accepts eq, lt, gt, le, ge, in, between
    #         values: ["String"],
    #       },
    #     ],
    #     marker: "String",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.node_configuration_option_list #=> Array
    #   resp.node_configuration_option_list[0].node_type #=> String
    #   resp.node_configuration_option_list[0].number_of_nodes #=> Integer
    #   resp.node_configuration_option_list[0].estimated_disk_utilization_percent #=> Float
    #   resp.node_configuration_option_list[0].mode #=> String, one of "standard", "high-performance"
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeNodeConfigurationOptions AWS API Documentation
    #
    # @overload describe_node_configuration_options(params = {})
    # @param [Hash] params ({})
    def describe_node_configuration_options(params = {}, options = {})
      req = build_request(:describe_node_configuration_options, params)
      req.send_request(options)
    end

    # Returns a list of orderable cluster options. Before you create a new
    # cluster you can use this operation to find what options are available,
    # such as the EC2 Availability Zones (AZ) in the specific AWS Region
    # that you can specify, and the node types you can request. The node
    # types differ by available storage, memory, CPU and price. With the
    # cost involved you might want to obtain a list of cluster options in
    # the specific region and specify values when creating a cluster. For
    # more information about managing clusters, go to [Amazon Redshift
    # Clusters][1] in the *Amazon Redshift Cluster Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
    #
    # @option params [String] :cluster_version
    #   The version filter value. Specify this parameter to show only the
    #   available offerings matching the specified version.
    #
    #   Default: All versions.
    #
    #   Constraints: Must be one of the version returned from
    #   DescribeClusterVersions.
    #
    # @option params [String] :node_type
    #   The node type filter value. Specify this parameter to show only the
    #   available offerings matching the specified node type.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeOrderableClusterOptions request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @return [Types::OrderableClusterOptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::OrderableClusterOptionsMessage#orderable_cluster_options #orderable_cluster_options} => Array&lt;Types::OrderableClusterOption&gt;
    #   * {Types::OrderableClusterOptionsMessage#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_orderable_cluster_options({
    #     cluster_version: "String",
    #     node_type: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.orderable_cluster_options #=> Array
    #   resp.orderable_cluster_options[0].cluster_version #=> String
    #   resp.orderable_cluster_options[0].cluster_type #=> String
    #   resp.orderable_cluster_options[0].node_type #=> String
    #   resp.orderable_cluster_options[0].availability_zones #=> Array
    #   resp.orderable_cluster_options[0].availability_zones[0].name #=> String
    #   resp.orderable_cluster_options[0].availability_zones[0].supported_platforms #=> Array
    #   resp.orderable_cluster_options[0].availability_zones[0].supported_platforms[0].name #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeOrderableClusterOptions AWS API Documentation
    #
    # @overload describe_orderable_cluster_options(params = {})
    # @param [Hash] params ({})
    def describe_orderable_cluster_options(params = {}, options = {})
      req = build_request(:describe_orderable_cluster_options, params)
      req.send_request(options)
    end

    # Returns a list of the available reserved node offerings by Amazon
    # Redshift with their descriptions including the node type, the fixed
    # and recurring costs of reserving the node and duration the node will
    # be reserved for you. These descriptions help you determine which
    # reserve node offering you want to purchase. You then use the unique
    # offering ID in you call to PurchaseReservedNodeOffering to reserve one
    # or more nodes for your Amazon Redshift cluster.
    #
    # For more information about reserved node offerings, go to [Purchasing
    # Reserved Nodes][1] in the *Amazon Redshift Cluster Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html
    #
    # @option params [String] :reserved_node_offering_id
    #   The unique identifier for the offering.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeReservedNodeOfferings request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @return [Types::ReservedNodeOfferingsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReservedNodeOfferingsMessage#marker #marker} => String
    #   * {Types::ReservedNodeOfferingsMessage#reserved_node_offerings #reserved_node_offerings} => Array&lt;Types::ReservedNodeOffering&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_node_offerings({
    #     reserved_node_offering_id: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.reserved_node_offerings #=> Array
    #   resp.reserved_node_offerings[0].reserved_node_offering_id #=> String
    #   resp.reserved_node_offerings[0].node_type #=> String
    #   resp.reserved_node_offerings[0].duration #=> Integer
    #   resp.reserved_node_offerings[0].fixed_price #=> Float
    #   resp.reserved_node_offerings[0].usage_price #=> Float
    #   resp.reserved_node_offerings[0].currency_code #=> String
    #   resp.reserved_node_offerings[0].offering_type #=> String
    #   resp.reserved_node_offerings[0].recurring_charges #=> Array
    #   resp.reserved_node_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_node_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.reserved_node_offerings[0].reserved_node_offering_type #=> String, one of "Regular", "Upgradable"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeReservedNodeOfferings AWS API Documentation
    #
    # @overload describe_reserved_node_offerings(params = {})
    # @param [Hash] params ({})
    def describe_reserved_node_offerings(params = {}, options = {})
      req = build_request(:describe_reserved_node_offerings, params)
      req.send_request(options)
    end

    # Returns the descriptions of the reserved nodes.
    #
    # @option params [String] :reserved_node_id
    #   Identifier for the node reservation.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a DescribeReservedNodes
    #   request exceed the value specified in `MaxRecords`, AWS returns a
    #   value in the `Marker` field of the response. You can retrieve the next
    #   set of response records by providing the returned marker value in the
    #   `Marker` parameter and retrying the request.
    #
    # @return [Types::ReservedNodesMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReservedNodesMessage#marker #marker} => String
    #   * {Types::ReservedNodesMessage#reserved_nodes #reserved_nodes} => Array&lt;Types::ReservedNode&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_nodes({
    #     reserved_node_id: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.reserved_nodes #=> Array
    #   resp.reserved_nodes[0].reserved_node_id #=> String
    #   resp.reserved_nodes[0].reserved_node_offering_id #=> String
    #   resp.reserved_nodes[0].node_type #=> String
    #   resp.reserved_nodes[0].start_time #=> Time
    #   resp.reserved_nodes[0].duration #=> Integer
    #   resp.reserved_nodes[0].fixed_price #=> Float
    #   resp.reserved_nodes[0].usage_price #=> Float
    #   resp.reserved_nodes[0].currency_code #=> String
    #   resp.reserved_nodes[0].node_count #=> Integer
    #   resp.reserved_nodes[0].state #=> String
    #   resp.reserved_nodes[0].offering_type #=> String
    #   resp.reserved_nodes[0].recurring_charges #=> Array
    #   resp.reserved_nodes[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_nodes[0].recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.reserved_nodes[0].reserved_node_offering_type #=> String, one of "Regular", "Upgradable"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeReservedNodes AWS API Documentation
    #
    # @overload describe_reserved_nodes(params = {})
    # @param [Hash] params ({})
    def describe_reserved_nodes(params = {}, options = {})
      req = build_request(:describe_reserved_nodes, params)
      req.send_request(options)
    end

    # Returns information about the last resize operation for the specified
    # cluster. If no resize operation has ever been initiated for the
    # specified cluster, a `HTTP 404` error is returned. If a resize
    # operation was initiated and completed, the status of the resize
    # remains as `SUCCEEDED` until the next resize.
    #
    # A resize operation can be requested using ModifyCluster and specifying
    # a different number or type of nodes for the cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The unique identifier of a cluster whose resize progress you are
    #   requesting. This parameter is case-sensitive.
    #
    #   By default, resize operations for all clusters defined for an AWS
    #   account are returned.
    #
    # @return [Types::ResizeProgressMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResizeProgressMessage#target_node_type #target_node_type} => String
    #   * {Types::ResizeProgressMessage#target_number_of_nodes #target_number_of_nodes} => Integer
    #   * {Types::ResizeProgressMessage#target_cluster_type #target_cluster_type} => String
    #   * {Types::ResizeProgressMessage#status #status} => String
    #   * {Types::ResizeProgressMessage#import_tables_completed #import_tables_completed} => Array&lt;String&gt;
    #   * {Types::ResizeProgressMessage#import_tables_in_progress #import_tables_in_progress} => Array&lt;String&gt;
    #   * {Types::ResizeProgressMessage#import_tables_not_started #import_tables_not_started} => Array&lt;String&gt;
    #   * {Types::ResizeProgressMessage#avg_resize_rate_in_mega_bytes_per_second #avg_resize_rate_in_mega_bytes_per_second} => Float
    #   * {Types::ResizeProgressMessage#total_resize_data_in_mega_bytes #total_resize_data_in_mega_bytes} => Integer
    #   * {Types::ResizeProgressMessage#progress_in_mega_bytes #progress_in_mega_bytes} => Integer
    #   * {Types::ResizeProgressMessage#elapsed_time_in_seconds #elapsed_time_in_seconds} => Integer
    #   * {Types::ResizeProgressMessage#estimated_time_to_completion_in_seconds #estimated_time_to_completion_in_seconds} => Integer
    #   * {Types::ResizeProgressMessage#resize_type #resize_type} => String
    #   * {Types::ResizeProgressMessage#message #message} => String
    #   * {Types::ResizeProgressMessage#target_encryption_type #target_encryption_type} => String
    #   * {Types::ResizeProgressMessage#data_transfer_progress_percent #data_transfer_progress_percent} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resize({
    #     cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_node_type #=> String
    #   resp.target_number_of_nodes #=> Integer
    #   resp.target_cluster_type #=> String
    #   resp.status #=> String
    #   resp.import_tables_completed #=> Array
    #   resp.import_tables_completed[0] #=> String
    #   resp.import_tables_in_progress #=> Array
    #   resp.import_tables_in_progress[0] #=> String
    #   resp.import_tables_not_started #=> Array
    #   resp.import_tables_not_started[0] #=> String
    #   resp.avg_resize_rate_in_mega_bytes_per_second #=> Float
    #   resp.total_resize_data_in_mega_bytes #=> Integer
    #   resp.progress_in_mega_bytes #=> Integer
    #   resp.elapsed_time_in_seconds #=> Integer
    #   resp.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.resize_type #=> String
    #   resp.message #=> String
    #   resp.target_encryption_type #=> String
    #   resp.data_transfer_progress_percent #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeResize AWS API Documentation
    #
    # @overload describe_resize(params = {})
    # @param [Hash] params ({})
    def describe_resize(params = {}, options = {})
      req = build_request(:describe_resize, params)
      req.send_request(options)
    end

    # Describes properties of scheduled actions.
    #
    # @option params [String] :scheduled_action_name
    #   The name of the scheduled action to retrieve.
    #
    # @option params [String] :target_action_type
    #   The type of the scheduled actions to retrieve.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time in UTC of the scheduled actions to retrieve. Only
    #   active scheduled actions that have invocations after this time are
    #   retrieved.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time in UTC of the scheduled action to retrieve. Only active
    #   scheduled actions that have invocations before this time are
    #   retrieved.
    #
    # @option params [Boolean] :active
    #   If true, retrieve only active scheduled actions. If false, retrieve
    #   only disabled scheduled actions.
    #
    # @option params [Array<Types::ScheduledActionFilter>] :filters
    #   List of scheduled action filters.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeScheduledActions request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @return [Types::ScheduledActionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScheduledActionsMessage#marker #marker} => String
    #   * {Types::ScheduledActionsMessage#scheduled_actions #scheduled_actions} => Array&lt;Types::ScheduledAction&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_actions({
    #     scheduled_action_name: "String",
    #     target_action_type: "ResizeCluster", # accepts ResizeCluster, PauseCluster, ResumeCluster
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     active: false,
    #     filters: [
    #       {
    #         name: "cluster-identifier", # required, accepts cluster-identifier, iam-role
    #         values: ["String"], # required
    #       },
    #     ],
    #     marker: "String",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.scheduled_actions #=> Array
    #   resp.scheduled_actions[0].scheduled_action_name #=> String
    #   resp.scheduled_actions[0].target_action.resize_cluster.cluster_identifier #=> String
    #   resp.scheduled_actions[0].target_action.resize_cluster.cluster_type #=> String
    #   resp.scheduled_actions[0].target_action.resize_cluster.node_type #=> String
    #   resp.scheduled_actions[0].target_action.resize_cluster.number_of_nodes #=> Integer
    #   resp.scheduled_actions[0].target_action.resize_cluster.classic #=> Boolean
    #   resp.scheduled_actions[0].target_action.pause_cluster.cluster_identifier #=> String
    #   resp.scheduled_actions[0].target_action.resume_cluster.cluster_identifier #=> String
    #   resp.scheduled_actions[0].schedule #=> String
    #   resp.scheduled_actions[0].iam_role #=> String
    #   resp.scheduled_actions[0].scheduled_action_description #=> String
    #   resp.scheduled_actions[0].state #=> String, one of "ACTIVE", "DISABLED"
    #   resp.scheduled_actions[0].next_invocations #=> Array
    #   resp.scheduled_actions[0].next_invocations[0] #=> Time
    #   resp.scheduled_actions[0].start_time #=> Time
    #   resp.scheduled_actions[0].end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeScheduledActions AWS API Documentation
    #
    # @overload describe_scheduled_actions(params = {})
    # @param [Hash] params ({})
    def describe_scheduled_actions(params = {}, options = {})
      req = build_request(:describe_scheduled_actions, params)
      req.send_request(options)
    end

    # Returns a list of snapshot copy grants owned by the AWS account in the
    # destination region.
    #
    # For more information about managing snapshot copy grants, go to
    # [Amazon Redshift Database Encryption][1] in the *Amazon Redshift
    # Cluster Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html
    #
    # @option params [String] :snapshot_copy_grant_name
    #   The name of the snapshot copy grant.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   `DescribeSnapshotCopyGrant` request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    #   Constraints: You can specify either the **SnapshotCopyGrantName**
    #   parameter or the **Marker** parameter, but not both.
    #
    # @option params [Array<String>] :tag_keys
    #   A tag key or keys for which you want to return all matching resources
    #   that are associated with the specified key or keys. For example,
    #   suppose that you have resources tagged with keys called `owner` and
    #   `environment`. If you specify both of these tag keys in the request,
    #   Amazon Redshift returns a response with all resources that have either
    #   or both of these tag keys associated with them.
    #
    # @option params [Array<String>] :tag_values
    #   A tag value or values for which you want to return all matching
    #   resources that are associated with the specified value or values. For
    #   example, suppose that you have resources tagged with values called
    #   `admin` and `test`. If you specify both of these tag values in the
    #   request, Amazon Redshift returns a response with all resources that
    #   have either or both of these tag values associated with them.
    #
    # @return [Types::SnapshotCopyGrantMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SnapshotCopyGrantMessage#marker #marker} => String
    #   * {Types::SnapshotCopyGrantMessage#snapshot_copy_grants #snapshot_copy_grants} => Array&lt;Types::SnapshotCopyGrant&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshot_copy_grants({
    #     snapshot_copy_grant_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.snapshot_copy_grants #=> Array
    #   resp.snapshot_copy_grants[0].snapshot_copy_grant_name #=> String
    #   resp.snapshot_copy_grants[0].kms_key_id #=> String
    #   resp.snapshot_copy_grants[0].tags #=> Array
    #   resp.snapshot_copy_grants[0].tags[0].key #=> String
    #   resp.snapshot_copy_grants[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeSnapshotCopyGrants AWS API Documentation
    #
    # @overload describe_snapshot_copy_grants(params = {})
    # @param [Hash] params ({})
    def describe_snapshot_copy_grants(params = {}, options = {})
      req = build_request(:describe_snapshot_copy_grants, params)
      req.send_request(options)
    end

    # Returns a list of snapshot schedules.
    #
    # @option params [String] :cluster_identifier
    #   The unique identifier for the cluster whose snapshot schedules you
    #   want to view.
    #
    # @option params [String] :schedule_identifier
    #   A unique identifier for a snapshot schedule.
    #
    # @option params [Array<String>] :tag_keys
    #   The key value for a snapshot schedule tag.
    #
    # @option params [Array<String>] :tag_values
    #   The value corresponding to the key of the snapshot schedule tag.
    #
    # @option params [String] :marker
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   marker value in the `marker` parameter and retrying the command. If
    #   the `marker` field is empty, all response records have been retrieved
    #   for the request.
    #
    # @option params [Integer] :max_records
    #   The maximum number or response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned `marker` value.
    #
    # @return [Types::DescribeSnapshotSchedulesOutputMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSnapshotSchedulesOutputMessage#snapshot_schedules #snapshot_schedules} => Array&lt;Types::SnapshotSchedule&gt;
    #   * {Types::DescribeSnapshotSchedulesOutputMessage#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshot_schedules({
    #     cluster_identifier: "String",
    #     schedule_identifier: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #     marker: "String",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_schedules #=> Array
    #   resp.snapshot_schedules[0].schedule_definitions #=> Array
    #   resp.snapshot_schedules[0].schedule_definitions[0] #=> String
    #   resp.snapshot_schedules[0].schedule_identifier #=> String
    #   resp.snapshot_schedules[0].schedule_description #=> String
    #   resp.snapshot_schedules[0].tags #=> Array
    #   resp.snapshot_schedules[0].tags[0].key #=> String
    #   resp.snapshot_schedules[0].tags[0].value #=> String
    #   resp.snapshot_schedules[0].next_invocations #=> Array
    #   resp.snapshot_schedules[0].next_invocations[0] #=> Time
    #   resp.snapshot_schedules[0].associated_cluster_count #=> Integer
    #   resp.snapshot_schedules[0].associated_clusters #=> Array
    #   resp.snapshot_schedules[0].associated_clusters[0].cluster_identifier #=> String
    #   resp.snapshot_schedules[0].associated_clusters[0].schedule_association_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeSnapshotSchedules AWS API Documentation
    #
    # @overload describe_snapshot_schedules(params = {})
    # @param [Hash] params ({})
    def describe_snapshot_schedules(params = {}, options = {})
      req = build_request(:describe_snapshot_schedules, params)
      req.send_request(options)
    end

    # Returns account level backups storage size and provisional storage.
    #
    # @return [Types::CustomerStorageMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CustomerStorageMessage#total_backup_size_in_mega_bytes #total_backup_size_in_mega_bytes} => Float
    #   * {Types::CustomerStorageMessage#total_provisioned_storage_in_mega_bytes #total_provisioned_storage_in_mega_bytes} => Float
    #
    # @example Response structure
    #
    #   resp.total_backup_size_in_mega_bytes #=> Float
    #   resp.total_provisioned_storage_in_mega_bytes #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeStorage AWS API Documentation
    #
    # @overload describe_storage(params = {})
    # @param [Hash] params ({})
    def describe_storage(params = {}, options = {})
      req = build_request(:describe_storage, params)
      req.send_request(options)
    end

    # Lists the status of one or more table restore requests made using the
    # RestoreTableFromClusterSnapshot API action. If you don't specify a
    # value for the `TableRestoreRequestId` parameter, then
    # `DescribeTableRestoreStatus` returns the status of all table restore
    # requests ordered by the date and time of the request in ascending
    # order. Otherwise `DescribeTableRestoreStatus` returns the status of
    # the table specified by `TableRestoreRequestId`.
    #
    # @option params [String] :cluster_identifier
    #   The Amazon Redshift cluster that the table is being restored to.
    #
    # @option params [String] :table_restore_request_id
    #   The identifier of the table restore request to return status for. If
    #   you don't specify a `TableRestoreRequestId` value, then
    #   `DescribeTableRestoreStatus` returns the status of all in-progress
    #   table restore requests.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeTableRestoreStatus` request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the value
    #   specified by the `MaxRecords` parameter.
    #
    # @return [Types::TableRestoreStatusMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TableRestoreStatusMessage#table_restore_status_details #table_restore_status_details} => Array&lt;Types::TableRestoreStatus&gt;
    #   * {Types::TableRestoreStatusMessage#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table_restore_status({
    #     cluster_identifier: "String",
    #     table_restore_request_id: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.table_restore_status_details #=> Array
    #   resp.table_restore_status_details[0].table_restore_request_id #=> String
    #   resp.table_restore_status_details[0].status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"
    #   resp.table_restore_status_details[0].message #=> String
    #   resp.table_restore_status_details[0].request_time #=> Time
    #   resp.table_restore_status_details[0].progress_in_mega_bytes #=> Integer
    #   resp.table_restore_status_details[0].total_data_in_mega_bytes #=> Integer
    #   resp.table_restore_status_details[0].cluster_identifier #=> String
    #   resp.table_restore_status_details[0].snapshot_identifier #=> String
    #   resp.table_restore_status_details[0].source_database_name #=> String
    #   resp.table_restore_status_details[0].source_schema_name #=> String
    #   resp.table_restore_status_details[0].source_table_name #=> String
    #   resp.table_restore_status_details[0].target_database_name #=> String
    #   resp.table_restore_status_details[0].target_schema_name #=> String
    #   resp.table_restore_status_details[0].new_table_name #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeTableRestoreStatus AWS API Documentation
    #
    # @overload describe_table_restore_status(params = {})
    # @param [Hash] params ({})
    def describe_table_restore_status(params = {}, options = {})
      req = build_request(:describe_table_restore_status, params)
      req.send_request(options)
    end

    # Returns a list of tags. You can return tags from a specific resource
    # by specifying an ARN, or you can return all tags for a given type of
    # resource, such as clusters, snapshots, and so on.
    #
    # The following are limitations for `DescribeTags`\:
    #
    # * You cannot specify an ARN and a resource-type value together in the
    #   same request.
    #
    # * You cannot use the `MaxRecords` and `Marker` parameters together
    #   with the ARN parameter.
    #
    # * The `MaxRecords` parameter can be a range from 10 to 50 results to
    #   return in a request.
    #
    # If you specify both tag keys and tag values in the same request,
    # Amazon Redshift returns all resources that match any combination of
    # the specified keys and values. For example, if you have `owner` and
    # `environment` for tag keys, and `admin` and `test` for tag values, all
    # resources that have any combination of those values are returned.
    #
    # If both tag keys and values are omitted from the request, resources
    # are returned regardless of whether they have tag keys or values
    # associated with them.
    #
    # @option params [String] :resource_name
    #   The Amazon Resource Name (ARN) for which you want to describe the tag
    #   or tags. For example,
    #   `arn:aws:redshift:us-east-2:123456789:cluster:t1`.
    #
    # @option params [String] :resource_type
    #   The type of resource with which you want to view tags. Valid resource
    #   types are:
    #
    #   * Cluster
    #
    #   * CIDR/IP
    #
    #   * EC2 security group
    #
    #   * Snapshot
    #
    #   * Cluster security group
    #
    #   * Subnet group
    #
    #   * HSM connection
    #
    #   * HSM certificate
    #
    #   * Parameter group
    #
    #   * Snapshot copy grant
    #
    #   For more information about Amazon Redshift resource types and
    #   constructing ARNs, go to [Specifying Policy Elements: Actions,
    #   Effects, Resources, and Principals][1] in the Amazon Redshift Cluster
    #   Management Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions
    #
    # @option params [Integer] :max_records
    #   The maximum number or response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned `marker` value.
    #
    # @option params [String] :marker
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   marker value in the `marker` parameter and retrying the command. If
    #   the `marker` field is empty, all response records have been retrieved
    #   for the request.
    #
    # @option params [Array<String>] :tag_keys
    #   A tag key or keys for which you want to return all matching resources
    #   that are associated with the specified key or keys. For example,
    #   suppose that you have resources tagged with keys called `owner` and
    #   `environment`. If you specify both of these tag keys in the request,
    #   Amazon Redshift returns a response with all resources that have either
    #   or both of these tag keys associated with them.
    #
    # @option params [Array<String>] :tag_values
    #   A tag value or values for which you want to return all matching
    #   resources that are associated with the specified value or values. For
    #   example, suppose that you have resources tagged with values called
    #   `admin` and `test`. If you specify both of these tag values in the
    #   request, Amazon Redshift returns a response with all resources that
    #   have either or both of these tag values associated with them.
    #
    # @return [Types::TaggedResourceListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TaggedResourceListMessage#tagged_resources #tagged_resources} => Array&lt;Types::TaggedResource&gt;
    #   * {Types::TaggedResourceListMessage#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     resource_name: "String",
    #     resource_type: "String",
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.tagged_resources #=> Array
    #   resp.tagged_resources[0].tag.key #=> String
    #   resp.tagged_resources[0].tag.value #=> String
    #   resp.tagged_resources[0].resource_name #=> String
    #   resp.tagged_resources[0].resource_type #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Shows usage limits on a cluster. Results are filtered based on the
    # combination of input usage limit identifier, cluster identifier, and
    # feature type parameters:
    #
    # * If usage limit identifier, cluster identifier, and feature type are
    #   not provided, then all usage limit objects for the current account
    #   in the current region are returned.
    #
    # * If usage limit identifier is provided, then the corresponding usage
    #   limit object is returned.
    #
    # * If cluster identifier is provided, then all usage limit objects for
    #   the specified cluster are returned.
    #
    # * If cluster identifier and feature type are provided, then all usage
    #   limit objects for the combination of cluster and feature are
    #   returned.
    #
    # @option params [String] :usage_limit_id
    #   The identifier of the usage limit to describe.
    #
    # @option params [String] :cluster_identifier
    #   The identifier of the cluster for which you want to describe usage
    #   limits.
    #
    # @option params [String] :feature_type
    #   The feature type for which you want to describe usage limits.
    #
    # @option params [Integer] :max_records
    #   The maximum number of response records to return in each call. If the
    #   number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a DescribeUsageLimits
    #   request exceed the value specified in `MaxRecords`, AWS returns a
    #   value in the `Marker` field of the response. You can retrieve the next
    #   set of response records by providing the returned marker value in the
    #   `Marker` parameter and retrying the request.
    #
    # @option params [Array<String>] :tag_keys
    #   A tag key or keys for which you want to return all matching usage
    #   limit objects that are associated with the specified key or keys. For
    #   example, suppose that you have parameter groups that are tagged with
    #   keys called `owner` and `environment`. If you specify both of these
    #   tag keys in the request, Amazon Redshift returns a response with the
    #   usage limit objects have either or both of these tag keys associated
    #   with them.
    #
    # @option params [Array<String>] :tag_values
    #   A tag value or values for which you want to return all matching usage
    #   limit objects that are associated with the specified tag value or
    #   values. For example, suppose that you have parameter groups that are
    #   tagged with values called `admin` and `test`. If you specify both of
    #   these tag values in the request, Amazon Redshift returns a response
    #   with the usage limit objects that have either or both of these tag
    #   values associated with them.
    #
    # @return [Types::UsageLimitList] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UsageLimitList#usage_limits #usage_limits} => Array&lt;Types::UsageLimit&gt;
    #   * {Types::UsageLimitList#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_usage_limits({
    #     usage_limit_id: "String",
    #     cluster_identifier: "String",
    #     feature_type: "spectrum", # accepts spectrum, concurrency-scaling
    #     max_records: 1,
    #     marker: "String",
    #     tag_keys: ["String"],
    #     tag_values: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.usage_limits #=> Array
    #   resp.usage_limits[0].usage_limit_id #=> String
    #   resp.usage_limits[0].cluster_identifier #=> String
    #   resp.usage_limits[0].feature_type #=> String, one of "spectrum", "concurrency-scaling"
    #   resp.usage_limits[0].limit_type #=> String, one of "time", "data-scanned"
    #   resp.usage_limits[0].amount #=> Integer
    #   resp.usage_limits[0].period #=> String, one of "daily", "weekly", "monthly"
    #   resp.usage_limits[0].breach_action #=> String, one of "log", "emit-metric", "disable"
    #   resp.usage_limits[0].tags #=> Array
    #   resp.usage_limits[0].tags[0].key #=> String
    #   resp.usage_limits[0].tags[0].value #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeUsageLimits AWS API Documentation
    #
    # @overload describe_usage_limits(params = {})
    # @param [Hash] params ({})
    def describe_usage_limits(params = {}, options = {})
      req = build_request(:describe_usage_limits, params)
      req.send_request(options)
    end

    # Stops logging information, such as queries and connection attempts,
    # for the specified Amazon Redshift cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The identifier of the cluster on which logging is to be stopped.
    #
    #   Example: `examplecluster`
    #
    # @return [Types::LoggingStatus] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LoggingStatus#logging_enabled #logging_enabled} => Boolean
    #   * {Types::LoggingStatus#bucket_name #bucket_name} => String
    #   * {Types::LoggingStatus#s3_key_prefix #s3_key_prefix} => String
    #   * {Types::LoggingStatus#last_successful_delivery_time #last_successful_delivery_time} => Time
    #   * {Types::LoggingStatus#last_failure_time #last_failure_time} => Time
    #   * {Types::LoggingStatus#last_failure_message #last_failure_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_logging({
    #     cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_enabled #=> Boolean
    #   resp.bucket_name #=> String
    #   resp.s3_key_prefix #=> String
    #   resp.last_successful_delivery_time #=> Time
    #   resp.last_failure_time #=> Time
    #   resp.last_failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DisableLogging AWS API Documentation
    #
    # @overload disable_logging(params = {})
    # @param [Hash] params ({})
    def disable_logging(params = {}, options = {})
      req = build_request(:disable_logging, params)
      req.send_request(options)
    end

    # Disables the automatic copying of snapshots from one region to another
    # region for a specified cluster.
    #
    # If your cluster and its snapshots are encrypted using a customer
    # master key (CMK) from AWS KMS, use DeleteSnapshotCopyGrant to delete
    # the grant that grants Amazon Redshift permission to the CMK in the
    # destination region.
    #
    # @option params [required, String] :cluster_identifier
    #   The unique identifier of the source cluster that you want to disable
    #   copying of snapshots to a destination region.
    #
    #   Constraints: Must be the valid name of an existing cluster that has
    #   cross-region snapshot copy enabled.
    #
    # @return [Types::DisableSnapshotCopyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableSnapshotCopyResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_snapshot_copy({
    #     cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DisableSnapshotCopy AWS API Documentation
    #
    # @overload disable_snapshot_copy(params = {})
    # @param [Hash] params ({})
    def disable_snapshot_copy(params = {}, options = {})
      req = build_request(:disable_snapshot_copy, params)
      req.send_request(options)
    end

    # Starts logging information, such as queries and connection attempts,
    # for the specified Amazon Redshift cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The identifier of the cluster on which logging is to be started.
    #
    #   Example: `examplecluster`
    #
    # @option params [required, String] :bucket_name
    #   The name of an existing S3 bucket where the log files are to be
    #   stored.
    #
    #   Constraints:
    #
    #   * Must be in the same region as the cluster
    #
    #   * The cluster must have read bucket and put object permissions
    #
    # @option params [String] :s3_key_prefix
    #   The prefix applied to the log file names.
    #
    #   Constraints:
    #
    #   * Cannot exceed 512 characters
    #
    #   * Cannot contain spaces( ), double quotes ("), single quotes ('), a
    #     backslash (\\), or control characters. The hexadecimal codes for
    #     invalid characters are:
    #
    #     * x00 to x20
    #
    #     * x22
    #
    #     * x27
    #
    #     * x5c
    #
    #     * x7f or larger
    #
    # @return [Types::LoggingStatus] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LoggingStatus#logging_enabled #logging_enabled} => Boolean
    #   * {Types::LoggingStatus#bucket_name #bucket_name} => String
    #   * {Types::LoggingStatus#s3_key_prefix #s3_key_prefix} => String
    #   * {Types::LoggingStatus#last_successful_delivery_time #last_successful_delivery_time} => Time
    #   * {Types::LoggingStatus#last_failure_time #last_failure_time} => Time
    #   * {Types::LoggingStatus#last_failure_message #last_failure_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_logging({
    #     cluster_identifier: "String", # required
    #     bucket_name: "String", # required
    #     s3_key_prefix: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_enabled #=> Boolean
    #   resp.bucket_name #=> String
    #   resp.s3_key_prefix #=> String
    #   resp.last_successful_delivery_time #=> Time
    #   resp.last_failure_time #=> Time
    #   resp.last_failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EnableLogging AWS API Documentation
    #
    # @overload enable_logging(params = {})
    # @param [Hash] params ({})
    def enable_logging(params = {}, options = {})
      req = build_request(:enable_logging, params)
      req.send_request(options)
    end

    # Enables the automatic copy of snapshots from one region to another
    # region for a specified cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The unique identifier of the source cluster to copy snapshots from.
    #
    #   Constraints: Must be the valid name of an existing cluster that does
    #   not already have cross-region snapshot copy enabled.
    #
    # @option params [required, String] :destination_region
    #   The destination AWS Region that you want to copy snapshots to.
    #
    #   Constraints: Must be the name of a valid AWS Region. For more
    #   information, see [Regions and Endpoints][1] in the Amazon Web Services
    #   General Reference.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region
    #
    # @option params [Integer] :retention_period
    #   The number of days to retain automated snapshots in the destination
    #   region after they are copied from the source region.
    #
    #   Default: 7.
    #
    #   Constraints: Must be at least 1 and no more than 35.
    #
    # @option params [String] :snapshot_copy_grant_name
    #   The name of the snapshot copy grant to use when snapshots of an AWS
    #   KMS-encrypted cluster are copied to the destination region.
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   The number of days to retain newly copied snapshots in the destination
    #   AWS Region after they are copied from the source AWS Region. If the
    #   value is -1, the manual snapshot is retained indefinitely.
    #
    #   The value must be either -1 or an integer between 1 and 3,653.
    #
    # @return [Types::EnableSnapshotCopyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableSnapshotCopyResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_snapshot_copy({
    #     cluster_identifier: "String", # required
    #     destination_region: "String", # required
    #     retention_period: 1,
    #     snapshot_copy_grant_name: "String",
    #     manual_snapshot_retention_period: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EnableSnapshotCopy AWS API Documentation
    #
    # @overload enable_snapshot_copy(params = {})
    # @param [Hash] params ({})
    def enable_snapshot_copy(params = {}, options = {})
      req = build_request(:enable_snapshot_copy, params)
      req.send_request(options)
    end

    # Returns a database user name and temporary password with temporary
    # authorization to log on to an Amazon Redshift database. The action
    # returns the database user name prefixed with `IAM:` if `AutoCreate` is
    # `False` or `IAMA:` if `AutoCreate` is `True`. You can optionally
    # specify one or more database user groups that the user will join at
    # log on. By default, the temporary credentials expire in 900 seconds.
    # You can optionally specify a duration between 900 seconds (15 minutes)
    # and 3600 seconds (60 minutes). For more information, see [Using IAM
    # Authentication to Generate Database User Credentials][1] in the Amazon
    # Redshift Cluster Management Guide.
    #
    # The AWS Identity and Access Management (IAM)user or role that executes
    # GetClusterCredentials must have an IAM policy attached that allows
    # access to all necessary actions and resources. For more information
    # about permissions, see [Resource Policies for
    # GetClusterCredentials][2] in the Amazon Redshift Cluster Management
    # Guide.
    #
    # If the `DbGroups` parameter is specified, the IAM policy must allow
    # the `redshift:JoinGroup` action with access to the listed `dbgroups`.
    #
    # In addition, if the `AutoCreate` parameter is set to `True`, then the
    # policy must include the `redshift:CreateClusterUser` privilege.
    #
    # If the `DbName` parameter is specified, the IAM policy must allow
    # access to the resource `dbname` for the specified database name.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/generating-user-credentials.html
    # [2]: https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html#redshift-policy-resources.getclustercredentials-resources
    #
    # @option params [required, String] :db_user
    #   The name of a database user. If a user name matching `DbUser` exists
    #   in the database, the temporary user credentials have the same
    #   permissions as the existing user. If `DbUser` doesn't exist in the
    #   database and `Autocreate` is `True`, a new user is created using the
    #   value for `DbUser` with PUBLIC permissions. If a database user
    #   matching the value for `DbUser` doesn't exist and `Autocreate` is
    #   `False`, then the command succeeds but the connection attempt will
    #   fail because the user doesn't exist in the database.
    #
    #   For more information, see [CREATE USER][1] in the Amazon Redshift
    #   Database Developer Guide.
    #
    #   Constraints:
    #
    #   * Must be 1 to 64 alphanumeric characters or hyphens. The user name
    #     can't be `PUBLIC`.
    #
    #   * Must contain only lowercase letters, numbers, underscore, plus sign,
    #     period (dot), at symbol (@), or hyphen.
    #
    #   * First character must be a letter.
    #
    #   * Must not contain a colon ( : ) or slash ( / ).
    #
    #   * Cannot be a reserved word. A list of reserved words can be found in
    #     [Reserved Words][2] in the Amazon Redshift Database Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html
    #   [2]: http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #
    # @option params [String] :db_name
    #   The name of a database that `DbUser` is authorized to log on to. If
    #   `DbName` is not specified, `DbUser` can log on to any existing
    #   database.
    #
    #   Constraints:
    #
    #   * Must be 1 to 64 alphanumeric characters or hyphens
    #
    #   * Must contain only lowercase letters, numbers, underscore, plus sign,
    #     period (dot), at symbol (@), or hyphen.
    #
    #   * First character must be a letter.
    #
    #   * Must not contain a colon ( : ) or slash ( / ).
    #
    #   * Cannot be a reserved word. A list of reserved words can be found in
    #     [Reserved Words][1] in the Amazon Redshift Database Developer Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #
    # @option params [required, String] :cluster_identifier
    #   The unique identifier of the cluster that contains the database for
    #   which your are requesting credentials. This parameter is case
    #   sensitive.
    #
    # @option params [Integer] :duration_seconds
    #   The number of seconds until the returned temporary password expires.
    #
    #   Constraint: minimum 900, maximum 3600.
    #
    #   Default: 900
    #
    # @option params [Boolean] :auto_create
    #   Create a database user with the name specified for the user named in
    #   `DbUser` if one does not exist.
    #
    # @option params [Array<String>] :db_groups
    #   A list of the names of existing database groups that the user named in
    #   `DbUser` will join for the current session, in addition to any group
    #   memberships for an existing user. If not specified, a new user is
    #   added only to PUBLIC.
    #
    #   Database group name constraints
    #
    #   * Must be 1 to 64 alphanumeric characters or hyphens
    #
    #   * Must contain only lowercase letters, numbers, underscore, plus sign,
    #     period (dot), at symbol (@), or hyphen.
    #
    #   * First character must be a letter.
    #
    #   * Must not contain a colon ( : ) or slash ( / ).
    #
    #   * Cannot be a reserved word. A list of reserved words can be found in
    #     [Reserved Words][1] in the Amazon Redshift Database Developer Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #
    # @return [Types::ClusterCredentials] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClusterCredentials#db_user #db_user} => String
    #   * {Types::ClusterCredentials#db_password #db_password} => String
    #   * {Types::ClusterCredentials#expiration #expiration} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cluster_credentials({
    #     db_user: "String", # required
    #     db_name: "String",
    #     cluster_identifier: "String", # required
    #     duration_seconds: 1,
    #     auto_create: false,
    #     db_groups: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_user #=> String
    #   resp.db_password #=> String
    #   resp.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/GetClusterCredentials AWS API Documentation
    #
    # @overload get_cluster_credentials(params = {})
    # @param [Hash] params ({})
    def get_cluster_credentials(params = {}, options = {})
      req = build_request(:get_cluster_credentials, params)
      req.send_request(options)
    end

    # Returns an array of DC2 ReservedNodeOfferings that matches the payment
    # type, term, and usage price of the given DC1 reserved node.
    #
    # @option params [required, String] :reserved_node_id
    #   A string representing the node identifier for the DC1 Reserved Node to
    #   be exchanged.
    #
    # @option params [Integer] :max_records
    #   An integer setting the maximum number of ReservedNodeOfferings to
    #   retrieve.
    #
    # @option params [String] :marker
    #   A value that indicates the starting point for the next set of
    #   ReservedNodeOfferings.
    #
    # @return [Types::GetReservedNodeExchangeOfferingsOutputMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReservedNodeExchangeOfferingsOutputMessage#marker #marker} => String
    #   * {Types::GetReservedNodeExchangeOfferingsOutputMessage#reserved_node_offerings #reserved_node_offerings} => Array&lt;Types::ReservedNodeOffering&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reserved_node_exchange_offerings({
    #     reserved_node_id: "String", # required
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.reserved_node_offerings #=> Array
    #   resp.reserved_node_offerings[0].reserved_node_offering_id #=> String
    #   resp.reserved_node_offerings[0].node_type #=> String
    #   resp.reserved_node_offerings[0].duration #=> Integer
    #   resp.reserved_node_offerings[0].fixed_price #=> Float
    #   resp.reserved_node_offerings[0].usage_price #=> Float
    #   resp.reserved_node_offerings[0].currency_code #=> String
    #   resp.reserved_node_offerings[0].offering_type #=> String
    #   resp.reserved_node_offerings[0].recurring_charges #=> Array
    #   resp.reserved_node_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_node_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.reserved_node_offerings[0].reserved_node_offering_type #=> String, one of "Regular", "Upgradable"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/GetReservedNodeExchangeOfferings AWS API Documentation
    #
    # @overload get_reserved_node_exchange_offerings(params = {})
    # @param [Hash] params ({})
    def get_reserved_node_exchange_offerings(params = {}, options = {})
      req = build_request(:get_reserved_node_exchange_offerings, params)
      req.send_request(options)
    end

    # Modifies the settings for a cluster.
    #
    # You can also change node type and the number of nodes to scale up or
    # down the cluster. When resizing a cluster, you must specify both the
    # number of nodes and the node type even if one of the parameters does
    # not change.
    #
    # You can add another security or parameter group, or change the master
    # user password. Resetting a cluster password or modifying the security
    # groups associated with a cluster do not need a reboot. However,
    # modifying a parameter group requires a reboot for parameters to take
    # effect. For more information about managing clusters, go to [Amazon
    # Redshift Clusters][1] in the *Amazon Redshift Cluster Management
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
    #
    # @option params [required, String] :cluster_identifier
    #   The unique identifier of the cluster to be modified.
    #
    #   Example: `examplecluster`
    #
    # @option params [String] :cluster_type
    #   The new cluster type.
    #
    #   When you submit your cluster resize request, your existing cluster
    #   goes into a read-only mode. After Amazon Redshift provisions a new
    #   cluster based on your resize requirements, there will be outage for a
    #   period while the old cluster is deleted and your connection is
    #   switched to the new cluster. You can use DescribeResize to track the
    #   progress of the resize request.
    #
    #   Valid Values: ` multi-node | single-node `
    #
    # @option params [String] :node_type
    #   The new node type of the cluster. If you specify a new node type, you
    #   must also specify the number of nodes parameter.
    #
    #   For more information about resizing clusters, go to [Resizing Clusters
    #   in Amazon Redshift][1] in the *Amazon Redshift Cluster Management
    #   Guide*.
    #
    #   Valid Values: `ds2.xlarge` \| `ds2.8xlarge` \| `dc1.large` \|
    #   `dc1.8xlarge` \| `dc2.large` \| `dc2.8xlarge` \| `ra3.4xlarge` \|
    #   `ra3.16xlarge`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html
    #
    # @option params [Integer] :number_of_nodes
    #   The new number of nodes of the cluster. If you specify a new number of
    #   nodes, you must also specify the node type parameter.
    #
    #   For more information about resizing clusters, go to [Resizing Clusters
    #   in Amazon Redshift][1] in the *Amazon Redshift Cluster Management
    #   Guide*.
    #
    #   Valid Values: Integer greater than `0`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html
    #
    # @option params [Array<String>] :cluster_security_groups
    #   A list of cluster security groups to be authorized on this cluster.
    #   This change is asynchronously applied as soon as possible.
    #
    #   Security groups currently associated with the cluster, and not in the
    #   list of groups to apply, will be revoked from the cluster.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of virtual private cloud (VPC) security groups to be associated
    #   with the cluster. This change is asynchronously applied as soon as
    #   possible.
    #
    # @option params [String] :master_user_password
    #   The new password for the cluster master user. This change is
    #   asynchronously applied as soon as possible. Between the time of the
    #   request and the completion of the request, the `MasterUserPassword`
    #   element exists in the `PendingModifiedValues` element of the operation
    #   response.
    #
    #   <note markdown="1"> Operations never return the password, so this operation provides a way
    #   to regain access to the master user account for a cluster if the
    #   password is lost.
    #
    #    </note>
    #
    #   Default: Uses existing setting.
    #
    #   Constraints:
    #
    #   * Must be between 8 and 64 characters in length.
    #
    #   * Must contain at least one uppercase letter.
    #
    #   * Must contain at least one lowercase letter.
    #
    #   * Must contain one number.
    #
    #   * Can be any printable ASCII character (ASCII code 33 to 126) except
    #     ' (single quote), " (double quote), \\, /, @, or space.
    #
    # @option params [String] :cluster_parameter_group_name
    #   The name of the cluster parameter group to apply to this cluster. This
    #   change is applied only after the cluster is rebooted. To reboot a
    #   cluster use RebootCluster.
    #
    #   Default: Uses existing setting.
    #
    #   Constraints: The cluster parameter group must be in the same parameter
    #   group family that matches the cluster version.
    #
    # @option params [Integer] :automated_snapshot_retention_period
    #   The number of days that automated snapshots are retained. If the value
    #   is 0, automated snapshots are disabled. Even if automated snapshots
    #   are disabled, you can still create manual snapshots when you want with
    #   CreateClusterSnapshot.
    #
    #   If you decrease the automated snapshot retention period from its
    #   current value, existing automated snapshots that fall outside of the
    #   new retention period will be immediately deleted.
    #
    #   Default: Uses existing setting.
    #
    #   Constraints: Must be a value from 0 to 35.
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   The default for number of days that a newly created manual snapshot is
    #   retained. If the value is -1, the manual snapshot is retained
    #   indefinitely. This value doesn't retroactively change the retention
    #   periods of existing manual snapshots.
    #
    #   The value must be either -1 or an integer between 1 and 3,653.
    #
    #   The default value is -1.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, if necessary. If system maintenance is necessary during the
    #   window, it may result in an outage.
    #
    #   This maintenance window change is made immediately. If the new
    #   maintenance window indicates the current time, there must be at least
    #   120 minutes between the current time and end of the window in order to
    #   ensure that pending changes are applied.
    #
    #   Default: Uses existing setting.
    #
    #   Format: ddd:hh24:mi-ddd:hh24:mi, for example `wed:07:30-wed:08:00`.
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Must be at least 30 minutes.
    #
    # @option params [String] :cluster_version
    #   The new version number of the Amazon Redshift engine to upgrade to.
    #
    #   For major version upgrades, if a non-default cluster parameter group
    #   is currently in use, a new cluster parameter group in the cluster
    #   parameter group family for the new version must be specified. The new
    #   cluster parameter group can be the default for that cluster parameter
    #   group family. For more information about parameters and parameter
    #   groups, go to [Amazon Redshift Parameter Groups][1] in the *Amazon
    #   Redshift Cluster Management Guide*.
    #
    #   Example: `1.0`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #
    # @option params [Boolean] :allow_version_upgrade
    #   If `true`, major version upgrades will be applied automatically to the
    #   cluster during the maintenance window.
    #
    #   Default: `false`
    #
    # @option params [String] :hsm_client_certificate_identifier
    #   Specifies the name of the HSM client certificate the Amazon Redshift
    #   cluster uses to retrieve the data encryption keys stored in an HSM.
    #
    # @option params [String] :hsm_configuration_identifier
    #   Specifies the name of the HSM configuration that contains the
    #   information the Amazon Redshift cluster can use to retrieve and store
    #   keys in an HSM.
    #
    # @option params [String] :new_cluster_identifier
    #   The new identifier for the cluster.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * Alphabetic characters must be lowercase.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique for all clusters within an AWS account.
    #
    #   Example: `examplecluster`
    #
    # @option params [Boolean] :publicly_accessible
    #   If `true`, the cluster can be accessed from a public network. Only
    #   clusters in VPCs can be set to be publicly available.
    #
    # @option params [String] :elastic_ip
    #   The Elastic IP (EIP) address for the cluster.
    #
    #   Constraints: The cluster must be provisioned in EC2-VPC and
    #   publicly-accessible through an Internet gateway. For more information
    #   about provisioning clusters in EC2-VPC, go to [Supported Platforms to
    #   Launch Your Cluster][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms
    #
    # @option params [Boolean] :enhanced_vpc_routing
    #   An option that specifies whether to create the cluster with enhanced
    #   VPC routing enabled. To create a cluster that uses enhanced VPC
    #   routing, the cluster must be in a VPC. For more information, see
    #   [Enhanced VPC Routing][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #   If this option is `true`, enhanced VPC routing is enabled.
    #
    #   Default: false
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html
    #
    # @option params [String] :maintenance_track_name
    #   The name for the maintenance track that you want to assign for the
    #   cluster. This name change is asynchronous. The new track name stays in
    #   the `PendingModifiedValues` for the cluster until the next maintenance
    #   window. When the maintenance track changes, the cluster is switched to
    #   the latest cluster release available for the maintenance track. At
    #   this point, the maintenance track name is applied.
    #
    # @option params [Boolean] :encrypted
    #   Indicates whether the cluster is encrypted. If the value is encrypted
    #   (true) and you provide a value for the `KmsKeyId` parameter, we
    #   encrypt the cluster with the provided `KmsKeyId`. If you don't
    #   provide a `KmsKeyId`, we encrypt with the default key.
    #
    #   If the value is not encrypted (false), then the cluster is decrypted.
    #
    # @option params [String] :kms_key_id
    #   The AWS Key Management Service (KMS) key ID of the encryption key that
    #   you want to use to encrypt data in the cluster.
    #
    # @return [Types::ModifyClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyClusterResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster({
    #     cluster_identifier: "String", # required
    #     cluster_type: "String",
    #     node_type: "String",
    #     number_of_nodes: 1,
    #     cluster_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     master_user_password: "String",
    #     cluster_parameter_group_name: "String",
    #     automated_snapshot_retention_period: 1,
    #     manual_snapshot_retention_period: 1,
    #     preferred_maintenance_window: "String",
    #     cluster_version: "String",
    #     allow_version_upgrade: false,
    #     hsm_client_certificate_identifier: "String",
    #     hsm_configuration_identifier: "String",
    #     new_cluster_identifier: "String",
    #     publicly_accessible: false,
    #     elastic_ip: "String",
    #     enhanced_vpc_routing: false,
    #     maintenance_track_name: "String",
    #     encrypted: false,
    #     kms_key_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyCluster AWS API Documentation
    #
    # @overload modify_cluster(params = {})
    # @param [Hash] params ({})
    def modify_cluster(params = {}, options = {})
      req = build_request(:modify_cluster, params)
      req.send_request(options)
    end

    # Modifies the database revision of a cluster. The database revision is
    # a unique revision of the database running in a cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The unique identifier of a cluster whose database revision you want to
    #   modify.
    #
    #   Example: `examplecluster`
    #
    # @option params [required, String] :revision_target
    #   The identifier of the database revision. You can retrieve this value
    #   from the response to the DescribeClusterDbRevisions request.
    #
    # @return [Types::ModifyClusterDbRevisionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyClusterDbRevisionResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_db_revision({
    #     cluster_identifier: "String", # required
    #     revision_target: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterDbRevision AWS API Documentation
    #
    # @overload modify_cluster_db_revision(params = {})
    # @param [Hash] params ({})
    def modify_cluster_db_revision(params = {}, options = {})
      req = build_request(:modify_cluster_db_revision, params)
      req.send_request(options)
    end

    # Modifies the list of AWS Identity and Access Management (IAM) roles
    # that can be used by the cluster to access other AWS services.
    #
    # A cluster can have up to 10 IAM roles associated at any time.
    #
    # @option params [required, String] :cluster_identifier
    #   The unique identifier of the cluster for which you want to associate
    #   or disassociate IAM roles.
    #
    # @option params [Array<String>] :add_iam_roles
    #   Zero or more IAM roles to associate with the cluster. The roles must
    #   be in their Amazon Resource Name (ARN) format. You can associate up to
    #   10 IAM roles with a single cluster in a single request.
    #
    # @option params [Array<String>] :remove_iam_roles
    #   Zero or more IAM roles in ARN format to disassociate from the cluster.
    #   You can disassociate up to 10 IAM roles from a single cluster in a
    #   single request.
    #
    # @return [Types::ModifyClusterIamRolesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyClusterIamRolesResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_iam_roles({
    #     cluster_identifier: "String", # required
    #     add_iam_roles: ["String"],
    #     remove_iam_roles: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterIamRoles AWS API Documentation
    #
    # @overload modify_cluster_iam_roles(params = {})
    # @param [Hash] params ({})
    def modify_cluster_iam_roles(params = {}, options = {})
      req = build_request(:modify_cluster_iam_roles, params)
      req.send_request(options)
    end

    # Modifies the maintenance settings of a cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   A unique identifier for the cluster.
    #
    # @option params [Boolean] :defer_maintenance
    #   A boolean indicating whether to enable the deferred maintenance
    #   window.
    #
    # @option params [String] :defer_maintenance_identifier
    #   A unique identifier for the deferred maintenance window.
    #
    # @option params [Time,DateTime,Date,Integer,String] :defer_maintenance_start_time
    #   A timestamp indicating the start time for the deferred maintenance
    #   window.
    #
    # @option params [Time,DateTime,Date,Integer,String] :defer_maintenance_end_time
    #   A timestamp indicating end time for the deferred maintenance window.
    #   If you specify an end time, you can't specify a duration.
    #
    # @option params [Integer] :defer_maintenance_duration
    #   An integer indicating the duration of the maintenance window in days.
    #   If you specify a duration, you can't specify an end time. The
    #   duration must be 45 days or less.
    #
    # @return [Types::ModifyClusterMaintenanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyClusterMaintenanceResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_maintenance({
    #     cluster_identifier: "String", # required
    #     defer_maintenance: false,
    #     defer_maintenance_identifier: "String",
    #     defer_maintenance_start_time: Time.now,
    #     defer_maintenance_end_time: Time.now,
    #     defer_maintenance_duration: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterMaintenance AWS API Documentation
    #
    # @overload modify_cluster_maintenance(params = {})
    # @param [Hash] params ({})
    def modify_cluster_maintenance(params = {}, options = {})
      req = build_request(:modify_cluster_maintenance, params)
      req.send_request(options)
    end

    # Modifies the parameters of a parameter group.
    #
    # For more information about parameters and parameter groups, go to
    # [Amazon Redshift Parameter Groups][1] in the *Amazon Redshift Cluster
    # Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the parameter group to be modified.
    #
    # @option params [required, Array<Types::Parameter>] :parameters
    #   An array of parameters to be modified. A maximum of 20 parameters can
    #   be modified in a single request.
    #
    #   For each parameter to be modified, you must supply at least the
    #   parameter name and parameter value; other name-value pairs of the
    #   parameter are optional.
    #
    #   For the workload management (WLM) configuration, you must supply all
    #   the name-value pairs in the wlm\_json\_configuration parameter.
    #
    # @return [Types::ClusterParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClusterParameterGroupNameMessage#parameter_group_name #parameter_group_name} => String
    #   * {Types::ClusterParameterGroupNameMessage#parameter_group_status #parameter_group_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_parameter_group({
    #     parameter_group_name: "String", # required
    #     parameters: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         apply_type: "static", # accepts static, dynamic
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.parameter_group_name #=> String
    #   resp.parameter_group_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterParameterGroup AWS API Documentation
    #
    # @overload modify_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def modify_cluster_parameter_group(params = {}, options = {})
      req = build_request(:modify_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Modifies the settings for a snapshot.
    #
    # This exanmple modifies the manual retention period setting for a
    # cluster snapshot.
    #
    # @option params [required, String] :snapshot_identifier
    #   The identifier of the snapshot whose setting you want to modify.
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   The number of days that a manual snapshot is retained. If the value is
    #   -1, the manual snapshot is retained indefinitely.
    #
    #   If the manual snapshot falls outside of the new retention period, you
    #   can specify the force option to immediately delete the snapshot.
    #
    #   The value must be either -1 or an integer between 1 and 3,653.
    #
    # @option params [Boolean] :force
    #   A Boolean option to override an exception if the retention period has
    #   already passed.
    #
    # @return [Types::ModifyClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyClusterSnapshotResult#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_snapshot({
    #     snapshot_identifier: "String", # required
    #     manual_snapshot_retention_period: 1,
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.snapshot_identifier #=> String
    #   resp.snapshot.cluster_identifier #=> String
    #   resp.snapshot.snapshot_create_time #=> Time
    #   resp.snapshot.status #=> String
    #   resp.snapshot.port #=> Integer
    #   resp.snapshot.availability_zone #=> String
    #   resp.snapshot.cluster_create_time #=> Time
    #   resp.snapshot.master_username #=> String
    #   resp.snapshot.cluster_version #=> String
    #   resp.snapshot.snapshot_type #=> String
    #   resp.snapshot.node_type #=> String
    #   resp.snapshot.number_of_nodes #=> Integer
    #   resp.snapshot.db_name #=> String
    #   resp.snapshot.vpc_id #=> String
    #   resp.snapshot.encrypted #=> Boolean
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.snapshot.accounts_with_restore_access #=> Array
    #   resp.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.snapshot.owner_account #=> String
    #   resp.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.snapshot.source_region #=> String
    #   resp.snapshot.tags #=> Array
    #   resp.snapshot.tags[0].key #=> String
    #   resp.snapshot.tags[0].value #=> String
    #   resp.snapshot.restorable_node_types #=> Array
    #   resp.snapshot.restorable_node_types[0] #=> String
    #   resp.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.snapshot.maintenance_track_name #=> String
    #   resp.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.snapshot.snapshot_retention_start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterSnapshot AWS API Documentation
    #
    # @overload modify_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def modify_cluster_snapshot(params = {}, options = {})
      req = build_request(:modify_cluster_snapshot, params)
      req.send_request(options)
    end

    # Modifies a snapshot schedule for a cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   A unique identifier for the cluster whose snapshot schedule you want
    #   to modify.
    #
    # @option params [String] :schedule_identifier
    #   A unique alphanumeric identifier for the schedule that you want to
    #   associate with the cluster.
    #
    # @option params [Boolean] :disassociate_schedule
    #   A boolean to indicate whether to remove the assoiciation between the
    #   cluster and the schedule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_snapshot_schedule({
    #     cluster_identifier: "String", # required
    #     schedule_identifier: "String",
    #     disassociate_schedule: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterSnapshotSchedule AWS API Documentation
    #
    # @overload modify_cluster_snapshot_schedule(params = {})
    # @param [Hash] params ({})
    def modify_cluster_snapshot_schedule(params = {}, options = {})
      req = build_request(:modify_cluster_snapshot_schedule, params)
      req.send_request(options)
    end

    # Modifies a cluster subnet group to include the specified list of VPC
    # subnets. The operation replaces the existing list of subnets with the
    # new list of subnets.
    #
    # @option params [required, String] :cluster_subnet_group_name
    #   The name of the subnet group to be modified.
    #
    # @option params [String] :description
    #   A text description of the subnet group to be modified.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   An array of VPC subnet IDs. A maximum of 20 subnets can be modified in
    #   a single request.
    #
    # @return [Types::ModifyClusterSubnetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyClusterSubnetGroupResult#cluster_subnet_group #cluster_subnet_group} => Types::ClusterSubnetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster_subnet_group({
    #     cluster_subnet_group_name: "String", # required
    #     description: "String",
    #     subnet_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_subnet_group.cluster_subnet_group_name #=> String
    #   resp.cluster_subnet_group.description #=> String
    #   resp.cluster_subnet_group.vpc_id #=> String
    #   resp.cluster_subnet_group.subnet_group_status #=> String
    #   resp.cluster_subnet_group.subnets #=> Array
    #   resp.cluster_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.cluster_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.cluster_subnet_group.subnets[0].subnet_availability_zone.supported_platforms #=> Array
    #   resp.cluster_subnet_group.subnets[0].subnet_availability_zone.supported_platforms[0].name #=> String
    #   resp.cluster_subnet_group.subnets[0].subnet_status #=> String
    #   resp.cluster_subnet_group.tags #=> Array
    #   resp.cluster_subnet_group.tags[0].key #=> String
    #   resp.cluster_subnet_group.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterSubnetGroup AWS API Documentation
    #
    # @overload modify_cluster_subnet_group(params = {})
    # @param [Hash] params ({})
    def modify_cluster_subnet_group(params = {}, options = {})
      req = build_request(:modify_cluster_subnet_group, params)
      req.send_request(options)
    end

    # Modifies an existing Amazon Redshift event notification subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the modified Amazon Redshift event notification
    #   subscription.
    #
    # @option params [String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic to be used by the
    #   event notification subscription.
    #
    # @option params [String] :source_type
    #   The type of source that will be generating the events. For example, if
    #   you want to be notified of events generated by a cluster, you would
    #   set this parameter to cluster. If this value is not specified, events
    #   are returned for all Amazon Redshift objects in your AWS account. You
    #   must specify a source type in order to specify source IDs.
    #
    #   Valid values: cluster, cluster-parameter-group,
    #   cluster-security-group, cluster-snapshot, and scheduled-action.
    #
    # @option params [Array<String>] :source_ids
    #   A list of one or more identifiers of Amazon Redshift source objects.
    #   All of the objects must be of the same type as was specified in the
    #   source type parameter. The event subscription will return only events
    #   generated by the specified objects. If not specified, then events are
    #   returned for all objects within the source type specified.
    #
    #   Example: my-cluster-1, my-cluster-2
    #
    #   Example: my-snapshot-20131010
    #
    # @option params [Array<String>] :event_categories
    #   Specifies the Amazon Redshift event categories to be published by the
    #   event notification subscription.
    #
    #   Values: configuration, management, monitoring, security
    #
    # @option params [String] :severity
    #   Specifies the Amazon Redshift event severity to be published by the
    #   event notification subscription.
    #
    #   Values: ERROR, INFO
    #
    # @option params [Boolean] :enabled
    #   A Boolean value indicating if the subscription is enabled. `true`
    #   indicates the subscription is enabled
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
    #     source_ids: ["String"],
    #     event_categories: ["String"],
    #     severity: "String",
    #     enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> Time
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.severity #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.tags #=> Array
    #   resp.event_subscription.tags[0].key #=> String
    #   resp.event_subscription.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyEventSubscription AWS API Documentation
    #
    # @overload modify_event_subscription(params = {})
    # @param [Hash] params ({})
    def modify_event_subscription(params = {}, options = {})
      req = build_request(:modify_event_subscription, params)
      req.send_request(options)
    end

    # Modifies a scheduled action.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of the scheduled action to modify.
    #
    # @option params [Types::ScheduledActionType] :target_action
    #   A modified JSON format of the scheduled action. For more information
    #   about this parameter, see ScheduledAction.
    #
    # @option params [String] :schedule
    #   A modified schedule in either `at( )` or `cron( )` format. For more
    #   information about this parameter, see ScheduledAction.
    #
    # @option params [String] :iam_role
    #   A different IAM role to assume to run the target action. For more
    #   information about this parameter, see ScheduledAction.
    #
    # @option params [String] :scheduled_action_description
    #   A modified description of the scheduled action.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   A modified start time of the scheduled action. For more information
    #   about this parameter, see ScheduledAction.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   A modified end time of the scheduled action. For more information
    #   about this parameter, see ScheduledAction.
    #
    # @option params [Boolean] :enable
    #   A modified enable flag of the scheduled action. If true, the scheduled
    #   action is active. If false, the scheduled action is disabled.
    #
    # @return [Types::ScheduledAction] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScheduledAction#scheduled_action_name #scheduled_action_name} => String
    #   * {Types::ScheduledAction#target_action #target_action} => Types::ScheduledActionType
    #   * {Types::ScheduledAction#schedule #schedule} => String
    #   * {Types::ScheduledAction#iam_role #iam_role} => String
    #   * {Types::ScheduledAction#scheduled_action_description #scheduled_action_description} => String
    #   * {Types::ScheduledAction#state #state} => String
    #   * {Types::ScheduledAction#next_invocations #next_invocations} => Array&lt;Time&gt;
    #   * {Types::ScheduledAction#start_time #start_time} => Time
    #   * {Types::ScheduledAction#end_time #end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_scheduled_action({
    #     scheduled_action_name: "String", # required
    #     target_action: {
    #       resize_cluster: {
    #         cluster_identifier: "String", # required
    #         cluster_type: "String",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         classic: false,
    #       },
    #       pause_cluster: {
    #         cluster_identifier: "String", # required
    #       },
    #       resume_cluster: {
    #         cluster_identifier: "String", # required
    #       },
    #     },
    #     schedule: "String",
    #     iam_role: "String",
    #     scheduled_action_description: "String",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     enable: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_action_name #=> String
    #   resp.target_action.resize_cluster.cluster_identifier #=> String
    #   resp.target_action.resize_cluster.cluster_type #=> String
    #   resp.target_action.resize_cluster.node_type #=> String
    #   resp.target_action.resize_cluster.number_of_nodes #=> Integer
    #   resp.target_action.resize_cluster.classic #=> Boolean
    #   resp.target_action.pause_cluster.cluster_identifier #=> String
    #   resp.target_action.resume_cluster.cluster_identifier #=> String
    #   resp.schedule #=> String
    #   resp.iam_role #=> String
    #   resp.scheduled_action_description #=> String
    #   resp.state #=> String, one of "ACTIVE", "DISABLED"
    #   resp.next_invocations #=> Array
    #   resp.next_invocations[0] #=> Time
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyScheduledAction AWS API Documentation
    #
    # @overload modify_scheduled_action(params = {})
    # @param [Hash] params ({})
    def modify_scheduled_action(params = {}, options = {})
      req = build_request(:modify_scheduled_action, params)
      req.send_request(options)
    end

    # Modifies the number of days to retain snapshots in the destination AWS
    # Region after they are copied from the source AWS Region. By default,
    # this operation only changes the retention period of copied automated
    # snapshots. The retention periods for both new and existing copied
    # automated snapshots are updated with the new retention period. You can
    # set the manual option to change only the retention periods of copied
    # manual snapshots. If you set this option, only newly copied manual
    # snapshots have the new retention period.
    #
    # @option params [required, String] :cluster_identifier
    #   The unique identifier of the cluster for which you want to change the
    #   retention period for either automated or manual snapshots that are
    #   copied to a destination AWS Region.
    #
    #   Constraints: Must be the valid name of an existing cluster that has
    #   cross-region snapshot copy enabled.
    #
    # @option params [required, Integer] :retention_period
    #   The number of days to retain automated snapshots in the destination
    #   AWS Region after they are copied from the source AWS Region.
    #
    #   By default, this only changes the retention period of copied automated
    #   snapshots.
    #
    #   If you decrease the retention period for automated snapshots that are
    #   copied to a destination AWS Region, Amazon Redshift deletes any
    #   existing automated snapshots that were copied to the destination AWS
    #   Region and that fall outside of the new retention period.
    #
    #   Constraints: Must be at least 1 and no more than 35 for automated
    #   snapshots.
    #
    #   If you specify the `manual` option, only newly copied manual snapshots
    #   will have the new retention period.
    #
    #   If you specify the value of -1 newly copied manual snapshots are
    #   retained indefinitely.
    #
    #   Constraints: The number of days must be either -1 or an integer
    #   between 1 and 3,653 for manual snapshots.
    #
    # @option params [Boolean] :manual
    #   Indicates whether to apply the snapshot retention period to newly
    #   copied manual snapshots instead of automated snapshots.
    #
    # @return [Types::ModifySnapshotCopyRetentionPeriodResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifySnapshotCopyRetentionPeriodResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_snapshot_copy_retention_period({
    #     cluster_identifier: "String", # required
    #     retention_period: 1, # required
    #     manual: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifySnapshotCopyRetentionPeriod AWS API Documentation
    #
    # @overload modify_snapshot_copy_retention_period(params = {})
    # @param [Hash] params ({})
    def modify_snapshot_copy_retention_period(params = {}, options = {})
      req = build_request(:modify_snapshot_copy_retention_period, params)
      req.send_request(options)
    end

    # Modifies a snapshot schedule. Any schedule associated with a cluster
    # is modified asynchronously.
    #
    # @option params [required, String] :schedule_identifier
    #   A unique alphanumeric identifier of the schedule to modify.
    #
    # @option params [required, Array<String>] :schedule_definitions
    #   An updated list of schedule definitions. A schedule definition is made
    #   up of schedule expressions, for example, "cron(30 12 *)" or
    #   "rate(12 hours)".
    #
    # @return [Types::SnapshotSchedule] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SnapshotSchedule#schedule_definitions #schedule_definitions} => Array&lt;String&gt;
    #   * {Types::SnapshotSchedule#schedule_identifier #schedule_identifier} => String
    #   * {Types::SnapshotSchedule#schedule_description #schedule_description} => String
    #   * {Types::SnapshotSchedule#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::SnapshotSchedule#next_invocations #next_invocations} => Array&lt;Time&gt;
    #   * {Types::SnapshotSchedule#associated_cluster_count #associated_cluster_count} => Integer
    #   * {Types::SnapshotSchedule#associated_clusters #associated_clusters} => Array&lt;Types::ClusterAssociatedToSchedule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_snapshot_schedule({
    #     schedule_identifier: "String", # required
    #     schedule_definitions: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schedule_definitions #=> Array
    #   resp.schedule_definitions[0] #=> String
    #   resp.schedule_identifier #=> String
    #   resp.schedule_description #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_invocations #=> Array
    #   resp.next_invocations[0] #=> Time
    #   resp.associated_cluster_count #=> Integer
    #   resp.associated_clusters #=> Array
    #   resp.associated_clusters[0].cluster_identifier #=> String
    #   resp.associated_clusters[0].schedule_association_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifySnapshotSchedule AWS API Documentation
    #
    # @overload modify_snapshot_schedule(params = {})
    # @param [Hash] params ({})
    def modify_snapshot_schedule(params = {}, options = {})
      req = build_request(:modify_snapshot_schedule, params)
      req.send_request(options)
    end

    # Modifies a usage limit in a cluster. You can't modify the feature
    # type or period of a usage limit.
    #
    # @option params [required, String] :usage_limit_id
    #   The identifier of the usage limit to modify.
    #
    # @option params [Integer] :amount
    #   The new limit amount. For more information about this parameter, see
    #   UsageLimit.
    #
    # @option params [String] :breach_action
    #   The new action that Amazon Redshift takes when the limit is reached.
    #   For more information about this parameter, see UsageLimit.
    #
    # @return [Types::UsageLimit] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UsageLimit#usage_limit_id #usage_limit_id} => String
    #   * {Types::UsageLimit#cluster_identifier #cluster_identifier} => String
    #   * {Types::UsageLimit#feature_type #feature_type} => String
    #   * {Types::UsageLimit#limit_type #limit_type} => String
    #   * {Types::UsageLimit#amount #amount} => Integer
    #   * {Types::UsageLimit#period #period} => String
    #   * {Types::UsageLimit#breach_action #breach_action} => String
    #   * {Types::UsageLimit#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_usage_limit({
    #     usage_limit_id: "String", # required
    #     amount: 1,
    #     breach_action: "log", # accepts log, emit-metric, disable
    #   })
    #
    # @example Response structure
    #
    #   resp.usage_limit_id #=> String
    #   resp.cluster_identifier #=> String
    #   resp.feature_type #=> String, one of "spectrum", "concurrency-scaling"
    #   resp.limit_type #=> String, one of "time", "data-scanned"
    #   resp.amount #=> Integer
    #   resp.period #=> String, one of "daily", "weekly", "monthly"
    #   resp.breach_action #=> String, one of "log", "emit-metric", "disable"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyUsageLimit AWS API Documentation
    #
    # @overload modify_usage_limit(params = {})
    # @param [Hash] params ({})
    def modify_usage_limit(params = {}, options = {})
      req = build_request(:modify_usage_limit, params)
      req.send_request(options)
    end

    # Pauses a cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The identifier of the cluster to be paused.
    #
    # @return [Types::PauseClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PauseClusterResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.pause_cluster({
    #     cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/PauseCluster AWS API Documentation
    #
    # @overload pause_cluster(params = {})
    # @param [Hash] params ({})
    def pause_cluster(params = {}, options = {})
      req = build_request(:pause_cluster, params)
      req.send_request(options)
    end

    # Allows you to purchase reserved nodes. Amazon Redshift offers a
    # predefined set of reserved node offerings. You can purchase one or
    # more of the offerings. You can call the DescribeReservedNodeOfferings
    # API to obtain the available reserved node offerings. You can call this
    # API by providing a specific reserved node offering and the number of
    # nodes you want to reserve.
    #
    # For more information about reserved node offerings, go to [Purchasing
    # Reserved Nodes][1] in the *Amazon Redshift Cluster Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html
    #
    # @option params [required, String] :reserved_node_offering_id
    #   The unique identifier of the reserved node offering you want to
    #   purchase.
    #
    # @option params [Integer] :node_count
    #   The number of reserved nodes that you want to purchase.
    #
    #   Default: `1`
    #
    # @return [Types::PurchaseReservedNodeOfferingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseReservedNodeOfferingResult#reserved_node #reserved_node} => Types::ReservedNode
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_node_offering({
    #     reserved_node_offering_id: "String", # required
    #     node_count: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_node.reserved_node_id #=> String
    #   resp.reserved_node.reserved_node_offering_id #=> String
    #   resp.reserved_node.node_type #=> String
    #   resp.reserved_node.start_time #=> Time
    #   resp.reserved_node.duration #=> Integer
    #   resp.reserved_node.fixed_price #=> Float
    #   resp.reserved_node.usage_price #=> Float
    #   resp.reserved_node.currency_code #=> String
    #   resp.reserved_node.node_count #=> Integer
    #   resp.reserved_node.state #=> String
    #   resp.reserved_node.offering_type #=> String
    #   resp.reserved_node.recurring_charges #=> Array
    #   resp.reserved_node.recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_node.recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.reserved_node.reserved_node_offering_type #=> String, one of "Regular", "Upgradable"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/PurchaseReservedNodeOffering AWS API Documentation
    #
    # @overload purchase_reserved_node_offering(params = {})
    # @param [Hash] params ({})
    def purchase_reserved_node_offering(params = {}, options = {})
      req = build_request(:purchase_reserved_node_offering, params)
      req.send_request(options)
    end

    # Reboots a cluster. This action is taken as soon as possible. It
    # results in a momentary outage to the cluster, during which the cluster
    # status is set to `rebooting`. A cluster event is created when the
    # reboot is completed. Any pending cluster modifications (see
    # ModifyCluster) are applied at this reboot. For more information about
    # managing clusters, go to [Amazon Redshift Clusters][1] in the *Amazon
    # Redshift Cluster Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
    #
    # @option params [required, String] :cluster_identifier
    #   The cluster identifier.
    #
    # @return [Types::RebootClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootClusterResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_cluster({
    #     cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RebootCluster AWS API Documentation
    #
    # @overload reboot_cluster(params = {})
    # @param [Hash] params ({})
    def reboot_cluster(params = {}, options = {})
      req = build_request(:reboot_cluster, params)
      req.send_request(options)
    end

    # Sets one or more parameters of the specified parameter group to their
    # default values and sets the source values of the parameters to
    # "engine-default". To reset the entire parameter group specify the
    # *ResetAllParameters* parameter. For parameter changes to take effect
    # you must reboot any associated clusters.
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the cluster parameter group to be reset.
    #
    # @option params [Boolean] :reset_all_parameters
    #   If `true`, all parameters in the specified parameter group will be
    #   reset to their default values.
    #
    #   Default: `true`
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   An array of names of parameters to be reset. If *ResetAllParameters*
    #   option is not used, then at least one parameter name must be supplied.
    #
    #   Constraints: A maximum of 20 parameters can be reset in a single
    #   request.
    #
    # @return [Types::ClusterParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClusterParameterGroupNameMessage#parameter_group_name #parameter_group_name} => String
    #   * {Types::ClusterParameterGroupNameMessage#parameter_group_status #parameter_group_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_cluster_parameter_group({
    #     parameter_group_name: "String", # required
    #     reset_all_parameters: false,
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         apply_type: "static", # accepts static, dynamic
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.parameter_group_name #=> String
    #   resp.parameter_group_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ResetClusterParameterGroup AWS API Documentation
    #
    # @overload reset_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def reset_cluster_parameter_group(params = {}, options = {})
      req = build_request(:reset_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Changes the size of the cluster. You can change the cluster's type,
    # or change the number or type of nodes. The default behavior is to use
    # the elastic resize method. With an elastic resize, your cluster is
    # available for read and write operations more quickly than with the
    # classic resize method.
    #
    # Elastic resize operations have the following restrictions:
    #
    # * You can only resize clusters of the following types:
    #
    #   * dc1.large (if your cluster is in a VPC)
    #
    #   * dc1.8xlarge (if your cluster is in a VPC)
    #
    #   * dc2.large
    #
    #   * dc2.8xlarge
    #
    #   * ds2.xlarge
    #
    #   * ds2.8xlarge
    #
    #   * ra3.4xlarge
    #
    #   * ra3.16xlarge
    #
    # * The type of nodes that you add must match the node type for the
    #   cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The unique identifier for the cluster to resize.
    #
    # @option params [String] :cluster_type
    #   The new cluster type for the specified cluster.
    #
    # @option params [String] :node_type
    #   The new node type for the nodes you are adding. If not specified, the
    #   cluster's current node type is used.
    #
    # @option params [Integer] :number_of_nodes
    #   The new number of nodes for the cluster. If not specified, the
    #   cluster's current number of nodes is used.
    #
    # @option params [Boolean] :classic
    #   A boolean value indicating whether the resize operation is using the
    #   classic resize process. If you don't provide this parameter or set
    #   the value to `false`, the resize type is elastic.
    #
    # @return [Types::ResizeClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResizeClusterResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resize_cluster({
    #     cluster_identifier: "String", # required
    #     cluster_type: "String",
    #     node_type: "String",
    #     number_of_nodes: 1,
    #     classic: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ResizeCluster AWS API Documentation
    #
    # @overload resize_cluster(params = {})
    # @param [Hash] params ({})
    def resize_cluster(params = {}, options = {})
      req = build_request(:resize_cluster, params)
      req.send_request(options)
    end

    # Creates a new cluster from a snapshot. By default, Amazon Redshift
    # creates the resulting cluster with the same configuration as the
    # original cluster from which the snapshot was created, except that the
    # new cluster is created with the default cluster security and parameter
    # groups. After Amazon Redshift creates the cluster, you can use the
    # ModifyCluster API to associate a different security group and
    # different parameter group with the restored cluster. If you are using
    # a DS node type, you can also choose to change to another DS node type
    # of the same size during restore.
    #
    # If you restore a cluster into a VPC, you must provide a cluster subnet
    # group where you want the cluster restored.
    #
    # For more information about working with snapshots, go to [Amazon
    # Redshift Snapshots][1] in the *Amazon Redshift Cluster Management
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html
    #
    # @option params [required, String] :cluster_identifier
    #   The identifier of the cluster that will be created from restoring the
    #   snapshot.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * Alphabetic characters must be lowercase.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique for all clusters within an AWS account.
    #
    # @option params [required, String] :snapshot_identifier
    #   The name of the snapshot from which to create the new cluster. This
    #   parameter isn't case sensitive.
    #
    #   Example: `my-snapshot-id`
    #
    # @option params [String] :snapshot_cluster_identifier
    #   The name of the cluster the source snapshot was created from. This
    #   parameter is required if your IAM user has a policy containing a
    #   snapshot resource element that specifies anything other than * for
    #   the cluster name.
    #
    # @option params [Integer] :port
    #   The port number on which the cluster accepts connections.
    #
    #   Default: The same port as the original cluster.
    #
    #   Constraints: Must be between `1115` and `65535`.
    #
    # @option params [String] :availability_zone
    #   The Amazon EC2 Availability Zone in which to restore the cluster.
    #
    #   Default: A random, system-chosen Availability Zone.
    #
    #   Example: `us-east-2a`
    #
    # @option params [Boolean] :allow_version_upgrade
    #   If `true`, major version upgrades can be applied during the
    #   maintenance window to the Amazon Redshift engine that is running on
    #   the cluster.
    #
    #   Default: `true`
    #
    # @option params [String] :cluster_subnet_group_name
    #   The name of the subnet group where you want to cluster restored.
    #
    #   A snapshot of cluster in VPC can be restored only in VPC. Therefore,
    #   you must provide subnet group name where you want the cluster
    #   restored.
    #
    # @option params [Boolean] :publicly_accessible
    #   If `true`, the cluster can be accessed from a public network.
    #
    # @option params [String] :owner_account
    #   The AWS customer account used to create or copy the snapshot. Required
    #   if you are restoring a snapshot you do not own, optional if you own
    #   the snapshot.
    #
    # @option params [String] :hsm_client_certificate_identifier
    #   Specifies the name of the HSM client certificate the Amazon Redshift
    #   cluster uses to retrieve the data encryption keys stored in an HSM.
    #
    # @option params [String] :hsm_configuration_identifier
    #   Specifies the name of the HSM configuration that contains the
    #   information the Amazon Redshift cluster can use to retrieve and store
    #   keys in an HSM.
    #
    # @option params [String] :elastic_ip
    #   The elastic IP (EIP) address for the cluster.
    #
    # @option params [String] :cluster_parameter_group_name
    #   The name of the parameter group to be associated with this cluster.
    #
    #   Default: The default Amazon Redshift cluster parameter group. For
    #   information about the default parameter group, go to [Working with
    #   Amazon Redshift Parameter Groups][1].
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #
    # @option params [Array<String>] :cluster_security_groups
    #   A list of security groups to be associated with this cluster.
    #
    #   Default: The default cluster security group for Amazon Redshift.
    #
    #   Cluster security groups only apply to clusters outside of VPCs.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of Virtual Private Cloud (VPC) security groups to be associated
    #   with the cluster.
    #
    #   Default: The default VPC security group is associated with the
    #   cluster.
    #
    #   VPC security groups only apply to clusters in VPCs.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range (in UTC) during which automated cluster
    #   maintenance can occur.
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Default: The value selected for the cluster from which the snapshot
    #   was taken. For more information about the time blocks for each region,
    #   see [Maintenance Windows][1] in Amazon Redshift Cluster Management
    #   Guide.
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows
    #
    # @option params [Integer] :automated_snapshot_retention_period
    #   The number of days that automated snapshots are retained. If the value
    #   is 0, automated snapshots are disabled. Even if automated snapshots
    #   are disabled, you can still create manual snapshots when you want with
    #   CreateClusterSnapshot.
    #
    #   Default: The value selected for the cluster from which the snapshot
    #   was taken.
    #
    #   Constraints: Must be a value from 0 to 35.
    #
    # @option params [Integer] :manual_snapshot_retention_period
    #   The default number of days to retain a manual snapshot. If the value
    #   is -1, the snapshot is retained indefinitely. This setting doesn't
    #   change the retention period of existing snapshots.
    #
    #   The value must be either -1 or an integer between 1 and 3,653.
    #
    # @option params [String] :kms_key_id
    #   The AWS Key Management Service (KMS) key ID of the encryption key that
    #   you want to use to encrypt data in the cluster that you restore from a
    #   shared snapshot.
    #
    # @option params [String] :node_type
    #   The node type that the restored cluster will be provisioned with.
    #
    #   Default: The node type of the cluster from which the snapshot was
    #   taken. You can modify this if you are using any DS node type. In that
    #   case, you can choose to restore into another DS node type of the same
    #   size. For example, you can restore ds1.8xlarge into ds2.8xlarge, or
    #   ds1.xlarge into ds2.xlarge. If you have a DC instance type, you must
    #   restore into that same instance type and size. In other words, you can
    #   only restore a dc1.large instance type into another dc1.large instance
    #   type or dc2.large instance type. You can't restore dc1.8xlarge to
    #   dc2.8xlarge. First restore to a dc1.8xlarge cluster, then resize to a
    #   dc2.8large cluster. For more information about node types, see [ About
    #   Clusters and Nodes][1] in the *Amazon Redshift Cluster Management
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes
    #
    # @option params [Boolean] :enhanced_vpc_routing
    #   An option that specifies whether to create the cluster with enhanced
    #   VPC routing enabled. To create a cluster that uses enhanced VPC
    #   routing, the cluster must be in a VPC. For more information, see
    #   [Enhanced VPC Routing][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #   If this option is `true`, enhanced VPC routing is enabled.
    #
    #   Default: false
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html
    #
    # @option params [String] :additional_info
    #   Reserved.
    #
    # @option params [Array<String>] :iam_roles
    #   A list of AWS Identity and Access Management (IAM) roles that can be
    #   used by the cluster to access other AWS services. You must supply the
    #   IAM roles in their Amazon Resource Name (ARN) format. You can supply
    #   up to 10 IAM roles in a single request.
    #
    #   A cluster can have up to 10 IAM roles associated at any time.
    #
    # @option params [String] :maintenance_track_name
    #   The name of the maintenance track for the restored cluster. When you
    #   take a snapshot, the snapshot inherits the `MaintenanceTrack` value
    #   from the cluster. The snapshot might be on a different track than the
    #   cluster that was the source for the snapshot. For example, suppose
    #   that you take a snapshot of a cluster that is on the current track and
    #   then change the cluster to be on the trailing track. In this case, the
    #   snapshot and the source cluster are on different tracks.
    #
    # @option params [String] :snapshot_schedule_identifier
    #   A unique identifier for the snapshot schedule.
    #
    # @option params [Integer] :number_of_nodes
    #   The number of nodes specified when provisioning the restored cluster.
    #
    # @return [Types::RestoreFromClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreFromClusterSnapshotResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_from_cluster_snapshot({
    #     cluster_identifier: "String", # required
    #     snapshot_identifier: "String", # required
    #     snapshot_cluster_identifier: "String",
    #     port: 1,
    #     availability_zone: "String",
    #     allow_version_upgrade: false,
    #     cluster_subnet_group_name: "String",
    #     publicly_accessible: false,
    #     owner_account: "String",
    #     hsm_client_certificate_identifier: "String",
    #     hsm_configuration_identifier: "String",
    #     elastic_ip: "String",
    #     cluster_parameter_group_name: "String",
    #     cluster_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     preferred_maintenance_window: "String",
    #     automated_snapshot_retention_period: 1,
    #     manual_snapshot_retention_period: 1,
    #     kms_key_id: "String",
    #     node_type: "String",
    #     enhanced_vpc_routing: false,
    #     additional_info: "String",
    #     iam_roles: ["String"],
    #     maintenance_track_name: "String",
    #     snapshot_schedule_identifier: "String",
    #     number_of_nodes: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RestoreFromClusterSnapshot AWS API Documentation
    #
    # @overload restore_from_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def restore_from_cluster_snapshot(params = {}, options = {})
      req = build_request(:restore_from_cluster_snapshot, params)
      req.send_request(options)
    end

    # Creates a new table from a table in an Amazon Redshift cluster
    # snapshot. You must create the new table within the Amazon Redshift
    # cluster that the snapshot was taken from.
    #
    # You cannot use `RestoreTableFromClusterSnapshot` to restore a table
    # with the same name as an existing table in an Amazon Redshift cluster.
    # That is, you cannot overwrite an existing table in a cluster with a
    # restored table. If you want to replace your original table with a new,
    # restored table, then rename or drop your original table before you
    # call `RestoreTableFromClusterSnapshot`. When you have renamed your
    # original table, then you can pass the original name of the table as
    # the `NewTableName` parameter value in the call to
    # `RestoreTableFromClusterSnapshot`. This way, you can replace the
    # original table with the table created from the snapshot.
    #
    # @option params [required, String] :cluster_identifier
    #   The identifier of the Amazon Redshift cluster to restore the table to.
    #
    # @option params [required, String] :snapshot_identifier
    #   The identifier of the snapshot to restore the table from. This
    #   snapshot must have been created from the Amazon Redshift cluster
    #   specified by the `ClusterIdentifier` parameter.
    #
    # @option params [required, String] :source_database_name
    #   The name of the source database that contains the table to restore
    #   from.
    #
    # @option params [String] :source_schema_name
    #   The name of the source schema that contains the table to restore from.
    #   If you do not specify a `SourceSchemaName` value, the default is
    #   `public`.
    #
    # @option params [required, String] :source_table_name
    #   The name of the source table to restore from.
    #
    # @option params [String] :target_database_name
    #   The name of the database to restore the table to.
    #
    # @option params [String] :target_schema_name
    #   The name of the schema to restore the table to.
    #
    # @option params [required, String] :new_table_name
    #   The name of the table to create as a result of the current request.
    #
    # @return [Types::RestoreTableFromClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreTableFromClusterSnapshotResult#table_restore_status #table_restore_status} => Types::TableRestoreStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table_from_cluster_snapshot({
    #     cluster_identifier: "String", # required
    #     snapshot_identifier: "String", # required
    #     source_database_name: "String", # required
    #     source_schema_name: "String",
    #     source_table_name: "String", # required
    #     target_database_name: "String",
    #     target_schema_name: "String",
    #     new_table_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_restore_status.table_restore_request_id #=> String
    #   resp.table_restore_status.status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"
    #   resp.table_restore_status.message #=> String
    #   resp.table_restore_status.request_time #=> Time
    #   resp.table_restore_status.progress_in_mega_bytes #=> Integer
    #   resp.table_restore_status.total_data_in_mega_bytes #=> Integer
    #   resp.table_restore_status.cluster_identifier #=> String
    #   resp.table_restore_status.snapshot_identifier #=> String
    #   resp.table_restore_status.source_database_name #=> String
    #   resp.table_restore_status.source_schema_name #=> String
    #   resp.table_restore_status.source_table_name #=> String
    #   resp.table_restore_status.target_database_name #=> String
    #   resp.table_restore_status.target_schema_name #=> String
    #   resp.table_restore_status.new_table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RestoreTableFromClusterSnapshot AWS API Documentation
    #
    # @overload restore_table_from_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def restore_table_from_cluster_snapshot(params = {}, options = {})
      req = build_request(:restore_table_from_cluster_snapshot, params)
      req.send_request(options)
    end

    # Resumes a paused cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The identifier of the cluster to be resumed.
    #
    # @return [Types::ResumeClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResumeClusterResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_cluster({
    #     cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ResumeCluster AWS API Documentation
    #
    # @overload resume_cluster(params = {})
    # @param [Hash] params ({})
    def resume_cluster(params = {}, options = {})
      req = build_request(:resume_cluster, params)
      req.send_request(options)
    end

    # Revokes an ingress rule in an Amazon Redshift security group for a
    # previously authorized IP range or Amazon EC2 security group. To add an
    # ingress rule, see AuthorizeClusterSecurityGroupIngress. For
    # information about managing security groups, go to [Amazon Redshift
    # Cluster Security Groups][1] in the *Amazon Redshift Cluster Management
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html
    #
    # @option params [required, String] :cluster_security_group_name
    #   The name of the security Group from which to revoke the ingress rule.
    #
    # @option params [String] :cidrip
    #   The IP range for which to revoke access. This range must be a valid
    #   Classless Inter-Domain Routing (CIDR) block of IP addresses. If
    #   `CIDRIP` is specified, `EC2SecurityGroupName` and
    #   `EC2SecurityGroupOwnerId` cannot be provided.
    #
    # @option params [String] :ec2_security_group_name
    #   The name of the EC2 Security Group whose access is to be revoked. If
    #   `EC2SecurityGroupName` is specified, `EC2SecurityGroupOwnerId` must
    #   also be provided and `CIDRIP` cannot be provided.
    #
    # @option params [String] :ec2_security_group_owner_id
    #   The AWS account number of the owner of the security group specified in
    #   the `EC2SecurityGroupName` parameter. The AWS access key ID is not an
    #   acceptable value. If `EC2SecurityGroupOwnerId` is specified,
    #   `EC2SecurityGroupName` must also be provided. and `CIDRIP` cannot be
    #   provided.
    #
    #   Example: `111122223333`
    #
    # @return [Types::RevokeClusterSecurityGroupIngressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RevokeClusterSecurityGroupIngressResult#cluster_security_group #cluster_security_group} => Types::ClusterSecurityGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_cluster_security_group_ingress({
    #     cluster_security_group_name: "String", # required
    #     cidrip: "String",
    #     ec2_security_group_name: "String",
    #     ec2_security_group_owner_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_security_group.cluster_security_group_name #=> String
    #   resp.cluster_security_group.description #=> String
    #   resp.cluster_security_group.ec2_security_groups #=> Array
    #   resp.cluster_security_group.ec2_security_groups[0].status #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].tags #=> Array
    #   resp.cluster_security_group.ec2_security_groups[0].tags[0].key #=> String
    #   resp.cluster_security_group.ec2_security_groups[0].tags[0].value #=> String
    #   resp.cluster_security_group.ip_ranges #=> Array
    #   resp.cluster_security_group.ip_ranges[0].status #=> String
    #   resp.cluster_security_group.ip_ranges[0].cidrip #=> String
    #   resp.cluster_security_group.ip_ranges[0].tags #=> Array
    #   resp.cluster_security_group.ip_ranges[0].tags[0].key #=> String
    #   resp.cluster_security_group.ip_ranges[0].tags[0].value #=> String
    #   resp.cluster_security_group.tags #=> Array
    #   resp.cluster_security_group.tags[0].key #=> String
    #   resp.cluster_security_group.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RevokeClusterSecurityGroupIngress AWS API Documentation
    #
    # @overload revoke_cluster_security_group_ingress(params = {})
    # @param [Hash] params ({})
    def revoke_cluster_security_group_ingress(params = {}, options = {})
      req = build_request(:revoke_cluster_security_group_ingress, params)
      req.send_request(options)
    end

    # Removes the ability of the specified AWS customer account to restore
    # the specified snapshot. If the account is currently restoring the
    # snapshot, the restore will run to completion.
    #
    # For more information about working with snapshots, go to [Amazon
    # Redshift Snapshots][1] in the *Amazon Redshift Cluster Management
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html
    #
    # @option params [required, String] :snapshot_identifier
    #   The identifier of the snapshot that the account can no longer access.
    #
    # @option params [String] :snapshot_cluster_identifier
    #   The identifier of the cluster the snapshot was created from. This
    #   parameter is required if your IAM user has a policy containing a
    #   snapshot resource element that specifies anything other than * for
    #   the cluster name.
    #
    # @option params [required, String] :account_with_restore_access
    #   The identifier of the AWS customer account that can no longer restore
    #   the specified snapshot.
    #
    # @return [Types::RevokeSnapshotAccessResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RevokeSnapshotAccessResult#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_snapshot_access({
    #     snapshot_identifier: "String", # required
    #     snapshot_cluster_identifier: "String",
    #     account_with_restore_access: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.snapshot_identifier #=> String
    #   resp.snapshot.cluster_identifier #=> String
    #   resp.snapshot.snapshot_create_time #=> Time
    #   resp.snapshot.status #=> String
    #   resp.snapshot.port #=> Integer
    #   resp.snapshot.availability_zone #=> String
    #   resp.snapshot.cluster_create_time #=> Time
    #   resp.snapshot.master_username #=> String
    #   resp.snapshot.cluster_version #=> String
    #   resp.snapshot.snapshot_type #=> String
    #   resp.snapshot.node_type #=> String
    #   resp.snapshot.number_of_nodes #=> Integer
    #   resp.snapshot.db_name #=> String
    #   resp.snapshot.vpc_id #=> String
    #   resp.snapshot.encrypted #=> Boolean
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.encrypted_with_hsm #=> Boolean
    #   resp.snapshot.accounts_with_restore_access #=> Array
    #   resp.snapshot.accounts_with_restore_access[0].account_id #=> String
    #   resp.snapshot.accounts_with_restore_access[0].account_alias #=> String
    #   resp.snapshot.owner_account #=> String
    #   resp.snapshot.total_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.snapshot.source_region #=> String
    #   resp.snapshot.tags #=> Array
    #   resp.snapshot.tags[0].key #=> String
    #   resp.snapshot.tags[0].value #=> String
    #   resp.snapshot.restorable_node_types #=> Array
    #   resp.snapshot.restorable_node_types[0] #=> String
    #   resp.snapshot.enhanced_vpc_routing #=> Boolean
    #   resp.snapshot.maintenance_track_name #=> String
    #   resp.snapshot.manual_snapshot_retention_period #=> Integer
    #   resp.snapshot.manual_snapshot_remaining_days #=> Integer
    #   resp.snapshot.snapshot_retention_start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RevokeSnapshotAccess AWS API Documentation
    #
    # @overload revoke_snapshot_access(params = {})
    # @param [Hash] params ({})
    def revoke_snapshot_access(params = {}, options = {})
      req = build_request(:revoke_snapshot_access, params)
      req.send_request(options)
    end

    # Rotates the encryption keys for a cluster.
    #
    # @option params [required, String] :cluster_identifier
    #   The unique identifier of the cluster that you want to rotate the
    #   encryption keys for.
    #
    #   Constraints: Must be the name of valid cluster that has encryption
    #   enabled.
    #
    # @return [Types::RotateEncryptionKeyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RotateEncryptionKeyResult#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_encryption_key({
    #     cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_identifier #=> String
    #   resp.cluster.node_type #=> String
    #   resp.cluster.cluster_status #=> String
    #   resp.cluster.cluster_availability_status #=> String
    #   resp.cluster.modify_status #=> String
    #   resp.cluster.master_username #=> String
    #   resp.cluster.db_name #=> String
    #   resp.cluster.endpoint.address #=> String
    #   resp.cluster.endpoint.port #=> Integer
    #   resp.cluster.cluster_create_time #=> Time
    #   resp.cluster.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_security_groups #=> Array
    #   resp.cluster.cluster_security_groups[0].cluster_security_group_name #=> String
    #   resp.cluster.cluster_security_groups[0].status #=> String
    #   resp.cluster.vpc_security_groups #=> Array
    #   resp.cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.cluster.vpc_security_groups[0].status #=> String
    #   resp.cluster.cluster_parameter_groups #=> Array
    #   resp.cluster.cluster_parameter_groups[0].parameter_group_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list #=> Array
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_name #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_status #=> String
    #   resp.cluster.cluster_parameter_groups[0].cluster_parameter_status_list[0].parameter_apply_error_description #=> String
    #   resp.cluster.cluster_subnet_group_name #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.availability_zone #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.pending_modified_values.master_user_password #=> String
    #   resp.cluster.pending_modified_values.node_type #=> String
    #   resp.cluster.pending_modified_values.number_of_nodes #=> Integer
    #   resp.cluster.pending_modified_values.cluster_type #=> String
    #   resp.cluster.pending_modified_values.cluster_version #=> String
    #   resp.cluster.pending_modified_values.automated_snapshot_retention_period #=> Integer
    #   resp.cluster.pending_modified_values.cluster_identifier #=> String
    #   resp.cluster.pending_modified_values.publicly_accessible #=> Boolean
    #   resp.cluster.pending_modified_values.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.pending_modified_values.maintenance_track_name #=> String
    #   resp.cluster.pending_modified_values.encryption_type #=> String
    #   resp.cluster.cluster_version #=> String
    #   resp.cluster.allow_version_upgrade #=> Boolean
    #   resp.cluster.number_of_nodes #=> Integer
    #   resp.cluster.publicly_accessible #=> Boolean
    #   resp.cluster.encrypted #=> Boolean
    #   resp.cluster.restore_status.status #=> String
    #   resp.cluster.restore_status.current_restore_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.restore_status.snapshot_size_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.progress_in_mega_bytes #=> Integer
    #   resp.cluster.restore_status.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.restore_status.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.status #=> String
    #   resp.cluster.data_transfer_progress.current_rate_in_mega_bytes_per_second #=> Float
    #   resp.cluster.data_transfer_progress.total_data_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.data_transferred_in_mega_bytes #=> Integer
    #   resp.cluster.data_transfer_progress.estimated_time_to_completion_in_seconds #=> Integer
    #   resp.cluster.data_transfer_progress.elapsed_time_in_seconds #=> Integer
    #   resp.cluster.hsm_status.hsm_client_certificate_identifier #=> String
    #   resp.cluster.hsm_status.hsm_configuration_identifier #=> String
    #   resp.cluster.hsm_status.status #=> String
    #   resp.cluster.cluster_snapshot_copy_status.destination_region #=> String
    #   resp.cluster.cluster_snapshot_copy_status.retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.manual_snapshot_retention_period #=> Integer
    #   resp.cluster.cluster_snapshot_copy_status.snapshot_copy_grant_name #=> String
    #   resp.cluster.cluster_public_key #=> String
    #   resp.cluster.cluster_nodes #=> Array
    #   resp.cluster.cluster_nodes[0].node_role #=> String
    #   resp.cluster.cluster_nodes[0].private_ip_address #=> String
    #   resp.cluster.cluster_nodes[0].public_ip_address #=> String
    #   resp.cluster.elastic_ip_status.elastic_ip #=> String
    #   resp.cluster.elastic_ip_status.status #=> String
    #   resp.cluster.cluster_revision_number #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.kms_key_id #=> String
    #   resp.cluster.enhanced_vpc_routing #=> Boolean
    #   resp.cluster.iam_roles #=> Array
    #   resp.cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cluster.iam_roles[0].apply_status #=> String
    #   resp.cluster.pending_actions #=> Array
    #   resp.cluster.pending_actions[0] #=> String
    #   resp.cluster.maintenance_track_name #=> String
    #   resp.cluster.elastic_resize_number_of_node_options #=> String
    #   resp.cluster.deferred_maintenance_windows #=> Array
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_identifier #=> String
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_start_time #=> Time
    #   resp.cluster.deferred_maintenance_windows[0].defer_maintenance_end_time #=> Time
    #   resp.cluster.snapshot_schedule_identifier #=> String
    #   resp.cluster.snapshot_schedule_state #=> String, one of "MODIFYING", "ACTIVE", "FAILED"
    #   resp.cluster.expected_next_snapshot_schedule_time #=> Time
    #   resp.cluster.expected_next_snapshot_schedule_time_status #=> String
    #   resp.cluster.next_maintenance_window_start_time #=> Time
    #   resp.cluster.resize_info.resize_type #=> String
    #   resp.cluster.resize_info.allow_cancel_resize #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RotateEncryptionKey AWS API Documentation
    #
    # @overload rotate_encryption_key(params = {})
    # @param [Hash] params ({})
    def rotate_encryption_key(params = {}, options = {})
      req = build_request(:rotate_encryption_key, params)
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
      context[:gem_name] = 'aws-sdk-redshift'
      context[:gem_version] = '1.50.0'
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
    #     client.wait_until(waiter_name, params)
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
    # | waiter_name        | params                              | :delay   | :max_attempts |
    # | ------------------ | ----------------------------------- | -------- | ------------- |
    # | cluster_available  | {Client#describe_clusters}          | 60       | 30            |
    # | cluster_deleted    | {Client#describe_clusters}          | 60       | 30            |
    # | cluster_restored   | {Client#describe_clusters}          | 60       | 30            |
    # | snapshot_available | {Client#describe_cluster_snapshots} | 15       | 20            |
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
        cluster_available: Waiters::ClusterAvailable,
        cluster_deleted: Waiters::ClusterDeleted,
        cluster_restored: Waiters::ClusterRestored,
        snapshot_available: Waiters::SnapshotAvailable
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
