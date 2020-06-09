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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:directconnect)

module Aws::DirectConnect
  # An API client for DirectConnect.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DirectConnect::Client.new(
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

    @identifier = :directconnect

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
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
    #     to test endpoints. This should be a valid HTTP(S) URI.
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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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

    # Accepts a proposal request to attach a virtual private gateway or
    # transit gateway to a Direct Connect gateway.
    #
    # @option params [required, String] :direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #
    # @option params [required, String] :proposal_id
    #   The ID of the request proposal.
    #
    # @option params [required, String] :associated_gateway_owner_account
    #   The ID of the AWS account that owns the virtual private gateway or
    #   transit gateway.
    #
    # @option params [Array<Types::RouteFilterPrefix>] :override_allowed_prefixes_to_direct_connect_gateway
    #   Overrides the Amazon VPC prefixes advertised to the Direct Connect
    #   gateway.
    #
    #   For information about how to set the prefixes, see [Allowed
    #   Prefixes][1] in the *AWS Direct Connect User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes
    #
    # @return [Types::AcceptDirectConnectGatewayAssociationProposalResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptDirectConnectGatewayAssociationProposalResult#direct_connect_gateway_association #direct_connect_gateway_association} => Types::DirectConnectGatewayAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_direct_connect_gateway_association_proposal({
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #     proposal_id: "DirectConnectGatewayAssociationProposalId", # required
    #     associated_gateway_owner_account: "OwnerAccount", # required
    #     override_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_association.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_association.direct_connect_gateway_owner_account #=> String
    #   resp.direct_connect_gateway_association.association_state #=> String, one of "associating", "associated", "disassociating", "disassociated", "updating"
    #   resp.direct_connect_gateway_association.state_change_error #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.id #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.type #=> String, one of "virtualPrivateGateway", "transitGateway"
    #   resp.direct_connect_gateway_association.associated_gateway.owner_account #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.region #=> String
    #   resp.direct_connect_gateway_association.association_id #=> String
    #   resp.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway #=> Array
    #   resp.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_region #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_owner_account #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AcceptDirectConnectGatewayAssociationProposal AWS API Documentation
    #
    # @overload accept_direct_connect_gateway_association_proposal(params = {})
    # @param [Hash] params ({})
    def accept_direct_connect_gateway_association_proposal(params = {}, options = {})
      req = build_request(:accept_direct_connect_gateway_association_proposal, params)
      req.send_request(options)
    end

    # Deprecated. Use AllocateHostedConnection instead.
    #
    # Creates a hosted connection on an interconnect.
    #
    # Allocates a VLAN number and a specified amount of bandwidth for use by
    # a hosted connection on the specified interconnect.
    #
    # <note markdown="1"> Intended for use by AWS Direct Connect Partners only.
    #
    #  </note>
    #
    # @option params [required, String] :bandwidth
    #   The bandwidth of the connection. The possible values are 50Mbps,
    #   100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and
    #   10Gbps. Note that only those AWS Direct Connect Partners who have met
    #   specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or
    #   10Gbps hosted connection.
    #
    # @option params [required, String] :connection_name
    #   The name of the provisioned connection.
    #
    # @option params [required, String] :owner_account
    #   The ID of the AWS account of the customer for whom the connection will
    #   be provisioned.
    #
    # @option params [required, String] :interconnect_id
    #   The ID of the interconnect on which the connection will be
    #   provisioned.
    #
    # @option params [required, Integer] :vlan
    #   The dedicated VLAN provisioned to the connection.
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Connection#has_logical_redundancy #has_logical_redundancy} => String
    #   * {Types::Connection#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Connection#provider_name #provider_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_connection_on_interconnect({
    #     bandwidth: "Bandwidth", # required
    #     connection_name: "ConnectionName", # required
    #     owner_account: "OwnerAccount", # required
    #     interconnect_id: "InterconnectId", # required
    #     vlan: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.aws_device_v2 #=> String
    #   resp.has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateConnectionOnInterconnect AWS API Documentation
    #
    # @overload allocate_connection_on_interconnect(params = {})
    # @param [Hash] params ({})
    def allocate_connection_on_interconnect(params = {}, options = {})
      req = build_request(:allocate_connection_on_interconnect, params)
      req.send_request(options)
    end

    # Creates a hosted connection on the specified interconnect or a link
    # aggregation group (LAG) of interconnects.
    #
    # Allocates a VLAN number and a specified amount of capacity (bandwidth)
    # for use by a hosted connection on the specified interconnect or LAG of
    # interconnects. AWS polices the hosted connection for the specified
    # capacity and the AWS Direct Connect Partner must also police the
    # hosted connection for the specified capacity.
    #
    # <note markdown="1"> Intended for use by AWS Direct Connect Partners only.
    #
    #  </note>
    #
    # @option params [required, String] :connection_id
    #   The ID of the interconnect or LAG.
    #
    # @option params [required, String] :owner_account
    #   The ID of the AWS account ID of the customer for the connection.
    #
    # @option params [required, String] :bandwidth
    #   The bandwidth of the connection. The possible values are 50Mbps,
    #   100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and
    #   10Gbps. Note that only those AWS Direct Connect Partners who have met
    #   specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or
    #   10Gbps hosted connection.
    #
    # @option params [required, String] :connection_name
    #   The name of the hosted connection.
    #
    # @option params [required, Integer] :vlan
    #   The dedicated VLAN provisioned to the hosted connection.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with the connection.
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Connection#has_logical_redundancy #has_logical_redundancy} => String
    #   * {Types::Connection#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Connection#provider_name #provider_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_hosted_connection({
    #     connection_id: "ConnectionId", # required
    #     owner_account: "OwnerAccount", # required
    #     bandwidth: "Bandwidth", # required
    #     connection_name: "ConnectionName", # required
    #     vlan: 1, # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.aws_device_v2 #=> String
    #   resp.has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateHostedConnection AWS API Documentation
    #
    # @overload allocate_hosted_connection(params = {})
    # @param [Hash] params ({})
    def allocate_hosted_connection(params = {}, options = {})
      req = build_request(:allocate_hosted_connection, params)
      req.send_request(options)
    end

    # Provisions a private virtual interface to be owned by the specified
    # AWS account.
    #
    # Virtual interfaces created using this action must be confirmed by the
    # owner using ConfirmPrivateVirtualInterface. Until then, the virtual
    # interface is in the `Confirming` state and is not available to handle
    # traffic.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection on which the private virtual interface is
    #   provisioned.
    #
    # @option params [required, String] :owner_account
    #   The ID of the AWS account that owns the virtual private interface.
    #
    # @option params [required, Types::NewPrivateVirtualInterfaceAllocation] :new_private_virtual_interface_allocation
    #   Information about the private virtual interface.
    #
    # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterface#owner_account #owner_account} => String
    #   * {Types::VirtualInterface#virtual_interface_id #virtual_interface_id} => String
    #   * {Types::VirtualInterface#location #location} => String
    #   * {Types::VirtualInterface#connection_id #connection_id} => String
    #   * {Types::VirtualInterface#virtual_interface_type #virtual_interface_type} => String
    #   * {Types::VirtualInterface#virtual_interface_name #virtual_interface_name} => String
    #   * {Types::VirtualInterface#vlan #vlan} => Integer
    #   * {Types::VirtualInterface#asn #asn} => Integer
    #   * {Types::VirtualInterface#amazon_side_asn #amazon_side_asn} => Integer
    #   * {Types::VirtualInterface#auth_key #auth_key} => String
    #   * {Types::VirtualInterface#amazon_address #amazon_address} => String
    #   * {Types::VirtualInterface#customer_address #customer_address} => String
    #   * {Types::VirtualInterface#address_family #address_family} => String
    #   * {Types::VirtualInterface#virtual_interface_state #virtual_interface_state} => String
    #   * {Types::VirtualInterface#customer_router_config #customer_router_config} => String
    #   * {Types::VirtualInterface#mtu #mtu} => Integer
    #   * {Types::VirtualInterface#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::VirtualInterface#virtual_gateway_id #virtual_gateway_id} => String
    #   * {Types::VirtualInterface#direct_connect_gateway_id #direct_connect_gateway_id} => String
    #   * {Types::VirtualInterface#route_filter_prefixes #route_filter_prefixes} => Array&lt;Types::RouteFilterPrefix&gt;
    #   * {Types::VirtualInterface#bgp_peers #bgp_peers} => Array&lt;Types::BGPPeer&gt;
    #   * {Types::VirtualInterface#region #region} => String
    #   * {Types::VirtualInterface#aws_device_v2 #aws_device_v2} => String
    #   * {Types::VirtualInterface#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_private_virtual_interface({
    #     connection_id: "ConnectionId", # required
    #     owner_account: "OwnerAccount", # required
    #     new_private_virtual_interface_allocation: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       mtu: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       customer_address: "CustomerAddress",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.virtual_interface_id #=> String
    #   resp.location #=> String
    #   resp.connection_id #=> String
    #   resp.virtual_interface_type #=> String
    #   resp.virtual_interface_name #=> String
    #   resp.vlan #=> Integer
    #   resp.asn #=> Integer
    #   resp.amazon_side_asn #=> Integer
    #   resp.auth_key #=> String
    #   resp.amazon_address #=> String
    #   resp.customer_address #=> String
    #   resp.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.customer_router_config #=> String
    #   resp.mtu #=> Integer
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_id #=> String
    #   resp.route_filter_prefixes #=> Array
    #   resp.route_filter_prefixes[0].cidr #=> String
    #   resp.bgp_peers #=> Array
    #   resp.bgp_peers[0].bgp_peer_id #=> String
    #   resp.bgp_peers[0].asn #=> Integer
    #   resp.bgp_peers[0].auth_key #=> String
    #   resp.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.bgp_peers[0].amazon_address #=> String
    #   resp.bgp_peers[0].customer_address #=> String
    #   resp.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.bgp_peers[0].bgp_status #=> String, one of "up", "down", "unknown"
    #   resp.bgp_peers[0].aws_device_v2 #=> String
    #   resp.region #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocatePrivateVirtualInterface AWS API Documentation
    #
    # @overload allocate_private_virtual_interface(params = {})
    # @param [Hash] params ({})
    def allocate_private_virtual_interface(params = {}, options = {})
      req = build_request(:allocate_private_virtual_interface, params)
      req.send_request(options)
    end

    # Provisions a public virtual interface to be owned by the specified AWS
    # account.
    #
    # The owner of a connection calls this function to provision a public
    # virtual interface to be owned by the specified AWS account.
    #
    # Virtual interfaces created using this function must be confirmed by
    # the owner using ConfirmPublicVirtualInterface. Until this step has
    # been completed, the virtual interface is in the `confirming` state and
    # is not available to handle traffic.
    #
    # When creating an IPv6 public virtual interface, omit the Amazon
    # address and customer address. IPv6 addresses are automatically
    # assigned from the Amazon pool of IPv6 addresses; you cannot specify
    # custom IPv6 addresses.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection on which the public virtual interface is
    #   provisioned.
    #
    # @option params [required, String] :owner_account
    #   The ID of the AWS account that owns the public virtual interface.
    #
    # @option params [required, Types::NewPublicVirtualInterfaceAllocation] :new_public_virtual_interface_allocation
    #   Information about the public virtual interface.
    #
    # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterface#owner_account #owner_account} => String
    #   * {Types::VirtualInterface#virtual_interface_id #virtual_interface_id} => String
    #   * {Types::VirtualInterface#location #location} => String
    #   * {Types::VirtualInterface#connection_id #connection_id} => String
    #   * {Types::VirtualInterface#virtual_interface_type #virtual_interface_type} => String
    #   * {Types::VirtualInterface#virtual_interface_name #virtual_interface_name} => String
    #   * {Types::VirtualInterface#vlan #vlan} => Integer
    #   * {Types::VirtualInterface#asn #asn} => Integer
    #   * {Types::VirtualInterface#amazon_side_asn #amazon_side_asn} => Integer
    #   * {Types::VirtualInterface#auth_key #auth_key} => String
    #   * {Types::VirtualInterface#amazon_address #amazon_address} => String
    #   * {Types::VirtualInterface#customer_address #customer_address} => String
    #   * {Types::VirtualInterface#address_family #address_family} => String
    #   * {Types::VirtualInterface#virtual_interface_state #virtual_interface_state} => String
    #   * {Types::VirtualInterface#customer_router_config #customer_router_config} => String
    #   * {Types::VirtualInterface#mtu #mtu} => Integer
    #   * {Types::VirtualInterface#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::VirtualInterface#virtual_gateway_id #virtual_gateway_id} => String
    #   * {Types::VirtualInterface#direct_connect_gateway_id #direct_connect_gateway_id} => String
    #   * {Types::VirtualInterface#route_filter_prefixes #route_filter_prefixes} => Array&lt;Types::RouteFilterPrefix&gt;
    #   * {Types::VirtualInterface#bgp_peers #bgp_peers} => Array&lt;Types::BGPPeer&gt;
    #   * {Types::VirtualInterface#region #region} => String
    #   * {Types::VirtualInterface#aws_device_v2 #aws_device_v2} => String
    #   * {Types::VirtualInterface#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_public_virtual_interface({
    #     connection_id: "ConnectionId", # required
    #     owner_account: "OwnerAccount", # required
    #     new_public_virtual_interface_allocation: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       route_filter_prefixes: [
    #         {
    #           cidr: "CIDR",
    #         },
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.virtual_interface_id #=> String
    #   resp.location #=> String
    #   resp.connection_id #=> String
    #   resp.virtual_interface_type #=> String
    #   resp.virtual_interface_name #=> String
    #   resp.vlan #=> Integer
    #   resp.asn #=> Integer
    #   resp.amazon_side_asn #=> Integer
    #   resp.auth_key #=> String
    #   resp.amazon_address #=> String
    #   resp.customer_address #=> String
    #   resp.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.customer_router_config #=> String
    #   resp.mtu #=> Integer
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_id #=> String
    #   resp.route_filter_prefixes #=> Array
    #   resp.route_filter_prefixes[0].cidr #=> String
    #   resp.bgp_peers #=> Array
    #   resp.bgp_peers[0].bgp_peer_id #=> String
    #   resp.bgp_peers[0].asn #=> Integer
    #   resp.bgp_peers[0].auth_key #=> String
    #   resp.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.bgp_peers[0].amazon_address #=> String
    #   resp.bgp_peers[0].customer_address #=> String
    #   resp.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.bgp_peers[0].bgp_status #=> String, one of "up", "down", "unknown"
    #   resp.bgp_peers[0].aws_device_v2 #=> String
    #   resp.region #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocatePublicVirtualInterface AWS API Documentation
    #
    # @overload allocate_public_virtual_interface(params = {})
    # @param [Hash] params ({})
    def allocate_public_virtual_interface(params = {}, options = {})
      req = build_request(:allocate_public_virtual_interface, params)
      req.send_request(options)
    end

    # Provisions a transit virtual interface to be owned by the specified
    # AWS account. Use this type of interface to connect a transit gateway
    # to your Direct Connect gateway.
    #
    # The owner of a connection provisions a transit virtual interface to be
    # owned by the specified AWS account.
    #
    # After you create a transit virtual interface, it must be confirmed by
    # the owner using ConfirmTransitVirtualInterface. Until this step has
    # been completed, the transit virtual interface is in the `requested`
    # state and is not available to handle traffic.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection on which the transit virtual interface is
    #   provisioned.
    #
    # @option params [required, String] :owner_account
    #   The ID of the AWS account that owns the transit virtual interface.
    #
    # @option params [required, Types::NewTransitVirtualInterfaceAllocation] :new_transit_virtual_interface_allocation
    #   Information about the transit virtual interface.
    #
    # @return [Types::AllocateTransitVirtualInterfaceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AllocateTransitVirtualInterfaceResult#virtual_interface #virtual_interface} => Types::VirtualInterface
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_transit_virtual_interface({
    #     connection_id: "ConnectionId", # required
    #     owner_account: "OwnerAccount", # required
    #     new_transit_virtual_interface_allocation: { # required
    #       virtual_interface_name: "VirtualInterfaceName",
    #       vlan: 1,
    #       asn: 1,
    #       mtu: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface.owner_account #=> String
    #   resp.virtual_interface.virtual_interface_id #=> String
    #   resp.virtual_interface.location #=> String
    #   resp.virtual_interface.connection_id #=> String
    #   resp.virtual_interface.virtual_interface_type #=> String
    #   resp.virtual_interface.virtual_interface_name #=> String
    #   resp.virtual_interface.vlan #=> Integer
    #   resp.virtual_interface.asn #=> Integer
    #   resp.virtual_interface.amazon_side_asn #=> Integer
    #   resp.virtual_interface.auth_key #=> String
    #   resp.virtual_interface.amazon_address #=> String
    #   resp.virtual_interface.customer_address #=> String
    #   resp.virtual_interface.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.virtual_interface.customer_router_config #=> String
    #   resp.virtual_interface.mtu #=> Integer
    #   resp.virtual_interface.jumbo_frame_capable #=> Boolean
    #   resp.virtual_interface.virtual_gateway_id #=> String
    #   resp.virtual_interface.direct_connect_gateway_id #=> String
    #   resp.virtual_interface.route_filter_prefixes #=> Array
    #   resp.virtual_interface.route_filter_prefixes[0].cidr #=> String
    #   resp.virtual_interface.bgp_peers #=> Array
    #   resp.virtual_interface.bgp_peers[0].bgp_peer_id #=> String
    #   resp.virtual_interface.bgp_peers[0].asn #=> Integer
    #   resp.virtual_interface.bgp_peers[0].auth_key #=> String
    #   resp.virtual_interface.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.bgp_peers[0].amazon_address #=> String
    #   resp.virtual_interface.bgp_peers[0].customer_address #=> String
    #   resp.virtual_interface.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.virtual_interface.bgp_peers[0].bgp_status #=> String, one of "up", "down", "unknown"
    #   resp.virtual_interface.bgp_peers[0].aws_device_v2 #=> String
    #   resp.virtual_interface.region #=> String
    #   resp.virtual_interface.aws_device_v2 #=> String
    #   resp.virtual_interface.tags #=> Array
    #   resp.virtual_interface.tags[0].key #=> String
    #   resp.virtual_interface.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateTransitVirtualInterface AWS API Documentation
    #
    # @overload allocate_transit_virtual_interface(params = {})
    # @param [Hash] params ({})
    def allocate_transit_virtual_interface(params = {}, options = {})
      req = build_request(:allocate_transit_virtual_interface, params)
      req.send_request(options)
    end

    # Associates an existing connection with a link aggregation group (LAG).
    # The connection is interrupted and re-established as a member of the
    # LAG (connectivity to AWS is interrupted). The connection must be
    # hosted on the same AWS Direct Connect endpoint as the LAG, and its
    # bandwidth must match the bandwidth for the LAG. You can re-associate a
    # connection that's currently associated with a different LAG; however,
    # if removing the connection would cause the original LAG to fall below
    # its setting for minimum number of operational connections, the request
    # fails.
    #
    # Any virtual interfaces that are directly associated with the
    # connection are automatically re-associated with the LAG. If the
    # connection was originally associated with a different LAG, the virtual
    # interfaces remain associated with the original LAG.
    #
    # For interconnects, any hosted connections are automatically
    # re-associated with the LAG. If the interconnect was originally
    # associated with a different LAG, the hosted connections remain
    # associated with the original LAG.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection.
    #
    # @option params [required, String] :lag_id
    #   The ID of the LAG with which to associate the connection.
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Connection#has_logical_redundancy #has_logical_redundancy} => String
    #   * {Types::Connection#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Connection#provider_name #provider_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_connection_with_lag({
    #     connection_id: "ConnectionId", # required
    #     lag_id: "LagId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.aws_device_v2 #=> String
    #   resp.has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateConnectionWithLag AWS API Documentation
    #
    # @overload associate_connection_with_lag(params = {})
    # @param [Hash] params ({})
    def associate_connection_with_lag(params = {}, options = {})
      req = build_request(:associate_connection_with_lag, params)
      req.send_request(options)
    end

    # Associates a hosted connection and its virtual interfaces with a link
    # aggregation group (LAG) or interconnect. If the target interconnect or
    # LAG has an existing hosted connection with a conflicting VLAN number
    # or IP address, the operation fails. This action temporarily interrupts
    # the hosted connection's connectivity to AWS as it is being migrated.
    #
    # <note markdown="1"> Intended for use by AWS Direct Connect Partners only.
    #
    #  </note>
    #
    # @option params [required, String] :connection_id
    #   The ID of the hosted connection.
    #
    # @option params [required, String] :parent_connection_id
    #   The ID of the interconnect or the LAG.
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Connection#has_logical_redundancy #has_logical_redundancy} => String
    #   * {Types::Connection#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Connection#provider_name #provider_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_hosted_connection({
    #     connection_id: "ConnectionId", # required
    #     parent_connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.aws_device_v2 #=> String
    #   resp.has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateHostedConnection AWS API Documentation
    #
    # @overload associate_hosted_connection(params = {})
    # @param [Hash] params ({})
    def associate_hosted_connection(params = {}, options = {})
      req = build_request(:associate_hosted_connection, params)
      req.send_request(options)
    end

    # Associates a virtual interface with a specified link aggregation group
    # (LAG) or connection. Connectivity to AWS is temporarily interrupted as
    # the virtual interface is being migrated. If the target connection or
    # LAG has an associated virtual interface with a conflicting VLAN number
    # or a conflicting IP address, the operation fails.
    #
    # Virtual interfaces associated with a hosted connection cannot be
    # associated with a LAG; hosted connections must be migrated along with
    # their virtual interfaces using AssociateHostedConnection.
    #
    # To reassociate a virtual interface to a new connection or LAG, the
    # requester must own either the virtual interface itself or the
    # connection to which the virtual interface is currently associated.
    # Additionally, the requester must own the connection or LAG for the
    # association.
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    # @option params [required, String] :connection_id
    #   The ID of the LAG or connection.
    #
    # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterface#owner_account #owner_account} => String
    #   * {Types::VirtualInterface#virtual_interface_id #virtual_interface_id} => String
    #   * {Types::VirtualInterface#location #location} => String
    #   * {Types::VirtualInterface#connection_id #connection_id} => String
    #   * {Types::VirtualInterface#virtual_interface_type #virtual_interface_type} => String
    #   * {Types::VirtualInterface#virtual_interface_name #virtual_interface_name} => String
    #   * {Types::VirtualInterface#vlan #vlan} => Integer
    #   * {Types::VirtualInterface#asn #asn} => Integer
    #   * {Types::VirtualInterface#amazon_side_asn #amazon_side_asn} => Integer
    #   * {Types::VirtualInterface#auth_key #auth_key} => String
    #   * {Types::VirtualInterface#amazon_address #amazon_address} => String
    #   * {Types::VirtualInterface#customer_address #customer_address} => String
    #   * {Types::VirtualInterface#address_family #address_family} => String
    #   * {Types::VirtualInterface#virtual_interface_state #virtual_interface_state} => String
    #   * {Types::VirtualInterface#customer_router_config #customer_router_config} => String
    #   * {Types::VirtualInterface#mtu #mtu} => Integer
    #   * {Types::VirtualInterface#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::VirtualInterface#virtual_gateway_id #virtual_gateway_id} => String
    #   * {Types::VirtualInterface#direct_connect_gateway_id #direct_connect_gateway_id} => String
    #   * {Types::VirtualInterface#route_filter_prefixes #route_filter_prefixes} => Array&lt;Types::RouteFilterPrefix&gt;
    #   * {Types::VirtualInterface#bgp_peers #bgp_peers} => Array&lt;Types::BGPPeer&gt;
    #   * {Types::VirtualInterface#region #region} => String
    #   * {Types::VirtualInterface#aws_device_v2 #aws_device_v2} => String
    #   * {Types::VirtualInterface#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_virtual_interface({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.virtual_interface_id #=> String
    #   resp.location #=> String
    #   resp.connection_id #=> String
    #   resp.virtual_interface_type #=> String
    #   resp.virtual_interface_name #=> String
    #   resp.vlan #=> Integer
    #   resp.asn #=> Integer
    #   resp.amazon_side_asn #=> Integer
    #   resp.auth_key #=> String
    #   resp.amazon_address #=> String
    #   resp.customer_address #=> String
    #   resp.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.customer_router_config #=> String
    #   resp.mtu #=> Integer
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_id #=> String
    #   resp.route_filter_prefixes #=> Array
    #   resp.route_filter_prefixes[0].cidr #=> String
    #   resp.bgp_peers #=> Array
    #   resp.bgp_peers[0].bgp_peer_id #=> String
    #   resp.bgp_peers[0].asn #=> Integer
    #   resp.bgp_peers[0].auth_key #=> String
    #   resp.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.bgp_peers[0].amazon_address #=> String
    #   resp.bgp_peers[0].customer_address #=> String
    #   resp.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.bgp_peers[0].bgp_status #=> String, one of "up", "down", "unknown"
    #   resp.bgp_peers[0].aws_device_v2 #=> String
    #   resp.region #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateVirtualInterface AWS API Documentation
    #
    # @overload associate_virtual_interface(params = {})
    # @param [Hash] params ({})
    def associate_virtual_interface(params = {}, options = {})
      req = build_request(:associate_virtual_interface, params)
      req.send_request(options)
    end

    # Confirms the creation of the specified hosted connection on an
    # interconnect.
    #
    # Upon creation, the hosted connection is initially in the `Ordering`
    # state, and remains in this state until the owner confirms creation of
    # the hosted connection.
    #
    # @option params [required, String] :connection_id
    #   The ID of the hosted connection.
    #
    # @return [Types::ConfirmConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmConnectionResponse#connection_state #connection_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmConnection AWS API Documentation
    #
    # @overload confirm_connection(params = {})
    # @param [Hash] params ({})
    def confirm_connection(params = {}, options = {})
      req = build_request(:confirm_connection, params)
      req.send_request(options)
    end

    # Accepts ownership of a private virtual interface created by another
    # AWS account.
    #
    # After the virtual interface owner makes this call, the virtual
    # interface is created and attached to the specified virtual private
    # gateway or Direct Connect gateway, and is made available to handle
    # traffic.
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    # @option params [String] :virtual_gateway_id
    #   The ID of the virtual private gateway.
    #
    # @option params [String] :direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #
    # @return [Types::ConfirmPrivateVirtualInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmPrivateVirtualInterfaceResponse#virtual_interface_state #virtual_interface_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_private_virtual_interface({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     virtual_gateway_id: "VirtualGatewayId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPrivateVirtualInterface AWS API Documentation
    #
    # @overload confirm_private_virtual_interface(params = {})
    # @param [Hash] params ({})
    def confirm_private_virtual_interface(params = {}, options = {})
      req = build_request(:confirm_private_virtual_interface, params)
      req.send_request(options)
    end

    # Accepts ownership of a public virtual interface created by another AWS
    # account.
    #
    # After the virtual interface owner makes this call, the specified
    # virtual interface is created and made available to handle traffic.
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    # @return [Types::ConfirmPublicVirtualInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmPublicVirtualInterfaceResponse#virtual_interface_state #virtual_interface_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_public_virtual_interface({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPublicVirtualInterface AWS API Documentation
    #
    # @overload confirm_public_virtual_interface(params = {})
    # @param [Hash] params ({})
    def confirm_public_virtual_interface(params = {}, options = {})
      req = build_request(:confirm_public_virtual_interface, params)
      req.send_request(options)
    end

    # Accepts ownership of a transit virtual interface created by another
    # AWS account.
    #
    # After the owner of the transit virtual interface makes this call, the
    # specified transit virtual interface is created and made available to
    # handle traffic.
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    # @option params [required, String] :direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #
    # @return [Types::ConfirmTransitVirtualInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmTransitVirtualInterfaceResponse#virtual_interface_state #virtual_interface_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_transit_virtual_interface({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmTransitVirtualInterface AWS API Documentation
    #
    # @overload confirm_transit_virtual_interface(params = {})
    # @param [Hash] params ({})
    def confirm_transit_virtual_interface(params = {}, options = {})
      req = build_request(:confirm_transit_virtual_interface, params)
      req.send_request(options)
    end

    # Creates a BGP peer on the specified virtual interface.
    #
    # You must create a BGP peer for the corresponding address family
    # (IPv4/IPv6) in order to access AWS resources that also use that
    # address family.
    #
    # If logical redundancy is not supported by the connection,
    # interconnect, or LAG, the BGP peer cannot be in the same address
    # family as an existing BGP peer on the virtual interface.
    #
    # When creating a IPv6 BGP peer, omit the Amazon address and customer
    # address. IPv6 addresses are automatically assigned from the Amazon
    # pool of IPv6 addresses; you cannot specify custom IPv6 addresses.
    #
    # For a public virtual interface, the Autonomous System Number (ASN)
    # must be private or already whitelisted for the virtual interface.
    #
    # @option params [String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    # @option params [Types::NewBGPPeer] :new_bgp_peer
    #   Information about the BGP peer.
    #
    # @return [Types::CreateBGPPeerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBGPPeerResponse#virtual_interface #virtual_interface} => Types::VirtualInterface
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bgp_peer({
    #     virtual_interface_id: "VirtualInterfaceId",
    #     new_bgp_peer: {
    #       asn: 1,
    #       auth_key: "BGPAuthKey",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface.owner_account #=> String
    #   resp.virtual_interface.virtual_interface_id #=> String
    #   resp.virtual_interface.location #=> String
    #   resp.virtual_interface.connection_id #=> String
    #   resp.virtual_interface.virtual_interface_type #=> String
    #   resp.virtual_interface.virtual_interface_name #=> String
    #   resp.virtual_interface.vlan #=> Integer
    #   resp.virtual_interface.asn #=> Integer
    #   resp.virtual_interface.amazon_side_asn #=> Integer
    #   resp.virtual_interface.auth_key #=> String
    #   resp.virtual_interface.amazon_address #=> String
    #   resp.virtual_interface.customer_address #=> String
    #   resp.virtual_interface.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.virtual_interface.customer_router_config #=> String
    #   resp.virtual_interface.mtu #=> Integer
    #   resp.virtual_interface.jumbo_frame_capable #=> Boolean
    #   resp.virtual_interface.virtual_gateway_id #=> String
    #   resp.virtual_interface.direct_connect_gateway_id #=> String
    #   resp.virtual_interface.route_filter_prefixes #=> Array
    #   resp.virtual_interface.route_filter_prefixes[0].cidr #=> String
    #   resp.virtual_interface.bgp_peers #=> Array
    #   resp.virtual_interface.bgp_peers[0].bgp_peer_id #=> String
    #   resp.virtual_interface.bgp_peers[0].asn #=> Integer
    #   resp.virtual_interface.bgp_peers[0].auth_key #=> String
    #   resp.virtual_interface.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.bgp_peers[0].amazon_address #=> String
    #   resp.virtual_interface.bgp_peers[0].customer_address #=> String
    #   resp.virtual_interface.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.virtual_interface.bgp_peers[0].bgp_status #=> String, one of "up", "down", "unknown"
    #   resp.virtual_interface.bgp_peers[0].aws_device_v2 #=> String
    #   resp.virtual_interface.region #=> String
    #   resp.virtual_interface.aws_device_v2 #=> String
    #   resp.virtual_interface.tags #=> Array
    #   resp.virtual_interface.tags[0].key #=> String
    #   resp.virtual_interface.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateBGPPeer AWS API Documentation
    #
    # @overload create_bgp_peer(params = {})
    # @param [Hash] params ({})
    def create_bgp_peer(params = {}, options = {})
      req = build_request(:create_bgp_peer, params)
      req.send_request(options)
    end

    # Creates a connection between a customer network and a specific AWS
    # Direct Connect location.
    #
    # A connection links your internal network to an AWS Direct Connect
    # location over a standard Ethernet fiber-optic cable. One end of the
    # cable is connected to your router, the other to an AWS Direct Connect
    # router.
    #
    # To find the locations for your Region, use DescribeLocations.
    #
    # You can automatically add the new connection to a link aggregation
    # group (LAG) by specifying a LAG ID in the request. This ensures that
    # the new connection is allocated on the same AWS Direct Connect
    # endpoint that hosts the specified LAG. If there are no available ports
    # on the endpoint, the request fails and no connection is created.
    #
    # @option params [required, String] :location
    #   The location of the connection.
    #
    # @option params [required, String] :bandwidth
    #   The bandwidth of the connection.
    #
    # @option params [required, String] :connection_name
    #   The name of the connection.
    #
    # @option params [String] :lag_id
    #   The ID of the LAG.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to associate with the lag.
    #
    # @option params [String] :provider_name
    #   The name of the service provider associated with the requested
    #   connection.
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Connection#has_logical_redundancy #has_logical_redundancy} => String
    #   * {Types::Connection#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Connection#provider_name #provider_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection({
    #     location: "LocationCode", # required
    #     bandwidth: "Bandwidth", # required
    #     connection_name: "ConnectionName", # required
    #     lag_id: "LagId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     provider_name: "ProviderName",
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.aws_device_v2 #=> String
    #   resp.has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateConnection AWS API Documentation
    #
    # @overload create_connection(params = {})
    # @param [Hash] params ({})
    def create_connection(params = {}, options = {})
      req = build_request(:create_connection, params)
      req.send_request(options)
    end

    # Creates a Direct Connect gateway, which is an intermediate object that
    # enables you to connect a set of virtual interfaces and virtual private
    # gateways. A Direct Connect gateway is global and visible in any AWS
    # Region after it is created. The virtual interfaces and virtual private
    # gateways that are connected through a Direct Connect gateway can be in
    # different AWS Regions. This enables you to connect to a VPC in any
    # Region, regardless of the Region in which the virtual interfaces are
    # located, and pass traffic between them.
    #
    # @option params [required, String] :direct_connect_gateway_name
    #   The name of the Direct Connect gateway.
    #
    # @option params [Integer] :amazon_side_asn
    #   The autonomous system number (ASN) for Border Gateway Protocol (BGP)
    #   to be configured on the Amazon side of the connection. The ASN must be
    #   in the private range of 64,512 to 65,534 or 4,200,000,000 to
    #   4,294,967,294. The default is 64512.
    #
    # @return [Types::CreateDirectConnectGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDirectConnectGatewayResult#direct_connect_gateway #direct_connect_gateway} => Types::DirectConnectGateway
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_direct_connect_gateway({
    #     direct_connect_gateway_name: "DirectConnectGatewayName", # required
    #     amazon_side_asn: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway.direct_connect_gateway_name #=> String
    #   resp.direct_connect_gateway.amazon_side_asn #=> Integer
    #   resp.direct_connect_gateway.owner_account #=> String
    #   resp.direct_connect_gateway.direct_connect_gateway_state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.direct_connect_gateway.state_change_error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGateway AWS API Documentation
    #
    # @overload create_direct_connect_gateway(params = {})
    # @param [Hash] params ({})
    def create_direct_connect_gateway(params = {}, options = {})
      req = build_request(:create_direct_connect_gateway, params)
      req.send_request(options)
    end

    # Creates an association between a Direct Connect gateway and a virtual
    # private gateway. The virtual private gateway must be attached to a VPC
    # and must not be associated with another Direct Connect gateway.
    #
    # @option params [required, String] :direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #
    # @option params [String] :gateway_id
    #   The ID of the virtual private gateway or transit gateway.
    #
    # @option params [Array<Types::RouteFilterPrefix>] :add_allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to advertise to the Direct Connect gateway
    #
    #   This parameter is required when you create an association to a transit
    #   gateway.
    #
    #   For information about how to set the prefixes, see [Allowed
    #   Prefixes][1] in the *AWS Direct Connect User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes
    #
    # @option params [String] :virtual_gateway_id
    #   The ID of the virtual private gateway.
    #
    # @return [Types::CreateDirectConnectGatewayAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDirectConnectGatewayAssociationResult#direct_connect_gateway_association #direct_connect_gateway_association} => Types::DirectConnectGatewayAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_direct_connect_gateway_association({
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #     gateway_id: "GatewayIdToAssociate",
    #     add_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR",
    #       },
    #     ],
    #     virtual_gateway_id: "VirtualGatewayId",
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_association.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_association.direct_connect_gateway_owner_account #=> String
    #   resp.direct_connect_gateway_association.association_state #=> String, one of "associating", "associated", "disassociating", "disassociated", "updating"
    #   resp.direct_connect_gateway_association.state_change_error #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.id #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.type #=> String, one of "virtualPrivateGateway", "transitGateway"
    #   resp.direct_connect_gateway_association.associated_gateway.owner_account #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.region #=> String
    #   resp.direct_connect_gateway_association.association_id #=> String
    #   resp.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway #=> Array
    #   resp.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_region #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_owner_account #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayAssociation AWS API Documentation
    #
    # @overload create_direct_connect_gateway_association(params = {})
    # @param [Hash] params ({})
    def create_direct_connect_gateway_association(params = {}, options = {})
      req = build_request(:create_direct_connect_gateway_association, params)
      req.send_request(options)
    end

    # Creates a proposal to associate the specified virtual private gateway
    # or transit gateway with the specified Direct Connect gateway.
    #
    # You can only associate a Direct Connect gateway and virtual private
    # gateway or transit gateway when the account that owns the Direct
    # Connect gateway and the account that owns the virtual private gateway
    # or transit gateway have the same AWS Payer ID.
    #
    # @option params [required, String] :direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #
    # @option params [required, String] :direct_connect_gateway_owner_account
    #   The ID of the AWS account that owns the Direct Connect gateway.
    #
    # @option params [required, String] :gateway_id
    #   The ID of the virtual private gateway or transit gateway.
    #
    # @option params [Array<Types::RouteFilterPrefix>] :add_allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to advertise to the Direct Connect gateway.
    #
    # @option params [Array<Types::RouteFilterPrefix>] :remove_allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to no longer advertise to the Direct Connect
    #   gateway.
    #
    # @return [Types::CreateDirectConnectGatewayAssociationProposalResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDirectConnectGatewayAssociationProposalResult#direct_connect_gateway_association_proposal #direct_connect_gateway_association_proposal} => Types::DirectConnectGatewayAssociationProposal
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_direct_connect_gateway_association_proposal({
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #     direct_connect_gateway_owner_account: "OwnerAccount", # required
    #     gateway_id: "GatewayIdToAssociate", # required
    #     add_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR",
    #       },
    #     ],
    #     remove_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_association_proposal.proposal_id #=> String
    #   resp.direct_connect_gateway_association_proposal.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_association_proposal.direct_connect_gateway_owner_account #=> String
    #   resp.direct_connect_gateway_association_proposal.proposal_state #=> String, one of "requested", "accepted", "deleted"
    #   resp.direct_connect_gateway_association_proposal.associated_gateway.id #=> String
    #   resp.direct_connect_gateway_association_proposal.associated_gateway.type #=> String, one of "virtualPrivateGateway", "transitGateway"
    #   resp.direct_connect_gateway_association_proposal.associated_gateway.owner_account #=> String
    #   resp.direct_connect_gateway_association_proposal.associated_gateway.region #=> String
    #   resp.direct_connect_gateway_association_proposal.existing_allowed_prefixes_to_direct_connect_gateway #=> Array
    #   resp.direct_connect_gateway_association_proposal.existing_allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.direct_connect_gateway_association_proposal.requested_allowed_prefixes_to_direct_connect_gateway #=> Array
    #   resp.direct_connect_gateway_association_proposal.requested_allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayAssociationProposal AWS API Documentation
    #
    # @overload create_direct_connect_gateway_association_proposal(params = {})
    # @param [Hash] params ({})
    def create_direct_connect_gateway_association_proposal(params = {}, options = {})
      req = build_request(:create_direct_connect_gateway_association_proposal, params)
      req.send_request(options)
    end

    # Creates an interconnect between an AWS Direct Connect Partner's
    # network and a specific AWS Direct Connect location.
    #
    # An interconnect is a connection that is capable of hosting other
    # connections. The AWS Direct Connect partner can use an interconnect to
    # provide AWS Direct Connect hosted connections to customers through
    # their own network services. Like a standard connection, an
    # interconnect links the partner's network to an AWS Direct Connect
    # location over a standard Ethernet fiber-optic cable. One end is
    # connected to the partner's router, the other to an AWS Direct Connect
    # router.
    #
    # You can automatically add the new interconnect to a link aggregation
    # group (LAG) by specifying a LAG ID in the request. This ensures that
    # the new interconnect is allocated on the same AWS Direct Connect
    # endpoint that hosts the specified LAG. If there are no available ports
    # on the endpoint, the request fails and no interconnect is created.
    #
    # For each end customer, the AWS Direct Connect Partner provisions a
    # connection on their interconnect by calling AllocateHostedConnection.
    # The end customer can then connect to AWS resources by creating a
    # virtual interface on their connection, using the VLAN assigned to them
    # by the AWS Direct Connect Partner.
    #
    # <note markdown="1"> Intended for use by AWS Direct Connect Partners only.
    #
    #  </note>
    #
    # @option params [required, String] :interconnect_name
    #   The name of the interconnect.
    #
    # @option params [required, String] :bandwidth
    #   The port bandwidth, in Gbps. The possible values are 1 and 10.
    #
    # @option params [required, String] :location
    #   The location of the interconnect.
    #
    # @option params [String] :lag_id
    #   The ID of the LAG.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to associate with the interconnect.
    #
    # @option params [String] :provider_name
    #   The name of the service provider associated with the interconnect.
    #
    # @return [Types::Interconnect] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Interconnect#interconnect_id #interconnect_id} => String
    #   * {Types::Interconnect#interconnect_name #interconnect_name} => String
    #   * {Types::Interconnect#interconnect_state #interconnect_state} => String
    #   * {Types::Interconnect#region #region} => String
    #   * {Types::Interconnect#location #location} => String
    #   * {Types::Interconnect#bandwidth #bandwidth} => String
    #   * {Types::Interconnect#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Interconnect#lag_id #lag_id} => String
    #   * {Types::Interconnect#aws_device #aws_device} => String
    #   * {Types::Interconnect#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::Interconnect#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Interconnect#has_logical_redundancy #has_logical_redundancy} => String
    #   * {Types::Interconnect#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Interconnect#provider_name #provider_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_interconnect({
    #     interconnect_name: "InterconnectName", # required
    #     bandwidth: "Bandwidth", # required
    #     location: "LocationCode", # required
    #     lag_id: "LagId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     provider_name: "ProviderName",
    #   })
    #
    # @example Response structure
    #
    #   resp.interconnect_id #=> String
    #   resp.interconnect_name #=> String
    #   resp.interconnect_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted", "unknown"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.aws_device_v2 #=> String
    #   resp.has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateInterconnect AWS API Documentation
    #
    # @overload create_interconnect(params = {})
    # @param [Hash] params ({})
    def create_interconnect(params = {}, options = {})
      req = build_request(:create_interconnect, params)
      req.send_request(options)
    end

    # Creates a link aggregation group (LAG) with the specified number of
    # bundled physical connections between the customer network and a
    # specific AWS Direct Connect location. A LAG is a logical interface
    # that uses the Link Aggregation Control Protocol (LACP) to aggregate
    # multiple interfaces, enabling you to treat them as a single interface.
    #
    # All connections in a LAG must use the same bandwidth and must
    # terminate at the same AWS Direct Connect endpoint.
    #
    # You can have up to 10 connections per LAG. Regardless of this limit,
    # if you request more connections for the LAG than AWS Direct Connect
    # can allocate on a single endpoint, no LAG is created.
    #
    # You can specify an existing physical connection or interconnect to
    # include in the LAG (which counts towards the total number of
    # connections). Doing so interrupts the current physical connection or
    # hosted connections, and re-establishes them as a member of the LAG.
    # The LAG will be created on the same AWS Direct Connect endpoint to
    # which the connection terminates. Any virtual interfaces associated
    # with the connection are automatically disassociated and re-associated
    # with the LAG. The connection ID does not change.
    #
    # If the AWS account used to create a LAG is a registered AWS Direct
    # Connect Partner, the LAG is automatically enabled to host
    # sub-connections. For a LAG owned by a partner, any associated virtual
    # interfaces cannot be directly configured.
    #
    # @option params [required, Integer] :number_of_connections
    #   The number of physical connections initially provisioned and bundled
    #   by the LAG.
    #
    # @option params [required, String] :location
    #   The location for the LAG.
    #
    # @option params [required, String] :connections_bandwidth
    #   The bandwidth of the individual physical connections bundled by the
    #   LAG. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps,
    #   400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps.
    #
    # @option params [required, String] :lag_name
    #   The name of the LAG.
    #
    # @option params [String] :connection_id
    #   The ID of an existing connection to migrate to the LAG.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to associate with the LAG.
    #
    # @option params [Array<Types::Tag>] :child_connection_tags
    #   The tags to associate with the automtically created LAGs.
    #
    # @option params [String] :provider_name
    #   The name of the service provider associated with the LAG.
    #
    # @return [Types::Lag] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Lag#connections_bandwidth #connections_bandwidth} => String
    #   * {Types::Lag#number_of_connections #number_of_connections} => Integer
    #   * {Types::Lag#lag_id #lag_id} => String
    #   * {Types::Lag#owner_account #owner_account} => String
    #   * {Types::Lag#lag_name #lag_name} => String
    #   * {Types::Lag#lag_state #lag_state} => String
    #   * {Types::Lag#location #location} => String
    #   * {Types::Lag#region #region} => String
    #   * {Types::Lag#minimum_links #minimum_links} => Integer
    #   * {Types::Lag#aws_device #aws_device} => String
    #   * {Types::Lag#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Lag#connections #connections} => Array&lt;Types::Connection&gt;
    #   * {Types::Lag#allows_hosted_connections #allows_hosted_connections} => Boolean
    #   * {Types::Lag#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::Lag#has_logical_redundancy #has_logical_redundancy} => String
    #   * {Types::Lag#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Lag#provider_name #provider_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lag({
    #     number_of_connections: 1, # required
    #     location: "LocationCode", # required
    #     connections_bandwidth: "Bandwidth", # required
    #     lag_name: "LagName", # required
    #     connection_id: "ConnectionId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     child_connection_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     provider_name: "ProviderName",
    #   })
    #
    # @example Response structure
    #
    #   resp.connections_bandwidth #=> String
    #   resp.number_of_connections #=> Integer
    #   resp.lag_id #=> String
    #   resp.owner_account #=> String
    #   resp.lag_name #=> String
    #   resp.lag_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted", "unknown"
    #   resp.location #=> String
    #   resp.region #=> String
    #   resp.minimum_links #=> Integer
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.connections[0].aws_device_v2 #=> String
    #   resp.connections[0].has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.connections[0].tags #=> Array
    #   resp.connections[0].tags[0].key #=> String
    #   resp.connections[0].tags[0].value #=> String
    #   resp.connections[0].provider_name #=> String
    #   resp.allows_hosted_connections #=> Boolean
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateLag AWS API Documentation
    #
    # @overload create_lag(params = {})
    # @param [Hash] params ({})
    def create_lag(params = {}, options = {})
      req = build_request(:create_lag, params)
      req.send_request(options)
    end

    # Creates a private virtual interface. A virtual interface is the VLAN
    # that transports AWS Direct Connect traffic. A private virtual
    # interface can be connected to either a Direct Connect gateway or a
    # Virtual Private Gateway (VGW). Connecting the private virtual
    # interface to a Direct Connect gateway enables the possibility for
    # connecting to multiple VPCs, including VPCs in different AWS Regions.
    # Connecting the private virtual interface to a VGW only provides access
    # to a single VPC within the same Region.
    #
    # Setting the MTU of a virtual interface to 9001 (jumbo frames) can
    # cause an update to the underlying physical connection if it wasn't
    # updated to support jumbo frames. Updating the connection disrupts
    # network connectivity for all virtual interfaces associated with the
    # connection for up to 30 seconds. To check whether your connection
    # supports jumbo frames, call DescribeConnections. To check whether your
    # virtual interface supports jumbo frames, call
    # DescribeVirtualInterfaces.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection.
    #
    # @option params [required, Types::NewPrivateVirtualInterface] :new_private_virtual_interface
    #   Information about the private virtual interface.
    #
    # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterface#owner_account #owner_account} => String
    #   * {Types::VirtualInterface#virtual_interface_id #virtual_interface_id} => String
    #   * {Types::VirtualInterface#location #location} => String
    #   * {Types::VirtualInterface#connection_id #connection_id} => String
    #   * {Types::VirtualInterface#virtual_interface_type #virtual_interface_type} => String
    #   * {Types::VirtualInterface#virtual_interface_name #virtual_interface_name} => String
    #   * {Types::VirtualInterface#vlan #vlan} => Integer
    #   * {Types::VirtualInterface#asn #asn} => Integer
    #   * {Types::VirtualInterface#amazon_side_asn #amazon_side_asn} => Integer
    #   * {Types::VirtualInterface#auth_key #auth_key} => String
    #   * {Types::VirtualInterface#amazon_address #amazon_address} => String
    #   * {Types::VirtualInterface#customer_address #customer_address} => String
    #   * {Types::VirtualInterface#address_family #address_family} => String
    #   * {Types::VirtualInterface#virtual_interface_state #virtual_interface_state} => String
    #   * {Types::VirtualInterface#customer_router_config #customer_router_config} => String
    #   * {Types::VirtualInterface#mtu #mtu} => Integer
    #   * {Types::VirtualInterface#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::VirtualInterface#virtual_gateway_id #virtual_gateway_id} => String
    #   * {Types::VirtualInterface#direct_connect_gateway_id #direct_connect_gateway_id} => String
    #   * {Types::VirtualInterface#route_filter_prefixes #route_filter_prefixes} => Array&lt;Types::RouteFilterPrefix&gt;
    #   * {Types::VirtualInterface#bgp_peers #bgp_peers} => Array&lt;Types::BGPPeer&gt;
    #   * {Types::VirtualInterface#region #region} => String
    #   * {Types::VirtualInterface#aws_device_v2 #aws_device_v2} => String
    #   * {Types::VirtualInterface#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_private_virtual_interface({
    #     connection_id: "ConnectionId", # required
    #     new_private_virtual_interface: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       mtu: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       virtual_gateway_id: "VirtualGatewayId",
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.virtual_interface_id #=> String
    #   resp.location #=> String
    #   resp.connection_id #=> String
    #   resp.virtual_interface_type #=> String
    #   resp.virtual_interface_name #=> String
    #   resp.vlan #=> Integer
    #   resp.asn #=> Integer
    #   resp.amazon_side_asn #=> Integer
    #   resp.auth_key #=> String
    #   resp.amazon_address #=> String
    #   resp.customer_address #=> String
    #   resp.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.customer_router_config #=> String
    #   resp.mtu #=> Integer
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_id #=> String
    #   resp.route_filter_prefixes #=> Array
    #   resp.route_filter_prefixes[0].cidr #=> String
    #   resp.bgp_peers #=> Array
    #   resp.bgp_peers[0].bgp_peer_id #=> String
    #   resp.bgp_peers[0].asn #=> Integer
    #   resp.bgp_peers[0].auth_key #=> String
    #   resp.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.bgp_peers[0].amazon_address #=> String
    #   resp.bgp_peers[0].customer_address #=> String
    #   resp.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.bgp_peers[0].bgp_status #=> String, one of "up", "down", "unknown"
    #   resp.bgp_peers[0].aws_device_v2 #=> String
    #   resp.region #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreatePrivateVirtualInterface AWS API Documentation
    #
    # @overload create_private_virtual_interface(params = {})
    # @param [Hash] params ({})
    def create_private_virtual_interface(params = {}, options = {})
      req = build_request(:create_private_virtual_interface, params)
      req.send_request(options)
    end

    # Creates a public virtual interface. A virtual interface is the VLAN
    # that transports AWS Direct Connect traffic. A public virtual interface
    # supports sending traffic to public services of AWS such as Amazon S3.
    #
    # When creating an IPv6 public virtual interface (`addressFamily` is
    # `ipv6`), leave the `customer` and `amazon` address fields blank to use
    # auto-assigned IPv6 space. Custom IPv6 addresses are not supported.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection.
    #
    # @option params [required, Types::NewPublicVirtualInterface] :new_public_virtual_interface
    #   Information about the public virtual interface.
    #
    # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterface#owner_account #owner_account} => String
    #   * {Types::VirtualInterface#virtual_interface_id #virtual_interface_id} => String
    #   * {Types::VirtualInterface#location #location} => String
    #   * {Types::VirtualInterface#connection_id #connection_id} => String
    #   * {Types::VirtualInterface#virtual_interface_type #virtual_interface_type} => String
    #   * {Types::VirtualInterface#virtual_interface_name #virtual_interface_name} => String
    #   * {Types::VirtualInterface#vlan #vlan} => Integer
    #   * {Types::VirtualInterface#asn #asn} => Integer
    #   * {Types::VirtualInterface#amazon_side_asn #amazon_side_asn} => Integer
    #   * {Types::VirtualInterface#auth_key #auth_key} => String
    #   * {Types::VirtualInterface#amazon_address #amazon_address} => String
    #   * {Types::VirtualInterface#customer_address #customer_address} => String
    #   * {Types::VirtualInterface#address_family #address_family} => String
    #   * {Types::VirtualInterface#virtual_interface_state #virtual_interface_state} => String
    #   * {Types::VirtualInterface#customer_router_config #customer_router_config} => String
    #   * {Types::VirtualInterface#mtu #mtu} => Integer
    #   * {Types::VirtualInterface#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::VirtualInterface#virtual_gateway_id #virtual_gateway_id} => String
    #   * {Types::VirtualInterface#direct_connect_gateway_id #direct_connect_gateway_id} => String
    #   * {Types::VirtualInterface#route_filter_prefixes #route_filter_prefixes} => Array&lt;Types::RouteFilterPrefix&gt;
    #   * {Types::VirtualInterface#bgp_peers #bgp_peers} => Array&lt;Types::BGPPeer&gt;
    #   * {Types::VirtualInterface#region #region} => String
    #   * {Types::VirtualInterface#aws_device_v2 #aws_device_v2} => String
    #   * {Types::VirtualInterface#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_public_virtual_interface({
    #     connection_id: "ConnectionId", # required
    #     new_public_virtual_interface: { # required
    #       virtual_interface_name: "VirtualInterfaceName", # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       route_filter_prefixes: [
    #         {
    #           cidr: "CIDR",
    #         },
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.virtual_interface_id #=> String
    #   resp.location #=> String
    #   resp.connection_id #=> String
    #   resp.virtual_interface_type #=> String
    #   resp.virtual_interface_name #=> String
    #   resp.vlan #=> Integer
    #   resp.asn #=> Integer
    #   resp.amazon_side_asn #=> Integer
    #   resp.auth_key #=> String
    #   resp.amazon_address #=> String
    #   resp.customer_address #=> String
    #   resp.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.customer_router_config #=> String
    #   resp.mtu #=> Integer
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_id #=> String
    #   resp.route_filter_prefixes #=> Array
    #   resp.route_filter_prefixes[0].cidr #=> String
    #   resp.bgp_peers #=> Array
    #   resp.bgp_peers[0].bgp_peer_id #=> String
    #   resp.bgp_peers[0].asn #=> Integer
    #   resp.bgp_peers[0].auth_key #=> String
    #   resp.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.bgp_peers[0].amazon_address #=> String
    #   resp.bgp_peers[0].customer_address #=> String
    #   resp.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.bgp_peers[0].bgp_status #=> String, one of "up", "down", "unknown"
    #   resp.bgp_peers[0].aws_device_v2 #=> String
    #   resp.region #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreatePublicVirtualInterface AWS API Documentation
    #
    # @overload create_public_virtual_interface(params = {})
    # @param [Hash] params ({})
    def create_public_virtual_interface(params = {}, options = {})
      req = build_request(:create_public_virtual_interface, params)
      req.send_request(options)
    end

    # Creates a transit virtual interface. A transit virtual interface
    # should be used to access one or more transit gateways associated with
    # Direct Connect gateways. A transit virtual interface enables the
    # connection of multiple VPCs attached to a transit gateway to a Direct
    # Connect gateway.
    #
    # If you associate your transit gateway with one or more Direct Connect
    # gateways, the Autonomous System Number (ASN) used by the transit
    # gateway and the Direct Connect gateway must be different. For example,
    # if you use the default ASN 64512 for both your the transit gateway and
    # Direct Connect gateway, the association request fails.
    #
    # Setting the MTU of a virtual interface to 8500 (jumbo frames) can
    # cause an update to the underlying physical connection if it wasn't
    # updated to support jumbo frames. Updating the connection disrupts
    # network connectivity for all virtual interfaces associated with the
    # connection for up to 30 seconds. To check whether your connection
    # supports jumbo frames, call DescribeConnections. To check whether your
    # virtual interface supports jumbo frames, call
    # DescribeVirtualInterfaces.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection.
    #
    # @option params [required, Types::NewTransitVirtualInterface] :new_transit_virtual_interface
    #   Information about the transit virtual interface.
    #
    # @return [Types::CreateTransitVirtualInterfaceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTransitVirtualInterfaceResult#virtual_interface #virtual_interface} => Types::VirtualInterface
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_transit_virtual_interface({
    #     connection_id: "ConnectionId", # required
    #     new_transit_virtual_interface: { # required
    #       virtual_interface_name: "VirtualInterfaceName",
    #       vlan: 1,
    #       asn: 1,
    #       mtu: 1,
    #       auth_key: "BGPAuthKey",
    #       amazon_address: "AmazonAddress",
    #       customer_address: "CustomerAddress",
    #       address_family: "ipv4", # accepts ipv4, ipv6
    #       direct_connect_gateway_id: "DirectConnectGatewayId",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface.owner_account #=> String
    #   resp.virtual_interface.virtual_interface_id #=> String
    #   resp.virtual_interface.location #=> String
    #   resp.virtual_interface.connection_id #=> String
    #   resp.virtual_interface.virtual_interface_type #=> String
    #   resp.virtual_interface.virtual_interface_name #=> String
    #   resp.virtual_interface.vlan #=> Integer
    #   resp.virtual_interface.asn #=> Integer
    #   resp.virtual_interface.amazon_side_asn #=> Integer
    #   resp.virtual_interface.auth_key #=> String
    #   resp.virtual_interface.amazon_address #=> String
    #   resp.virtual_interface.customer_address #=> String
    #   resp.virtual_interface.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.virtual_interface.customer_router_config #=> String
    #   resp.virtual_interface.mtu #=> Integer
    #   resp.virtual_interface.jumbo_frame_capable #=> Boolean
    #   resp.virtual_interface.virtual_gateway_id #=> String
    #   resp.virtual_interface.direct_connect_gateway_id #=> String
    #   resp.virtual_interface.route_filter_prefixes #=> Array
    #   resp.virtual_interface.route_filter_prefixes[0].cidr #=> String
    #   resp.virtual_interface.bgp_peers #=> Array
    #   resp.virtual_interface.bgp_peers[0].bgp_peer_id #=> String
    #   resp.virtual_interface.bgp_peers[0].asn #=> Integer
    #   resp.virtual_interface.bgp_peers[0].auth_key #=> String
    #   resp.virtual_interface.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.bgp_peers[0].amazon_address #=> String
    #   resp.virtual_interface.bgp_peers[0].customer_address #=> String
    #   resp.virtual_interface.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.virtual_interface.bgp_peers[0].bgp_status #=> String, one of "up", "down", "unknown"
    #   resp.virtual_interface.bgp_peers[0].aws_device_v2 #=> String
    #   resp.virtual_interface.region #=> String
    #   resp.virtual_interface.aws_device_v2 #=> String
    #   resp.virtual_interface.tags #=> Array
    #   resp.virtual_interface.tags[0].key #=> String
    #   resp.virtual_interface.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateTransitVirtualInterface AWS API Documentation
    #
    # @overload create_transit_virtual_interface(params = {})
    # @param [Hash] params ({})
    def create_transit_virtual_interface(params = {}, options = {})
      req = build_request(:create_transit_virtual_interface, params)
      req.send_request(options)
    end

    # Deletes the specified BGP peer on the specified virtual interface with
    # the specified customer address and ASN.
    #
    # You cannot delete the last BGP peer from a virtual interface.
    #
    # @option params [String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    # @option params [Integer] :asn
    #   The autonomous system (AS) number for Border Gateway Protocol (BGP)
    #   configuration.
    #
    # @option params [String] :customer_address
    #   The IP address assigned to the customer interface.
    #
    # @option params [String] :bgp_peer_id
    #   The ID of the BGP peer.
    #
    # @return [Types::DeleteBGPPeerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBGPPeerResponse#virtual_interface #virtual_interface} => Types::VirtualInterface
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bgp_peer({
    #     virtual_interface_id: "VirtualInterfaceId",
    #     asn: 1,
    #     customer_address: "CustomerAddress",
    #     bgp_peer_id: "BGPPeerId",
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface.owner_account #=> String
    #   resp.virtual_interface.virtual_interface_id #=> String
    #   resp.virtual_interface.location #=> String
    #   resp.virtual_interface.connection_id #=> String
    #   resp.virtual_interface.virtual_interface_type #=> String
    #   resp.virtual_interface.virtual_interface_name #=> String
    #   resp.virtual_interface.vlan #=> Integer
    #   resp.virtual_interface.asn #=> Integer
    #   resp.virtual_interface.amazon_side_asn #=> Integer
    #   resp.virtual_interface.auth_key #=> String
    #   resp.virtual_interface.amazon_address #=> String
    #   resp.virtual_interface.customer_address #=> String
    #   resp.virtual_interface.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.virtual_interface.customer_router_config #=> String
    #   resp.virtual_interface.mtu #=> Integer
    #   resp.virtual_interface.jumbo_frame_capable #=> Boolean
    #   resp.virtual_interface.virtual_gateway_id #=> String
    #   resp.virtual_interface.direct_connect_gateway_id #=> String
    #   resp.virtual_interface.route_filter_prefixes #=> Array
    #   resp.virtual_interface.route_filter_prefixes[0].cidr #=> String
    #   resp.virtual_interface.bgp_peers #=> Array
    #   resp.virtual_interface.bgp_peers[0].bgp_peer_id #=> String
    #   resp.virtual_interface.bgp_peers[0].asn #=> Integer
    #   resp.virtual_interface.bgp_peers[0].auth_key #=> String
    #   resp.virtual_interface.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface.bgp_peers[0].amazon_address #=> String
    #   resp.virtual_interface.bgp_peers[0].customer_address #=> String
    #   resp.virtual_interface.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.virtual_interface.bgp_peers[0].bgp_status #=> String, one of "up", "down", "unknown"
    #   resp.virtual_interface.bgp_peers[0].aws_device_v2 #=> String
    #   resp.virtual_interface.region #=> String
    #   resp.virtual_interface.aws_device_v2 #=> String
    #   resp.virtual_interface.tags #=> Array
    #   resp.virtual_interface.tags[0].key #=> String
    #   resp.virtual_interface.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteBGPPeer AWS API Documentation
    #
    # @overload delete_bgp_peer(params = {})
    # @param [Hash] params ({})
    def delete_bgp_peer(params = {}, options = {})
      req = build_request(:delete_bgp_peer, params)
      req.send_request(options)
    end

    # Deletes the specified connection.
    #
    # Deleting a connection only stops the AWS Direct Connect port hour and
    # data transfer charges. If you are partnering with any third parties to
    # connect with the AWS Direct Connect location, you must cancel your
    # service with them separately.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection.
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Connection#has_logical_redundancy #has_logical_redundancy} => String
    #   * {Types::Connection#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Connection#provider_name #provider_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.aws_device_v2 #=> String
    #   resp.has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteConnection AWS API Documentation
    #
    # @overload delete_connection(params = {})
    # @param [Hash] params ({})
    def delete_connection(params = {}, options = {})
      req = build_request(:delete_connection, params)
      req.send_request(options)
    end

    # Deletes the specified Direct Connect gateway. You must first delete
    # all virtual interfaces that are attached to the Direct Connect gateway
    # and disassociate all virtual private gateways associated with the
    # Direct Connect gateway.
    #
    # @option params [required, String] :direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #
    # @return [Types::DeleteDirectConnectGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDirectConnectGatewayResult#direct_connect_gateway #direct_connect_gateway} => Types::DirectConnectGateway
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_direct_connect_gateway({
    #     direct_connect_gateway_id: "DirectConnectGatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway.direct_connect_gateway_name #=> String
    #   resp.direct_connect_gateway.amazon_side_asn #=> Integer
    #   resp.direct_connect_gateway.owner_account #=> String
    #   resp.direct_connect_gateway.direct_connect_gateway_state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.direct_connect_gateway.state_change_error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGateway AWS API Documentation
    #
    # @overload delete_direct_connect_gateway(params = {})
    # @param [Hash] params ({})
    def delete_direct_connect_gateway(params = {}, options = {})
      req = build_request(:delete_direct_connect_gateway, params)
      req.send_request(options)
    end

    # Deletes the association between the specified Direct Connect gateway
    # and virtual private gateway.
    #
    # We recommend that you specify the `associationID` to delete the
    # association. Alternatively, if you own virtual gateway and a Direct
    # Connect gateway association, you can specify the `virtualGatewayId`
    # and `directConnectGatewayId` to delete an association.
    #
    # @option params [String] :association_id
    #   The ID of the Direct Connect gateway association.
    #
    # @option params [String] :direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #
    # @option params [String] :virtual_gateway_id
    #   The ID of the virtual private gateway.
    #
    # @return [Types::DeleteDirectConnectGatewayAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDirectConnectGatewayAssociationResult#direct_connect_gateway_association #direct_connect_gateway_association} => Types::DirectConnectGatewayAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_direct_connect_gateway_association({
    #     association_id: "DirectConnectGatewayAssociationId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     virtual_gateway_id: "VirtualGatewayId",
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_association.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_association.direct_connect_gateway_owner_account #=> String
    #   resp.direct_connect_gateway_association.association_state #=> String, one of "associating", "associated", "disassociating", "disassociated", "updating"
    #   resp.direct_connect_gateway_association.state_change_error #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.id #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.type #=> String, one of "virtualPrivateGateway", "transitGateway"
    #   resp.direct_connect_gateway_association.associated_gateway.owner_account #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.region #=> String
    #   resp.direct_connect_gateway_association.association_id #=> String
    #   resp.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway #=> Array
    #   resp.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_region #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_owner_account #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayAssociation AWS API Documentation
    #
    # @overload delete_direct_connect_gateway_association(params = {})
    # @param [Hash] params ({})
    def delete_direct_connect_gateway_association(params = {}, options = {})
      req = build_request(:delete_direct_connect_gateway_association, params)
      req.send_request(options)
    end

    # Deletes the association proposal request between the specified Direct
    # Connect gateway and virtual private gateway or transit gateway.
    #
    # @option params [required, String] :proposal_id
    #   The ID of the proposal.
    #
    # @return [Types::DeleteDirectConnectGatewayAssociationProposalResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDirectConnectGatewayAssociationProposalResult#direct_connect_gateway_association_proposal #direct_connect_gateway_association_proposal} => Types::DirectConnectGatewayAssociationProposal
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_direct_connect_gateway_association_proposal({
    #     proposal_id: "DirectConnectGatewayAssociationProposalId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_association_proposal.proposal_id #=> String
    #   resp.direct_connect_gateway_association_proposal.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_association_proposal.direct_connect_gateway_owner_account #=> String
    #   resp.direct_connect_gateway_association_proposal.proposal_state #=> String, one of "requested", "accepted", "deleted"
    #   resp.direct_connect_gateway_association_proposal.associated_gateway.id #=> String
    #   resp.direct_connect_gateway_association_proposal.associated_gateway.type #=> String, one of "virtualPrivateGateway", "transitGateway"
    #   resp.direct_connect_gateway_association_proposal.associated_gateway.owner_account #=> String
    #   resp.direct_connect_gateway_association_proposal.associated_gateway.region #=> String
    #   resp.direct_connect_gateway_association_proposal.existing_allowed_prefixes_to_direct_connect_gateway #=> Array
    #   resp.direct_connect_gateway_association_proposal.existing_allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.direct_connect_gateway_association_proposal.requested_allowed_prefixes_to_direct_connect_gateway #=> Array
    #   resp.direct_connect_gateway_association_proposal.requested_allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayAssociationProposal AWS API Documentation
    #
    # @overload delete_direct_connect_gateway_association_proposal(params = {})
    # @param [Hash] params ({})
    def delete_direct_connect_gateway_association_proposal(params = {}, options = {})
      req = build_request(:delete_direct_connect_gateway_association_proposal, params)
      req.send_request(options)
    end

    # Deletes the specified interconnect.
    #
    # <note markdown="1"> Intended for use by AWS Direct Connect Partners only.
    #
    #  </note>
    #
    # @option params [required, String] :interconnect_id
    #   The ID of the interconnect.
    #
    # @return [Types::DeleteInterconnectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInterconnectResponse#interconnect_state #interconnect_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_interconnect({
    #     interconnect_id: "InterconnectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.interconnect_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted", "unknown"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteInterconnect AWS API Documentation
    #
    # @overload delete_interconnect(params = {})
    # @param [Hash] params ({})
    def delete_interconnect(params = {}, options = {})
      req = build_request(:delete_interconnect, params)
      req.send_request(options)
    end

    # Deletes the specified link aggregation group (LAG). You cannot delete
    # a LAG if it has active virtual interfaces or hosted connections.
    #
    # @option params [required, String] :lag_id
    #   The ID of the LAG.
    #
    # @return [Types::Lag] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Lag#connections_bandwidth #connections_bandwidth} => String
    #   * {Types::Lag#number_of_connections #number_of_connections} => Integer
    #   * {Types::Lag#lag_id #lag_id} => String
    #   * {Types::Lag#owner_account #owner_account} => String
    #   * {Types::Lag#lag_name #lag_name} => String
    #   * {Types::Lag#lag_state #lag_state} => String
    #   * {Types::Lag#location #location} => String
    #   * {Types::Lag#region #region} => String
    #   * {Types::Lag#minimum_links #minimum_links} => Integer
    #   * {Types::Lag#aws_device #aws_device} => String
    #   * {Types::Lag#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Lag#connections #connections} => Array&lt;Types::Connection&gt;
    #   * {Types::Lag#allows_hosted_connections #allows_hosted_connections} => Boolean
    #   * {Types::Lag#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::Lag#has_logical_redundancy #has_logical_redundancy} => String
    #   * {Types::Lag#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Lag#provider_name #provider_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lag({
    #     lag_id: "LagId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connections_bandwidth #=> String
    #   resp.number_of_connections #=> Integer
    #   resp.lag_id #=> String
    #   resp.owner_account #=> String
    #   resp.lag_name #=> String
    #   resp.lag_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted", "unknown"
    #   resp.location #=> String
    #   resp.region #=> String
    #   resp.minimum_links #=> Integer
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.connections[0].aws_device_v2 #=> String
    #   resp.connections[0].has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.connections[0].tags #=> Array
    #   resp.connections[0].tags[0].key #=> String
    #   resp.connections[0].tags[0].value #=> String
    #   resp.connections[0].provider_name #=> String
    #   resp.allows_hosted_connections #=> Boolean
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteLag AWS API Documentation
    #
    # @overload delete_lag(params = {})
    # @param [Hash] params ({})
    def delete_lag(params = {}, options = {})
      req = build_request(:delete_lag, params)
      req.send_request(options)
    end

    # Deletes a virtual interface.
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    # @return [Types::DeleteVirtualInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVirtualInterfaceResponse#virtual_interface_state #virtual_interface_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_interface({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteVirtualInterface AWS API Documentation
    #
    # @overload delete_virtual_interface(params = {})
    # @param [Hash] params ({})
    def delete_virtual_interface(params = {}, options = {})
      req = build_request(:delete_virtual_interface, params)
      req.send_request(options)
    end

    # Deprecated. Use DescribeLoa instead.
    #
    # Gets the LOA-CFA for a connection.
    #
    # The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
    # is a document that your APN partner or service provider uses when
    # establishing your cross connect to AWS at the colocation facility. For
    # more information, see [Requesting Cross Connects at AWS Direct Connect
    # Locations][1] in the *AWS Direct Connect User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection.
    #
    # @option params [String] :provider_name
    #   The name of the APN partner or service provider who establishes
    #   connectivity on your behalf. If you specify this parameter, the
    #   LOA-CFA lists the provider name alongside your company name as the
    #   requester of the cross connect.
    #
    # @option params [String] :loa_content_type
    #   The standard media type for the LOA-CFA document. The only supported
    #   value is application/pdf.
    #
    # @return [Types::DescribeConnectionLoaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectionLoaResponse#loa #loa} => Types::Loa
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connection_loa({
    #     connection_id: "ConnectionId", # required
    #     provider_name: "ProviderName",
    #     loa_content_type: "application/pdf", # accepts application/pdf
    #   })
    #
    # @example Response structure
    #
    #   resp.loa.loa_content #=> String
    #   resp.loa.loa_content_type #=> String, one of "application/pdf"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionLoa AWS API Documentation
    #
    # @overload describe_connection_loa(params = {})
    # @param [Hash] params ({})
    def describe_connection_loa(params = {}, options = {})
      req = build_request(:describe_connection_loa, params)
      req.send_request(options)
    end

    # Displays the specified connection or all connections in this Region.
    #
    # @option params [String] :connection_id
    #   The ID of the connection.
    #
    # @return [Types::Connections] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connections#connections #connections} => Array&lt;Types::Connection&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connections({
    #     connection_id: "ConnectionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.connections[0].aws_device_v2 #=> String
    #   resp.connections[0].has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.connections[0].tags #=> Array
    #   resp.connections[0].tags[0].key #=> String
    #   resp.connections[0].tags[0].value #=> String
    #   resp.connections[0].provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnections AWS API Documentation
    #
    # @overload describe_connections(params = {})
    # @param [Hash] params ({})
    def describe_connections(params = {}, options = {})
      req = build_request(:describe_connections, params)
      req.send_request(options)
    end

    # Deprecated. Use DescribeHostedConnections instead.
    #
    # Lists the connections that have been provisioned on the specified
    # interconnect.
    #
    # <note markdown="1"> Intended for use by AWS Direct Connect Partners only.
    #
    #  </note>
    #
    # @option params [required, String] :interconnect_id
    #   The ID of the interconnect.
    #
    # @return [Types::Connections] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connections#connections #connections} => Array&lt;Types::Connection&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connections_on_interconnect({
    #     interconnect_id: "InterconnectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.connections[0].aws_device_v2 #=> String
    #   resp.connections[0].has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.connections[0].tags #=> Array
    #   resp.connections[0].tags[0].key #=> String
    #   resp.connections[0].tags[0].value #=> String
    #   resp.connections[0].provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionsOnInterconnect AWS API Documentation
    #
    # @overload describe_connections_on_interconnect(params = {})
    # @param [Hash] params ({})
    def describe_connections_on_interconnect(params = {}, options = {})
      req = build_request(:describe_connections_on_interconnect, params)
      req.send_request(options)
    end

    # Describes one or more association proposals for connection between a
    # virtual private gateway or transit gateway and a Direct Connect
    # gateway.
    #
    # @option params [String] :direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #
    # @option params [String] :proposal_id
    #   The ID of the proposal.
    #
    # @option params [String] :associated_gateway_id
    #   The ID of the associated gateway.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results are
    #   returned.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::DescribeDirectConnectGatewayAssociationProposalsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDirectConnectGatewayAssociationProposalsResult#direct_connect_gateway_association_proposals #direct_connect_gateway_association_proposals} => Array&lt;Types::DirectConnectGatewayAssociationProposal&gt;
    #   * {Types::DescribeDirectConnectGatewayAssociationProposalsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_direct_connect_gateway_association_proposals({
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     proposal_id: "DirectConnectGatewayAssociationProposalId",
    #     associated_gateway_id: "AssociatedGatewayId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_association_proposals #=> Array
    #   resp.direct_connect_gateway_association_proposals[0].proposal_id #=> String
    #   resp.direct_connect_gateway_association_proposals[0].direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_association_proposals[0].direct_connect_gateway_owner_account #=> String
    #   resp.direct_connect_gateway_association_proposals[0].proposal_state #=> String, one of "requested", "accepted", "deleted"
    #   resp.direct_connect_gateway_association_proposals[0].associated_gateway.id #=> String
    #   resp.direct_connect_gateway_association_proposals[0].associated_gateway.type #=> String, one of "virtualPrivateGateway", "transitGateway"
    #   resp.direct_connect_gateway_association_proposals[0].associated_gateway.owner_account #=> String
    #   resp.direct_connect_gateway_association_proposals[0].associated_gateway.region #=> String
    #   resp.direct_connect_gateway_association_proposals[0].existing_allowed_prefixes_to_direct_connect_gateway #=> Array
    #   resp.direct_connect_gateway_association_proposals[0].existing_allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.direct_connect_gateway_association_proposals[0].requested_allowed_prefixes_to_direct_connect_gateway #=> Array
    #   resp.direct_connect_gateway_association_proposals[0].requested_allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAssociationProposals AWS API Documentation
    #
    # @overload describe_direct_connect_gateway_association_proposals(params = {})
    # @param [Hash] params ({})
    def describe_direct_connect_gateway_association_proposals(params = {}, options = {})
      req = build_request(:describe_direct_connect_gateway_association_proposals, params)
      req.send_request(options)
    end

    # Lists the associations between your Direct Connect gateways and
    # virtual private gateways. You must specify a Direct Connect gateway, a
    # virtual private gateway, or both. If you specify a Direct Connect
    # gateway, the response contains all virtual private gateways associated
    # with the Direct Connect gateway. If you specify a virtual private
    # gateway, the response contains all Direct Connect gateways associated
    # with the virtual private gateway. If you specify both, the response
    # contains the association between the Direct Connect gateway and the
    # virtual private gateway.
    #
    # @option params [String] :association_id
    #   The ID of the Direct Connect gateway association.
    #
    # @option params [String] :associated_gateway_id
    #   The ID of the associated gateway.
    #
    # @option params [String] :direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results are
    #   returned.
    #
    # @option params [String] :next_token
    #   The token provided in the previous call to retrieve the next page.
    #
    # @option params [String] :virtual_gateway_id
    #   The ID of the virtual private gateway.
    #
    # @return [Types::DescribeDirectConnectGatewayAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDirectConnectGatewayAssociationsResult#direct_connect_gateway_associations #direct_connect_gateway_associations} => Array&lt;Types::DirectConnectGatewayAssociation&gt;
    #   * {Types::DescribeDirectConnectGatewayAssociationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_direct_connect_gateway_associations({
    #     association_id: "DirectConnectGatewayAssociationId",
    #     associated_gateway_id: "AssociatedGatewayId",
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     virtual_gateway_id: "VirtualGatewayId",
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_associations #=> Array
    #   resp.direct_connect_gateway_associations[0].direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_associations[0].direct_connect_gateway_owner_account #=> String
    #   resp.direct_connect_gateway_associations[0].association_state #=> String, one of "associating", "associated", "disassociating", "disassociated", "updating"
    #   resp.direct_connect_gateway_associations[0].state_change_error #=> String
    #   resp.direct_connect_gateway_associations[0].associated_gateway.id #=> String
    #   resp.direct_connect_gateway_associations[0].associated_gateway.type #=> String, one of "virtualPrivateGateway", "transitGateway"
    #   resp.direct_connect_gateway_associations[0].associated_gateway.owner_account #=> String
    #   resp.direct_connect_gateway_associations[0].associated_gateway.region #=> String
    #   resp.direct_connect_gateway_associations[0].association_id #=> String
    #   resp.direct_connect_gateway_associations[0].allowed_prefixes_to_direct_connect_gateway #=> Array
    #   resp.direct_connect_gateway_associations[0].allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.direct_connect_gateway_associations[0].virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_associations[0].virtual_gateway_region #=> String
    #   resp.direct_connect_gateway_associations[0].virtual_gateway_owner_account #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAssociations AWS API Documentation
    #
    # @overload describe_direct_connect_gateway_associations(params = {})
    # @param [Hash] params ({})
    def describe_direct_connect_gateway_associations(params = {}, options = {})
      req = build_request(:describe_direct_connect_gateway_associations, params)
      req.send_request(options)
    end

    # Lists the attachments between your Direct Connect gateways and virtual
    # interfaces. You must specify a Direct Connect gateway, a virtual
    # interface, or both. If you specify a Direct Connect gateway, the
    # response contains all virtual interfaces attached to the Direct
    # Connect gateway. If you specify a virtual interface, the response
    # contains all Direct Connect gateways attached to the virtual
    # interface. If you specify both, the response contains the attachment
    # between the Direct Connect gateway and the virtual interface.
    #
    # @option params [String] :direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #
    # @option params [String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results are
    #   returned.
    #
    # @option params [String] :next_token
    #   The token provided in the previous call to retrieve the next page.
    #
    # @return [Types::DescribeDirectConnectGatewayAttachmentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDirectConnectGatewayAttachmentsResult#direct_connect_gateway_attachments #direct_connect_gateway_attachments} => Array&lt;Types::DirectConnectGatewayAttachment&gt;
    #   * {Types::DescribeDirectConnectGatewayAttachmentsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_direct_connect_gateway_attachments({
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_attachments #=> Array
    #   resp.direct_connect_gateway_attachments[0].direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_attachments[0].virtual_interface_id #=> String
    #   resp.direct_connect_gateway_attachments[0].virtual_interface_region #=> String
    #   resp.direct_connect_gateway_attachments[0].virtual_interface_owner_account #=> String
    #   resp.direct_connect_gateway_attachments[0].attachment_state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.direct_connect_gateway_attachments[0].attachment_type #=> String, one of "TransitVirtualInterface", "PrivateVirtualInterface"
    #   resp.direct_connect_gateway_attachments[0].state_change_error #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAttachments AWS API Documentation
    #
    # @overload describe_direct_connect_gateway_attachments(params = {})
    # @param [Hash] params ({})
    def describe_direct_connect_gateway_attachments(params = {}, options = {})
      req = build_request(:describe_direct_connect_gateway_attachments, params)
      req.send_request(options)
    end

    # Lists all your Direct Connect gateways or only the specified Direct
    # Connect gateway. Deleted Direct Connect gateways are not returned.
    #
    # @option params [String] :direct_connect_gateway_id
    #   The ID of the Direct Connect gateway.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results are
    #   returned.
    #
    # @option params [String] :next_token
    #   The token provided in the previous call to retrieve the next page.
    #
    # @return [Types::DescribeDirectConnectGatewaysResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDirectConnectGatewaysResult#direct_connect_gateways #direct_connect_gateways} => Array&lt;Types::DirectConnectGateway&gt;
    #   * {Types::DescribeDirectConnectGatewaysResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_direct_connect_gateways({
    #     direct_connect_gateway_id: "DirectConnectGatewayId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateways #=> Array
    #   resp.direct_connect_gateways[0].direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateways[0].direct_connect_gateway_name #=> String
    #   resp.direct_connect_gateways[0].amazon_side_asn #=> Integer
    #   resp.direct_connect_gateways[0].owner_account #=> String
    #   resp.direct_connect_gateways[0].direct_connect_gateway_state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.direct_connect_gateways[0].state_change_error #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGateways AWS API Documentation
    #
    # @overload describe_direct_connect_gateways(params = {})
    # @param [Hash] params ({})
    def describe_direct_connect_gateways(params = {}, options = {})
      req = build_request(:describe_direct_connect_gateways, params)
      req.send_request(options)
    end

    # Lists the hosted connections that have been provisioned on the
    # specified interconnect or link aggregation group (LAG).
    #
    # <note markdown="1"> Intended for use by AWS Direct Connect Partners only.
    #
    #  </note>
    #
    # @option params [required, String] :connection_id
    #   The ID of the interconnect or LAG.
    #
    # @return [Types::Connections] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connections#connections #connections} => Array&lt;Types::Connection&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hosted_connections({
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.connections[0].aws_device_v2 #=> String
    #   resp.connections[0].has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.connections[0].tags #=> Array
    #   resp.connections[0].tags[0].key #=> String
    #   resp.connections[0].tags[0].value #=> String
    #   resp.connections[0].provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeHostedConnections AWS API Documentation
    #
    # @overload describe_hosted_connections(params = {})
    # @param [Hash] params ({})
    def describe_hosted_connections(params = {}, options = {})
      req = build_request(:describe_hosted_connections, params)
      req.send_request(options)
    end

    # Deprecated. Use DescribeLoa instead.
    #
    # Gets the LOA-CFA for the specified interconnect.
    #
    # The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
    # is a document that is used when establishing your cross connect to AWS
    # at the colocation facility. For more information, see [Requesting
    # Cross Connects at AWS Direct Connect Locations][1] in the *AWS Direct
    # Connect User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html
    #
    # @option params [required, String] :interconnect_id
    #   The ID of the interconnect.
    #
    # @option params [String] :provider_name
    #   The name of the service provider who establishes connectivity on your
    #   behalf. If you supply this parameter, the LOA-CFA lists the provider
    #   name alongside your company name as the requester of the cross
    #   connect.
    #
    # @option params [String] :loa_content_type
    #   The standard media type for the LOA-CFA document. The only supported
    #   value is application/pdf.
    #
    # @return [Types::DescribeInterconnectLoaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInterconnectLoaResponse#loa #loa} => Types::Loa
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_interconnect_loa({
    #     interconnect_id: "InterconnectId", # required
    #     provider_name: "ProviderName",
    #     loa_content_type: "application/pdf", # accepts application/pdf
    #   })
    #
    # @example Response structure
    #
    #   resp.loa.loa_content #=> String
    #   resp.loa.loa_content_type #=> String, one of "application/pdf"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeInterconnectLoa AWS API Documentation
    #
    # @overload describe_interconnect_loa(params = {})
    # @param [Hash] params ({})
    def describe_interconnect_loa(params = {}, options = {})
      req = build_request(:describe_interconnect_loa, params)
      req.send_request(options)
    end

    # Lists the interconnects owned by the AWS account or only the specified
    # interconnect.
    #
    # @option params [String] :interconnect_id
    #   The ID of the interconnect.
    #
    # @return [Types::Interconnects] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Interconnects#interconnects #interconnects} => Array&lt;Types::Interconnect&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_interconnects({
    #     interconnect_id: "InterconnectId",
    #   })
    #
    # @example Response structure
    #
    #   resp.interconnects #=> Array
    #   resp.interconnects[0].interconnect_id #=> String
    #   resp.interconnects[0].interconnect_name #=> String
    #   resp.interconnects[0].interconnect_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted", "unknown"
    #   resp.interconnects[0].region #=> String
    #   resp.interconnects[0].location #=> String
    #   resp.interconnects[0].bandwidth #=> String
    #   resp.interconnects[0].loa_issue_time #=> Time
    #   resp.interconnects[0].lag_id #=> String
    #   resp.interconnects[0].aws_device #=> String
    #   resp.interconnects[0].jumbo_frame_capable #=> Boolean
    #   resp.interconnects[0].aws_device_v2 #=> String
    #   resp.interconnects[0].has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.interconnects[0].tags #=> Array
    #   resp.interconnects[0].tags[0].key #=> String
    #   resp.interconnects[0].tags[0].value #=> String
    #   resp.interconnects[0].provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeInterconnects AWS API Documentation
    #
    # @overload describe_interconnects(params = {})
    # @param [Hash] params ({})
    def describe_interconnects(params = {}, options = {})
      req = build_request(:describe_interconnects, params)
      req.send_request(options)
    end

    # Describes all your link aggregation groups (LAG) or the specified LAG.
    #
    # @option params [String] :lag_id
    #   The ID of the LAG.
    #
    # @return [Types::Lags] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Lags#lags #lags} => Array&lt;Types::Lag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_lags({
    #     lag_id: "LagId",
    #   })
    #
    # @example Response structure
    #
    #   resp.lags #=> Array
    #   resp.lags[0].connections_bandwidth #=> String
    #   resp.lags[0].number_of_connections #=> Integer
    #   resp.lags[0].lag_id #=> String
    #   resp.lags[0].owner_account #=> String
    #   resp.lags[0].lag_name #=> String
    #   resp.lags[0].lag_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted", "unknown"
    #   resp.lags[0].location #=> String
    #   resp.lags[0].region #=> String
    #   resp.lags[0].minimum_links #=> Integer
    #   resp.lags[0].aws_device #=> String
    #   resp.lags[0].aws_device_v2 #=> String
    #   resp.lags[0].connections #=> Array
    #   resp.lags[0].connections[0].owner_account #=> String
    #   resp.lags[0].connections[0].connection_id #=> String
    #   resp.lags[0].connections[0].connection_name #=> String
    #   resp.lags[0].connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.lags[0].connections[0].region #=> String
    #   resp.lags[0].connections[0].location #=> String
    #   resp.lags[0].connections[0].bandwidth #=> String
    #   resp.lags[0].connections[0].vlan #=> Integer
    #   resp.lags[0].connections[0].partner_name #=> String
    #   resp.lags[0].connections[0].loa_issue_time #=> Time
    #   resp.lags[0].connections[0].lag_id #=> String
    #   resp.lags[0].connections[0].aws_device #=> String
    #   resp.lags[0].connections[0].jumbo_frame_capable #=> Boolean
    #   resp.lags[0].connections[0].aws_device_v2 #=> String
    #   resp.lags[0].connections[0].has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.lags[0].connections[0].tags #=> Array
    #   resp.lags[0].connections[0].tags[0].key #=> String
    #   resp.lags[0].connections[0].tags[0].value #=> String
    #   resp.lags[0].connections[0].provider_name #=> String
    #   resp.lags[0].allows_hosted_connections #=> Boolean
    #   resp.lags[0].jumbo_frame_capable #=> Boolean
    #   resp.lags[0].has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.lags[0].tags #=> Array
    #   resp.lags[0].tags[0].key #=> String
    #   resp.lags[0].tags[0].value #=> String
    #   resp.lags[0].provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLags AWS API Documentation
    #
    # @overload describe_lags(params = {})
    # @param [Hash] params ({})
    def describe_lags(params = {}, options = {})
      req = build_request(:describe_lags, params)
      req.send_request(options)
    end

    # Gets the LOA-CFA for a connection, interconnect, or link aggregation
    # group (LAG).
    #
    # The Letter of Authorization - Connecting Facility Assignment (LOA-CFA)
    # is a document that is used when establishing your cross connect to AWS
    # at the colocation facility. For more information, see [Requesting
    # Cross Connects at AWS Direct Connect Locations][1] in the *AWS Direct
    # Connect User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html
    #
    # @option params [required, String] :connection_id
    #   The ID of a connection, LAG, or interconnect.
    #
    # @option params [String] :provider_name
    #   The name of the service provider who establishes connectivity on your
    #   behalf. If you specify this parameter, the LOA-CFA lists the provider
    #   name alongside your company name as the requester of the cross
    #   connect.
    #
    # @option params [String] :loa_content_type
    #   The standard media type for the LOA-CFA document. The only supported
    #   value is application/pdf.
    #
    # @return [Types::Loa] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Loa#loa_content #loa_content} => String
    #   * {Types::Loa#loa_content_type #loa_content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_loa({
    #     connection_id: "ConnectionId", # required
    #     provider_name: "ProviderName",
    #     loa_content_type: "application/pdf", # accepts application/pdf
    #   })
    #
    # @example Response structure
    #
    #   resp.loa_content #=> String
    #   resp.loa_content_type #=> String, one of "application/pdf"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLoa AWS API Documentation
    #
    # @overload describe_loa(params = {})
    # @param [Hash] params ({})
    def describe_loa(params = {}, options = {})
      req = build_request(:describe_loa, params)
      req.send_request(options)
    end

    # Lists the AWS Direct Connect locations in the current AWS Region.
    # These are the locations that can be selected when calling
    # CreateConnection or CreateInterconnect.
    #
    # @return [Types::Locations] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Locations#locations #locations} => Array&lt;Types::Location&gt;
    #
    # @example Response structure
    #
    #   resp.locations #=> Array
    #   resp.locations[0].location_code #=> String
    #   resp.locations[0].location_name #=> String
    #   resp.locations[0].region #=> String
    #   resp.locations[0].available_port_speeds #=> Array
    #   resp.locations[0].available_port_speeds[0] #=> String
    #   resp.locations[0].available_providers #=> Array
    #   resp.locations[0].available_providers[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLocations AWS API Documentation
    #
    # @overload describe_locations(params = {})
    # @param [Hash] params ({})
    def describe_locations(params = {}, options = {})
      req = build_request(:describe_locations, params)
      req.send_request(options)
    end

    # Describes the tags associated with the specified AWS Direct Connect
    # resources.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The Amazon Resource Names (ARNs) of the resources.
    #
    # @return [Types::DescribeTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsResponse#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     resource_arns: ["ResourceArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].resource_arn #=> String
    #   resp.resource_tags[0].tags #=> Array
    #   resp.resource_tags[0].tags[0].key #=> String
    #   resp.resource_tags[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Lists the virtual private gateways owned by the AWS account.
    #
    # You can create one or more AWS Direct Connect private virtual
    # interfaces linked to a virtual private gateway.
    #
    # @return [Types::VirtualGateways] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualGateways#virtual_gateways #virtual_gateways} => Array&lt;Types::VirtualGateway&gt;
    #
    # @example Response structure
    #
    #   resp.virtual_gateways #=> Array
    #   resp.virtual_gateways[0].virtual_gateway_id #=> String
    #   resp.virtual_gateways[0].virtual_gateway_state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeVirtualGateways AWS API Documentation
    #
    # @overload describe_virtual_gateways(params = {})
    # @param [Hash] params ({})
    def describe_virtual_gateways(params = {}, options = {})
      req = build_request(:describe_virtual_gateways, params)
      req.send_request(options)
    end

    # Displays all virtual interfaces for an AWS account. Virtual interfaces
    # deleted fewer than 15 minutes before you make the request are also
    # returned. If you specify a connection ID, only the virtual interfaces
    # associated with the connection are returned. If you specify a virtual
    # interface ID, then only a single virtual interface is returned.
    #
    # A virtual interface (VLAN) transmits the traffic between the AWS
    # Direct Connect location and the customer network.
    #
    # @option params [String] :connection_id
    #   The ID of the connection.
    #
    # @option params [String] :virtual_interface_id
    #   The ID of the virtual interface.
    #
    # @return [Types::VirtualInterfaces] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterfaces#virtual_interfaces #virtual_interfaces} => Array&lt;Types::VirtualInterface&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_interfaces({
    #     connection_id: "ConnectionId",
    #     virtual_interface_id: "VirtualInterfaceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interfaces #=> Array
    #   resp.virtual_interfaces[0].owner_account #=> String
    #   resp.virtual_interfaces[0].virtual_interface_id #=> String
    #   resp.virtual_interfaces[0].location #=> String
    #   resp.virtual_interfaces[0].connection_id #=> String
    #   resp.virtual_interfaces[0].virtual_interface_type #=> String
    #   resp.virtual_interfaces[0].virtual_interface_name #=> String
    #   resp.virtual_interfaces[0].vlan #=> Integer
    #   resp.virtual_interfaces[0].asn #=> Integer
    #   resp.virtual_interfaces[0].amazon_side_asn #=> Integer
    #   resp.virtual_interfaces[0].auth_key #=> String
    #   resp.virtual_interfaces[0].amazon_address #=> String
    #   resp.virtual_interfaces[0].customer_address #=> String
    #   resp.virtual_interfaces[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interfaces[0].virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.virtual_interfaces[0].customer_router_config #=> String
    #   resp.virtual_interfaces[0].mtu #=> Integer
    #   resp.virtual_interfaces[0].jumbo_frame_capable #=> Boolean
    #   resp.virtual_interfaces[0].virtual_gateway_id #=> String
    #   resp.virtual_interfaces[0].direct_connect_gateway_id #=> String
    #   resp.virtual_interfaces[0].route_filter_prefixes #=> Array
    #   resp.virtual_interfaces[0].route_filter_prefixes[0].cidr #=> String
    #   resp.virtual_interfaces[0].bgp_peers #=> Array
    #   resp.virtual_interfaces[0].bgp_peers[0].bgp_peer_id #=> String
    #   resp.virtual_interfaces[0].bgp_peers[0].asn #=> Integer
    #   resp.virtual_interfaces[0].bgp_peers[0].auth_key #=> String
    #   resp.virtual_interfaces[0].bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interfaces[0].bgp_peers[0].amazon_address #=> String
    #   resp.virtual_interfaces[0].bgp_peers[0].customer_address #=> String
    #   resp.virtual_interfaces[0].bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.virtual_interfaces[0].bgp_peers[0].bgp_status #=> String, one of "up", "down", "unknown"
    #   resp.virtual_interfaces[0].bgp_peers[0].aws_device_v2 #=> String
    #   resp.virtual_interfaces[0].region #=> String
    #   resp.virtual_interfaces[0].aws_device_v2 #=> String
    #   resp.virtual_interfaces[0].tags #=> Array
    #   resp.virtual_interfaces[0].tags[0].key #=> String
    #   resp.virtual_interfaces[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeVirtualInterfaces AWS API Documentation
    #
    # @overload describe_virtual_interfaces(params = {})
    # @param [Hash] params ({})
    def describe_virtual_interfaces(params = {}, options = {})
      req = build_request(:describe_virtual_interfaces, params)
      req.send_request(options)
    end

    # Disassociates a connection from a link aggregation group (LAG). The
    # connection is interrupted and re-established as a standalone
    # connection (the connection is not deleted; to delete the connection,
    # use the DeleteConnection request). If the LAG has associated virtual
    # interfaces or hosted connections, they remain associated with the LAG.
    # A disassociated connection owned by an AWS Direct Connect Partner is
    # automatically converted to an interconnect.
    #
    # If disassociating the connection would cause the LAG to fall below its
    # setting for minimum number of operational connections, the request
    # fails, except when it's the last member of the LAG. If all
    # connections are disassociated, the LAG continues to exist as an empty
    # LAG with no physical connections.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection.
    #
    # @option params [required, String] :lag_id
    #   The ID of the LAG.
    #
    # @return [Types::Connection] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Connection#owner_account #owner_account} => String
    #   * {Types::Connection#connection_id #connection_id} => String
    #   * {Types::Connection#connection_name #connection_name} => String
    #   * {Types::Connection#connection_state #connection_state} => String
    #   * {Types::Connection#region #region} => String
    #   * {Types::Connection#location #location} => String
    #   * {Types::Connection#bandwidth #bandwidth} => String
    #   * {Types::Connection#vlan #vlan} => Integer
    #   * {Types::Connection#partner_name #partner_name} => String
    #   * {Types::Connection#loa_issue_time #loa_issue_time} => Time
    #   * {Types::Connection#lag_id #lag_id} => String
    #   * {Types::Connection#aws_device #aws_device} => String
    #   * {Types::Connection#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::Connection#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Connection#has_logical_redundancy #has_logical_redundancy} => String
    #   * {Types::Connection#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Connection#provider_name #provider_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_connection_from_lag({
    #     connection_id: "ConnectionId", # required
    #     lag_id: "LagId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.connection_id #=> String
    #   resp.connection_name #=> String
    #   resp.connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.region #=> String
    #   resp.location #=> String
    #   resp.bandwidth #=> String
    #   resp.vlan #=> Integer
    #   resp.partner_name #=> String
    #   resp.loa_issue_time #=> Time
    #   resp.lag_id #=> String
    #   resp.aws_device #=> String
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.aws_device_v2 #=> String
    #   resp.has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DisassociateConnectionFromLag AWS API Documentation
    #
    # @overload disassociate_connection_from_lag(params = {})
    # @param [Hash] params ({})
    def disassociate_connection_from_lag(params = {}, options = {})
      req = build_request(:disassociate_connection_from_lag, params)
      req.send_request(options)
    end

    # Lists the virtual interface failover test history.
    #
    # @option params [String] :test_id
    #   The ID of the virtual interface failover test.
    #
    # @option params [String] :virtual_interface_id
    #   The ID of the virtual interface that was tested.
    #
    # @option params [Array<String>] :bgp_peers
    #   The BGP peers that were placed in the DOWN state during the virtual
    #   interface failover test.
    #
    # @option params [String] :status
    #   The status of the virtual interface failover test.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    #   If `MaxResults` is given a value larger than 100, only 100 results are
    #   returned.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListVirtualInterfaceTestHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVirtualInterfaceTestHistoryResponse#virtual_interface_test_history #virtual_interface_test_history} => Array&lt;Types::VirtualInterfaceTestHistory&gt;
    #   * {Types::ListVirtualInterfaceTestHistoryResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_interface_test_history({
    #     test_id: "TestId",
    #     virtual_interface_id: "VirtualInterfaceId",
    #     bgp_peers: ["BGPPeerId"],
    #     status: "FailureTestHistoryStatus",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface_test_history #=> Array
    #   resp.virtual_interface_test_history[0].test_id #=> String
    #   resp.virtual_interface_test_history[0].virtual_interface_id #=> String
    #   resp.virtual_interface_test_history[0].bgp_peers #=> Array
    #   resp.virtual_interface_test_history[0].bgp_peers[0] #=> String
    #   resp.virtual_interface_test_history[0].status #=> String
    #   resp.virtual_interface_test_history[0].owner_account #=> String
    #   resp.virtual_interface_test_history[0].test_duration_in_minutes #=> Integer
    #   resp.virtual_interface_test_history[0].start_time #=> Time
    #   resp.virtual_interface_test_history[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ListVirtualInterfaceTestHistory AWS API Documentation
    #
    # @overload list_virtual_interface_test_history(params = {})
    # @param [Hash] params ({})
    def list_virtual_interface_test_history(params = {}, options = {})
      req = build_request(:list_virtual_interface_test_history, params)
      req.send_request(options)
    end

    # Starts the virtual interface failover test that verifies your
    # configuration meets your resiliency requirements by placing the BGP
    # peering session in the DOWN state. You can then send traffic to verify
    # that there are no outages.
    #
    # You can run the test on public, private, transit, and hosted virtual
    # interfaces.
    #
    # You can use [ListVirtualInterfaceTestHistory][1] to view the virtual
    # interface test history.
    #
    # If you need to stop the test before the test interval completes, use
    # [StopBgpFailoverTest][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/directconnect/latest/APIReference/API_ListVirtualInterfaceTestHistory.html
    # [2]: https://docs.aws.amazon.com/directconnect/latest/APIReference/API_StopBgpFailoverTest.html
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual interface you want to test.
    #
    # @option params [Array<String>] :bgp_peers
    #   The BGP peers to place in the DOWN state.
    #
    # @option params [Integer] :test_duration_in_minutes
    #   The time in minutes that the virtual interface failover test will
    #   last.
    #
    #   Maximum value: 180 minutes (3 hours).
    #
    #   Default: 180 minutes (3 hours).
    #
    # @return [Types::StartBgpFailoverTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBgpFailoverTestResponse#virtual_interface_test #virtual_interface_test} => Types::VirtualInterfaceTestHistory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_bgp_failover_test({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     bgp_peers: ["BGPPeerId"],
    #     test_duration_in_minutes: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface_test.test_id #=> String
    #   resp.virtual_interface_test.virtual_interface_id #=> String
    #   resp.virtual_interface_test.bgp_peers #=> Array
    #   resp.virtual_interface_test.bgp_peers[0] #=> String
    #   resp.virtual_interface_test.status #=> String
    #   resp.virtual_interface_test.owner_account #=> String
    #   resp.virtual_interface_test.test_duration_in_minutes #=> Integer
    #   resp.virtual_interface_test.start_time #=> Time
    #   resp.virtual_interface_test.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/StartBgpFailoverTest AWS API Documentation
    #
    # @overload start_bgp_failover_test(params = {})
    # @param [Hash] params ({})
    def start_bgp_failover_test(params = {}, options = {})
      req = build_request(:start_bgp_failover_test, params)
      req.send_request(options)
    end

    # Stops the virtual interface failover test.
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual interface you no longer want to test.
    #
    # @return [Types::StopBgpFailoverTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopBgpFailoverTestResponse#virtual_interface_test #virtual_interface_test} => Types::VirtualInterfaceTestHistory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_bgp_failover_test({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_interface_test.test_id #=> String
    #   resp.virtual_interface_test.virtual_interface_id #=> String
    #   resp.virtual_interface_test.bgp_peers #=> Array
    #   resp.virtual_interface_test.bgp_peers[0] #=> String
    #   resp.virtual_interface_test.status #=> String
    #   resp.virtual_interface_test.owner_account #=> String
    #   resp.virtual_interface_test.test_duration_in_minutes #=> Integer
    #   resp.virtual_interface_test.start_time #=> Time
    #   resp.virtual_interface_test.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/StopBgpFailoverTest AWS API Documentation
    #
    # @overload stop_bgp_failover_test(params = {})
    # @param [Hash] params ({})
    def stop_bgp_failover_test(params = {}, options = {})
      req = build_request(:stop_bgp_failover_test, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified AWS Direct Connect resource.
    # Each resource can have a maximum of 50 tags.
    #
    # Each tag consists of a key and an optional value. If a tag with the
    # same key is already associated with the resource, this action updates
    # its value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified AWS Direct Connect
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys of the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified attributes of the Direct Connect gateway
    # association.
    #
    # Add or remove prefixes from the association.
    #
    # @option params [String] :association_id
    #   The ID of the Direct Connect gateway association.
    #
    # @option params [Array<Types::RouteFilterPrefix>] :add_allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to advertise to the Direct Connect gateway.
    #
    # @option params [Array<Types::RouteFilterPrefix>] :remove_allowed_prefixes_to_direct_connect_gateway
    #   The Amazon VPC prefixes to no longer advertise to the Direct Connect
    #   gateway.
    #
    # @return [Types::UpdateDirectConnectGatewayAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDirectConnectGatewayAssociationResult#direct_connect_gateway_association #direct_connect_gateway_association} => Types::DirectConnectGatewayAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_direct_connect_gateway_association({
    #     association_id: "DirectConnectGatewayAssociationId",
    #     add_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR",
    #       },
    #     ],
    #     remove_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: "CIDR",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.direct_connect_gateway_association.direct_connect_gateway_id #=> String
    #   resp.direct_connect_gateway_association.direct_connect_gateway_owner_account #=> String
    #   resp.direct_connect_gateway_association.association_state #=> String, one of "associating", "associated", "disassociating", "disassociated", "updating"
    #   resp.direct_connect_gateway_association.state_change_error #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.id #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.type #=> String, one of "virtualPrivateGateway", "transitGateway"
    #   resp.direct_connect_gateway_association.associated_gateway.owner_account #=> String
    #   resp.direct_connect_gateway_association.associated_gateway.region #=> String
    #   resp.direct_connect_gateway_association.association_id #=> String
    #   resp.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway #=> Array
    #   resp.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_region #=> String
    #   resp.direct_connect_gateway_association.virtual_gateway_owner_account #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UpdateDirectConnectGatewayAssociation AWS API Documentation
    #
    # @overload update_direct_connect_gateway_association(params = {})
    # @param [Hash] params ({})
    def update_direct_connect_gateway_association(params = {}, options = {})
      req = build_request(:update_direct_connect_gateway_association, params)
      req.send_request(options)
    end

    # Updates the attributes of the specified link aggregation group (LAG).
    #
    # You can update the following attributes:
    #
    # * The name of the LAG.
    #
    # * The value for the minimum number of connections that must be
    #   operational for the LAG itself to be operational.
    #
    # When you create a LAG, the default value for the minimum number of
    # operational connections is zero (0). If you update this value and the
    # number of operational connections falls below the specified value, the
    # LAG automatically goes down to avoid over-utilization of the remaining
    # connections. Adjust this value with care, as it could force the LAG
    # down if it is set higher than the current number of operational
    # connections.
    #
    # @option params [required, String] :lag_id
    #   The ID of the LAG.
    #
    # @option params [String] :lag_name
    #   The name of the LAG.
    #
    # @option params [Integer] :minimum_links
    #   The minimum number of physical connections that must be operational
    #   for the LAG itself to be operational.
    #
    # @return [Types::Lag] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Lag#connections_bandwidth #connections_bandwidth} => String
    #   * {Types::Lag#number_of_connections #number_of_connections} => Integer
    #   * {Types::Lag#lag_id #lag_id} => String
    #   * {Types::Lag#owner_account #owner_account} => String
    #   * {Types::Lag#lag_name #lag_name} => String
    #   * {Types::Lag#lag_state #lag_state} => String
    #   * {Types::Lag#location #location} => String
    #   * {Types::Lag#region #region} => String
    #   * {Types::Lag#minimum_links #minimum_links} => Integer
    #   * {Types::Lag#aws_device #aws_device} => String
    #   * {Types::Lag#aws_device_v2 #aws_device_v2} => String
    #   * {Types::Lag#connections #connections} => Array&lt;Types::Connection&gt;
    #   * {Types::Lag#allows_hosted_connections #allows_hosted_connections} => Boolean
    #   * {Types::Lag#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::Lag#has_logical_redundancy #has_logical_redundancy} => String
    #   * {Types::Lag#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Lag#provider_name #provider_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_lag({
    #     lag_id: "LagId", # required
    #     lag_name: "LagName",
    #     minimum_links: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.connections_bandwidth #=> String
    #   resp.number_of_connections #=> Integer
    #   resp.lag_id #=> String
    #   resp.owner_account #=> String
    #   resp.lag_name #=> String
    #   resp.lag_state #=> String, one of "requested", "pending", "available", "down", "deleting", "deleted", "unknown"
    #   resp.location #=> String
    #   resp.region #=> String
    #   resp.minimum_links #=> Integer
    #   resp.aws_device #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.connections #=> Array
    #   resp.connections[0].owner_account #=> String
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_name #=> String
    #   resp.connections[0].connection_state #=> String, one of "ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.connections[0].region #=> String
    #   resp.connections[0].location #=> String
    #   resp.connections[0].bandwidth #=> String
    #   resp.connections[0].vlan #=> Integer
    #   resp.connections[0].partner_name #=> String
    #   resp.connections[0].loa_issue_time #=> Time
    #   resp.connections[0].lag_id #=> String
    #   resp.connections[0].aws_device #=> String
    #   resp.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.connections[0].aws_device_v2 #=> String
    #   resp.connections[0].has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.connections[0].tags #=> Array
    #   resp.connections[0].tags[0].key #=> String
    #   resp.connections[0].tags[0].value #=> String
    #   resp.connections[0].provider_name #=> String
    #   resp.allows_hosted_connections #=> Boolean
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.has_logical_redundancy #=> String, one of "unknown", "yes", "no"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.provider_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UpdateLag AWS API Documentation
    #
    # @overload update_lag(params = {})
    # @param [Hash] params ({})
    def update_lag(params = {}, options = {})
      req = build_request(:update_lag, params)
      req.send_request(options)
    end

    # Updates the specified attributes of the specified virtual private
    # interface.
    #
    # Setting the MTU of a virtual interface to 9001 (jumbo frames) can
    # cause an update to the underlying physical connection if it wasn't
    # updated to support jumbo frames. Updating the connection disrupts
    # network connectivity for all virtual interfaces associated with the
    # connection for up to 30 seconds. To check whether your connection
    # supports jumbo frames, call DescribeConnections. To check whether your
    # virtual q interface supports jumbo frames, call
    # DescribeVirtualInterfaces.
    #
    # @option params [required, String] :virtual_interface_id
    #   The ID of the virtual private interface.
    #
    # @option params [Integer] :mtu
    #   The maximum transmission unit (MTU), in bytes. The supported values
    #   are 1500 and 9001. The default value is 1500.
    #
    # @return [Types::VirtualInterface] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VirtualInterface#owner_account #owner_account} => String
    #   * {Types::VirtualInterface#virtual_interface_id #virtual_interface_id} => String
    #   * {Types::VirtualInterface#location #location} => String
    #   * {Types::VirtualInterface#connection_id #connection_id} => String
    #   * {Types::VirtualInterface#virtual_interface_type #virtual_interface_type} => String
    #   * {Types::VirtualInterface#virtual_interface_name #virtual_interface_name} => String
    #   * {Types::VirtualInterface#vlan #vlan} => Integer
    #   * {Types::VirtualInterface#asn #asn} => Integer
    #   * {Types::VirtualInterface#amazon_side_asn #amazon_side_asn} => Integer
    #   * {Types::VirtualInterface#auth_key #auth_key} => String
    #   * {Types::VirtualInterface#amazon_address #amazon_address} => String
    #   * {Types::VirtualInterface#customer_address #customer_address} => String
    #   * {Types::VirtualInterface#address_family #address_family} => String
    #   * {Types::VirtualInterface#virtual_interface_state #virtual_interface_state} => String
    #   * {Types::VirtualInterface#customer_router_config #customer_router_config} => String
    #   * {Types::VirtualInterface#mtu #mtu} => Integer
    #   * {Types::VirtualInterface#jumbo_frame_capable #jumbo_frame_capable} => Boolean
    #   * {Types::VirtualInterface#virtual_gateway_id #virtual_gateway_id} => String
    #   * {Types::VirtualInterface#direct_connect_gateway_id #direct_connect_gateway_id} => String
    #   * {Types::VirtualInterface#route_filter_prefixes #route_filter_prefixes} => Array&lt;Types::RouteFilterPrefix&gt;
    #   * {Types::VirtualInterface#bgp_peers #bgp_peers} => Array&lt;Types::BGPPeer&gt;
    #   * {Types::VirtualInterface#region #region} => String
    #   * {Types::VirtualInterface#aws_device_v2 #aws_device_v2} => String
    #   * {Types::VirtualInterface#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_virtual_interface_attributes({
    #     virtual_interface_id: "VirtualInterfaceId", # required
    #     mtu: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_account #=> String
    #   resp.virtual_interface_id #=> String
    #   resp.location #=> String
    #   resp.connection_id #=> String
    #   resp.virtual_interface_type #=> String
    #   resp.virtual_interface_name #=> String
    #   resp.vlan #=> Integer
    #   resp.asn #=> Integer
    #   resp.amazon_side_asn #=> Integer
    #   resp.auth_key #=> String
    #   resp.amazon_address #=> String
    #   resp.customer_address #=> String
    #   resp.address_family #=> String, one of "ipv4", "ipv6"
    #   resp.virtual_interface_state #=> String, one of "confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"
    #   resp.customer_router_config #=> String
    #   resp.mtu #=> Integer
    #   resp.jumbo_frame_capable #=> Boolean
    #   resp.virtual_gateway_id #=> String
    #   resp.direct_connect_gateway_id #=> String
    #   resp.route_filter_prefixes #=> Array
    #   resp.route_filter_prefixes[0].cidr #=> String
    #   resp.bgp_peers #=> Array
    #   resp.bgp_peers[0].bgp_peer_id #=> String
    #   resp.bgp_peers[0].asn #=> Integer
    #   resp.bgp_peers[0].auth_key #=> String
    #   resp.bgp_peers[0].address_family #=> String, one of "ipv4", "ipv6"
    #   resp.bgp_peers[0].amazon_address #=> String
    #   resp.bgp_peers[0].customer_address #=> String
    #   resp.bgp_peers[0].bgp_peer_state #=> String, one of "verifying", "pending", "available", "deleting", "deleted"
    #   resp.bgp_peers[0].bgp_status #=> String, one of "up", "down", "unknown"
    #   resp.bgp_peers[0].aws_device_v2 #=> String
    #   resp.region #=> String
    #   resp.aws_device_v2 #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UpdateVirtualInterfaceAttributes AWS API Documentation
    #
    # @overload update_virtual_interface_attributes(params = {})
    # @param [Hash] params ({})
    def update_virtual_interface_attributes(params = {}, options = {})
      req = build_request(:update_virtual_interface_attributes, params)
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
      context[:gem_name] = 'aws-sdk-directconnect'
      context[:gem_version] = '1.30.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
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
