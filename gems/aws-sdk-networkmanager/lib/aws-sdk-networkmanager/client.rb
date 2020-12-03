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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Associates a customer gateway with a device and optionally, with a
    # link. If you specify a link, it must be associated with the specified
    # device.
    #
    # You can only associate customer gateways that are connected to a VPN
    # attachment on a transit gateway. The transit gateway must be
    # registered in your global network. When you register a transit
    # gateway, customer gateways that are connected to the transit gateway
    # are automatically included in the global network. To list customer
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
    #   The Amazon Resource Name (ARN) of the customer gateway. For more
    #   information, see [Resources Defined by Amazon EC2][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies
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
    #     customer_gateway_arn: "String", # required
    #     global_network_id: "String", # required
    #     device_id: "String", # required
    #     link_id: "String",
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
    #     global_network_id: "String", # required
    #     device_id: "String", # required
    #     link_id: "String", # required
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

    # Creates a new device in a global network. If you specify both a site
    # ID and a location, the location of the site is used for visualization
    # in the Network Manager console.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [String] :description
    #   A description of the device.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #
    # @option params [String] :type
    #   The type of the device.
    #
    # @option params [String] :vendor
    #   The vendor of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #
    # @option params [String] :model
    #   The model of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #
    # @option params [String] :serial_number
    #   The serial number of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
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
    #     global_network_id: "String", # required
    #     description: "String",
    #     type: "String",
    #     vendor: "String",
    #     model: "String",
    #     serial_number: "String",
    #     location: {
    #       address: "String",
    #       latitude: "String",
    #       longitude: "String",
    #     },
    #     site_id: "String",
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
    #   Length Constraints: Maximum length of 256 characters.
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
    #     description: "String",
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
    #   Length Constraints: Maximum length of 256 characters.
    #
    # @option params [String] :type
    #   The type of the link.
    #
    #   Constraints: Cannot include the following characters: \| \\ ^
    #
    #   Length Constraints: Maximum length of 128 characters.
    #
    # @option params [required, Types::Bandwidth] :bandwidth
    #   The upload speed and download speed in Mbps.
    #
    # @option params [String] :provider
    #   The provider of the link.
    #
    #   Constraints: Cannot include the following characters: \| \\ ^
    #
    #   Length Constraints: Maximum length of 128 characters.
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
    #     global_network_id: "String", # required
    #     description: "String",
    #     type: "String",
    #     bandwidth: { # required
    #       upload_speed: 1,
    #       download_speed: 1,
    #     },
    #     provider: "String",
    #     site_id: "String", # required
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
    #   Length Constraints: Maximum length of 256 characters.
    #
    # @option params [Types::Location] :location
    #   The site location. This information is used for visualization in the
    #   Network Manager console. If you specify the address, the latitude and
    #   longitude are automatically calculated.
    #
    #   * `Address`\: The physical address of the site.
    #
    #   * `Latitude`\: The latitude of the site.
    #
    #   * `Longitude`\: The longitude of the site.
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
    #     global_network_id: "String", # required
    #     description: "String",
    #     location: {
    #       address: "String",
    #       latitude: "String",
    #       longitude: "String",
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
    #     global_network_id: "String", # required
    #     device_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_id #=> String
    #   resp.device.device_arn #=> String
    #   resp.device.global_network_id #=> String
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
    # network objects (devices, links, and sites) and deregister all transit
    # gateways.
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
    #     global_network_id: "String", # required
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
    #     global_network_id: "String", # required
    #     link_id: "String", # required
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
    #     global_network_id: "String", # required
    #     site_id: "String", # required
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
    #     global_network_id: "String", # required
    #     transit_gateway_arn: "String", # required
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
    #     global_network_ids: ["String"],
    #     max_results: 1,
    #     next_token: "String",
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

    # Disassociates a customer gateway from a device and a link.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :customer_gateway_arn
    #   The Amazon Resource Name (ARN) of the customer gateway. For more
    #   information, see [Resources Defined by Amazon EC2][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies
    #
    # @return [Types::DisassociateCustomerGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateCustomerGatewayResponse#customer_gateway_association #customer_gateway_association} => Types::CustomerGatewayAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_customer_gateway({
    #     global_network_id: "String", # required
    #     customer_gateway_arn: "String", # required
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
    #     global_network_id: "String", # required
    #     device_id: "String", # required
    #     link_id: "String", # required
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

    # Gets the association information for customer gateways that are
    # associated with devices and links in your global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [Array<String>] :customer_gateway_arns
    #   One or more customer gateway Amazon Resource Names (ARNs). For more
    #   information, see [Resources Defined by Amazon EC2][1]. The maximum is
    #   10.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies
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
    #     global_network_id: "String", # required
    #     customer_gateway_arns: ["String"],
    #     max_results: 1,
    #     next_token: "String",
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
    #     global_network_id: "String", # required
    #     device_ids: ["String"],
    #     site_id: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_id #=> String
    #   resp.devices[0].device_arn #=> String
    #   resp.devices[0].global_network_id #=> String
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
    #     global_network_id: "String", # required
    #     device_id: "String",
    #     link_id: "String",
    #     max_results: 1,
    #     next_token: "String",
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
    #     global_network_id: "String", # required
    #     link_ids: ["String"],
    #     site_id: "String",
    #     type: "String",
    #     provider: "String",
    #     max_results: 1,
    #     next_token: "String",
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
    #     global_network_id: "String", # required
    #     site_ids: ["String"],
    #     max_results: 1,
    #     next_token: "String",
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
    #     global_network_id: "String", # required
    #     transit_gateway_arns: ["String"],
    #     max_results: 1,
    #     next_token: "String",
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
    #     resource_arn: "ResourceARN", # required
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

    # Registers a transit gateway in your global network. The transit
    # gateway can be in any AWS Region, but it must be owned by the same AWS
    # account that owns the global network. You cannot register a transit
    # gateway in more than one global network.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :transit_gateway_arn
    #   The Amazon Resource Name (ARN) of the transit gateway. For more
    #   information, see [Resources Defined by Amazon EC2][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies
    #
    # @return [Types::RegisterTransitGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterTransitGatewayResponse#transit_gateway_registration #transit_gateway_registration} => Types::TransitGatewayRegistration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_transit_gateway({
    #     global_network_id: "String", # required
    #     transit_gateway_arn: "String", # required
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
    #     resource_arn: "ResourceARN", # required
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
    #     resource_arn: "ResourceARN", # required
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

    # Updates the details for an existing device. To remove information for
    # any of the parameters, specify an empty string.
    #
    # @option params [required, String] :global_network_id
    #   The ID of the global network.
    #
    # @option params [required, String] :device_id
    #   The ID of the device.
    #
    # @option params [String] :description
    #   A description of the device.
    #
    #   Length Constraints: Maximum length of 256 characters.
    #
    # @option params [String] :type
    #   The type of the device.
    #
    # @option params [String] :vendor
    #   The vendor of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #
    # @option params [String] :model
    #   The model of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #
    # @option params [String] :serial_number
    #   The serial number of the device.
    #
    #   Length Constraints: Maximum length of 128 characters.
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
    #     global_network_id: "String", # required
    #     device_id: "String", # required
    #     description: "String",
    #     type: "String",
    #     vendor: "String",
    #     model: "String",
    #     serial_number: "String",
    #     location: {
    #       address: "String",
    #       latitude: "String",
    #       longitude: "String",
    #     },
    #     site_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_id #=> String
    #   resp.device.device_arn #=> String
    #   resp.device.global_network_id #=> String
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
    #   Length Constraints: Maximum length of 256 characters.
    #
    # @return [Types::UpdateGlobalNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGlobalNetworkResponse#global_network #global_network} => Types::GlobalNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_network({
    #     global_network_id: "String", # required
    #     description: "String",
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
    #   Length Constraints: Maximum length of 256 characters.
    #
    # @option params [String] :type
    #   The type of the link.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #
    # @option params [Types::Bandwidth] :bandwidth
    #   The upload and download speed in Mbps.
    #
    # @option params [String] :provider
    #   The provider of the link.
    #
    #   Length Constraints: Maximum length of 128 characters.
    #
    # @return [Types::UpdateLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLinkResponse#link #link} => Types::Link
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_link({
    #     global_network_id: "String", # required
    #     link_id: "String", # required
    #     description: "String",
    #     type: "String",
    #     bandwidth: {
    #       upload_speed: 1,
    #       download_speed: 1,
    #     },
    #     provider: "String",
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
    #   Length Constraints: Maximum length of 256 characters.
    #
    # @option params [Types::Location] :location
    #   The site location:
    #
    #   * `Address`\: The physical address of the site.
    #
    #   * `Latitude`\: The latitude of the site.
    #
    #   * `Longitude`\: The longitude of the site.
    #
    # @return [Types::UpdateSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSiteResponse#site #site} => Types::Site
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_site({
    #     global_network_id: "String", # required
    #     site_id: "String", # required
    #     description: "String",
    #     location: {
    #       address: "String",
    #       latitude: "String",
    #       longitude: "String",
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
      context[:gem_version] = '1.8.0'
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
