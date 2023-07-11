# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:networkmanager)

module Aws::NetworkManager
  # An API client for NetworkManager.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::NetworkManager::Client.new(
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

    @identifier = :networkmanager

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
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::NetworkManager::Plugins::Endpoints)

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
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
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
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
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
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::NetworkManager::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::NetworkManager::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
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
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
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

    # Accepts a core network attachment request.
    #
    # Once the attachment request is accepted by a core network owner, the
    # attachment is created and connected to a core network.
    #
    # @option params [required, String] :attachment_id
    #   The ID of the attachment.
    #
    # @return [Types::AcceptAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptAttachmentResponse#attachment #attachment} => Types::Attachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_attachment({
    #     attachment_id: "AttachmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment.core_network_id #=> String
    #   resp.attachment.core_network_arn #=> String
    #   resp.attachment.attachment_id #=> String
    #   resp.attachment.owner_account_id #=> String
    #   resp.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.attachment.edge_location #=> String
    #   resp.attachment.resource_arn #=> String
    #   resp.attachment.attachment_policy_rule_number #=> Integer
    #   resp.attachment.segment_name #=> String
    #   resp.attachment.tags #=> Array
    #   resp.attachment.tags[0].key #=> String
    #   resp.attachment.tags[0].value #=> String
    #   resp.attachment.proposed_segment_change.tags #=> Array
    #   resp.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.attachment.proposed_segment_change.segment_name #=> String
    #   resp.attachment.created_at #=> Time
    #   resp.attachment.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AcceptAttachment AWS API Documentation
    #
    # @overload accept_attachment(params = {})
    # @param [Hash] params ({})
    def accept_attachment(params = {}, options = {})
      req = build_request(:accept_attachment, params)
      req.send_request(options)
    end

    # Associates a core network Connect peer with a device and optionally,
    # with a link.
    #
    # If you specify a link, it must be associated with the specified
    # device. You can only associate core network Connect peers that have
    # been created on a core network Connect attachment on a core network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of your global network.
    #
    # @option params [required, String] :connect_peer_id
    #   The ID of the Connect peer.
    #
    # @option params [required, String] :device_id
    #   The ID of the device.
    #
    # @option params [String] :link_id
    #   The ID of the link.
    #
    # @return [Types::AssociateConnectPeerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateConnectPeerResponse#connect_peer_association #connect_peer_association} => Types::ConnectPeerAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_connect_peer({
    #     global_network_id: "GlobalNetworkId", # required
    #     connect_peer_id: "ConnectPeerId", # required
    #     device_id: "DeviceId", # required
    #     link_id: "LinkId",
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_peer_association.connect_peer_id #=> String
    #   resp.connect_peer_association.global_network_id #=> String
    #   resp.connect_peer_association.device_id #=> String
    #   resp.connect_peer_association.link_id #=> String
    #   resp.connect_peer_association.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateConnectPeer AWS API Documentation
    #
    # @overload associate_connect_peer(params = {})
    # @param [Hash] params ({})
    def associate_connect_peer(params = {}, options = {})
      req = build_request(:associate_connect_peer, params)
      req.send_request(options)
    end

    # Associates a customer gateway with a device and optionally, with a
    # link. If you specify a link, it must be associated with the specified
    # device.
    #
    # You can only associate customer gateways that are connected to a VPN
    # attachment on a transit gateway or core network registered in your
    # global network. When you register a transit gateway or core network,
    # customer gateways that are connected to the transit gateway are
    # automatically included in the global network. To list customer
    # gateways that are connected to a transit gateway, use the
    # [DescribeVpnConnections][1] EC2 API and filter by
    # `transit-gateway-id`.
    #
    # You cannot associate a customer gateway with more than one device and
    # link.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html
    #
    # @option params [required, String] :customer_gateway_arn
    #   The Amazon Resource Name (ARN) of the customer gateway.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :device_id
    #   The ID of the device.
    #
    # @option params [String] :link_id
    #   The ID of the link.
    #
    # @return [Types::AssociateCustomerGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateCustomerGatewayResponse#customer_gateway_association #customer_gateway_association} => Types::CustomerGatewayAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_customer_gateway({
    #     customer_gateway_arn: "CustomerGatewayArn", # required
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #     link_id: "LinkId",
    #   })
    #
    # @example Response structure
    #
    #   resp.customer_gateway_association.customer_gateway_arn #=> String
    #   resp.customer_gateway_association.global_network_id #=> String
    #   resp.customer_gateway_association.device_id #=> String
    #   resp.customer_gateway_association.link_id #=> String
    #   resp.customer_gateway_association.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateCustomerGateway AWS API Documentation
    #
    # @overload associate_customer_gateway(params = {})
    # @param [Hash] params ({})
    def associate_customer_gateway(params = {}, options = {})
      req = build_request(:associate_customer_gateway, params)
      req.send_request(options)
    end

    # Associates a link to a device. A device can be associated to multiple
    # links and a link can be associated to multiple devices. The device and
    # link must be in the same global network and the same site.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :device_id
    #   The ID of the device.
    #
    # @option params [required, String] :link_id
    #   The ID of the link.
    #
    # @return [Types::AssociateLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateLinkResponse#link_association #link_association} => Types::LinkAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_link({
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #     link_id: "LinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.link_association.global_network_id #=> String
    #   resp.link_association.device_id #=> String
    #   resp.link_association.link_id #=> String
    #   resp.link_association.link_association_state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateLink AWS API Documentation
    #
    # @overload associate_link(params = {})
    # @param [Hash] params ({})
    def associate_link(params = {}, options = {})
      req = build_request(:associate_link, params)
      req.send_request(options)
    end

    # Associates a transit gateway Connect peer with a device, and
    # optionally, with a link. If you specify a link, it must be associated
    # with the specified device.
    #
    # You can only associate transit gateway Connect peers that have been
    # created on a transit gateway that's registered in your global
    # network.
    #
    # You cannot associate a transit gateway Connect peer with more than one
    # device and link.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :transit_gateway_connect_peer_arn
    #   The Amazon Resource Name (ARN) of the Connect peer.
    #
    # @option params [required, String] :device_id
    #   The ID of the device.
    #
    # @option params [String] :link_id
    #   The ID of the link.
    #
    # @return [Types::AssociateTransitGatewayConnectPeerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateTransitGatewayConnectPeerResponse#transit_gateway_connect_peer_association #transit_gateway_connect_peer_association} => Types::TransitGatewayConnectPeerAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_transit_gateway_connect_peer({
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_connect_peer_arn: "TransitGatewayConnectPeerArn", # required
    #     device_id: "DeviceId", # required
    #     link_id: "LinkId",
    #   })
    #
    # @example Response structure
    #
    #   resp.transit_gateway_connect_peer_association.transit_gateway_connect_peer_arn #=> String
    #   resp.transit_gateway_connect_peer_association.global_network_id #=> String
    #   resp.transit_gateway_connect_peer_association.device_id #=> String
    #   resp.transit_gateway_connect_peer_association.link_id #=> String
    #   resp.transit_gateway_connect_peer_association.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/AssociateTransitGatewayConnectPeer AWS API Documentation
    #
    # @overload associate_transit_gateway_connect_peer(params = {})
    # @param [Hash] params ({})
    def associate_transit_gateway_connect_peer(params = {}, options = {})
      req = build_request(:associate_transit_gateway_connect_peer, params)
      req.send_request(options)
    end

    # Creates a core network Connect attachment from a specified core
    # network attachment.
    #
    # A core network Connect attachment is a GRE-based tunnel attachment
    # that you can use to establish a connection between a core network and
    # an appliance. A core network Connect attachment uses an existing VPC
    # attachment as the underlying transport mechanism.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network where you want to create the attachment.
    #
    # @option params [required, String] :edge_location
    #   The Region where the edge is located.
    #
    # @option params [required, String] :transport_attachment_id
    #   The ID of the attachment between the two connections.
    #
    # @option params [required, Types::ConnectAttachmentOptions] :options
    #   Options for creating an attachment.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The list of key-value tags associated with the request.
    #
    # @option params [String] :client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateConnectAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectAttachmentResponse#connect_attachment #connect_attachment} => Types::ConnectAttachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connect_attachment({
    #     core_network_id: "CoreNetworkId", # required
    #     edge_location: "ExternalRegionCode", # required
    #     transport_attachment_id: "AttachmentId", # required
    #     options: { # required
    #       protocol: "GRE", # accepts GRE
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_attachment.attachment.core_network_id #=> String
    #   resp.connect_attachment.attachment.core_network_arn #=> String
    #   resp.connect_attachment.attachment.attachment_id #=> String
    #   resp.connect_attachment.attachment.owner_account_id #=> String
    #   resp.connect_attachment.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.connect_attachment.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.connect_attachment.attachment.edge_location #=> String
    #   resp.connect_attachment.attachment.resource_arn #=> String
    #   resp.connect_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.connect_attachment.attachment.segment_name #=> String
    #   resp.connect_attachment.attachment.tags #=> Array
    #   resp.connect_attachment.attachment.tags[0].key #=> String
    #   resp.connect_attachment.attachment.tags[0].value #=> String
    #   resp.connect_attachment.attachment.proposed_segment_change.tags #=> Array
    #   resp.connect_attachment.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.connect_attachment.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.connect_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.connect_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.connect_attachment.attachment.created_at #=> Time
    #   resp.connect_attachment.attachment.updated_at #=> Time
    #   resp.connect_attachment.transport_attachment_id #=> String
    #   resp.connect_attachment.options.protocol #=> String, one of "GRE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateConnectAttachment AWS API Documentation
    #
    # @overload create_connect_attachment(params = {})
    # @param [Hash] params ({})
    def create_connect_attachment(params = {}, options = {})
      req = build_request(:create_connect_attachment, params)
      req.send_request(options)
    end

    # Creates a core network Connect peer for a specified core network
    # connect attachment between a core network and an appliance. The peer
    # address and transit gateway address must be the same IP address family
    # (IPv4 or IPv6).
    #
    # @option params [required, String] :connect_attachment_id
    #   The ID of the connection attachment.
    #
    # @option params [String] :core_network_address
    #   A Connect peer core network address.
    #
    # @option params [required, String] :peer_address
    #   The Connect peer address.
    #
    # @option params [Types::BgpOptions] :bgp_options
    #   The Connect peer BGP options.
    #
    # @option params [required, Array<String>] :inside_cidr_blocks
    #   The inside IP addresses used for BGP peering.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with the peer request.
    #
    # @option params [String] :client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateConnectPeerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectPeerResponse#connect_peer #connect_peer} => Types::ConnectPeer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connect_peer({
    #     connect_attachment_id: "AttachmentId", # required
    #     core_network_address: "IPAddress",
    #     peer_address: "IPAddress", # required
    #     bgp_options: {
    #       peer_asn: 1,
    #     },
    #     inside_cidr_blocks: ["ConstrainedString"], # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_peer.core_network_id #=> String
    #   resp.connect_peer.connect_attachment_id #=> String
    #   resp.connect_peer.connect_peer_id #=> String
    #   resp.connect_peer.edge_location #=> String
    #   resp.connect_peer.state #=> String, one of "CREATING", "FAILED", "AVAILABLE", "DELETING"
    #   resp.connect_peer.created_at #=> Time
    #   resp.connect_peer.configuration.core_network_address #=> String
    #   resp.connect_peer.configuration.peer_address #=> String
    #   resp.connect_peer.configuration.inside_cidr_blocks #=> Array
    #   resp.connect_peer.configuration.inside_cidr_blocks[0] #=> String
    #   resp.connect_peer.configuration.protocol #=> String, one of "GRE"
    #   resp.connect_peer.configuration.bgp_configurations #=> Array
    #   resp.connect_peer.configuration.bgp_configurations[0].core_network_asn #=> Integer
    #   resp.connect_peer.configuration.bgp_configurations[0].peer_asn #=> Integer
    #   resp.connect_peer.configuration.bgp_configurations[0].core_network_address #=> String
    #   resp.connect_peer.configuration.bgp_configurations[0].peer_address #=> String
    #   resp.connect_peer.tags #=> Array
    #   resp.connect_peer.tags[0].key #=> String
    #   resp.connect_peer.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateConnectPeer AWS API Documentation
    #
    # @overload create_connect_peer(params = {})
    # @param [Hash] params ({})
    def create_connect_peer(params = {}, options = {})
      req = build_request(:create_connect_peer, params)
      req.send_request(options)
    end

    # Creates a connection between two devices. The devices can be a
    # physical or virtual appliance that connects to a third-party appliance
    # in a VPC, or a physical appliance that connects to another physical
    # appliance in an on-premises network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :device_id
    #   The ID of the first device in the connection.
    #
    # @option params [required, String] :connected_device_id
    #   The ID of the second device in the connection.
    #
    # @option params [String] :link_id
    #   The ID of the link for the first device.
    #
    # @option params [String] :connected_link_id
    #   The ID of the link for the second device.
    #
    # @option params [String] :description
    #   A description of the connection.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to apply to the resource during creation.
    #
    # @return [Types::CreateConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectionResponse#connection #connection} => Types::Connection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection({
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #     connected_device_id: "DeviceId", # required
    #     link_id: "LinkId",
    #     connected_link_id: "LinkId",
    #     description: "ConstrainedString",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.connection_id #=> String
    #   resp.connection.connection_arn #=> String
    #   resp.connection.global_network_id #=> String
    #   resp.connection.device_id #=> String
    #   resp.connection.connected_device_id #=> String
    #   resp.connection.link_id #=> String
    #   resp.connection.connected_link_id #=> String
    #   resp.connection.description #=> String
    #   resp.connection.created_at #=> Time
    #   resp.connection.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.connection.tags #=> Array
    #   resp.connection.tags[0].key #=> String
    #   resp.connection.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateConnection AWS API Documentation
    #
    # @overload create_connection(params = {})
    # @param [Hash] params ({})
    def create_connection(params = {}, options = {})
      req = build_request(:create_connection, params)
      req.send_request(options)
    end

    # Creates a core network as part of your global network, and optionally,
    # with a core network policy.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network that a core network will be a part of.
    #
    # @option params [String] :description
    #   The description of a core network.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value tags associated with a core network request.
    #
    # @option params [String] :policy_document
    #   The policy document for creating a core network.
    #
    # @option params [String] :client_token
    #   The client token associated with a core network request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateCoreNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCoreNetworkResponse#core_network #core_network} => Types::CoreNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_core_network({
    #     global_network_id: "GlobalNetworkId", # required
    #     description: "ConstrainedString",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     policy_document: "CoreNetworkPolicyDocument",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.core_network.global_network_id #=> String
    #   resp.core_network.core_network_id #=> String
    #   resp.core_network.core_network_arn #=> String
    #   resp.core_network.description #=> String
    #   resp.core_network.created_at #=> Time
    #   resp.core_network.state #=> String, one of "CREATING", "UPDATING", "AVAILABLE", "DELETING"
    #   resp.core_network.segments #=> Array
    #   resp.core_network.segments[0].name #=> String
    #   resp.core_network.segments[0].edge_locations #=> Array
    #   resp.core_network.segments[0].edge_locations[0] #=> String
    #   resp.core_network.segments[0].shared_segments #=> Array
    #   resp.core_network.segments[0].shared_segments[0] #=> String
    #   resp.core_network.edges #=> Array
    #   resp.core_network.edges[0].edge_location #=> String
    #   resp.core_network.edges[0].asn #=> Integer
    #   resp.core_network.edges[0].inside_cidr_blocks #=> Array
    #   resp.core_network.edges[0].inside_cidr_blocks[0] #=> String
    #   resp.core_network.tags #=> Array
    #   resp.core_network.tags[0].key #=> String
    #   resp.core_network.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateCoreNetwork AWS API Documentation
    #
    # @overload create_core_network(params = {})
    # @param [Hash] params ({})
    def create_core_network(params = {}, options = {})
      req = build_request(:create_core_network, params)
      req.send_request(options)
    end

    # Creates a new device in a global network. If you specify both a site
    # ID and a location, the location of the site is used for visualization
    # in the Network Manager console.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [Types::AWSLocation] :aws_location
    #   The Amazon Web Services location of the device, if applicable. For an
    #   on-premises device, you can omit this parameter.
    #
    # @option params [String] :description
    #   A description of the device.
    #
    #   Constraints: Maximum length of 256 characters.
    #
    # @option params [String] :type
    #   The type of the device.
    #
    # @option params [String] :vendor
    #   The vendor of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #
    # @option params [String] :model
    #   The model of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #
    # @option params [String] :serial_number
    #   The serial number of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #
    # @option params [Types::Location] :location
    #   The location of the device.
    #
    # @option params [String] :site_id
    #   The ID of the site.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to apply to the resource during creation.
    #
    # @return [Types::CreateDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeviceResponse#device #device} => Types::Device
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_device({
    #     global_network_id: "GlobalNetworkId", # required
    #     aws_location: {
    #       zone: "ConstrainedString",
    #       subnet_arn: "SubnetArn",
    #     },
    #     description: "ConstrainedString",
    #     type: "ConstrainedString",
    #     vendor: "ConstrainedString",
    #     model: "ConstrainedString",
    #     serial_number: "ConstrainedString",
    #     location: {
    #       address: "ConstrainedString",
    #       latitude: "ConstrainedString",
    #       longitude: "ConstrainedString",
    #     },
    #     site_id: "SiteId",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_id #=> String
    #   resp.device.device_arn #=> String
    #   resp.device.global_network_id #=> String
    #   resp.device.aws_location.zone #=> String
    #   resp.device.aws_location.subnet_arn #=> String
    #   resp.device.description #=> String
    #   resp.device.type #=> String
    #   resp.device.vendor #=> String
    #   resp.device.model #=> String
    #   resp.device.serial_number #=> String
    #   resp.device.location.address #=> String
    #   resp.device.location.latitude #=> String
    #   resp.device.location.longitude #=> String
    #   resp.device.site_id #=> String
    #   resp.device.created_at #=> Time
    #   resp.device.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.device.tags #=> Array
    #   resp.device.tags[0].key #=> String
    #   resp.device.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateDevice AWS API Documentation
    #
    # @overload create_device(params = {})
    # @param [Hash] params ({})
    def create_device(params = {}, options = {})
      req = build_request(:create_device, params)
      req.send_request(options)
    end

    # Creates a new, empty global network.
    #
    # @option params [String] :description
    #   A description of the global network.
    #
    #   Constraints: Maximum length of 256 characters.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to apply to the resource during creation.
    #
    # @return [Types::CreateGlobalNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGlobalNetworkResponse#global_network #global_network} => Types::GlobalNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_global_network({
    #     description: "ConstrainedString",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.global_network.global_network_id #=> String
    #   resp.global_network.global_network_arn #=> String
    #   resp.global_network.description #=> String
    #   resp.global_network.created_at #=> Time
    #   resp.global_network.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.global_network.tags #=> Array
    #   resp.global_network.tags[0].key #=> String
    #   resp.global_network.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateGlobalNetwork AWS API Documentation
    #
    # @overload create_global_network(params = {})
    # @param [Hash] params ({})
    def create_global_network(params = {}, options = {})
      req = build_request(:create_global_network, params)
      req.send_request(options)
    end

    # Creates a new link for a specified site.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [String] :description
    #   A description of the link.
    #
    #   Constraints: Maximum length of 256 characters.
    #
    # @option params [String] :type
    #   The type of the link.
    #
    #   Constraints: Maximum length of 128 characters. Cannot include the
    #   following characters: \| \\ ^
    #
    # @option params [required, Types::Bandwidth] :bandwidth
    #   The upload speed and download speed in Mbps.
    #
    # @option params [String] :provider
    #   The provider of the link.
    #
    #   Constraints: Maximum length of 128 characters. Cannot include the
    #   following characters: \| \\ ^
    #
    # @option params [required, String] :site_id
    #   The ID of the site.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to apply to the resource during creation.
    #
    # @return [Types::CreateLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLinkResponse#link #link} => Types::Link
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_link({
    #     global_network_id: "GlobalNetworkId", # required
    #     description: "ConstrainedString",
    #     type: "ConstrainedString",
    #     bandwidth: { # required
    #       upload_speed: 1,
    #       download_speed: 1,
    #     },
    #     provider: "ConstrainedString",
    #     site_id: "SiteId", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.link.link_id #=> String
    #   resp.link.link_arn #=> String
    #   resp.link.global_network_id #=> String
    #   resp.link.site_id #=> String
    #   resp.link.description #=> String
    #   resp.link.type #=> String
    #   resp.link.bandwidth.upload_speed #=> Integer
    #   resp.link.bandwidth.download_speed #=> Integer
    #   resp.link.provider #=> String
    #   resp.link.created_at #=> Time
    #   resp.link.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.link.tags #=> Array
    #   resp.link.tags[0].key #=> String
    #   resp.link.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateLink AWS API Documentation
    #
    # @overload create_link(params = {})
    # @param [Hash] params ({})
    def create_link(params = {}, options = {})
      req = build_request(:create_link, params)
      req.send_request(options)
    end

    # Creates a new site in a global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [String] :description
    #   A description of your site.
    #
    #   Constraints: Maximum length of 256 characters.
    #
    # @option params [Types::Location] :location
    #   The site location. This information is used for visualization in the
    #   Network Manager console. If you specify the address, the latitude and
    #   longitude are automatically calculated.
    #
    #   * `Address`: The physical address of the site.
    #
    #   * `Latitude`: The latitude of the site.
    #
    #   * `Longitude`: The longitude of the site.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to apply to the resource during creation.
    #
    # @return [Types::CreateSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSiteResponse#site #site} => Types::Site
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_site({
    #     global_network_id: "GlobalNetworkId", # required
    #     description: "ConstrainedString",
    #     location: {
    #       address: "ConstrainedString",
    #       latitude: "ConstrainedString",
    #       longitude: "ConstrainedString",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.site.site_id #=> String
    #   resp.site.site_arn #=> String
    #   resp.site.global_network_id #=> String
    #   resp.site.description #=> String
    #   resp.site.location.address #=> String
    #   resp.site.location.latitude #=> String
    #   resp.site.location.longitude #=> String
    #   resp.site.created_at #=> Time
    #   resp.site.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.site.tags #=> Array
    #   resp.site.tags[0].key #=> String
    #   resp.site.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateSite AWS API Documentation
    #
    # @overload create_site(params = {})
    # @param [Hash] params ({})
    def create_site(params = {}, options = {})
      req = build_request(:create_site, params)
      req.send_request(options)
    end

    # Creates an Amazon Web Services site-to-site VPN attachment on an edge
    # location of a core network.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network where you're creating a site-to-site VPN
    #   attachment.
    #
    # @option params [required, String] :vpn_connection_arn
    #   The ARN identifying the VPN attachment.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with the request.
    #
    # @option params [String] :client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSiteToSiteVpnAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSiteToSiteVpnAttachmentResponse#site_to_site_vpn_attachment #site_to_site_vpn_attachment} => Types::SiteToSiteVpnAttachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_site_to_site_vpn_attachment({
    #     core_network_id: "CoreNetworkId", # required
    #     vpn_connection_arn: "VpnConnectionArn", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.site_to_site_vpn_attachment.attachment.core_network_id #=> String
    #   resp.site_to_site_vpn_attachment.attachment.core_network_arn #=> String
    #   resp.site_to_site_vpn_attachment.attachment.attachment_id #=> String
    #   resp.site_to_site_vpn_attachment.attachment.owner_account_id #=> String
    #   resp.site_to_site_vpn_attachment.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.site_to_site_vpn_attachment.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.site_to_site_vpn_attachment.attachment.edge_location #=> String
    #   resp.site_to_site_vpn_attachment.attachment.resource_arn #=> String
    #   resp.site_to_site_vpn_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.site_to_site_vpn_attachment.attachment.segment_name #=> String
    #   resp.site_to_site_vpn_attachment.attachment.tags #=> Array
    #   resp.site_to_site_vpn_attachment.attachment.tags[0].key #=> String
    #   resp.site_to_site_vpn_attachment.attachment.tags[0].value #=> String
    #   resp.site_to_site_vpn_attachment.attachment.proposed_segment_change.tags #=> Array
    #   resp.site_to_site_vpn_attachment.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.site_to_site_vpn_attachment.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.site_to_site_vpn_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.site_to_site_vpn_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.site_to_site_vpn_attachment.attachment.created_at #=> Time
    #   resp.site_to_site_vpn_attachment.attachment.updated_at #=> Time
    #   resp.site_to_site_vpn_attachment.vpn_connection_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateSiteToSiteVpnAttachment AWS API Documentation
    #
    # @overload create_site_to_site_vpn_attachment(params = {})
    # @param [Hash] params ({})
    def create_site_to_site_vpn_attachment(params = {}, options = {})
      req = build_request(:create_site_to_site_vpn_attachment, params)
      req.send_request(options)
    end

    # Creates a transit gateway peering connection.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [required, String] :transit_gateway_arn
    #   The ARN of the transit gateway for the peering request.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The list of key-value tags associated with the request.
    #
    # @option params [String] :client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateTransitGatewayPeeringResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTransitGatewayPeeringResponse#transit_gateway_peering #transit_gateway_peering} => Types::TransitGatewayPeering
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_transit_gateway_peering({
    #     core_network_id: "CoreNetworkId", # required
    #     transit_gateway_arn: "TransitGatewayArn", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.transit_gateway_peering.peering.core_network_id #=> String
    #   resp.transit_gateway_peering.peering.core_network_arn #=> String
    #   resp.transit_gateway_peering.peering.peering_id #=> String
    #   resp.transit_gateway_peering.peering.owner_account_id #=> String
    #   resp.transit_gateway_peering.peering.peering_type #=> String, one of "TRANSIT_GATEWAY"
    #   resp.transit_gateway_peering.peering.state #=> String, one of "CREATING", "FAILED", "AVAILABLE", "DELETING"
    #   resp.transit_gateway_peering.peering.edge_location #=> String
    #   resp.transit_gateway_peering.peering.resource_arn #=> String
    #   resp.transit_gateway_peering.peering.tags #=> Array
    #   resp.transit_gateway_peering.peering.tags[0].key #=> String
    #   resp.transit_gateway_peering.peering.tags[0].value #=> String
    #   resp.transit_gateway_peering.peering.created_at #=> Time
    #   resp.transit_gateway_peering.transit_gateway_arn #=> String
    #   resp.transit_gateway_peering.transit_gateway_peering_attachment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateTransitGatewayPeering AWS API Documentation
    #
    # @overload create_transit_gateway_peering(params = {})
    # @param [Hash] params ({})
    def create_transit_gateway_peering(params = {}, options = {})
      req = build_request(:create_transit_gateway_peering, params)
      req.send_request(options)
    end

    # Creates a transit gateway route table attachment.
    #
    # @option params [required, String] :peering_id
    #   The ID of the peer for the
    #
    # @option params [required, String] :transit_gateway_route_table_arn
    #   The ARN of the transit gateway route table for the attachment request.
    #   For example, `"TransitGatewayRouteTableArn":
    #   "arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456"`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The list of key-value tags associated with the request.
    #
    # @option params [String] :client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateTransitGatewayRouteTableAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTransitGatewayRouteTableAttachmentResponse#transit_gateway_route_table_attachment #transit_gateway_route_table_attachment} => Types::TransitGatewayRouteTableAttachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_transit_gateway_route_table_attachment({
    #     peering_id: "PeeringId", # required
    #     transit_gateway_route_table_arn: "TransitGatewayRouteTableArn", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.transit_gateway_route_table_attachment.attachment.core_network_id #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.core_network_arn #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.attachment_id #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.owner_account_id #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.transit_gateway_route_table_attachment.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.transit_gateway_route_table_attachment.attachment.edge_location #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.resource_arn #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.transit_gateway_route_table_attachment.attachment.segment_name #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.tags #=> Array
    #   resp.transit_gateway_route_table_attachment.attachment.tags[0].key #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.tags[0].value #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.proposed_segment_change.tags #=> Array
    #   resp.transit_gateway_route_table_attachment.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.transit_gateway_route_table_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.created_at #=> Time
    #   resp.transit_gateway_route_table_attachment.attachment.updated_at #=> Time
    #   resp.transit_gateway_route_table_attachment.peering_id #=> String
    #   resp.transit_gateway_route_table_attachment.transit_gateway_route_table_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateTransitGatewayRouteTableAttachment AWS API Documentation
    #
    # @overload create_transit_gateway_route_table_attachment(params = {})
    # @param [Hash] params ({})
    def create_transit_gateway_route_table_attachment(params = {}, options = {})
      req = build_request(:create_transit_gateway_route_table_attachment, params)
      req.send_request(options)
    end

    # Creates a VPC attachment on an edge location of a core network.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network for the VPC attachment.
    #
    # @option params [required, String] :vpc_arn
    #   The ARN of the VPC.
    #
    # @option params [required, Array<String>] :subnet_arns
    #   The subnet ARN of the VPC attachment.
    #
    # @option params [Types::VpcOptions] :options
    #   Options for the VPC attachment.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The key-value tags associated with the request.
    #
    # @option params [String] :client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateVpcAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpcAttachmentResponse#vpc_attachment #vpc_attachment} => Types::VpcAttachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_attachment({
    #     core_network_id: "CoreNetworkId", # required
    #     vpc_arn: "VpcArn", # required
    #     subnet_arns: ["SubnetArn"], # required
    #     options: {
    #       ipv_6_support: false,
    #       appliance_mode_support: false,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_attachment.attachment.core_network_id #=> String
    #   resp.vpc_attachment.attachment.core_network_arn #=> String
    #   resp.vpc_attachment.attachment.attachment_id #=> String
    #   resp.vpc_attachment.attachment.owner_account_id #=> String
    #   resp.vpc_attachment.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.vpc_attachment.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.vpc_attachment.attachment.edge_location #=> String
    #   resp.vpc_attachment.attachment.resource_arn #=> String
    #   resp.vpc_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.vpc_attachment.attachment.segment_name #=> String
    #   resp.vpc_attachment.attachment.tags #=> Array
    #   resp.vpc_attachment.attachment.tags[0].key #=> String
    #   resp.vpc_attachment.attachment.tags[0].value #=> String
    #   resp.vpc_attachment.attachment.proposed_segment_change.tags #=> Array
    #   resp.vpc_attachment.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.vpc_attachment.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.vpc_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.vpc_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.vpc_attachment.attachment.created_at #=> Time
    #   resp.vpc_attachment.attachment.updated_at #=> Time
    #   resp.vpc_attachment.subnet_arns #=> Array
    #   resp.vpc_attachment.subnet_arns[0] #=> String
    #   resp.vpc_attachment.options.ipv_6_support #=> Boolean
    #   resp.vpc_attachment.options.appliance_mode_support #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/CreateVpcAttachment AWS API Documentation
    #
    # @overload create_vpc_attachment(params = {})
    # @param [Hash] params ({})
    def create_vpc_attachment(params = {}, options = {})
      req = build_request(:create_vpc_attachment, params)
      req.send_request(options)
    end

    # Deletes an attachment. Supports all attachment types.
    #
    # @option params [required, String] :attachment_id
    #   The ID of the attachment to delete.
    #
    # @return [Types::DeleteAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAttachmentResponse#attachment #attachment} => Types::Attachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attachment({
    #     attachment_id: "AttachmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment.core_network_id #=> String
    #   resp.attachment.core_network_arn #=> String
    #   resp.attachment.attachment_id #=> String
    #   resp.attachment.owner_account_id #=> String
    #   resp.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.attachment.edge_location #=> String
    #   resp.attachment.resource_arn #=> String
    #   resp.attachment.attachment_policy_rule_number #=> Integer
    #   resp.attachment.segment_name #=> String
    #   resp.attachment.tags #=> Array
    #   resp.attachment.tags[0].key #=> String
    #   resp.attachment.tags[0].value #=> String
    #   resp.attachment.proposed_segment_change.tags #=> Array
    #   resp.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.attachment.proposed_segment_change.segment_name #=> String
    #   resp.attachment.created_at #=> Time
    #   resp.attachment.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteAttachment AWS API Documentation
    #
    # @overload delete_attachment(params = {})
    # @param [Hash] params ({})
    def delete_attachment(params = {}, options = {})
      req = build_request(:delete_attachment, params)
      req.send_request(options)
    end

    # Deletes a Connect peer.
    #
    # @option params [required, String] :connect_peer_id
    #   The ID of the deleted Connect peer.
    #
    # @return [Types::DeleteConnectPeerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteConnectPeerResponse#connect_peer #connect_peer} => Types::ConnectPeer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connect_peer({
    #     connect_peer_id: "ConnectPeerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_peer.core_network_id #=> String
    #   resp.connect_peer.connect_attachment_id #=> String
    #   resp.connect_peer.connect_peer_id #=> String
    #   resp.connect_peer.edge_location #=> String
    #   resp.connect_peer.state #=> String, one of "CREATING", "FAILED", "AVAILABLE", "DELETING"
    #   resp.connect_peer.created_at #=> Time
    #   resp.connect_peer.configuration.core_network_address #=> String
    #   resp.connect_peer.configuration.peer_address #=> String
    #   resp.connect_peer.configuration.inside_cidr_blocks #=> Array
    #   resp.connect_peer.configuration.inside_cidr_blocks[0] #=> String
    #   resp.connect_peer.configuration.protocol #=> String, one of "GRE"
    #   resp.connect_peer.configuration.bgp_configurations #=> Array
    #   resp.connect_peer.configuration.bgp_configurations[0].core_network_asn #=> Integer
    #   resp.connect_peer.configuration.bgp_configurations[0].peer_asn #=> Integer
    #   resp.connect_peer.configuration.bgp_configurations[0].core_network_address #=> String
    #   resp.connect_peer.configuration.bgp_configurations[0].peer_address #=> String
    #   resp.connect_peer.tags #=> Array
    #   resp.connect_peer.tags[0].key #=> String
    #   resp.connect_peer.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteConnectPeer AWS API Documentation
    #
    # @overload delete_connect_peer(params = {})
    # @param [Hash] params ({})
    def delete_connect_peer(params = {}, options = {})
      req = build_request(:delete_connect_peer, params)
      req.send_request(options)
    end

    # Deletes the specified connection in your global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection.
    #
    # @return [Types::DeleteConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteConnectionResponse#connection #connection} => Types::Connection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection({
    #     global_network_id: "GlobalNetworkId", # required
    #     connection_id: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.connection_id #=> String
    #   resp.connection.connection_arn #=> String
    #   resp.connection.global_network_id #=> String
    #   resp.connection.device_id #=> String
    #   resp.connection.connected_device_id #=> String
    #   resp.connection.link_id #=> String
    #   resp.connection.connected_link_id #=> String
    #   resp.connection.description #=> String
    #   resp.connection.created_at #=> Time
    #   resp.connection.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.connection.tags #=> Array
    #   resp.connection.tags[0].key #=> String
    #   resp.connection.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteConnection AWS API Documentation
    #
    # @overload delete_connection(params = {})
    # @param [Hash] params ({})
    def delete_connection(params = {}, options = {})
      req = build_request(:delete_connection, params)
      req.send_request(options)
    end

    # Deletes a core network along with all core network policies. This can
    # only be done if there are no attachments on a core network.
    #
    # @option params [required, String] :core_network_id
    #   The network ID of the deleted core network.
    #
    # @return [Types::DeleteCoreNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCoreNetworkResponse#core_network #core_network} => Types::CoreNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_core_network({
    #     core_network_id: "CoreNetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.core_network.global_network_id #=> String
    #   resp.core_network.core_network_id #=> String
    #   resp.core_network.core_network_arn #=> String
    #   resp.core_network.description #=> String
    #   resp.core_network.created_at #=> Time
    #   resp.core_network.state #=> String, one of "CREATING", "UPDATING", "AVAILABLE", "DELETING"
    #   resp.core_network.segments #=> Array
    #   resp.core_network.segments[0].name #=> String
    #   resp.core_network.segments[0].edge_locations #=> Array
    #   resp.core_network.segments[0].edge_locations[0] #=> String
    #   resp.core_network.segments[0].shared_segments #=> Array
    #   resp.core_network.segments[0].shared_segments[0] #=> String
    #   resp.core_network.edges #=> Array
    #   resp.core_network.edges[0].edge_location #=> String
    #   resp.core_network.edges[0].asn #=> Integer
    #   resp.core_network.edges[0].inside_cidr_blocks #=> Array
    #   resp.core_network.edges[0].inside_cidr_blocks[0] #=> String
    #   resp.core_network.tags #=> Array
    #   resp.core_network.tags[0].key #=> String
    #   resp.core_network.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteCoreNetwork AWS API Documentation
    #
    # @overload delete_core_network(params = {})
    # @param [Hash] params ({})
    def delete_core_network(params = {}, options = {})
      req = build_request(:delete_core_network, params)
      req.send_request(options)
    end

    # Deletes a policy version from a core network. You can't delete the
    # current LIVE policy.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network for the deleted policy.
    #
    # @option params [required, Integer] :policy_version_id
    #   The version ID of the deleted policy.
    #
    # @return [Types::DeleteCoreNetworkPolicyVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCoreNetworkPolicyVersionResponse#core_network_policy #core_network_policy} => Types::CoreNetworkPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_core_network_policy_version({
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.core_network_policy.core_network_id #=> String
    #   resp.core_network_policy.policy_version_id #=> Integer
    #   resp.core_network_policy.alias #=> String, one of "LIVE", "LATEST"
    #   resp.core_network_policy.description #=> String
    #   resp.core_network_policy.created_at #=> Time
    #   resp.core_network_policy.change_set_state #=> String, one of "PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"
    #   resp.core_network_policy.policy_errors #=> Array
    #   resp.core_network_policy.policy_errors[0].error_code #=> String
    #   resp.core_network_policy.policy_errors[0].message #=> String
    #   resp.core_network_policy.policy_errors[0].path #=> String
    #   resp.core_network_policy.policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteCoreNetworkPolicyVersion AWS API Documentation
    #
    # @overload delete_core_network_policy_version(params = {})
    # @param [Hash] params ({})
    def delete_core_network_policy_version(params = {}, options = {})
      req = build_request(:delete_core_network_policy_version, params)
      req.send_request(options)
    end

    # Deletes an existing device. You must first disassociate the device
    # from any links and customer gateways.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :device_id
    #   The ID of the device.
    #
    # @return [Types::DeleteDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDeviceResponse#device #device} => Types::Device
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device({
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_id #=> String
    #   resp.device.device_arn #=> String
    #   resp.device.global_network_id #=> String
    #   resp.device.aws_location.zone #=> String
    #   resp.device.aws_location.subnet_arn #=> String
    #   resp.device.description #=> String
    #   resp.device.type #=> String
    #   resp.device.vendor #=> String
    #   resp.device.model #=> String
    #   resp.device.serial_number #=> String
    #   resp.device.location.address #=> String
    #   resp.device.location.latitude #=> String
    #   resp.device.location.longitude #=> String
    #   resp.device.site_id #=> String
    #   resp.device.created_at #=> Time
    #   resp.device.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.device.tags #=> Array
    #   resp.device.tags[0].key #=> String
    #   resp.device.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteDevice AWS API Documentation
    #
    # @overload delete_device(params = {})
    # @param [Hash] params ({})
    def delete_device(params = {}, options = {})
      req = build_request(:delete_device, params)
      req.send_request(options)
    end

    # Deletes an existing global network. You must first delete all global
    # network objects (devices, links, and sites), deregister all transit
    # gateways, and delete any core networks.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @return [Types::DeleteGlobalNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGlobalNetworkResponse#global_network #global_network} => Types::GlobalNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_global_network({
    #     global_network_id: "GlobalNetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.global_network.global_network_id #=> String
    #   resp.global_network.global_network_arn #=> String
    #   resp.global_network.description #=> String
    #   resp.global_network.created_at #=> Time
    #   resp.global_network.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.global_network.tags #=> Array
    #   resp.global_network.tags[0].key #=> String
    #   resp.global_network.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteGlobalNetwork AWS API Documentation
    #
    # @overload delete_global_network(params = {})
    # @param [Hash] params ({})
    def delete_global_network(params = {}, options = {})
      req = build_request(:delete_global_network, params)
      req.send_request(options)
    end

    # Deletes an existing link. You must first disassociate the link from
    # any devices and customer gateways.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :link_id
    #   The ID of the link.
    #
    # @return [Types::DeleteLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLinkResponse#link #link} => Types::Link
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_link({
    #     global_network_id: "GlobalNetworkId", # required
    #     link_id: "LinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.link.link_id #=> String
    #   resp.link.link_arn #=> String
    #   resp.link.global_network_id #=> String
    #   resp.link.site_id #=> String
    #   resp.link.description #=> String
    #   resp.link.type #=> String
    #   resp.link.bandwidth.upload_speed #=> Integer
    #   resp.link.bandwidth.download_speed #=> Integer
    #   resp.link.provider #=> String
    #   resp.link.created_at #=> Time
    #   resp.link.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.link.tags #=> Array
    #   resp.link.tags[0].key #=> String
    #   resp.link.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteLink AWS API Documentation
    #
    # @overload delete_link(params = {})
    # @param [Hash] params ({})
    def delete_link(params = {}, options = {})
      req = build_request(:delete_link, params)
      req.send_request(options)
    end

    # Deletes an existing peering connection.
    #
    # @option params [required, String] :peering_id
    #   The ID of the peering connection to delete.
    #
    # @return [Types::DeletePeeringResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePeeringResponse#peering #peering} => Types::Peering
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_peering({
    #     peering_id: "PeeringId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.peering.core_network_id #=> String
    #   resp.peering.core_network_arn #=> String
    #   resp.peering.peering_id #=> String
    #   resp.peering.owner_account_id #=> String
    #   resp.peering.peering_type #=> String, one of "TRANSIT_GATEWAY"
    #   resp.peering.state #=> String, one of "CREATING", "FAILED", "AVAILABLE", "DELETING"
    #   resp.peering.edge_location #=> String
    #   resp.peering.resource_arn #=> String
    #   resp.peering.tags #=> Array
    #   resp.peering.tags[0].key #=> String
    #   resp.peering.tags[0].value #=> String
    #   resp.peering.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeletePeering AWS API Documentation
    #
    # @overload delete_peering(params = {})
    # @param [Hash] params ({})
    def delete_peering(params = {}, options = {})
      req = build_request(:delete_peering, params)
      req.send_request(options)
    end

    # Deletes a resource policy for the specified resource. This revokes the
    # access of the principals specified in the resource policy.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the policy to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes an existing site. The site cannot be associated with any
    # device or link.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :site_id
    #   The ID of the site.
    #
    # @return [Types::DeleteSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSiteResponse#site #site} => Types::Site
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_site({
    #     global_network_id: "GlobalNetworkId", # required
    #     site_id: "SiteId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.site.site_id #=> String
    #   resp.site.site_arn #=> String
    #   resp.site.global_network_id #=> String
    #   resp.site.description #=> String
    #   resp.site.location.address #=> String
    #   resp.site.location.latitude #=> String
    #   resp.site.location.longitude #=> String
    #   resp.site.created_at #=> Time
    #   resp.site.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.site.tags #=> Array
    #   resp.site.tags[0].key #=> String
    #   resp.site.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeleteSite AWS API Documentation
    #
    # @overload delete_site(params = {})
    # @param [Hash] params ({})
    def delete_site(params = {}, options = {})
      req = build_request(:delete_site, params)
      req.send_request(options)
    end

    # Deregisters a transit gateway from your global network. This action
    # does not delete your transit gateway, or modify any of its
    # attachments. This action removes any customer gateway associations.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :transit_gateway_arn
    #   The Amazon Resource Name (ARN) of the transit gateway.
    #
    # @return [Types::DeregisterTransitGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterTransitGatewayResponse#transit_gateway_registration #transit_gateway_registration} => Types::TransitGatewayRegistration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_transit_gateway({
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_arn: "TransitGatewayArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transit_gateway_registration.global_network_id #=> String
    #   resp.transit_gateway_registration.transit_gateway_arn #=> String
    #   resp.transit_gateway_registration.state.code #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED", "FAILED"
    #   resp.transit_gateway_registration.state.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DeregisterTransitGateway AWS API Documentation
    #
    # @overload deregister_transit_gateway(params = {})
    # @param [Hash] params ({})
    def deregister_transit_gateway(params = {}, options = {})
      req = build_request(:deregister_transit_gateway, params)
      req.send_request(options)
    end

    # Describes one or more global networks. By default, all global networks
    # are described. To describe the objects in your global network, you
    # must use the appropriate `Get*` action. For example, to list the
    # transit gateways in your global network, use
    # GetTransitGatewayRegistrations.
    #
    # @option params [Array<String>] :global_network_ids
    #   The IDs of one or more global networks. The maximum is 10.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::DescribeGlobalNetworksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGlobalNetworksResponse#global_networks #global_networks} => Array&lt;Types::GlobalNetwork&gt;
    #   * {Types::DescribeGlobalNetworksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_networks({
    #     global_network_ids: ["GlobalNetworkId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.global_networks #=> Array
    #   resp.global_networks[0].global_network_id #=> String
    #   resp.global_networks[0].global_network_arn #=> String
    #   resp.global_networks[0].description #=> String
    #   resp.global_networks[0].created_at #=> Time
    #   resp.global_networks[0].state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.global_networks[0].tags #=> Array
    #   resp.global_networks[0].tags[0].key #=> String
    #   resp.global_networks[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DescribeGlobalNetworks AWS API Documentation
    #
    # @overload describe_global_networks(params = {})
    # @param [Hash] params ({})
    def describe_global_networks(params = {}, options = {})
      req = build_request(:describe_global_networks, params)
      req.send_request(options)
    end

    # Disassociates a core network Connect peer from a device and a link.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :connect_peer_id
    #   The ID of the Connect peer to disassociate from a device.
    #
    # @return [Types::DisassociateConnectPeerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateConnectPeerResponse#connect_peer_association #connect_peer_association} => Types::ConnectPeerAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_connect_peer({
    #     global_network_id: "GlobalNetworkId", # required
    #     connect_peer_id: "ConnectPeerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_peer_association.connect_peer_id #=> String
    #   resp.connect_peer_association.global_network_id #=> String
    #   resp.connect_peer_association.device_id #=> String
    #   resp.connect_peer_association.link_id #=> String
    #   resp.connect_peer_association.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateConnectPeer AWS API Documentation
    #
    # @overload disassociate_connect_peer(params = {})
    # @param [Hash] params ({})
    def disassociate_connect_peer(params = {}, options = {})
      req = build_request(:disassociate_connect_peer, params)
      req.send_request(options)
    end

    # Disassociates a customer gateway from a device and a link.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :customer_gateway_arn
    #   The Amazon Resource Name (ARN) of the customer gateway.
    #
    # @return [Types::DisassociateCustomerGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateCustomerGatewayResponse#customer_gateway_association #customer_gateway_association} => Types::CustomerGatewayAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_customer_gateway({
    #     global_network_id: "GlobalNetworkId", # required
    #     customer_gateway_arn: "CustomerGatewayArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.customer_gateway_association.customer_gateway_arn #=> String
    #   resp.customer_gateway_association.global_network_id #=> String
    #   resp.customer_gateway_association.device_id #=> String
    #   resp.customer_gateway_association.link_id #=> String
    #   resp.customer_gateway_association.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateCustomerGateway AWS API Documentation
    #
    # @overload disassociate_customer_gateway(params = {})
    # @param [Hash] params ({})
    def disassociate_customer_gateway(params = {}, options = {})
      req = build_request(:disassociate_customer_gateway, params)
      req.send_request(options)
    end

    # Disassociates an existing device from a link. You must first
    # disassociate any customer gateways that are associated with the link.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :device_id
    #   The ID of the device.
    #
    # @option params [required, String] :link_id
    #   The ID of the link.
    #
    # @return [Types::DisassociateLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateLinkResponse#link_association #link_association} => Types::LinkAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_link({
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #     link_id: "LinkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.link_association.global_network_id #=> String
    #   resp.link_association.device_id #=> String
    #   resp.link_association.link_id #=> String
    #   resp.link_association.link_association_state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateLink AWS API Documentation
    #
    # @overload disassociate_link(params = {})
    # @param [Hash] params ({})
    def disassociate_link(params = {}, options = {})
      req = build_request(:disassociate_link, params)
      req.send_request(options)
    end

    # Disassociates a transit gateway Connect peer from a device and link.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :transit_gateway_connect_peer_arn
    #   The Amazon Resource Name (ARN) of the transit gateway Connect peer.
    #
    # @return [Types::DisassociateTransitGatewayConnectPeerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateTransitGatewayConnectPeerResponse#transit_gateway_connect_peer_association #transit_gateway_connect_peer_association} => Types::TransitGatewayConnectPeerAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_transit_gateway_connect_peer({
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_connect_peer_arn: "TransitGatewayConnectPeerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transit_gateway_connect_peer_association.transit_gateway_connect_peer_arn #=> String
    #   resp.transit_gateway_connect_peer_association.global_network_id #=> String
    #   resp.transit_gateway_connect_peer_association.device_id #=> String
    #   resp.transit_gateway_connect_peer_association.link_id #=> String
    #   resp.transit_gateway_connect_peer_association.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/DisassociateTransitGatewayConnectPeer AWS API Documentation
    #
    # @overload disassociate_transit_gateway_connect_peer(params = {})
    # @param [Hash] params ({})
    def disassociate_transit_gateway_connect_peer(params = {}, options = {})
      req = build_request(:disassociate_transit_gateway_connect_peer, params)
      req.send_request(options)
    end

    # Executes a change set on your core network. Deploys changes globally
    # based on the policy submitted..
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [required, Integer] :policy_version_id
    #   The ID of the policy version.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_core_network_change_set({
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ExecuteCoreNetworkChangeSet AWS API Documentation
    #
    # @overload execute_core_network_change_set(params = {})
    # @param [Hash] params ({})
    def execute_core_network_change_set(params = {}, options = {})
      req = build_request(:execute_core_network_change_set, params)
      req.send_request(options)
    end

    # Returns information about a core network Connect attachment.
    #
    # @option params [required, String] :attachment_id
    #   The ID of the attachment.
    #
    # @return [Types::GetConnectAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectAttachmentResponse#connect_attachment #connect_attachment} => Types::ConnectAttachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connect_attachment({
    #     attachment_id: "AttachmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_attachment.attachment.core_network_id #=> String
    #   resp.connect_attachment.attachment.core_network_arn #=> String
    #   resp.connect_attachment.attachment.attachment_id #=> String
    #   resp.connect_attachment.attachment.owner_account_id #=> String
    #   resp.connect_attachment.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.connect_attachment.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.connect_attachment.attachment.edge_location #=> String
    #   resp.connect_attachment.attachment.resource_arn #=> String
    #   resp.connect_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.connect_attachment.attachment.segment_name #=> String
    #   resp.connect_attachment.attachment.tags #=> Array
    #   resp.connect_attachment.attachment.tags[0].key #=> String
    #   resp.connect_attachment.attachment.tags[0].value #=> String
    #   resp.connect_attachment.attachment.proposed_segment_change.tags #=> Array
    #   resp.connect_attachment.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.connect_attachment.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.connect_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.connect_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.connect_attachment.attachment.created_at #=> Time
    #   resp.connect_attachment.attachment.updated_at #=> Time
    #   resp.connect_attachment.transport_attachment_id #=> String
    #   resp.connect_attachment.options.protocol #=> String, one of "GRE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectAttachment AWS API Documentation
    #
    # @overload get_connect_attachment(params = {})
    # @param [Hash] params ({})
    def get_connect_attachment(params = {}, options = {})
      req = build_request(:get_connect_attachment, params)
      req.send_request(options)
    end

    # Returns information about a core network Connect peer.
    #
    # @option params [required, String] :connect_peer_id
    #   The ID of the Connect peer.
    #
    # @return [Types::GetConnectPeerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectPeerResponse#connect_peer #connect_peer} => Types::ConnectPeer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connect_peer({
    #     connect_peer_id: "ConnectPeerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_peer.core_network_id #=> String
    #   resp.connect_peer.connect_attachment_id #=> String
    #   resp.connect_peer.connect_peer_id #=> String
    #   resp.connect_peer.edge_location #=> String
    #   resp.connect_peer.state #=> String, one of "CREATING", "FAILED", "AVAILABLE", "DELETING"
    #   resp.connect_peer.created_at #=> Time
    #   resp.connect_peer.configuration.core_network_address #=> String
    #   resp.connect_peer.configuration.peer_address #=> String
    #   resp.connect_peer.configuration.inside_cidr_blocks #=> Array
    #   resp.connect_peer.configuration.inside_cidr_blocks[0] #=> String
    #   resp.connect_peer.configuration.protocol #=> String, one of "GRE"
    #   resp.connect_peer.configuration.bgp_configurations #=> Array
    #   resp.connect_peer.configuration.bgp_configurations[0].core_network_asn #=> Integer
    #   resp.connect_peer.configuration.bgp_configurations[0].peer_asn #=> Integer
    #   resp.connect_peer.configuration.bgp_configurations[0].core_network_address #=> String
    #   resp.connect_peer.configuration.bgp_configurations[0].peer_address #=> String
    #   resp.connect_peer.tags #=> Array
    #   resp.connect_peer.tags[0].key #=> String
    #   resp.connect_peer.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectPeer AWS API Documentation
    #
    # @overload get_connect_peer(params = {})
    # @param [Hash] params ({})
    def get_connect_peer(params = {}, options = {})
      req = build_request(:get_connect_peer, params)
      req.send_request(options)
    end

    # Returns information about a core network Connect peer associations.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [Array<String>] :connect_peer_ids
    #   The IDs of the Connect peers.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetConnectPeerAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectPeerAssociationsResponse#connect_peer_associations #connect_peer_associations} => Array&lt;Types::ConnectPeerAssociation&gt;
    #   * {Types::GetConnectPeerAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connect_peer_associations({
    #     global_network_id: "GlobalNetworkId", # required
    #     connect_peer_ids: ["ConnectPeerId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_peer_associations #=> Array
    #   resp.connect_peer_associations[0].connect_peer_id #=> String
    #   resp.connect_peer_associations[0].global_network_id #=> String
    #   resp.connect_peer_associations[0].device_id #=> String
    #   resp.connect_peer_associations[0].link_id #=> String
    #   resp.connect_peer_associations[0].state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnectPeerAssociations AWS API Documentation
    #
    # @overload get_connect_peer_associations(params = {})
    # @param [Hash] params ({})
    def get_connect_peer_associations(params = {}, options = {})
      req = build_request(:get_connect_peer_associations, params)
      req.send_request(options)
    end

    # Gets information about one or more of your connections in a global
    # network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [Array<String>] :connection_ids
    #   One or more connection IDs.
    #
    # @option params [String] :device_id
    #   The ID of the device.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionsResponse#connections #connections} => Array&lt;Types::Connection&gt;
    #   * {Types::GetConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connections({
    #     global_network_id: "GlobalNetworkId", # required
    #     connection_ids: ["ConnectionId"],
    #     device_id: "DeviceId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].connection_id #=> String
    #   resp.connections[0].connection_arn #=> String
    #   resp.connections[0].global_network_id #=> String
    #   resp.connections[0].device_id #=> String
    #   resp.connections[0].connected_device_id #=> String
    #   resp.connections[0].link_id #=> String
    #   resp.connections[0].connected_link_id #=> String
    #   resp.connections[0].description #=> String
    #   resp.connections[0].created_at #=> Time
    #   resp.connections[0].state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.connections[0].tags #=> Array
    #   resp.connections[0].tags[0].key #=> String
    #   resp.connections[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetConnections AWS API Documentation
    #
    # @overload get_connections(params = {})
    # @param [Hash] params ({})
    def get_connections(params = {}, options = {})
      req = build_request(:get_connections, params)
      req.send_request(options)
    end

    # Returns information about the LIVE policy for a core network.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network.
    #
    # @return [Types::GetCoreNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCoreNetworkResponse#core_network #core_network} => Types::CoreNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_network({
    #     core_network_id: "CoreNetworkId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.core_network.global_network_id #=> String
    #   resp.core_network.core_network_id #=> String
    #   resp.core_network.core_network_arn #=> String
    #   resp.core_network.description #=> String
    #   resp.core_network.created_at #=> Time
    #   resp.core_network.state #=> String, one of "CREATING", "UPDATING", "AVAILABLE", "DELETING"
    #   resp.core_network.segments #=> Array
    #   resp.core_network.segments[0].name #=> String
    #   resp.core_network.segments[0].edge_locations #=> Array
    #   resp.core_network.segments[0].edge_locations[0] #=> String
    #   resp.core_network.segments[0].shared_segments #=> Array
    #   resp.core_network.segments[0].shared_segments[0] #=> String
    #   resp.core_network.edges #=> Array
    #   resp.core_network.edges[0].edge_location #=> String
    #   resp.core_network.edges[0].asn #=> Integer
    #   resp.core_network.edges[0].inside_cidr_blocks #=> Array
    #   resp.core_network.edges[0].inside_cidr_blocks[0] #=> String
    #   resp.core_network.tags #=> Array
    #   resp.core_network.tags[0].key #=> String
    #   resp.core_network.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetwork AWS API Documentation
    #
    # @overload get_core_network(params = {})
    # @param [Hash] params ({})
    def get_core_network(params = {}, options = {})
      req = build_request(:get_core_network, params)
      req.send_request(options)
    end

    # Returns information about a core network change event.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [required, Integer] :policy_version_id
    #   The ID of the policy version.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetCoreNetworkChangeEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCoreNetworkChangeEventsResponse#core_network_change_events #core_network_change_events} => Array&lt;Types::CoreNetworkChangeEvent&gt;
    #   * {Types::GetCoreNetworkChangeEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_network_change_events({
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1, # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.core_network_change_events #=> Array
    #   resp.core_network_change_events[0].type #=> String, one of "CORE_NETWORK_SEGMENT", "CORE_NETWORK_EDGE", "ATTACHMENT_MAPPING", "ATTACHMENT_ROUTE_PROPAGATION", "ATTACHMENT_ROUTE_STATIC", "CORE_NETWORK_CONFIGURATION", "SEGMENTS_CONFIGURATION", "SEGMENT_ACTIONS_CONFIGURATION", "ATTACHMENT_POLICIES_CONFIGURATION"
    #   resp.core_network_change_events[0].action #=> String, one of "ADD", "MODIFY", "REMOVE"
    #   resp.core_network_change_events[0].identifier_path #=> String
    #   resp.core_network_change_events[0].event_time #=> Time
    #   resp.core_network_change_events[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.core_network_change_events[0].values.edge_location #=> String
    #   resp.core_network_change_events[0].values.segment_name #=> String
    #   resp.core_network_change_events[0].values.attachment_id #=> String
    #   resp.core_network_change_events[0].values.cidr #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetworkChangeEvents AWS API Documentation
    #
    # @overload get_core_network_change_events(params = {})
    # @param [Hash] params ({})
    def get_core_network_change_events(params = {}, options = {})
      req = build_request(:get_core_network_change_events, params)
      req.send_request(options)
    end

    # Returns a change set between the LIVE core network policy and a
    # submitted policy.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [required, Integer] :policy_version_id
    #   The ID of the policy version.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetCoreNetworkChangeSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCoreNetworkChangeSetResponse#core_network_changes #core_network_changes} => Array&lt;Types::CoreNetworkChange&gt;
    #   * {Types::GetCoreNetworkChangeSetResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_network_change_set({
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1, # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.core_network_changes #=> Array
    #   resp.core_network_changes[0].type #=> String, one of "CORE_NETWORK_SEGMENT", "CORE_NETWORK_EDGE", "ATTACHMENT_MAPPING", "ATTACHMENT_ROUTE_PROPAGATION", "ATTACHMENT_ROUTE_STATIC", "CORE_NETWORK_CONFIGURATION", "SEGMENTS_CONFIGURATION", "SEGMENT_ACTIONS_CONFIGURATION", "ATTACHMENT_POLICIES_CONFIGURATION"
    #   resp.core_network_changes[0].action #=> String, one of "ADD", "MODIFY", "REMOVE"
    #   resp.core_network_changes[0].identifier #=> String
    #   resp.core_network_changes[0].previous_values.segment_name #=> String
    #   resp.core_network_changes[0].previous_values.edge_locations #=> Array
    #   resp.core_network_changes[0].previous_values.edge_locations[0] #=> String
    #   resp.core_network_changes[0].previous_values.asn #=> Integer
    #   resp.core_network_changes[0].previous_values.cidr #=> String
    #   resp.core_network_changes[0].previous_values.destination_identifier #=> String
    #   resp.core_network_changes[0].previous_values.inside_cidr_blocks #=> Array
    #   resp.core_network_changes[0].previous_values.inside_cidr_blocks[0] #=> String
    #   resp.core_network_changes[0].previous_values.shared_segments #=> Array
    #   resp.core_network_changes[0].previous_values.shared_segments[0] #=> String
    #   resp.core_network_changes[0].new_values.segment_name #=> String
    #   resp.core_network_changes[0].new_values.edge_locations #=> Array
    #   resp.core_network_changes[0].new_values.edge_locations[0] #=> String
    #   resp.core_network_changes[0].new_values.asn #=> Integer
    #   resp.core_network_changes[0].new_values.cidr #=> String
    #   resp.core_network_changes[0].new_values.destination_identifier #=> String
    #   resp.core_network_changes[0].new_values.inside_cidr_blocks #=> Array
    #   resp.core_network_changes[0].new_values.inside_cidr_blocks[0] #=> String
    #   resp.core_network_changes[0].new_values.shared_segments #=> Array
    #   resp.core_network_changes[0].new_values.shared_segments[0] #=> String
    #   resp.core_network_changes[0].identifier_path #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetworkChangeSet AWS API Documentation
    #
    # @overload get_core_network_change_set(params = {})
    # @param [Hash] params ({})
    def get_core_network_change_set(params = {}, options = {})
      req = build_request(:get_core_network_change_set, params)
      req.send_request(options)
    end

    # Returns details about a core network policy. You can get details about
    # your current live policy or any previous policy version.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [Integer] :policy_version_id
    #   The ID of a core network policy version.
    #
    # @option params [String] :alias
    #   The alias of a core network policy
    #
    # @return [Types::GetCoreNetworkPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCoreNetworkPolicyResponse#core_network_policy #core_network_policy} => Types::CoreNetworkPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_network_policy({
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1,
    #     alias: "LIVE", # accepts LIVE, LATEST
    #   })
    #
    # @example Response structure
    #
    #   resp.core_network_policy.core_network_id #=> String
    #   resp.core_network_policy.policy_version_id #=> Integer
    #   resp.core_network_policy.alias #=> String, one of "LIVE", "LATEST"
    #   resp.core_network_policy.description #=> String
    #   resp.core_network_policy.created_at #=> Time
    #   resp.core_network_policy.change_set_state #=> String, one of "PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"
    #   resp.core_network_policy.policy_errors #=> Array
    #   resp.core_network_policy.policy_errors[0].error_code #=> String
    #   resp.core_network_policy.policy_errors[0].message #=> String
    #   resp.core_network_policy.policy_errors[0].path #=> String
    #   resp.core_network_policy.policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCoreNetworkPolicy AWS API Documentation
    #
    # @overload get_core_network_policy(params = {})
    # @param [Hash] params ({})
    def get_core_network_policy(params = {}, options = {})
      req = build_request(:get_core_network_policy, params)
      req.send_request(options)
    end

    # Gets the association information for customer gateways that are
    # associated with devices and links in your global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [Array<String>] :customer_gateway_arns
    #   One or more customer gateway Amazon Resource Names (ARNs). The maximum
    #   is 10.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetCustomerGatewayAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCustomerGatewayAssociationsResponse#customer_gateway_associations #customer_gateway_associations} => Array&lt;Types::CustomerGatewayAssociation&gt;
    #   * {Types::GetCustomerGatewayAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_customer_gateway_associations({
    #     global_network_id: "GlobalNetworkId", # required
    #     customer_gateway_arns: ["CustomerGatewayArn"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.customer_gateway_associations #=> Array
    #   resp.customer_gateway_associations[0].customer_gateway_arn #=> String
    #   resp.customer_gateway_associations[0].global_network_id #=> String
    #   resp.customer_gateway_associations[0].device_id #=> String
    #   resp.customer_gateway_associations[0].link_id #=> String
    #   resp.customer_gateway_associations[0].state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetCustomerGatewayAssociations AWS API Documentation
    #
    # @overload get_customer_gateway_associations(params = {})
    # @param [Hash] params ({})
    def get_customer_gateway_associations(params = {}, options = {})
      req = build_request(:get_customer_gateway_associations, params)
      req.send_request(options)
    end

    # Gets information about one or more of your devices in a global
    # network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [Array<String>] :device_ids
    #   One or more device IDs. The maximum is 10.
    #
    # @option params [String] :site_id
    #   The ID of the site.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevicesResponse#devices #devices} => Array&lt;Types::Device&gt;
    #   * {Types::GetDevicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_devices({
    #     global_network_id: "GlobalNetworkId", # required
    #     device_ids: ["DeviceId"],
    #     site_id: "SiteId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_id #=> String
    #   resp.devices[0].device_arn #=> String
    #   resp.devices[0].global_network_id #=> String
    #   resp.devices[0].aws_location.zone #=> String
    #   resp.devices[0].aws_location.subnet_arn #=> String
    #   resp.devices[0].description #=> String
    #   resp.devices[0].type #=> String
    #   resp.devices[0].vendor #=> String
    #   resp.devices[0].model #=> String
    #   resp.devices[0].serial_number #=> String
    #   resp.devices[0].location.address #=> String
    #   resp.devices[0].location.latitude #=> String
    #   resp.devices[0].location.longitude #=> String
    #   resp.devices[0].site_id #=> String
    #   resp.devices[0].created_at #=> Time
    #   resp.devices[0].state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.devices[0].tags #=> Array
    #   resp.devices[0].tags[0].key #=> String
    #   resp.devices[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetDevices AWS API Documentation
    #
    # @overload get_devices(params = {})
    # @param [Hash] params ({})
    def get_devices(params = {}, options = {})
      req = build_request(:get_devices, params)
      req.send_request(options)
    end

    # Gets the link associations for a device or a link. Either the device
    # ID or the link ID must be specified.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [String] :device_id
    #   The ID of the device.
    #
    # @option params [String] :link_id
    #   The ID of the link.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetLinkAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLinkAssociationsResponse#link_associations #link_associations} => Array&lt;Types::LinkAssociation&gt;
    #   * {Types::GetLinkAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_link_associations({
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId",
    #     link_id: "LinkId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.link_associations #=> Array
    #   resp.link_associations[0].global_network_id #=> String
    #   resp.link_associations[0].device_id #=> String
    #   resp.link_associations[0].link_id #=> String
    #   resp.link_associations[0].link_association_state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetLinkAssociations AWS API Documentation
    #
    # @overload get_link_associations(params = {})
    # @param [Hash] params ({})
    def get_link_associations(params = {}, options = {})
      req = build_request(:get_link_associations, params)
      req.send_request(options)
    end

    # Gets information about one or more links in a specified global
    # network.
    #
    # If you specify the site ID, you cannot specify the type or provider in
    # the same request. You can specify the type and provider in the same
    # request.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [Array<String>] :link_ids
    #   One or more link IDs. The maximum is 10.
    #
    # @option params [String] :site_id
    #   The ID of the site.
    #
    # @option params [String] :type
    #   The link type.
    #
    # @option params [String] :provider
    #   The link provider.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetLinksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLinksResponse#links #links} => Array&lt;Types::Link&gt;
    #   * {Types::GetLinksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_links({
    #     global_network_id: "GlobalNetworkId", # required
    #     link_ids: ["LinkId"],
    #     site_id: "SiteId",
    #     type: "ConstrainedString",
    #     provider: "ConstrainedString",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.links #=> Array
    #   resp.links[0].link_id #=> String
    #   resp.links[0].link_arn #=> String
    #   resp.links[0].global_network_id #=> String
    #   resp.links[0].site_id #=> String
    #   resp.links[0].description #=> String
    #   resp.links[0].type #=> String
    #   resp.links[0].bandwidth.upload_speed #=> Integer
    #   resp.links[0].bandwidth.download_speed #=> Integer
    #   resp.links[0].provider #=> String
    #   resp.links[0].created_at #=> Time
    #   resp.links[0].state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.links[0].tags #=> Array
    #   resp.links[0].tags[0].key #=> String
    #   resp.links[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetLinks AWS API Documentation
    #
    # @overload get_links(params = {})
    # @param [Hash] params ({})
    def get_links(params = {}, options = {})
      req = build_request(:get_links, params)
      req.send_request(options)
    end

    # Gets the count of network resources, by resource type, for the
    # specified global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [String] :resource_type
    #   The resource type.
    #
    #   The following are the supported resource types for Direct Connect:
    #
    #   * `dxcon`
    #
    #   * `dx-gateway`
    #
    #   * `dx-vif`
    #
    #   The following are the supported resource types for Network Manager:
    #
    #   * `connection`
    #
    #   * `device`
    #
    #   * `link`
    #
    #   * `site`
    #
    #   The following are the supported resource types for Amazon VPC:
    #
    #   * `customer-gateway`
    #
    #   * `transit-gateway`
    #
    #   * `transit-gateway-attachment`
    #
    #   * `transit-gateway-connect-peer`
    #
    #   * `transit-gateway-route-table`
    #
    #   * `vpn-connection`
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetNetworkResourceCountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkResourceCountsResponse#network_resource_counts #network_resource_counts} => Array&lt;Types::NetworkResourceCount&gt;
    #   * {Types::GetNetworkResourceCountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_resource_counts({
    #     global_network_id: "GlobalNetworkId", # required
    #     resource_type: "ConstrainedString",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_resource_counts #=> Array
    #   resp.network_resource_counts[0].resource_type #=> String
    #   resp.network_resource_counts[0].count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkResourceCounts AWS API Documentation
    #
    # @overload get_network_resource_counts(params = {})
    # @param [Hash] params ({})
    def get_network_resource_counts(params = {}, options = {})
      req = build_request(:get_network_resource_counts, params)
      req.send_request(options)
    end

    # Gets the network resource relationships for the specified global
    # network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [String] :registered_gateway_arn
    #   The ARN of the registered gateway.
    #
    # @option params [String] :aws_region
    #   The Amazon Web Services Region.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [String] :resource_type
    #   The resource type.
    #
    #   The following are the supported resource types for Direct Connect:
    #
    #   * `dxcon`
    #
    #   * `dx-gateway`
    #
    #   * `dx-vif`
    #
    #   The following are the supported resource types for Network Manager:
    #
    #   * `connection`
    #
    #   * `device`
    #
    #   * `link`
    #
    #   * `site`
    #
    #   The following are the supported resource types for Amazon VPC:
    #
    #   * `customer-gateway`
    #
    #   * `transit-gateway`
    #
    #   * `transit-gateway-attachment`
    #
    #   * `transit-gateway-connect-peer`
    #
    #   * `transit-gateway-route-table`
    #
    #   * `vpn-connection`
    #
    # @option params [String] :resource_arn
    #   The ARN of the gateway.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetNetworkResourceRelationshipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkResourceRelationshipsResponse#relationships #relationships} => Array&lt;Types::Relationship&gt;
    #   * {Types::GetNetworkResourceRelationshipsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_resource_relationships({
    #     global_network_id: "GlobalNetworkId", # required
    #     core_network_id: "CoreNetworkId",
    #     registered_gateway_arn: "ResourceArn",
    #     aws_region: "ExternalRegionCode",
    #     account_id: "AWSAccountId",
    #     resource_type: "ConstrainedString",
    #     resource_arn: "ResourceArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.relationships #=> Array
    #   resp.relationships[0].from #=> String
    #   resp.relationships[0].to #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkResourceRelationships AWS API Documentation
    #
    # @overload get_network_resource_relationships(params = {})
    # @param [Hash] params ({})
    def get_network_resource_relationships(params = {}, options = {})
      req = build_request(:get_network_resource_relationships, params)
      req.send_request(options)
    end

    # Describes the network resources for the specified global network.
    #
    # The results include information from the corresponding Describe call
    # for the resource, minus any sensitive information such as pre-shared
    # keys.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [String] :registered_gateway_arn
    #   The ARN of the gateway.
    #
    # @option params [String] :aws_region
    #   The Amazon Web Services Region.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [String] :resource_type
    #   The resource type.
    #
    #   The following are the supported resource types for Direct Connect:
    #
    #   * `dxcon` - The definition model is [Connection][1].
    #
    #   * `dx-gateway` - The definition model is [DirectConnectGateway][2].
    #
    #   * `dx-vif` - The definition model is [VirtualInterface][3].
    #
    #   The following are the supported resource types for Network Manager:
    #
    #   * `connection` - The definition model is [Connection][4].
    #
    #   * `device` - The definition model is [Device][5].
    #
    #   * `link` - The definition model is [Link][6].
    #
    #   * `site` - The definition model is [Site][7].
    #
    #   The following are the supported resource types for Amazon VPC:
    #
    #   * `customer-gateway` - The definition model is [CustomerGateway][8].
    #
    #   * `transit-gateway` - The definition model is [TransitGateway][9].
    #
    #   * `transit-gateway-attachment` - The definition model is
    #     [TransitGatewayAttachment][10].
    #
    #   * `transit-gateway-connect-peer` - The definition model is
    #     [TransitGatewayConnectPeer][11].
    #
    #   * `transit-gateway-route-table` - The definition model is
    #     [TransitGatewayRouteTable][12].
    #
    #   * `vpn-connection` - The definition model is [VpnConnection][13].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directconnect/latest/APIReference/API_Connection.html
    #   [2]: https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DirectConnectGateway.html
    #   [3]: https://docs.aws.amazon.com/directconnect/latest/APIReference/API_VirtualInterface.html
    #   [4]: https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Connection.html
    #   [5]: https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Device.html
    #   [6]: https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Link.html
    #   [7]: https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Site.html
    #   [8]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CustomerGateway.html
    #   [9]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGateway.html
    #   [10]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayAttachment.html
    #   [11]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayConnectPeer.html
    #   [12]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayRouteTable.html
    #   [13]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpnConnection.html
    #
    # @option params [String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetNetworkResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkResourcesResponse#network_resources #network_resources} => Array&lt;Types::NetworkResource&gt;
    #   * {Types::GetNetworkResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_resources({
    #     global_network_id: "GlobalNetworkId", # required
    #     core_network_id: "CoreNetworkId",
    #     registered_gateway_arn: "ResourceArn",
    #     aws_region: "ExternalRegionCode",
    #     account_id: "AWSAccountId",
    #     resource_type: "ConstrainedString",
    #     resource_arn: "ResourceArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_resources #=> Array
    #   resp.network_resources[0].registered_gateway_arn #=> String
    #   resp.network_resources[0].core_network_id #=> String
    #   resp.network_resources[0].aws_region #=> String
    #   resp.network_resources[0].account_id #=> String
    #   resp.network_resources[0].resource_type #=> String
    #   resp.network_resources[0].resource_id #=> String
    #   resp.network_resources[0].resource_arn #=> String
    #   resp.network_resources[0].definition #=> String
    #   resp.network_resources[0].definition_timestamp #=> Time
    #   resp.network_resources[0].tags #=> Array
    #   resp.network_resources[0].tags[0].key #=> String
    #   resp.network_resources[0].tags[0].value #=> String
    #   resp.network_resources[0].metadata #=> Hash
    #   resp.network_resources[0].metadata["ConstrainedString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkResources AWS API Documentation
    #
    # @overload get_network_resources(params = {})
    # @param [Hash] params ({})
    def get_network_resources(params = {}, options = {})
      req = build_request(:get_network_resources, params)
      req.send_request(options)
    end

    # Gets the network routes of the specified global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, Types::RouteTableIdentifier] :route_table_identifier
    #   The ID of the route table.
    #
    # @option params [Array<String>] :exact_cidr_matches
    #   An exact CIDR block.
    #
    # @option params [Array<String>] :longest_prefix_matches
    #   The most specific route that matches the traffic (longest prefix
    #   match).
    #
    # @option params [Array<String>] :subnet_of_matches
    #   The routes with a subnet that match the specified CIDR filter.
    #
    # @option params [Array<String>] :supernet_of_matches
    #   The routes with a CIDR that encompasses the CIDR filter. Example: If
    #   you specify 10.0.1.0/30, then the result returns 10.0.1.0/29.
    #
    # @option params [Array<String>] :prefix_list_ids
    #   The IDs of the prefix lists.
    #
    # @option params [Array<String>] :states
    #   The route states.
    #
    # @option params [Array<String>] :types
    #   The route types.
    #
    # @option params [Hash<String,Array>] :destination_filters
    #   Filter by route table destination. Possible Values:
    #   TRANSIT\_GATEWAY\_ATTACHMENT\_ID, RESOURCE\_ID, or RESOURCE\_TYPE.
    #
    # @return [Types::GetNetworkRoutesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkRoutesResponse#route_table_arn #route_table_arn} => String
    #   * {Types::GetNetworkRoutesResponse#core_network_segment_edge #core_network_segment_edge} => Types::CoreNetworkSegmentEdgeIdentifier
    #   * {Types::GetNetworkRoutesResponse#route_table_type #route_table_type} => String
    #   * {Types::GetNetworkRoutesResponse#route_table_timestamp #route_table_timestamp} => Time
    #   * {Types::GetNetworkRoutesResponse#network_routes #network_routes} => Array&lt;Types::NetworkRoute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_routes({
    #     global_network_id: "GlobalNetworkId", # required
    #     route_table_identifier: { # required
    #       transit_gateway_route_table_arn: "TransitGatewayRouteTableArn",
    #       core_network_segment_edge: {
    #         core_network_id: "CoreNetworkId",
    #         segment_name: "ConstrainedString",
    #         edge_location: "ExternalRegionCode",
    #       },
    #     },
    #     exact_cidr_matches: ["ConstrainedString"],
    #     longest_prefix_matches: ["ConstrainedString"],
    #     subnet_of_matches: ["ConstrainedString"],
    #     supernet_of_matches: ["ConstrainedString"],
    #     prefix_list_ids: ["ConstrainedString"],
    #     states: ["ACTIVE"], # accepts ACTIVE, BLACKHOLE
    #     types: ["PROPAGATED"], # accepts PROPAGATED, STATIC
    #     destination_filters: {
    #       "FilterName" => ["FilterValue"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.route_table_arn #=> String
    #   resp.core_network_segment_edge.core_network_id #=> String
    #   resp.core_network_segment_edge.segment_name #=> String
    #   resp.core_network_segment_edge.edge_location #=> String
    #   resp.route_table_type #=> String, one of "TRANSIT_GATEWAY_ROUTE_TABLE", "CORE_NETWORK_SEGMENT"
    #   resp.route_table_timestamp #=> Time
    #   resp.network_routes #=> Array
    #   resp.network_routes[0].destination_cidr_block #=> String
    #   resp.network_routes[0].destinations #=> Array
    #   resp.network_routes[0].destinations[0].core_network_attachment_id #=> String
    #   resp.network_routes[0].destinations[0].transit_gateway_attachment_id #=> String
    #   resp.network_routes[0].destinations[0].segment_name #=> String
    #   resp.network_routes[0].destinations[0].edge_location #=> String
    #   resp.network_routes[0].destinations[0].resource_type #=> String
    #   resp.network_routes[0].destinations[0].resource_id #=> String
    #   resp.network_routes[0].prefix_list_id #=> String
    #   resp.network_routes[0].state #=> String, one of "ACTIVE", "BLACKHOLE"
    #   resp.network_routes[0].type #=> String, one of "PROPAGATED", "STATIC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkRoutes AWS API Documentation
    #
    # @overload get_network_routes(params = {})
    # @param [Hash] params ({})
    def get_network_routes(params = {}, options = {})
      req = build_request(:get_network_routes, params)
      req.send_request(options)
    end

    # Gets the network telemetry of the specified global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [String] :registered_gateway_arn
    #   The ARN of the gateway.
    #
    # @option params [String] :aws_region
    #   The Amazon Web Services Region.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [String] :resource_type
    #   The resource type.
    #
    #   The following are the supported resource types for Direct Connect:
    #
    #   * `dxcon`
    #
    #   * `dx-gateway`
    #
    #   * `dx-vif`
    #
    #   The following are the supported resource types for Network Manager:
    #
    #   * `connection`
    #
    #   * `device`
    #
    #   * `link`
    #
    #   * `site`
    #
    #   The following are the supported resource types for Amazon VPC:
    #
    #   * `customer-gateway`
    #
    #   * `transit-gateway`
    #
    #   * `transit-gateway-attachment`
    #
    #   * `transit-gateway-connect-peer`
    #
    #   * `transit-gateway-route-table`
    #
    #   * `vpn-connection`
    #
    # @option params [String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetNetworkTelemetryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkTelemetryResponse#network_telemetry #network_telemetry} => Array&lt;Types::NetworkTelemetry&gt;
    #   * {Types::GetNetworkTelemetryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_telemetry({
    #     global_network_id: "GlobalNetworkId", # required
    #     core_network_id: "CoreNetworkId",
    #     registered_gateway_arn: "ResourceArn",
    #     aws_region: "ExternalRegionCode",
    #     account_id: "AWSAccountId",
    #     resource_type: "ConstrainedString",
    #     resource_arn: "ResourceArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_telemetry #=> Array
    #   resp.network_telemetry[0].registered_gateway_arn #=> String
    #   resp.network_telemetry[0].core_network_id #=> String
    #   resp.network_telemetry[0].aws_region #=> String
    #   resp.network_telemetry[0].account_id #=> String
    #   resp.network_telemetry[0].resource_type #=> String
    #   resp.network_telemetry[0].resource_id #=> String
    #   resp.network_telemetry[0].resource_arn #=> String
    #   resp.network_telemetry[0].address #=> String
    #   resp.network_telemetry[0].health.type #=> String, one of "BGP", "IPSEC"
    #   resp.network_telemetry[0].health.status #=> String, one of "UP", "DOWN"
    #   resp.network_telemetry[0].health.timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetNetworkTelemetry AWS API Documentation
    #
    # @overload get_network_telemetry(params = {})
    # @param [Hash] params ({})
    def get_network_telemetry(params = {}, options = {})
      req = build_request(:get_network_telemetry, params)
      req.send_request(options)
    end

    # Returns information about a resource policy.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#policy_document #policy_document} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Gets information about the specified route analysis.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :route_analysis_id
    #   The ID of the route analysis.
    #
    # @return [Types::GetRouteAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRouteAnalysisResponse#route_analysis #route_analysis} => Types::RouteAnalysis
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_route_analysis({
    #     global_network_id: "GlobalNetworkId", # required
    #     route_analysis_id: "ConstrainedString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.route_analysis.global_network_id #=> String
    #   resp.route_analysis.owner_account_id #=> String
    #   resp.route_analysis.route_analysis_id #=> String
    #   resp.route_analysis.start_timestamp #=> Time
    #   resp.route_analysis.status #=> String, one of "RUNNING", "COMPLETED", "FAILED"
    #   resp.route_analysis.source.transit_gateway_attachment_arn #=> String
    #   resp.route_analysis.source.transit_gateway_arn #=> String
    #   resp.route_analysis.source.ip_address #=> String
    #   resp.route_analysis.destination.transit_gateway_attachment_arn #=> String
    #   resp.route_analysis.destination.transit_gateway_arn #=> String
    #   resp.route_analysis.destination.ip_address #=> String
    #   resp.route_analysis.include_return_path #=> Boolean
    #   resp.route_analysis.use_middleboxes #=> Boolean
    #   resp.route_analysis.forward_path.completion_status.result_code #=> String, one of "CONNECTED", "NOT_CONNECTED"
    #   resp.route_analysis.forward_path.completion_status.reason_code #=> String, one of "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", "CYCLIC_PATH_DETECTED", "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", "ROUTE_NOT_FOUND", "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH", "MAX_HOPS_EXCEEDED", "POSSIBLE_MIDDLEBOX", "NO_DESTINATION_ARN_PROVIDED"
    #   resp.route_analysis.forward_path.completion_status.reason_context #=> Hash
    #   resp.route_analysis.forward_path.completion_status.reason_context["ReasonContextKey"] #=> String
    #   resp.route_analysis.forward_path.path #=> Array
    #   resp.route_analysis.forward_path.path[0].sequence #=> Integer
    #   resp.route_analysis.forward_path.path[0].resource.registered_gateway_arn #=> String
    #   resp.route_analysis.forward_path.path[0].resource.resource_arn #=> String
    #   resp.route_analysis.forward_path.path[0].resource.resource_type #=> String
    #   resp.route_analysis.forward_path.path[0].resource.definition #=> String
    #   resp.route_analysis.forward_path.path[0].resource.name_tag #=> String
    #   resp.route_analysis.forward_path.path[0].resource.is_middlebox #=> Boolean
    #   resp.route_analysis.forward_path.path[0].destination_cidr_block #=> String
    #   resp.route_analysis.return_path.completion_status.result_code #=> String, one of "CONNECTED", "NOT_CONNECTED"
    #   resp.route_analysis.return_path.completion_status.reason_code #=> String, one of "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", "CYCLIC_PATH_DETECTED", "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", "ROUTE_NOT_FOUND", "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH", "MAX_HOPS_EXCEEDED", "POSSIBLE_MIDDLEBOX", "NO_DESTINATION_ARN_PROVIDED"
    #   resp.route_analysis.return_path.completion_status.reason_context #=> Hash
    #   resp.route_analysis.return_path.completion_status.reason_context["ReasonContextKey"] #=> String
    #   resp.route_analysis.return_path.path #=> Array
    #   resp.route_analysis.return_path.path[0].sequence #=> Integer
    #   resp.route_analysis.return_path.path[0].resource.registered_gateway_arn #=> String
    #   resp.route_analysis.return_path.path[0].resource.resource_arn #=> String
    #   resp.route_analysis.return_path.path[0].resource.resource_type #=> String
    #   resp.route_analysis.return_path.path[0].resource.definition #=> String
    #   resp.route_analysis.return_path.path[0].resource.name_tag #=> String
    #   resp.route_analysis.return_path.path[0].resource.is_middlebox #=> Boolean
    #   resp.route_analysis.return_path.path[0].destination_cidr_block #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetRouteAnalysis AWS API Documentation
    #
    # @overload get_route_analysis(params = {})
    # @param [Hash] params ({})
    def get_route_analysis(params = {}, options = {})
      req = build_request(:get_route_analysis, params)
      req.send_request(options)
    end

    # Returns information about a site-to-site VPN attachment.
    #
    # @option params [required, String] :attachment_id
    #   The ID of the attachment.
    #
    # @return [Types::GetSiteToSiteVpnAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSiteToSiteVpnAttachmentResponse#site_to_site_vpn_attachment #site_to_site_vpn_attachment} => Types::SiteToSiteVpnAttachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_site_to_site_vpn_attachment({
    #     attachment_id: "AttachmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.site_to_site_vpn_attachment.attachment.core_network_id #=> String
    #   resp.site_to_site_vpn_attachment.attachment.core_network_arn #=> String
    #   resp.site_to_site_vpn_attachment.attachment.attachment_id #=> String
    #   resp.site_to_site_vpn_attachment.attachment.owner_account_id #=> String
    #   resp.site_to_site_vpn_attachment.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.site_to_site_vpn_attachment.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.site_to_site_vpn_attachment.attachment.edge_location #=> String
    #   resp.site_to_site_vpn_attachment.attachment.resource_arn #=> String
    #   resp.site_to_site_vpn_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.site_to_site_vpn_attachment.attachment.segment_name #=> String
    #   resp.site_to_site_vpn_attachment.attachment.tags #=> Array
    #   resp.site_to_site_vpn_attachment.attachment.tags[0].key #=> String
    #   resp.site_to_site_vpn_attachment.attachment.tags[0].value #=> String
    #   resp.site_to_site_vpn_attachment.attachment.proposed_segment_change.tags #=> Array
    #   resp.site_to_site_vpn_attachment.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.site_to_site_vpn_attachment.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.site_to_site_vpn_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.site_to_site_vpn_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.site_to_site_vpn_attachment.attachment.created_at #=> Time
    #   resp.site_to_site_vpn_attachment.attachment.updated_at #=> Time
    #   resp.site_to_site_vpn_attachment.vpn_connection_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetSiteToSiteVpnAttachment AWS API Documentation
    #
    # @overload get_site_to_site_vpn_attachment(params = {})
    # @param [Hash] params ({})
    def get_site_to_site_vpn_attachment(params = {}, options = {})
      req = build_request(:get_site_to_site_vpn_attachment, params)
      req.send_request(options)
    end

    # Gets information about one or more of your sites in a global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [Array<String>] :site_ids
    #   One or more site IDs. The maximum is 10.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetSitesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSitesResponse#sites #sites} => Array&lt;Types::Site&gt;
    #   * {Types::GetSitesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sites({
    #     global_network_id: "GlobalNetworkId", # required
    #     site_ids: ["SiteId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.sites #=> Array
    #   resp.sites[0].site_id #=> String
    #   resp.sites[0].site_arn #=> String
    #   resp.sites[0].global_network_id #=> String
    #   resp.sites[0].description #=> String
    #   resp.sites[0].location.address #=> String
    #   resp.sites[0].location.latitude #=> String
    #   resp.sites[0].location.longitude #=> String
    #   resp.sites[0].created_at #=> Time
    #   resp.sites[0].state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.sites[0].tags #=> Array
    #   resp.sites[0].tags[0].key #=> String
    #   resp.sites[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetSites AWS API Documentation
    #
    # @overload get_sites(params = {})
    # @param [Hash] params ({})
    def get_sites(params = {}, options = {})
      req = build_request(:get_sites, params)
      req.send_request(options)
    end

    # Gets information about one or more of your transit gateway Connect
    # peer associations in a global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [Array<String>] :transit_gateway_connect_peer_arns
    #   One or more transit gateway Connect peer Amazon Resource Names (ARNs).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetTransitGatewayConnectPeerAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTransitGatewayConnectPeerAssociationsResponse#transit_gateway_connect_peer_associations #transit_gateway_connect_peer_associations} => Array&lt;Types::TransitGatewayConnectPeerAssociation&gt;
    #   * {Types::GetTransitGatewayConnectPeerAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transit_gateway_connect_peer_associations({
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_connect_peer_arns: ["TransitGatewayConnectPeerArn"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.transit_gateway_connect_peer_associations #=> Array
    #   resp.transit_gateway_connect_peer_associations[0].transit_gateway_connect_peer_arn #=> String
    #   resp.transit_gateway_connect_peer_associations[0].global_network_id #=> String
    #   resp.transit_gateway_connect_peer_associations[0].device_id #=> String
    #   resp.transit_gateway_connect_peer_associations[0].link_id #=> String
    #   resp.transit_gateway_connect_peer_associations[0].state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayConnectPeerAssociations AWS API Documentation
    #
    # @overload get_transit_gateway_connect_peer_associations(params = {})
    # @param [Hash] params ({})
    def get_transit_gateway_connect_peer_associations(params = {}, options = {})
      req = build_request(:get_transit_gateway_connect_peer_associations, params)
      req.send_request(options)
    end

    # Returns information about a transit gateway peer.
    #
    # @option params [required, String] :peering_id
    #   The ID of the peering request.
    #
    # @return [Types::GetTransitGatewayPeeringResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTransitGatewayPeeringResponse#transit_gateway_peering #transit_gateway_peering} => Types::TransitGatewayPeering
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transit_gateway_peering({
    #     peering_id: "PeeringId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transit_gateway_peering.peering.core_network_id #=> String
    #   resp.transit_gateway_peering.peering.core_network_arn #=> String
    #   resp.transit_gateway_peering.peering.peering_id #=> String
    #   resp.transit_gateway_peering.peering.owner_account_id #=> String
    #   resp.transit_gateway_peering.peering.peering_type #=> String, one of "TRANSIT_GATEWAY"
    #   resp.transit_gateway_peering.peering.state #=> String, one of "CREATING", "FAILED", "AVAILABLE", "DELETING"
    #   resp.transit_gateway_peering.peering.edge_location #=> String
    #   resp.transit_gateway_peering.peering.resource_arn #=> String
    #   resp.transit_gateway_peering.peering.tags #=> Array
    #   resp.transit_gateway_peering.peering.tags[0].key #=> String
    #   resp.transit_gateway_peering.peering.tags[0].value #=> String
    #   resp.transit_gateway_peering.peering.created_at #=> Time
    #   resp.transit_gateway_peering.transit_gateway_arn #=> String
    #   resp.transit_gateway_peering.transit_gateway_peering_attachment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayPeering AWS API Documentation
    #
    # @overload get_transit_gateway_peering(params = {})
    # @param [Hash] params ({})
    def get_transit_gateway_peering(params = {}, options = {})
      req = build_request(:get_transit_gateway_peering, params)
      req.send_request(options)
    end

    # Gets information about the transit gateway registrations in a
    # specified global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [Array<String>] :transit_gateway_arns
    #   The Amazon Resource Names (ARNs) of one or more transit gateways. The
    #   maximum is 10.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::GetTransitGatewayRegistrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTransitGatewayRegistrationsResponse#transit_gateway_registrations #transit_gateway_registrations} => Array&lt;Types::TransitGatewayRegistration&gt;
    #   * {Types::GetTransitGatewayRegistrationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transit_gateway_registrations({
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_arns: ["TransitGatewayArn"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.transit_gateway_registrations #=> Array
    #   resp.transit_gateway_registrations[0].global_network_id #=> String
    #   resp.transit_gateway_registrations[0].transit_gateway_arn #=> String
    #   resp.transit_gateway_registrations[0].state.code #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED", "FAILED"
    #   resp.transit_gateway_registrations[0].state.message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayRegistrations AWS API Documentation
    #
    # @overload get_transit_gateway_registrations(params = {})
    # @param [Hash] params ({})
    def get_transit_gateway_registrations(params = {}, options = {})
      req = build_request(:get_transit_gateway_registrations, params)
      req.send_request(options)
    end

    # Returns information about a transit gateway route table attachment.
    #
    # @option params [required, String] :attachment_id
    #   The ID of the transit gateway route table attachment.
    #
    # @return [Types::GetTransitGatewayRouteTableAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTransitGatewayRouteTableAttachmentResponse#transit_gateway_route_table_attachment #transit_gateway_route_table_attachment} => Types::TransitGatewayRouteTableAttachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transit_gateway_route_table_attachment({
    #     attachment_id: "AttachmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transit_gateway_route_table_attachment.attachment.core_network_id #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.core_network_arn #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.attachment_id #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.owner_account_id #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.transit_gateway_route_table_attachment.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.transit_gateway_route_table_attachment.attachment.edge_location #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.resource_arn #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.transit_gateway_route_table_attachment.attachment.segment_name #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.tags #=> Array
    #   resp.transit_gateway_route_table_attachment.attachment.tags[0].key #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.tags[0].value #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.proposed_segment_change.tags #=> Array
    #   resp.transit_gateway_route_table_attachment.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.transit_gateway_route_table_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.transit_gateway_route_table_attachment.attachment.created_at #=> Time
    #   resp.transit_gateway_route_table_attachment.attachment.updated_at #=> Time
    #   resp.transit_gateway_route_table_attachment.peering_id #=> String
    #   resp.transit_gateway_route_table_attachment.transit_gateway_route_table_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetTransitGatewayRouteTableAttachment AWS API Documentation
    #
    # @overload get_transit_gateway_route_table_attachment(params = {})
    # @param [Hash] params ({})
    def get_transit_gateway_route_table_attachment(params = {}, options = {})
      req = build_request(:get_transit_gateway_route_table_attachment, params)
      req.send_request(options)
    end

    # Returns information about a VPC attachment.
    #
    # @option params [required, String] :attachment_id
    #   The ID of the attachment.
    #
    # @return [Types::GetVpcAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVpcAttachmentResponse#vpc_attachment #vpc_attachment} => Types::VpcAttachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpc_attachment({
    #     attachment_id: "AttachmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_attachment.attachment.core_network_id #=> String
    #   resp.vpc_attachment.attachment.core_network_arn #=> String
    #   resp.vpc_attachment.attachment.attachment_id #=> String
    #   resp.vpc_attachment.attachment.owner_account_id #=> String
    #   resp.vpc_attachment.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.vpc_attachment.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.vpc_attachment.attachment.edge_location #=> String
    #   resp.vpc_attachment.attachment.resource_arn #=> String
    #   resp.vpc_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.vpc_attachment.attachment.segment_name #=> String
    #   resp.vpc_attachment.attachment.tags #=> Array
    #   resp.vpc_attachment.attachment.tags[0].key #=> String
    #   resp.vpc_attachment.attachment.tags[0].value #=> String
    #   resp.vpc_attachment.attachment.proposed_segment_change.tags #=> Array
    #   resp.vpc_attachment.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.vpc_attachment.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.vpc_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.vpc_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.vpc_attachment.attachment.created_at #=> Time
    #   resp.vpc_attachment.attachment.updated_at #=> Time
    #   resp.vpc_attachment.subnet_arns #=> Array
    #   resp.vpc_attachment.subnet_arns[0] #=> String
    #   resp.vpc_attachment.options.ipv_6_support #=> Boolean
    #   resp.vpc_attachment.options.appliance_mode_support #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/GetVpcAttachment AWS API Documentation
    #
    # @overload get_vpc_attachment(params = {})
    # @param [Hash] params ({})
    def get_vpc_attachment(params = {}, options = {})
      req = build_request(:get_vpc_attachment, params)
      req.send_request(options)
    end

    # Returns a list of core network attachments.
    #
    # @option params [String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [String] :attachment_type
    #   The type of attachment.
    #
    # @option params [String] :edge_location
    #   The Region where the edge is located.
    #
    # @option params [String] :state
    #   The state of the attachment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListAttachmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttachmentsResponse#attachments #attachments} => Array&lt;Types::Attachment&gt;
    #   * {Types::ListAttachmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attachments({
    #     core_network_id: "CoreNetworkId",
    #     attachment_type: "CONNECT", # accepts CONNECT, SITE_TO_SITE_VPN, VPC, TRANSIT_GATEWAY_ROUTE_TABLE
    #     edge_location: "ExternalRegionCode",
    #     state: "REJECTED", # accepts REJECTED, PENDING_ATTACHMENT_ACCEPTANCE, CREATING, FAILED, AVAILABLE, UPDATING, PENDING_NETWORK_UPDATE, PENDING_TAG_ACCEPTANCE, DELETING
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.attachments #=> Array
    #   resp.attachments[0].core_network_id #=> String
    #   resp.attachments[0].core_network_arn #=> String
    #   resp.attachments[0].attachment_id #=> String
    #   resp.attachments[0].owner_account_id #=> String
    #   resp.attachments[0].attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.attachments[0].state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.attachments[0].edge_location #=> String
    #   resp.attachments[0].resource_arn #=> String
    #   resp.attachments[0].attachment_policy_rule_number #=> Integer
    #   resp.attachments[0].segment_name #=> String
    #   resp.attachments[0].tags #=> Array
    #   resp.attachments[0].tags[0].key #=> String
    #   resp.attachments[0].tags[0].value #=> String
    #   resp.attachments[0].proposed_segment_change.tags #=> Array
    #   resp.attachments[0].proposed_segment_change.tags[0].key #=> String
    #   resp.attachments[0].proposed_segment_change.tags[0].value #=> String
    #   resp.attachments[0].proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.attachments[0].proposed_segment_change.segment_name #=> String
    #   resp.attachments[0].created_at #=> Time
    #   resp.attachments[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListAttachments AWS API Documentation
    #
    # @overload list_attachments(params = {})
    # @param [Hash] params ({})
    def list_attachments(params = {}, options = {})
      req = build_request(:list_attachments, params)
      req.send_request(options)
    end

    # Returns a list of core network Connect peers.
    #
    # @option params [String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [String] :connect_attachment_id
    #   The ID of the attachment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListConnectPeersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectPeersResponse#connect_peers #connect_peers} => Array&lt;Types::ConnectPeerSummary&gt;
    #   * {Types::ListConnectPeersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connect_peers({
    #     core_network_id: "CoreNetworkId",
    #     connect_attachment_id: "AttachmentId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connect_peers #=> Array
    #   resp.connect_peers[0].core_network_id #=> String
    #   resp.connect_peers[0].connect_attachment_id #=> String
    #   resp.connect_peers[0].connect_peer_id #=> String
    #   resp.connect_peers[0].edge_location #=> String
    #   resp.connect_peers[0].connect_peer_state #=> String, one of "CREATING", "FAILED", "AVAILABLE", "DELETING"
    #   resp.connect_peers[0].created_at #=> Time
    #   resp.connect_peers[0].tags #=> Array
    #   resp.connect_peers[0].tags[0].key #=> String
    #   resp.connect_peers[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListConnectPeers AWS API Documentation
    #
    # @overload list_connect_peers(params = {})
    # @param [Hash] params ({})
    def list_connect_peers(params = {}, options = {})
      req = build_request(:list_connect_peers, params)
      req.send_request(options)
    end

    # Returns a list of core network policy versions.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListCoreNetworkPolicyVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCoreNetworkPolicyVersionsResponse#core_network_policy_versions #core_network_policy_versions} => Array&lt;Types::CoreNetworkPolicyVersion&gt;
    #   * {Types::ListCoreNetworkPolicyVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_core_network_policy_versions({
    #     core_network_id: "CoreNetworkId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.core_network_policy_versions #=> Array
    #   resp.core_network_policy_versions[0].core_network_id #=> String
    #   resp.core_network_policy_versions[0].policy_version_id #=> Integer
    #   resp.core_network_policy_versions[0].alias #=> String, one of "LIVE", "LATEST"
    #   resp.core_network_policy_versions[0].description #=> String
    #   resp.core_network_policy_versions[0].created_at #=> Time
    #   resp.core_network_policy_versions[0].change_set_state #=> String, one of "PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListCoreNetworkPolicyVersions AWS API Documentation
    #
    # @overload list_core_network_policy_versions(params = {})
    # @param [Hash] params ({})
    def list_core_network_policy_versions(params = {}, options = {})
      req = build_request(:list_core_network_policy_versions, params)
      req.send_request(options)
    end

    # Returns a list of owned and shared core networks.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListCoreNetworksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCoreNetworksResponse#core_networks #core_networks} => Array&lt;Types::CoreNetworkSummary&gt;
    #   * {Types::ListCoreNetworksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_core_networks({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.core_networks #=> Array
    #   resp.core_networks[0].core_network_id #=> String
    #   resp.core_networks[0].core_network_arn #=> String
    #   resp.core_networks[0].global_network_id #=> String
    #   resp.core_networks[0].owner_account_id #=> String
    #   resp.core_networks[0].state #=> String, one of "CREATING", "UPDATING", "AVAILABLE", "DELETING"
    #   resp.core_networks[0].description #=> String
    #   resp.core_networks[0].tags #=> Array
    #   resp.core_networks[0].tags[0].key #=> String
    #   resp.core_networks[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListCoreNetworks AWS API Documentation
    #
    # @overload list_core_networks(params = {})
    # @param [Hash] params ({})
    def list_core_networks(params = {}, options = {})
      req = build_request(:list_core_networks, params)
      req.send_request(options)
    end

    # Gets the status of the Service Linked Role (SLR) deployment for the
    # accounts in a given Amazon Web Services Organization.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListOrganizationServiceAccessStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationServiceAccessStatusResponse#organization_status #organization_status} => Types::OrganizationStatus
    #   * {Types::ListOrganizationServiceAccessStatusResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_service_access_status({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_status.organization_id #=> String
    #   resp.organization_status.organization_aws_service_access_status #=> String
    #   resp.organization_status.slr_deployment_status #=> String
    #   resp.organization_status.account_status_list #=> Array
    #   resp.organization_status.account_status_list[0].account_id #=> String
    #   resp.organization_status.account_status_list[0].slr_deployment_status #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListOrganizationServiceAccessStatus AWS API Documentation
    #
    # @overload list_organization_service_access_status(params = {})
    # @param [Hash] params ({})
    def list_organization_service_access_status(params = {}, options = {})
      req = build_request(:list_organization_service_access_status, params)
      req.send_request(options)
    end

    # Lists the peerings for a core network.
    #
    # @option params [String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [String] :peering_type
    #   Returns a list of a peering requests.
    #
    # @option params [String] :edge_location
    #   Returns a list edge locations for the
    #
    # @option params [String] :state
    #   Returns a list of the peering request states.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListPeeringsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPeeringsResponse#peerings #peerings} => Array&lt;Types::Peering&gt;
    #   * {Types::ListPeeringsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_peerings({
    #     core_network_id: "CoreNetworkId",
    #     peering_type: "TRANSIT_GATEWAY", # accepts TRANSIT_GATEWAY
    #     edge_location: "ExternalRegionCode",
    #     state: "CREATING", # accepts CREATING, FAILED, AVAILABLE, DELETING
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.peerings #=> Array
    #   resp.peerings[0].core_network_id #=> String
    #   resp.peerings[0].core_network_arn #=> String
    #   resp.peerings[0].peering_id #=> String
    #   resp.peerings[0].owner_account_id #=> String
    #   resp.peerings[0].peering_type #=> String, one of "TRANSIT_GATEWAY"
    #   resp.peerings[0].state #=> String, one of "CREATING", "FAILED", "AVAILABLE", "DELETING"
    #   resp.peerings[0].edge_location #=> String
    #   resp.peerings[0].resource_arn #=> String
    #   resp.peerings[0].tags #=> Array
    #   resp.peerings[0].tags[0].key #=> String
    #   resp.peerings[0].tags[0].value #=> String
    #   resp.peerings[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListPeerings AWS API Documentation
    #
    # @overload list_peerings(params = {})
    # @param [Hash] params ({})
    def list_peerings(params = {}, options = {})
      req = build_request(:list_peerings, params)
      req.send_request(options)
    end

    # Lists the tags for a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates a new, immutable version of a core network policy. A
    # subsequent change set is created showing the differences between the
    # LIVE policy and the submitted policy.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [required, String] :policy_document
    #   The policy document.
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    # @option params [String] :description
    #   a core network policy description.
    #
    # @option params [Integer] :latest_version_id
    #   The ID of a core network policy.
    #
    # @option params [String] :client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PutCoreNetworkPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutCoreNetworkPolicyResponse#core_network_policy #core_network_policy} => Types::CoreNetworkPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_core_network_policy({
    #     core_network_id: "CoreNetworkId", # required
    #     policy_document: "CoreNetworkPolicyDocument", # required
    #     description: "ConstrainedString",
    #     latest_version_id: 1,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.core_network_policy.core_network_id #=> String
    #   resp.core_network_policy.policy_version_id #=> Integer
    #   resp.core_network_policy.alias #=> String, one of "LIVE", "LATEST"
    #   resp.core_network_policy.description #=> String
    #   resp.core_network_policy.created_at #=> Time
    #   resp.core_network_policy.change_set_state #=> String, one of "PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"
    #   resp.core_network_policy.policy_errors #=> Array
    #   resp.core_network_policy.policy_errors[0].error_code #=> String
    #   resp.core_network_policy.policy_errors[0].message #=> String
    #   resp.core_network_policy.policy_errors[0].path #=> String
    #   resp.core_network_policy.policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/PutCoreNetworkPolicy AWS API Documentation
    #
    # @overload put_core_network_policy(params = {})
    # @param [Hash] params ({})
    def put_core_network_policy(params = {}, options = {})
      req = build_request(:put_core_network_policy, params)
      req.send_request(options)
    end

    # Creates or updates a resource policy.
    #
    # @option params [required, String] :policy_document
    #   The JSON resource policy document.
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy_document: "ResourcePolicyDocument", # required
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Registers a transit gateway in your global network. Not all Regions
    # support transit gateways for global networks. For a list of the
    # supported Regions, see [Region Availability][1] in the *Amazon Web
    # Services Transit Gateways for Global Networks User Guide*. The transit
    # gateway can be in any of the supported Amazon Web Services Regions,
    # but it must be owned by the same Amazon Web Services account that owns
    # the global network. You cannot register a transit gateway in more than
    # one global network.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/network-manager/latest/tgwnm/what-are-global-networks.html#nm-available-regions
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :transit_gateway_arn
    #   The Amazon Resource Name (ARN) of the transit gateway.
    #
    # @return [Types::RegisterTransitGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterTransitGatewayResponse#transit_gateway_registration #transit_gateway_registration} => Types::TransitGatewayRegistration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_transit_gateway({
    #     global_network_id: "GlobalNetworkId", # required
    #     transit_gateway_arn: "TransitGatewayArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transit_gateway_registration.global_network_id #=> String
    #   resp.transit_gateway_registration.transit_gateway_arn #=> String
    #   resp.transit_gateway_registration.state.code #=> String, one of "PENDING", "AVAILABLE", "DELETING", "DELETED", "FAILED"
    #   resp.transit_gateway_registration.state.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RegisterTransitGateway AWS API Documentation
    #
    # @overload register_transit_gateway(params = {})
    # @param [Hash] params ({})
    def register_transit_gateway(params = {}, options = {})
      req = build_request(:register_transit_gateway, params)
      req.send_request(options)
    end

    # Rejects a core network attachment request.
    #
    # @option params [required, String] :attachment_id
    #   The ID of the attachment.
    #
    # @return [Types::RejectAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectAttachmentResponse#attachment #attachment} => Types::Attachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_attachment({
    #     attachment_id: "AttachmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment.core_network_id #=> String
    #   resp.attachment.core_network_arn #=> String
    #   resp.attachment.attachment_id #=> String
    #   resp.attachment.owner_account_id #=> String
    #   resp.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.attachment.edge_location #=> String
    #   resp.attachment.resource_arn #=> String
    #   resp.attachment.attachment_policy_rule_number #=> Integer
    #   resp.attachment.segment_name #=> String
    #   resp.attachment.tags #=> Array
    #   resp.attachment.tags[0].key #=> String
    #   resp.attachment.tags[0].value #=> String
    #   resp.attachment.proposed_segment_change.tags #=> Array
    #   resp.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.attachment.proposed_segment_change.segment_name #=> String
    #   resp.attachment.created_at #=> Time
    #   resp.attachment.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RejectAttachment AWS API Documentation
    #
    # @overload reject_attachment(params = {})
    # @param [Hash] params ({})
    def reject_attachment(params = {}, options = {})
      req = build_request(:reject_attachment, params)
      req.send_request(options)
    end

    # Restores a previous policy version as a new, immutable version of a
    # core network policy. A subsequent change set is created showing the
    # differences between the LIVE policy and restored policy.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [required, Integer] :policy_version_id
    #   The ID of the policy version to restore.
    #
    # @return [Types::RestoreCoreNetworkPolicyVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreCoreNetworkPolicyVersionResponse#core_network_policy #core_network_policy} => Types::CoreNetworkPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_core_network_policy_version({
    #     core_network_id: "CoreNetworkId", # required
    #     policy_version_id: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.core_network_policy.core_network_id #=> String
    #   resp.core_network_policy.policy_version_id #=> Integer
    #   resp.core_network_policy.alias #=> String, one of "LIVE", "LATEST"
    #   resp.core_network_policy.description #=> String
    #   resp.core_network_policy.created_at #=> Time
    #   resp.core_network_policy.change_set_state #=> String, one of "PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"
    #   resp.core_network_policy.policy_errors #=> Array
    #   resp.core_network_policy.policy_errors[0].error_code #=> String
    #   resp.core_network_policy.policy_errors[0].message #=> String
    #   resp.core_network_policy.policy_errors[0].path #=> String
    #   resp.core_network_policy.policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/RestoreCoreNetworkPolicyVersion AWS API Documentation
    #
    # @overload restore_core_network_policy_version(params = {})
    # @param [Hash] params ({})
    def restore_core_network_policy_version(params = {}, options = {})
      req = build_request(:restore_core_network_policy_version, params)
      req.send_request(options)
    end

    # Enables the Network Manager service for an Amazon Web Services
    # Organization. This can only be called by a management account within
    # the organization.
    #
    # @option params [required, String] :action
    #   The action to take for the update request. This can be either `ENABLE`
    #   or `DISABLE`.
    #
    # @return [Types::StartOrganizationServiceAccessUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartOrganizationServiceAccessUpdateResponse#organization_status #organization_status} => Types::OrganizationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_organization_service_access_update({
    #     action: "Action", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_status.organization_id #=> String
    #   resp.organization_status.organization_aws_service_access_status #=> String
    #   resp.organization_status.slr_deployment_status #=> String
    #   resp.organization_status.account_status_list #=> Array
    #   resp.organization_status.account_status_list[0].account_id #=> String
    #   resp.organization_status.account_status_list[0].slr_deployment_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/StartOrganizationServiceAccessUpdate AWS API Documentation
    #
    # @overload start_organization_service_access_update(params = {})
    # @param [Hash] params ({})
    def start_organization_service_access_update(params = {}, options = {})
      req = build_request(:start_organization_service_access_update, params)
      req.send_request(options)
    end

    # Starts analyzing the routing path between the specified source and
    # destination. For more information, see [Route Analyzer][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc/latest/tgw/route-analyzer.html
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, Types::RouteAnalysisEndpointOptionsSpecification] :source
    #   The source from which traffic originates.
    #
    # @option params [required, Types::RouteAnalysisEndpointOptionsSpecification] :destination
    #   The destination.
    #
    # @option params [Boolean] :include_return_path
    #   Indicates whether to analyze the return path. The default is `false`.
    #
    # @option params [Boolean] :use_middleboxes
    #   Indicates whether to include the location of middlebox appliances in
    #   the route analysis. The default is `false`.
    #
    # @return [Types::StartRouteAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRouteAnalysisResponse#route_analysis #route_analysis} => Types::RouteAnalysis
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_route_analysis({
    #     global_network_id: "GlobalNetworkId", # required
    #     source: { # required
    #       transit_gateway_attachment_arn: "TransitGatewayAttachmentArn",
    #       ip_address: "IPAddress",
    #     },
    #     destination: { # required
    #       transit_gateway_attachment_arn: "TransitGatewayAttachmentArn",
    #       ip_address: "IPAddress",
    #     },
    #     include_return_path: false,
    #     use_middleboxes: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.route_analysis.global_network_id #=> String
    #   resp.route_analysis.owner_account_id #=> String
    #   resp.route_analysis.route_analysis_id #=> String
    #   resp.route_analysis.start_timestamp #=> Time
    #   resp.route_analysis.status #=> String, one of "RUNNING", "COMPLETED", "FAILED"
    #   resp.route_analysis.source.transit_gateway_attachment_arn #=> String
    #   resp.route_analysis.source.transit_gateway_arn #=> String
    #   resp.route_analysis.source.ip_address #=> String
    #   resp.route_analysis.destination.transit_gateway_attachment_arn #=> String
    #   resp.route_analysis.destination.transit_gateway_arn #=> String
    #   resp.route_analysis.destination.ip_address #=> String
    #   resp.route_analysis.include_return_path #=> Boolean
    #   resp.route_analysis.use_middleboxes #=> Boolean
    #   resp.route_analysis.forward_path.completion_status.result_code #=> String, one of "CONNECTED", "NOT_CONNECTED"
    #   resp.route_analysis.forward_path.completion_status.reason_code #=> String, one of "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", "CYCLIC_PATH_DETECTED", "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", "ROUTE_NOT_FOUND", "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH", "MAX_HOPS_EXCEEDED", "POSSIBLE_MIDDLEBOX", "NO_DESTINATION_ARN_PROVIDED"
    #   resp.route_analysis.forward_path.completion_status.reason_context #=> Hash
    #   resp.route_analysis.forward_path.completion_status.reason_context["ReasonContextKey"] #=> String
    #   resp.route_analysis.forward_path.path #=> Array
    #   resp.route_analysis.forward_path.path[0].sequence #=> Integer
    #   resp.route_analysis.forward_path.path[0].resource.registered_gateway_arn #=> String
    #   resp.route_analysis.forward_path.path[0].resource.resource_arn #=> String
    #   resp.route_analysis.forward_path.path[0].resource.resource_type #=> String
    #   resp.route_analysis.forward_path.path[0].resource.definition #=> String
    #   resp.route_analysis.forward_path.path[0].resource.name_tag #=> String
    #   resp.route_analysis.forward_path.path[0].resource.is_middlebox #=> Boolean
    #   resp.route_analysis.forward_path.path[0].destination_cidr_block #=> String
    #   resp.route_analysis.return_path.completion_status.result_code #=> String, one of "CONNECTED", "NOT_CONNECTED"
    #   resp.route_analysis.return_path.completion_status.reason_code #=> String, one of "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", "CYCLIC_PATH_DETECTED", "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", "ROUTE_NOT_FOUND", "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH", "MAX_HOPS_EXCEEDED", "POSSIBLE_MIDDLEBOX", "NO_DESTINATION_ARN_PROVIDED"
    #   resp.route_analysis.return_path.completion_status.reason_context #=> Hash
    #   resp.route_analysis.return_path.completion_status.reason_context["ReasonContextKey"] #=> String
    #   resp.route_analysis.return_path.path #=> Array
    #   resp.route_analysis.return_path.path[0].sequence #=> Integer
    #   resp.route_analysis.return_path.path[0].resource.registered_gateway_arn #=> String
    #   resp.route_analysis.return_path.path[0].resource.resource_arn #=> String
    #   resp.route_analysis.return_path.path[0].resource.resource_type #=> String
    #   resp.route_analysis.return_path.path[0].resource.definition #=> String
    #   resp.route_analysis.return_path.path[0].resource.name_tag #=> String
    #   resp.route_analysis.return_path.path[0].resource.is_middlebox #=> Boolean
    #   resp.route_analysis.return_path.path[0].destination_cidr_block #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/StartRouteAnalysis AWS API Documentation
    #
    # @overload start_route_analysis(params = {})
    # @param [Hash] params ({})
    def start_route_analysis(params = {}, options = {})
      req = build_request(:start_route_analysis, params)
      req.send_request(options)
    end

    # Tags a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to apply to the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove from the specified resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the information for an existing connection. To remove
    # information for any of the parameters, specify an empty string.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :connection_id
    #   The ID of the connection.
    #
    # @option params [String] :link_id
    #   The ID of the link for the first device in the connection.
    #
    # @option params [String] :connected_link_id
    #   The ID of the link for the second device in the connection.
    #
    # @option params [String] :description
    #   A description of the connection.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #
    # @return [Types::UpdateConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConnectionResponse#connection #connection} => Types::Connection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection({
    #     global_network_id: "GlobalNetworkId", # required
    #     connection_id: "ConnectionId", # required
    #     link_id: "LinkId",
    #     connected_link_id: "LinkId",
    #     description: "ConstrainedString",
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.connection_id #=> String
    #   resp.connection.connection_arn #=> String
    #   resp.connection.global_network_id #=> String
    #   resp.connection.device_id #=> String
    #   resp.connection.connected_device_id #=> String
    #   resp.connection.link_id #=> String
    #   resp.connection.connected_link_id #=> String
    #   resp.connection.description #=> String
    #   resp.connection.created_at #=> Time
    #   resp.connection.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.connection.tags #=> Array
    #   resp.connection.tags[0].key #=> String
    #   resp.connection.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateConnection AWS API Documentation
    #
    # @overload update_connection(params = {})
    # @param [Hash] params ({})
    def update_connection(params = {}, options = {})
      req = build_request(:update_connection, params)
      req.send_request(options)
    end

    # Updates the description of a core network.
    #
    # @option params [required, String] :core_network_id
    #   The ID of a core network.
    #
    # @option params [String] :description
    #   The description of the update.
    #
    # @return [Types::UpdateCoreNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCoreNetworkResponse#core_network #core_network} => Types::CoreNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_core_network({
    #     core_network_id: "CoreNetworkId", # required
    #     description: "ConstrainedString",
    #   })
    #
    # @example Response structure
    #
    #   resp.core_network.global_network_id #=> String
    #   resp.core_network.core_network_id #=> String
    #   resp.core_network.core_network_arn #=> String
    #   resp.core_network.description #=> String
    #   resp.core_network.created_at #=> Time
    #   resp.core_network.state #=> String, one of "CREATING", "UPDATING", "AVAILABLE", "DELETING"
    #   resp.core_network.segments #=> Array
    #   resp.core_network.segments[0].name #=> String
    #   resp.core_network.segments[0].edge_locations #=> Array
    #   resp.core_network.segments[0].edge_locations[0] #=> String
    #   resp.core_network.segments[0].shared_segments #=> Array
    #   resp.core_network.segments[0].shared_segments[0] #=> String
    #   resp.core_network.edges #=> Array
    #   resp.core_network.edges[0].edge_location #=> String
    #   resp.core_network.edges[0].asn #=> Integer
    #   resp.core_network.edges[0].inside_cidr_blocks #=> Array
    #   resp.core_network.edges[0].inside_cidr_blocks[0] #=> String
    #   resp.core_network.tags #=> Array
    #   resp.core_network.tags[0].key #=> String
    #   resp.core_network.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateCoreNetwork AWS API Documentation
    #
    # @overload update_core_network(params = {})
    # @param [Hash] params ({})
    def update_core_network(params = {}, options = {})
      req = build_request(:update_core_network, params)
      req.send_request(options)
    end

    # Updates the details for an existing device. To remove information for
    # any of the parameters, specify an empty string.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :device_id
    #   The ID of the device.
    #
    # @option params [Types::AWSLocation] :aws_location
    #   The Amazon Web Services location of the device, if applicable. For an
    #   on-premises device, you can omit this parameter.
    #
    # @option params [String] :description
    #   A description of the device.
    #
    #   Constraints: Maximum length of 256 characters.
    #
    # @option params [String] :type
    #   The type of the device.
    #
    # @option params [String] :vendor
    #   The vendor of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #
    # @option params [String] :model
    #   The model of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #
    # @option params [String] :serial_number
    #   The serial number of the device.
    #
    #   Constraints: Maximum length of 128 characters.
    #
    # @option params [Types::Location] :location
    #   Describes a location.
    #
    # @option params [String] :site_id
    #   The ID of the site.
    #
    # @return [Types::UpdateDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDeviceResponse#device #device} => Types::Device
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device({
    #     global_network_id: "GlobalNetworkId", # required
    #     device_id: "DeviceId", # required
    #     aws_location: {
    #       zone: "ConstrainedString",
    #       subnet_arn: "SubnetArn",
    #     },
    #     description: "ConstrainedString",
    #     type: "ConstrainedString",
    #     vendor: "ConstrainedString",
    #     model: "ConstrainedString",
    #     serial_number: "ConstrainedString",
    #     location: {
    #       address: "ConstrainedString",
    #       latitude: "ConstrainedString",
    #       longitude: "ConstrainedString",
    #     },
    #     site_id: "SiteId",
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_id #=> String
    #   resp.device.device_arn #=> String
    #   resp.device.global_network_id #=> String
    #   resp.device.aws_location.zone #=> String
    #   resp.device.aws_location.subnet_arn #=> String
    #   resp.device.description #=> String
    #   resp.device.type #=> String
    #   resp.device.vendor #=> String
    #   resp.device.model #=> String
    #   resp.device.serial_number #=> String
    #   resp.device.location.address #=> String
    #   resp.device.location.latitude #=> String
    #   resp.device.location.longitude #=> String
    #   resp.device.site_id #=> String
    #   resp.device.created_at #=> Time
    #   resp.device.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.device.tags #=> Array
    #   resp.device.tags[0].key #=> String
    #   resp.device.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateDevice AWS API Documentation
    #
    # @overload update_device(params = {})
    # @param [Hash] params ({})
    def update_device(params = {}, options = {})
      req = build_request(:update_device, params)
      req.send_request(options)
    end

    # Updates an existing global network. To remove information for any of
    # the parameters, specify an empty string.
    #
    # @option params [required, String] :global_network_id
    #   The ID of your global network.
    #
    # @option params [String] :description
    #   A description of the global network.
    #
    #   Constraints: Maximum length of 256 characters.
    #
    # @return [Types::UpdateGlobalNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGlobalNetworkResponse#global_network #global_network} => Types::GlobalNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_network({
    #     global_network_id: "GlobalNetworkId", # required
    #     description: "ConstrainedString",
    #   })
    #
    # @example Response structure
    #
    #   resp.global_network.global_network_id #=> String
    #   resp.global_network.global_network_arn #=> String
    #   resp.global_network.description #=> String
    #   resp.global_network.created_at #=> Time
    #   resp.global_network.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.global_network.tags #=> Array
    #   resp.global_network.tags[0].key #=> String
    #   resp.global_network.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateGlobalNetwork AWS API Documentation
    #
    # @overload update_global_network(params = {})
    # @param [Hash] params ({})
    def update_global_network(params = {}, options = {})
      req = build_request(:update_global_network, params)
      req.send_request(options)
    end

    # Updates the details for an existing link. To remove information for
    # any of the parameters, specify an empty string.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :link_id
    #   The ID of the link.
    #
    # @option params [String] :description
    #   A description of the link.
    #
    #   Constraints: Maximum length of 256 characters.
    #
    # @option params [String] :type
    #   The type of the link.
    #
    #   Constraints: Maximum length of 128 characters.
    #
    # @option params [Types::Bandwidth] :bandwidth
    #   The upload and download speed in Mbps.
    #
    # @option params [String] :provider
    #   The provider of the link.
    #
    #   Constraints: Maximum length of 128 characters.
    #
    # @return [Types::UpdateLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLinkResponse#link #link} => Types::Link
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_link({
    #     global_network_id: "GlobalNetworkId", # required
    #     link_id: "LinkId", # required
    #     description: "ConstrainedString",
    #     type: "ConstrainedString",
    #     bandwidth: {
    #       upload_speed: 1,
    #       download_speed: 1,
    #     },
    #     provider: "ConstrainedString",
    #   })
    #
    # @example Response structure
    #
    #   resp.link.link_id #=> String
    #   resp.link.link_arn #=> String
    #   resp.link.global_network_id #=> String
    #   resp.link.site_id #=> String
    #   resp.link.description #=> String
    #   resp.link.type #=> String
    #   resp.link.bandwidth.upload_speed #=> Integer
    #   resp.link.bandwidth.download_speed #=> Integer
    #   resp.link.provider #=> String
    #   resp.link.created_at #=> Time
    #   resp.link.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.link.tags #=> Array
    #   resp.link.tags[0].key #=> String
    #   resp.link.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateLink AWS API Documentation
    #
    # @overload update_link(params = {})
    # @param [Hash] params ({})
    def update_link(params = {}, options = {})
      req = build_request(:update_link, params)
      req.send_request(options)
    end

    # Updates the resource metadata for the specified global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Hash<String,String>] :metadata
    #   The resource metadata.
    #
    # @return [Types::UpdateNetworkResourceMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNetworkResourceMetadataResponse#resource_arn #resource_arn} => String
    #   * {Types::UpdateNetworkResourceMetadataResponse#metadata #metadata} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_resource_metadata({
    #     global_network_id: "GlobalNetworkId", # required
    #     resource_arn: "ResourceArn", # required
    #     metadata: { # required
    #       "ConstrainedString" => "ConstrainedString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.metadata #=> Hash
    #   resp.metadata["ConstrainedString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateNetworkResourceMetadata AWS API Documentation
    #
    # @overload update_network_resource_metadata(params = {})
    # @param [Hash] params ({})
    def update_network_resource_metadata(params = {}, options = {})
      req = build_request(:update_network_resource_metadata, params)
      req.send_request(options)
    end

    # Updates the information for an existing site. To remove information
    # for any of the parameters, specify an empty string.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :site_id
    #   The ID of your site.
    #
    # @option params [String] :description
    #   A description of your site.
    #
    #   Constraints: Maximum length of 256 characters.
    #
    # @option params [Types::Location] :location
    #   The site location:
    #
    #   * `Address`: The physical address of the site.
    #
    #   * `Latitude`: The latitude of the site.
    #
    #   * `Longitude`: The longitude of the site.
    #
    # @return [Types::UpdateSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSiteResponse#site #site} => Types::Site
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_site({
    #     global_network_id: "GlobalNetworkId", # required
    #     site_id: "SiteId", # required
    #     description: "ConstrainedString",
    #     location: {
    #       address: "ConstrainedString",
    #       latitude: "ConstrainedString",
    #       longitude: "ConstrainedString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.site.site_id #=> String
    #   resp.site.site_arn #=> String
    #   resp.site.global_network_id #=> String
    #   resp.site.description #=> String
    #   resp.site.location.address #=> String
    #   resp.site.location.latitude #=> String
    #   resp.site.location.longitude #=> String
    #   resp.site.created_at #=> Time
    #   resp.site.state #=> String, one of "PENDING", "AVAILABLE", "DELETING", "UPDATING"
    #   resp.site.tags #=> Array
    #   resp.site.tags[0].key #=> String
    #   resp.site.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateSite AWS API Documentation
    #
    # @overload update_site(params = {})
    # @param [Hash] params ({})
    def update_site(params = {}, options = {})
      req = build_request(:update_site, params)
      req.send_request(options)
    end

    # Updates a VPC attachment.
    #
    # @option params [required, String] :attachment_id
    #   The ID of the attachment.
    #
    # @option params [Array<String>] :add_subnet_arns
    #   Adds a subnet ARN to the VPC attachment.
    #
    # @option params [Array<String>] :remove_subnet_arns
    #   Removes a subnet ARN from the attachment.
    #
    # @option params [Types::VpcOptions] :options
    #   Additional options for updating the VPC attachment.
    #
    # @return [Types::UpdateVpcAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVpcAttachmentResponse#vpc_attachment #vpc_attachment} => Types::VpcAttachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpc_attachment({
    #     attachment_id: "AttachmentId", # required
    #     add_subnet_arns: ["SubnetArn"],
    #     remove_subnet_arns: ["SubnetArn"],
    #     options: {
    #       ipv_6_support: false,
    #       appliance_mode_support: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_attachment.attachment.core_network_id #=> String
    #   resp.vpc_attachment.attachment.core_network_arn #=> String
    #   resp.vpc_attachment.attachment.attachment_id #=> String
    #   resp.vpc_attachment.attachment.owner_account_id #=> String
    #   resp.vpc_attachment.attachment.attachment_type #=> String, one of "CONNECT", "SITE_TO_SITE_VPN", "VPC", "TRANSIT_GATEWAY_ROUTE_TABLE"
    #   resp.vpc_attachment.attachment.state #=> String, one of "REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"
    #   resp.vpc_attachment.attachment.edge_location #=> String
    #   resp.vpc_attachment.attachment.resource_arn #=> String
    #   resp.vpc_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.vpc_attachment.attachment.segment_name #=> String
    #   resp.vpc_attachment.attachment.tags #=> Array
    #   resp.vpc_attachment.attachment.tags[0].key #=> String
    #   resp.vpc_attachment.attachment.tags[0].value #=> String
    #   resp.vpc_attachment.attachment.proposed_segment_change.tags #=> Array
    #   resp.vpc_attachment.attachment.proposed_segment_change.tags[0].key #=> String
    #   resp.vpc_attachment.attachment.proposed_segment_change.tags[0].value #=> String
    #   resp.vpc_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.vpc_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.vpc_attachment.attachment.created_at #=> Time
    #   resp.vpc_attachment.attachment.updated_at #=> Time
    #   resp.vpc_attachment.subnet_arns #=> Array
    #   resp.vpc_attachment.subnet_arns[0] #=> String
    #   resp.vpc_attachment.options.ipv_6_support #=> Boolean
    #   resp.vpc_attachment.options.appliance_mode_support #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/networkmanager-2019-07-05/UpdateVpcAttachment AWS API Documentation
    #
    # @overload update_vpc_attachment(params = {})
    # @param [Hash] params ({})
    def update_vpc_attachment(params = {}, options = {})
      req = build_request(:update_vpc_attachment, params)
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
      context[:gem_name] = 'aws-sdk-networkmanager'
      context[:gem_version] = '1.35.0'
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
