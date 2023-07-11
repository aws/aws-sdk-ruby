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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:globalaccelerator)

module Aws::GlobalAccelerator
  # An API client for GlobalAccelerator.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GlobalAccelerator::Client.new(
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

    @identifier = :globalaccelerator

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::GlobalAccelerator::Plugins::Endpoints)

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
    #   @option options [Aws::GlobalAccelerator::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::GlobalAccelerator::EndpointParameters`
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

    # Associate a virtual private cloud (VPC) subnet endpoint with your
    # custom routing accelerator.
    #
    # The listener port range must be large enough to support the number of
    # IP addresses that can be specified in your subnet. The number of ports
    # required is: subnet size times the number of ports per destination EC2
    # instances. For example, a subnet defined as /24 requires a listener
    # port range of at least 255 ports.
    #
    # Note: You must have enough remaining listener ports available to map
    # to the subnet ports, or the call will fail with a
    # LimitExceededException.
    #
    # By default, all destinations in a subnet in a custom routing
    # accelerator cannot receive traffic. To enable all destinations to
    # receive traffic, or to specify individual port mappings that can
    # receive traffic, see the [ AllowCustomRoutingTraffic][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html
    #
    # @option params [required, Array<Types::CustomRoutingEndpointConfiguration>] :endpoint_configurations
    #   The list of endpoint objects to add to a custom routing accelerator.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group for the custom
    #   routing endpoint.
    #
    # @return [Types::AddCustomRoutingEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddCustomRoutingEndpointsResponse#endpoint_descriptions #endpoint_descriptions} => Array&lt;Types::CustomRoutingEndpointDescription&gt;
    #   * {Types::AddCustomRoutingEndpointsResponse#endpoint_group_arn #endpoint_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_custom_routing_endpoints({
    #     endpoint_configurations: [ # required
    #       {
    #         endpoint_id: "GenericString",
    #       },
    #     ],
    #     endpoint_group_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_descriptions #=> Array
    #   resp.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.endpoint_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AddCustomRoutingEndpoints AWS API Documentation
    #
    # @overload add_custom_routing_endpoints(params = {})
    # @param [Hash] params ({})
    def add_custom_routing_endpoints(params = {}, options = {})
      req = build_request(:add_custom_routing_endpoints, params)
      req.send_request(options)
    end

    # Add endpoints to an endpoint group. The `AddEndpoints` API operation
    # is the recommended option for adding endpoints. The alternative
    # options are to add endpoints when you create an endpoint group (with
    # the [CreateEndpointGroup][1] API) or when you update an endpoint group
    # (with the [UpdateEndpointGroup][2] API).
    #
    # There are two advantages to using `AddEndpoints` to add endpoints:
    #
    # * It's faster, because Global Accelerator only has to resolve the new
    #   endpoints that you're adding.
    #
    # * It's more convenient, because you don't need to specify all of the
    #   current endpoints that are already in the endpoint group in addition
    #   to the new endpoints that you want to add.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/API_CreateEndpointGroup.html
    # [2]: https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html
    #
    # @option params [required, Array<Types::EndpointConfiguration>] :endpoint_configurations
    #   The list of endpoint objects.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #
    # @return [Types::AddEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddEndpointsResponse#endpoint_descriptions #endpoint_descriptions} => Array&lt;Types::EndpointDescription&gt;
    #   * {Types::AddEndpointsResponse#endpoint_group_arn #endpoint_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_endpoints({
    #     endpoint_configurations: [ # required
    #       {
    #         endpoint_id: "GenericString",
    #         weight: 1,
    #         client_ip_preservation_enabled: false,
    #       },
    #     ],
    #     endpoint_group_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_descriptions #=> Array
    #   resp.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.endpoint_descriptions[0].weight #=> Integer
    #   resp.endpoint_descriptions[0].health_state #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.endpoint_descriptions[0].health_reason #=> String
    #   resp.endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
    #   resp.endpoint_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AddEndpoints AWS API Documentation
    #
    # @overload add_endpoints(params = {})
    # @param [Hash] params ({})
    def add_endpoints(params = {}, options = {})
      req = build_request(:add_endpoints, params)
      req.send_request(options)
    end

    # Advertises an IPv4 address range that is provisioned for use with your
    # Amazon Web Services resources through bring your own IP addresses
    # (BYOIP). It can take a few minutes before traffic to the specified
    # addresses starts routing to Amazon Web Services because of propagation
    # delays.
    #
    # To stop advertising the BYOIP address range, use [
    # WithdrawByoipCidr][1].
    #
    # For more information, see [Bring your own IP addresses (BYOIP)][2] in
    # the *Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html
    # [2]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #
    # @option params [required, String] :cidr
    #   The address range, in CIDR notation. This must be the exact range that
    #   you provisioned. You can't advertise only a portion of the
    #   provisioned range.
    #
    # @return [Types::AdvertiseByoipCidrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdvertiseByoipCidrResponse#byoip_cidr #byoip_cidr} => Types::ByoipCidr
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.advertise_byoip_cidr({
    #     cidr: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.byoip_cidr.cidr #=> String
    #   resp.byoip_cidr.state #=> String, one of "PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"
    #   resp.byoip_cidr.events #=> Array
    #   resp.byoip_cidr.events[0].message #=> String
    #   resp.byoip_cidr.events[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AdvertiseByoipCidr AWS API Documentation
    #
    # @overload advertise_byoip_cidr(params = {})
    # @param [Hash] params ({})
    def advertise_byoip_cidr(params = {}, options = {})
      req = build_request(:advertise_byoip_cidr, params)
      req.send_request(options)
    end

    # Specify the Amazon EC2 instance (destination) IP addresses and ports
    # for a VPC subnet endpoint that can receive traffic for a custom
    # routing accelerator. You can allow traffic to all destinations in the
    # subnet endpoint, or allow traffic to a specified list of destination
    # IP addresses and ports in the subnet. Note that you cannot specify IP
    # addresses or ports outside of the range that you configured for the
    # endpoint group.
    #
    # After you make changes, you can verify that the updates are complete
    # by checking the status of your accelerator: the status changes from
    # IN\_PROGRESS to DEPLOYED.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #
    # @option params [required, String] :endpoint_id
    #   An ID for the endpoint. For custom routing accelerators, this is the
    #   virtual private cloud (VPC) subnet ID.
    #
    # @option params [Array<String>] :destination_addresses
    #   A list of specific Amazon EC2 instance IP addresses (destination
    #   addresses) in a subnet that you want to allow to receive traffic. The
    #   IP addresses must be a subset of the IP addresses that you specified
    #   for the endpoint group.
    #
    #   `DestinationAddresses` is required if `AllowAllTrafficToEndpoint` is
    #   `FALSE` or is not specified.
    #
    # @option params [Array<Integer>] :destination_ports
    #   A list of specific Amazon EC2 instance ports (destination ports) that
    #   you want to allow to receive traffic.
    #
    # @option params [Boolean] :allow_all_traffic_to_endpoint
    #   Indicates whether all destination IP addresses and ports for a
    #   specified VPC subnet endpoint can receive traffic from a custom
    #   routing accelerator. The value is TRUE or FALSE.
    #
    #   When set to TRUE, *all* destinations in the custom routing VPC subnet
    #   can receive traffic. Note that you cannot specify destination IP
    #   addresses and ports when the value is set to TRUE.
    #
    #   When set to FALSE (or not specified), you *must* specify a list of
    #   destination IP addresses that are allowed to receive traffic. A list
    #   of ports is optional. If you don't specify a list of ports, the ports
    #   that can accept traffic is the same as the ports configured for the
    #   endpoint group.
    #
    #   The default value is FALSE.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allow_custom_routing_traffic({
    #     endpoint_group_arn: "GenericString", # required
    #     endpoint_id: "GenericString", # required
    #     destination_addresses: ["IpAddress"],
    #     destination_ports: [1],
    #     allow_all_traffic_to_endpoint: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AllowCustomRoutingTraffic AWS API Documentation
    #
    # @overload allow_custom_routing_traffic(params = {})
    # @param [Hash] params ({})
    def allow_custom_routing_traffic(params = {}, options = {})
      req = build_request(:allow_custom_routing_traffic, params)
      req.send_request(options)
    end

    # Create an accelerator. An accelerator includes one or more listeners
    # that process inbound connections and direct traffic to one or more
    # endpoint groups, each of which includes endpoints, such as Network
    # Load Balancers.
    #
    # Global Accelerator is a global service that supports endpoints in
    # multiple Amazon Web Services Regions but you must specify the US West
    # (Oregon) Region to create, update, or otherwise work with
    # accelerators. That is, for example, specify `--region us-west-2` on
    # AWS CLI commands.
    #
    # @option params [required, String] :name
    #   The name of the accelerator. The name can have a maximum of 64
    #   characters, must contain only alphanumeric characters, periods (.), or
    #   hyphens (-), and must not begin or end with a hyphen or period.
    #
    # @option params [String] :ip_address_type
    #   The IP address type that an accelerator supports. For a standard
    #   accelerator, the value can be IPV4 or DUAL\_STACK.
    #
    # @option params [Array<String>] :ip_addresses
    #   Optionally, if you've added your own IP address pool to Global
    #   Accelerator (BYOIP), you can choose an IPv4 address from your own pool
    #   to use for the accelerator's static IPv4 address when you create an
    #   accelerator.
    #
    #   After you bring an address range to Amazon Web Services, it appears in
    #   your account as an address pool. When you create an accelerator, you
    #   can assign one IPv4 address from your range to it. Global Accelerator
    #   assigns you a second static IPv4 address from an Amazon IP address
    #   range. If you bring two IPv4 address ranges to Amazon Web Services,
    #   you can assign one IPv4 address from each range to your accelerator.
    #   This restriction is because Global Accelerator assigns each address
    #   range to a different network zone, for high availability.
    #
    #   You can specify one or two addresses, separated by a space. Do not
    #   include the /32 suffix.
    #
    #   Note that you can't update IP addresses for an existing accelerator.
    #   To change them, you must create a new accelerator with the new
    #   addresses.
    #
    #   For more information, see [Bring your own IP addresses (BYOIP)][1] in
    #   the *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #
    # @option params [Boolean] :enabled
    #   Indicates whether an accelerator is enabled. The value is true or
    #   false. The default value is true.
    #
    #   If the value is set to true, an accelerator cannot be deleted. If set
    #   to false, the accelerator can be deleted.
    #
    # @option params [required, String] :idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of an accelerator.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Create tags for an accelerator.
    #
    #   For more information, see [Tagging in Global Accelerator][1] in the
    #   *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
    #
    # @return [Types::CreateAcceleratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAcceleratorResponse#accelerator #accelerator} => Types::Accelerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_accelerator({
    #     name: "GenericString", # required
    #     ip_address_type: "IPV4", # accepts IPV4, DUAL_STACK
    #     ip_addresses: ["IpAddress"],
    #     enabled: false,
    #     idempotency_token: "IdempotencyToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator.accelerator_arn #=> String
    #   resp.accelerator.name #=> String
    #   resp.accelerator.ip_address_type #=> String, one of "IPV4", "DUAL_STACK"
    #   resp.accelerator.enabled #=> Boolean
    #   resp.accelerator.ip_sets #=> Array
    #   resp.accelerator.ip_sets[0].ip_family #=> String
    #   resp.accelerator.ip_sets[0].ip_addresses #=> Array
    #   resp.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerator.ip_sets[0].ip_address_family #=> String, one of "IPv4", "IPv6"
    #   resp.accelerator.dns_name #=> String
    #   resp.accelerator.status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerator.created_time #=> Time
    #   resp.accelerator.last_modified_time #=> Time
    #   resp.accelerator.dual_stack_dns_name #=> String
    #   resp.accelerator.events #=> Array
    #   resp.accelerator.events[0].message #=> String
    #   resp.accelerator.events[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateAccelerator AWS API Documentation
    #
    # @overload create_accelerator(params = {})
    # @param [Hash] params ({})
    def create_accelerator(params = {}, options = {})
      req = build_request(:create_accelerator, params)
      req.send_request(options)
    end

    # Create a custom routing accelerator. A custom routing accelerator
    # directs traffic to one of possibly thousands of Amazon EC2 instance
    # destinations running in a single or multiple virtual private clouds
    # (VPC) subnet endpoints.
    #
    # Be aware that, by default, all destination EC2 instances in a VPC
    # subnet endpoint cannot receive traffic. To enable all destinations to
    # receive traffic, or to specify individual port mappings that can
    # receive traffic, see the [ AllowCustomRoutingTraffic][1] operation.
    #
    # Global Accelerator is a global service that supports endpoints in
    # multiple Amazon Web Services Regions but you must specify the US West
    # (Oregon) Region to create, update, or otherwise work with
    # accelerators. That is, for example, specify `--region us-west-2` on
    # AWS CLI commands.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html
    #
    # @option params [required, String] :name
    #   The name of a custom routing accelerator. The name can have a maximum
    #   of 64 characters, must contain only alphanumeric characters or hyphens
    #   (-), and must not begin or end with a hyphen.
    #
    # @option params [String] :ip_address_type
    #   The IP address type that an accelerator supports. For a custom routing
    #   accelerator, the value must be IPV4.
    #
    # @option params [Array<String>] :ip_addresses
    #   Optionally, if you've added your own IP address pool to Global
    #   Accelerator (BYOIP), you can choose an IPv4 address from your own pool
    #   to use for the accelerator's static IPv4 address when you create an
    #   accelerator.
    #
    #   After you bring an address range to Amazon Web Services, it appears in
    #   your account as an address pool. When you create an accelerator, you
    #   can assign one IPv4 address from your range to it. Global Accelerator
    #   assigns you a second static IPv4 address from an Amazon IP address
    #   range. If you bring two IPv4 address ranges to Amazon Web Services,
    #   you can assign one IPv4 address from each range to your accelerator.
    #   This restriction is because Global Accelerator assigns each address
    #   range to a different network zone, for high availability.
    #
    #   You can specify one or two addresses, separated by a space. Do not
    #   include the /32 suffix.
    #
    #   Note that you can't update IP addresses for an existing accelerator.
    #   To change them, you must create a new accelerator with the new
    #   addresses.
    #
    #   For more information, see [Bring your own IP addresses (BYOIP)][1] in
    #   the *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #
    # @option params [Boolean] :enabled
    #   Indicates whether an accelerator is enabled. The value is true or
    #   false. The default value is true.
    #
    #   If the value is set to true, an accelerator cannot be deleted. If set
    #   to false, the accelerator can be deleted.
    #
    # @option params [required, String] :idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Create tags for an accelerator.
    #
    #   For more information, see [Tagging in Global Accelerator][1] in the
    #   *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
    #
    # @return [Types::CreateCustomRoutingAcceleratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomRoutingAcceleratorResponse#accelerator #accelerator} => Types::CustomRoutingAccelerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_routing_accelerator({
    #     name: "GenericString", # required
    #     ip_address_type: "IPV4", # accepts IPV4, DUAL_STACK
    #     ip_addresses: ["IpAddress"],
    #     enabled: false,
    #     idempotency_token: "IdempotencyToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator.accelerator_arn #=> String
    #   resp.accelerator.name #=> String
    #   resp.accelerator.ip_address_type #=> String, one of "IPV4", "DUAL_STACK"
    #   resp.accelerator.enabled #=> Boolean
    #   resp.accelerator.ip_sets #=> Array
    #   resp.accelerator.ip_sets[0].ip_family #=> String
    #   resp.accelerator.ip_sets[0].ip_addresses #=> Array
    #   resp.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerator.ip_sets[0].ip_address_family #=> String, one of "IPv4", "IPv6"
    #   resp.accelerator.dns_name #=> String
    #   resp.accelerator.status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerator.created_time #=> Time
    #   resp.accelerator.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateCustomRoutingAccelerator AWS API Documentation
    #
    # @overload create_custom_routing_accelerator(params = {})
    # @param [Hash] params ({})
    def create_custom_routing_accelerator(params = {}, options = {})
      req = build_request(:create_custom_routing_accelerator, params)
      req.send_request(options)
    end

    # Create an endpoint group for the specified listener for a custom
    # routing accelerator. An endpoint group is a collection of endpoints in
    # one Amazon Web Services Region.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener for a custom routing
    #   endpoint.
    #
    # @option params [required, String] :endpoint_group_region
    #   The Amazon Web Services Region where the endpoint group is located. A
    #   listener can have only one endpoint group in a specific Region.
    #
    # @option params [required, Array<Types::CustomRoutingDestinationConfiguration>] :destination_configurations
    #   Sets the port range and protocol for all endpoints (virtual private
    #   cloud subnets) in a custom routing endpoint group to accept client
    #   traffic on.
    #
    # @option params [required, String] :idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateCustomRoutingEndpointGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomRoutingEndpointGroupResponse#endpoint_group #endpoint_group} => Types::CustomRoutingEndpointGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_routing_endpoint_group({
    #     listener_arn: "GenericString", # required
    #     endpoint_group_region: "GenericString", # required
    #     destination_configurations: [ # required
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         protocols: ["TCP"], # required, accepts TCP, UDP
    #       },
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_group.endpoint_group_arn #=> String
    #   resp.endpoint_group.endpoint_group_region #=> String
    #   resp.endpoint_group.destination_descriptions #=> Array
    #   resp.endpoint_group.destination_descriptions[0].from_port #=> Integer
    #   resp.endpoint_group.destination_descriptions[0].to_port #=> Integer
    #   resp.endpoint_group.destination_descriptions[0].protocols #=> Array
    #   resp.endpoint_group.destination_descriptions[0].protocols[0] #=> String, one of "TCP", "UDP"
    #   resp.endpoint_group.endpoint_descriptions #=> Array
    #   resp.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateCustomRoutingEndpointGroup AWS API Documentation
    #
    # @overload create_custom_routing_endpoint_group(params = {})
    # @param [Hash] params ({})
    def create_custom_routing_endpoint_group(params = {}, options = {})
      req = build_request(:create_custom_routing_endpoint_group, params)
      req.send_request(options)
    end

    # Create a listener to process inbound connections from clients to a
    # custom routing accelerator. Connections arrive to assigned static IP
    # addresses on the port range that you specify.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator for a custom routing
    #   listener.
    #
    # @option params [required, Array<Types::PortRange>] :port_ranges
    #   The port range to support for connections from clients to your
    #   accelerator.
    #
    #   Separately, you set port ranges for endpoints. For more information,
    #   see [About endpoints for custom routing accelerators][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html
    #
    # @option params [required, String] :idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateCustomRoutingListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomRoutingListenerResponse#listener #listener} => Types::CustomRoutingListener
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_routing_listener({
    #     accelerator_arn: "GenericString", # required
    #     port_ranges: [ # required
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #       },
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.listener.listener_arn #=> String
    #   resp.listener.port_ranges #=> Array
    #   resp.listener.port_ranges[0].from_port #=> Integer
    #   resp.listener.port_ranges[0].to_port #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateCustomRoutingListener AWS API Documentation
    #
    # @overload create_custom_routing_listener(params = {})
    # @param [Hash] params ({})
    def create_custom_routing_listener(params = {}, options = {})
      req = build_request(:create_custom_routing_listener, params)
      req.send_request(options)
    end

    # Create an endpoint group for the specified listener. An endpoint group
    # is a collection of endpoints in one Amazon Web Services Region. A
    # resource must be valid and active when you add it as an endpoint.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, String] :endpoint_group_region
    #   The Amazon Web Services Region where the endpoint group is located. A
    #   listener can have only one endpoint group in a specific Region.
    #
    # @option params [Array<Types::EndpointConfiguration>] :endpoint_configurations
    #   The list of endpoint objects.
    #
    # @option params [Float] :traffic_dial_percentage
    #   The percentage of traffic to send to an Amazon Web Services Region.
    #   Additional traffic is distributed to other endpoint groups for this
    #   listener.
    #
    #   Use this action to increase (dial up) or decrease (dial down) traffic
    #   to a specific Region. The percentage is applied to the traffic that
    #   would otherwise have been routed to the Region based on optimal
    #   routing.
    #
    #   The default value is 100.
    #
    # @option params [Integer] :health_check_port
    #   The port that Global Accelerator uses to check the health of endpoints
    #   that are part of this endpoint group. The default port is the listener
    #   port that this endpoint group is associated with. If listener port is
    #   a list of ports, Global Accelerator uses the first port in the list.
    #
    # @option params [String] :health_check_protocol
    #   The protocol that Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default value is
    #   TCP.
    #
    # @option params [String] :health_check_path
    #   If the protocol is HTTP/S, then this specifies the path that is the
    #   destination for health check targets. The default value is slash (/).
    #
    # @option params [Integer] :health_check_interval_seconds
    #   The time—10 seconds or 30 seconds—between each health check for an
    #   endpoint. The default value is 30.
    #
    # @option params [Integer] :threshold_count
    #   The number of consecutive health checks required to set the state of a
    #   healthy endpoint to unhealthy, or to set an unhealthy endpoint to
    #   healthy. The default value is 3.
    #
    # @option params [required, String] :idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::PortOverride>] :port_overrides
    #   Override specific listener ports used to route traffic to endpoints
    #   that are part of this endpoint group. For example, you can create a
    #   port override in which the listener receives user traffic on ports 80
    #   and 443, but your accelerator routes that traffic to ports 1080 and
    #   1443, respectively, on the endpoints.
    #
    #   For more information, see [ Overriding listener ports][1] in the
    #   *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html
    #
    # @return [Types::CreateEndpointGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEndpointGroupResponse#endpoint_group #endpoint_group} => Types::EndpointGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint_group({
    #     listener_arn: "GenericString", # required
    #     endpoint_group_region: "GenericString", # required
    #     endpoint_configurations: [
    #       {
    #         endpoint_id: "GenericString",
    #         weight: 1,
    #         client_ip_preservation_enabled: false,
    #       },
    #     ],
    #     traffic_dial_percentage: 1.0,
    #     health_check_port: 1,
    #     health_check_protocol: "TCP", # accepts TCP, HTTP, HTTPS
    #     health_check_path: "HealthCheckPath",
    #     health_check_interval_seconds: 1,
    #     threshold_count: 1,
    #     idempotency_token: "IdempotencyToken", # required
    #     port_overrides: [
    #       {
    #         listener_port: 1,
    #         endpoint_port: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_group.endpoint_group_arn #=> String
    #   resp.endpoint_group.endpoint_group_region #=> String
    #   resp.endpoint_group.endpoint_descriptions #=> Array
    #   resp.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.endpoint_group.endpoint_descriptions[0].weight #=> Integer
    #   resp.endpoint_group.endpoint_descriptions[0].health_state #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.endpoint_group.endpoint_descriptions[0].health_reason #=> String
    #   resp.endpoint_group.endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
    #   resp.endpoint_group.traffic_dial_percentage #=> Float
    #   resp.endpoint_group.health_check_port #=> Integer
    #   resp.endpoint_group.health_check_protocol #=> String, one of "TCP", "HTTP", "HTTPS"
    #   resp.endpoint_group.health_check_path #=> String
    #   resp.endpoint_group.health_check_interval_seconds #=> Integer
    #   resp.endpoint_group.threshold_count #=> Integer
    #   resp.endpoint_group.port_overrides #=> Array
    #   resp.endpoint_group.port_overrides[0].listener_port #=> Integer
    #   resp.endpoint_group.port_overrides[0].endpoint_port #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateEndpointGroup AWS API Documentation
    #
    # @overload create_endpoint_group(params = {})
    # @param [Hash] params ({})
    def create_endpoint_group(params = {}, options = {})
      req = build_request(:create_endpoint_group, params)
      req.send_request(options)
    end

    # Create a listener to process inbound connections from clients to an
    # accelerator. Connections arrive to assigned static IP addresses on a
    # port, port range, or list of port ranges that you specify.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of your accelerator.
    #
    # @option params [required, Array<Types::PortRange>] :port_ranges
    #   The list of port ranges to support for connections from clients to
    #   your accelerator.
    #
    # @option params [required, String] :protocol
    #   The protocol for connections from clients to your accelerator.
    #
    # @option params [String] :client_affinity
    #   Client affinity lets you direct all requests from a user to the same
    #   endpoint, if you have stateful applications, regardless of the port
    #   and protocol of the client request. Client affinity gives you control
    #   over whether to always route each client to the same specific
    #   endpoint.
    #
    #   Global Accelerator uses a consistent-flow hashing algorithm to choose
    #   the optimal endpoint for a connection. If client affinity is `NONE`,
    #   Global Accelerator uses the "five-tuple" (5-tuple) properties—source
    #   IP address, source port, destination IP address, destination port, and
    #   protocol—to select the hash value, and then chooses the best endpoint.
    #   However, with this setting, if someone uses different ports to connect
    #   to Global Accelerator, their connections might not be always routed to
    #   the same endpoint because the hash value changes.
    #
    #   If you want a given client to always be routed to the same endpoint,
    #   set client affinity to `SOURCE_IP` instead. When you use the
    #   `SOURCE_IP` setting, Global Accelerator uses the "two-tuple"
    #   (2-tuple) properties— source (client) IP address and destination IP
    #   address—to select the hash value.
    #
    #   The default value is `NONE`.
    #
    # @option params [required, String] :idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateListenerResponse#listener #listener} => Types::Listener
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_listener({
    #     accelerator_arn: "GenericString", # required
    #     port_ranges: [ # required
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #       },
    #     ],
    #     protocol: "TCP", # required, accepts TCP, UDP
    #     client_affinity: "NONE", # accepts NONE, SOURCE_IP
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.listener.listener_arn #=> String
    #   resp.listener.port_ranges #=> Array
    #   resp.listener.port_ranges[0].from_port #=> Integer
    #   resp.listener.port_ranges[0].to_port #=> Integer
    #   resp.listener.protocol #=> String, one of "TCP", "UDP"
    #   resp.listener.client_affinity #=> String, one of "NONE", "SOURCE_IP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateListener AWS API Documentation
    #
    # @overload create_listener(params = {})
    # @param [Hash] params ({})
    def create_listener(params = {}, options = {})
      req = build_request(:create_listener, params)
      req.send_request(options)
    end

    # Delete an accelerator. Before you can delete an accelerator, you must
    # disable it and remove all dependent resources (listeners and endpoint
    # groups). To disable the accelerator, update the accelerator to set
    # `Enabled` to false.
    #
    # When you create an accelerator, by default, Global Accelerator
    # provides you with a set of two static IP addresses. Alternatively, you
    # can bring your own IP address ranges to Global Accelerator and assign
    # IP addresses from those ranges.
    #
    #  The IP addresses are assigned to your accelerator for as long as it
    # exists, even if you disable the accelerator and it no longer accepts
    # or routes traffic. However, when you *delete* an accelerator, you lose
    # the static IP addresses that are assigned to the accelerator, so you
    # can no longer route traffic by using them. As a best practice, ensure
    # that you have permissions in place to avoid inadvertently deleting
    # accelerators. You can use IAM policies with Global Accelerator to
    # limit the users who have permissions to delete an accelerator. For
    # more information, see [Identity and access management][1] in the
    # *Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of an accelerator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_accelerator({
    #     accelerator_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteAccelerator AWS API Documentation
    #
    # @overload delete_accelerator(params = {})
    # @param [Hash] params ({})
    def delete_accelerator(params = {}, options = {})
      req = build_request(:delete_accelerator, params)
      req.send_request(options)
    end

    # Delete a custom routing accelerator. Before you can delete an
    # accelerator, you must disable it and remove all dependent resources
    # (listeners and endpoint groups). To disable the accelerator, update
    # the accelerator to set `Enabled` to false.
    #
    # When you create a custom routing accelerator, by default, Global
    # Accelerator provides you with a set of two static IP addresses.
    #
    #  The IP addresses are assigned to your accelerator for as long as it
    # exists, even if you disable the accelerator and it no longer accepts
    # or routes traffic. However, when you *delete* an accelerator, you lose
    # the static IP addresses that are assigned to the accelerator, so you
    # can no longer route traffic by using them. As a best practice, ensure
    # that you have permissions in place to avoid inadvertently deleting
    # accelerators. You can use IAM policies with Global Accelerator to
    # limit the users who have permissions to delete an accelerator. For
    # more information, see [Identity and access management][1] in the
    # *Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the custom routing accelerator to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_routing_accelerator({
    #     accelerator_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteCustomRoutingAccelerator AWS API Documentation
    #
    # @overload delete_custom_routing_accelerator(params = {})
    # @param [Hash] params ({})
    def delete_custom_routing_accelerator(params = {}, options = {})
      req = build_request(:delete_custom_routing_accelerator, params)
      req.send_request(options)
    end

    # Delete an endpoint group from a listener for a custom routing
    # accelerator.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_routing_endpoint_group({
    #     endpoint_group_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteCustomRoutingEndpointGroup AWS API Documentation
    #
    # @overload delete_custom_routing_endpoint_group(params = {})
    # @param [Hash] params ({})
    def delete_custom_routing_endpoint_group(params = {}, options = {})
      req = build_request(:delete_custom_routing_endpoint_group, params)
      req.send_request(options)
    end

    # Delete a listener for a custom routing accelerator.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_routing_listener({
    #     listener_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteCustomRoutingListener AWS API Documentation
    #
    # @overload delete_custom_routing_listener(params = {})
    # @param [Hash] params ({})
    def delete_custom_routing_listener(params = {}, options = {})
      req = build_request(:delete_custom_routing_listener, params)
      req.send_request(options)
    end

    # Delete an endpoint group from a listener.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint_group({
    #     endpoint_group_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteEndpointGroup AWS API Documentation
    #
    # @overload delete_endpoint_group(params = {})
    # @param [Hash] params ({})
    def delete_endpoint_group(params = {}, options = {})
      req = build_request(:delete_endpoint_group, params)
      req.send_request(options)
    end

    # Delete a listener from an accelerator.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_listener({
    #     listener_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteListener AWS API Documentation
    #
    # @overload delete_listener(params = {})
    # @param [Hash] params ({})
    def delete_listener(params = {}, options = {})
      req = build_request(:delete_listener, params)
      req.send_request(options)
    end

    # Specify the Amazon EC2 instance (destination) IP addresses and ports
    # for a VPC subnet endpoint that cannot receive traffic for a custom
    # routing accelerator. You can deny traffic to all destinations in the
    # VPC endpoint, or deny traffic to a specified list of destination IP
    # addresses and ports. Note that you cannot specify IP addresses or
    # ports outside of the range that you configured for the endpoint group.
    #
    # After you make changes, you can verify that the updates are complete
    # by checking the status of your accelerator: the status changes from
    # IN\_PROGRESS to DEPLOYED.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #
    # @option params [required, String] :endpoint_id
    #   An ID for the endpoint. For custom routing accelerators, this is the
    #   virtual private cloud (VPC) subnet ID.
    #
    # @option params [Array<String>] :destination_addresses
    #   A list of specific Amazon EC2 instance IP addresses (destination
    #   addresses) in a subnet that you want to prevent from receiving
    #   traffic. The IP addresses must be a subset of the IP addresses allowed
    #   for the VPC subnet associated with the endpoint group.
    #
    # @option params [Array<Integer>] :destination_ports
    #   A list of specific Amazon EC2 instance ports (destination ports) in a
    #   subnet endpoint that you want to prevent from receiving traffic.
    #
    # @option params [Boolean] :deny_all_traffic_to_endpoint
    #   Indicates whether all destination IP addresses and ports for a
    #   specified VPC subnet endpoint *cannot* receive traffic from a custom
    #   routing accelerator. The value is TRUE or FALSE.
    #
    #   When set to TRUE, *no* destinations in the custom routing VPC subnet
    #   can receive traffic. Note that you cannot specify destination IP
    #   addresses and ports when the value is set to TRUE.
    #
    #   When set to FALSE (or not specified), you *must* specify a list of
    #   destination IP addresses that cannot receive traffic. A list of ports
    #   is optional. If you don't specify a list of ports, the ports that can
    #   accept traffic is the same as the ports configured for the endpoint
    #   group.
    #
    #   The default value is FALSE.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deny_custom_routing_traffic({
    #     endpoint_group_arn: "GenericString", # required
    #     endpoint_id: "GenericString", # required
    #     destination_addresses: ["IpAddress"],
    #     destination_ports: [1],
    #     deny_all_traffic_to_endpoint: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DenyCustomRoutingTraffic AWS API Documentation
    #
    # @overload deny_custom_routing_traffic(params = {})
    # @param [Hash] params ({})
    def deny_custom_routing_traffic(params = {}, options = {})
      req = build_request(:deny_custom_routing_traffic, params)
      req.send_request(options)
    end

    # Releases the specified address range that you provisioned to use with
    # your Amazon Web Services resources through bring your own IP addresses
    # (BYOIP) and deletes the corresponding address pool.
    #
    # Before you can release an address range, you must stop advertising it
    # by using [WithdrawByoipCidr][1] and you must not have any accelerators
    # that are using static IP addresses allocated from its address range.
    #
    # For more information, see [Bring your own IP addresses (BYOIP)][2] in
    # the *Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html
    # [2]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #
    # @option params [required, String] :cidr
    #   The address range, in CIDR notation. The prefix must be the same
    #   prefix that you specified when you provisioned the address range.
    #
    # @return [Types::DeprovisionByoipCidrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeprovisionByoipCidrResponse#byoip_cidr #byoip_cidr} => Types::ByoipCidr
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprovision_byoip_cidr({
    #     cidr: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.byoip_cidr.cidr #=> String
    #   resp.byoip_cidr.state #=> String, one of "PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"
    #   resp.byoip_cidr.events #=> Array
    #   resp.byoip_cidr.events[0].message #=> String
    #   resp.byoip_cidr.events[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeprovisionByoipCidr AWS API Documentation
    #
    # @overload deprovision_byoip_cidr(params = {})
    # @param [Hash] params ({})
    def deprovision_byoip_cidr(params = {}, options = {})
      req = build_request(:deprovision_byoip_cidr, params)
      req.send_request(options)
    end

    # Describe an accelerator.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to describe.
    #
    # @return [Types::DescribeAcceleratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAcceleratorResponse#accelerator #accelerator} => Types::Accelerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_accelerator({
    #     accelerator_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator.accelerator_arn #=> String
    #   resp.accelerator.name #=> String
    #   resp.accelerator.ip_address_type #=> String, one of "IPV4", "DUAL_STACK"
    #   resp.accelerator.enabled #=> Boolean
    #   resp.accelerator.ip_sets #=> Array
    #   resp.accelerator.ip_sets[0].ip_family #=> String
    #   resp.accelerator.ip_sets[0].ip_addresses #=> Array
    #   resp.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerator.ip_sets[0].ip_address_family #=> String, one of "IPv4", "IPv6"
    #   resp.accelerator.dns_name #=> String
    #   resp.accelerator.status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerator.created_time #=> Time
    #   resp.accelerator.last_modified_time #=> Time
    #   resp.accelerator.dual_stack_dns_name #=> String
    #   resp.accelerator.events #=> Array
    #   resp.accelerator.events[0].message #=> String
    #   resp.accelerator.events[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeAccelerator AWS API Documentation
    #
    # @overload describe_accelerator(params = {})
    # @param [Hash] params ({})
    def describe_accelerator(params = {}, options = {})
      req = build_request(:describe_accelerator, params)
      req.send_request(options)
    end

    # Describe the attributes of an accelerator.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator with the attributes
    #   that you want to describe.
    #
    # @return [Types::DescribeAcceleratorAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAcceleratorAttributesResponse#accelerator_attributes #accelerator_attributes} => Types::AcceleratorAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_accelerator_attributes({
    #     accelerator_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator_attributes.flow_logs_enabled #=> Boolean
    #   resp.accelerator_attributes.flow_logs_s3_bucket #=> String
    #   resp.accelerator_attributes.flow_logs_s3_prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeAcceleratorAttributes AWS API Documentation
    #
    # @overload describe_accelerator_attributes(params = {})
    # @param [Hash] params ({})
    def describe_accelerator_attributes(params = {}, options = {})
      req = build_request(:describe_accelerator_attributes, params)
      req.send_request(options)
    end

    # Describe a custom routing accelerator.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to describe.
    #
    # @return [Types::DescribeCustomRoutingAcceleratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomRoutingAcceleratorResponse#accelerator #accelerator} => Types::CustomRoutingAccelerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_routing_accelerator({
    #     accelerator_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator.accelerator_arn #=> String
    #   resp.accelerator.name #=> String
    #   resp.accelerator.ip_address_type #=> String, one of "IPV4", "DUAL_STACK"
    #   resp.accelerator.enabled #=> Boolean
    #   resp.accelerator.ip_sets #=> Array
    #   resp.accelerator.ip_sets[0].ip_family #=> String
    #   resp.accelerator.ip_sets[0].ip_addresses #=> Array
    #   resp.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerator.ip_sets[0].ip_address_family #=> String, one of "IPv4", "IPv6"
    #   resp.accelerator.dns_name #=> String
    #   resp.accelerator.status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerator.created_time #=> Time
    #   resp.accelerator.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingAccelerator AWS API Documentation
    #
    # @overload describe_custom_routing_accelerator(params = {})
    # @param [Hash] params ({})
    def describe_custom_routing_accelerator(params = {}, options = {})
      req = build_request(:describe_custom_routing_accelerator, params)
      req.send_request(options)
    end

    # Describe the attributes of a custom routing accelerator.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the custom routing accelerator to
    #   describe the attributes for.
    #
    # @return [Types::DescribeCustomRoutingAcceleratorAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomRoutingAcceleratorAttributesResponse#accelerator_attributes #accelerator_attributes} => Types::CustomRoutingAcceleratorAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_routing_accelerator_attributes({
    #     accelerator_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator_attributes.flow_logs_enabled #=> Boolean
    #   resp.accelerator_attributes.flow_logs_s3_bucket #=> String
    #   resp.accelerator_attributes.flow_logs_s3_prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingAcceleratorAttributes AWS API Documentation
    #
    # @overload describe_custom_routing_accelerator_attributes(params = {})
    # @param [Hash] params ({})
    def describe_custom_routing_accelerator_attributes(params = {}, options = {})
      req = build_request(:describe_custom_routing_accelerator_attributes, params)
      req.send_request(options)
    end

    # Describe an endpoint group for a custom routing accelerator.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to describe.
    #
    # @return [Types::DescribeCustomRoutingEndpointGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomRoutingEndpointGroupResponse#endpoint_group #endpoint_group} => Types::CustomRoutingEndpointGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_routing_endpoint_group({
    #     endpoint_group_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_group.endpoint_group_arn #=> String
    #   resp.endpoint_group.endpoint_group_region #=> String
    #   resp.endpoint_group.destination_descriptions #=> Array
    #   resp.endpoint_group.destination_descriptions[0].from_port #=> Integer
    #   resp.endpoint_group.destination_descriptions[0].to_port #=> Integer
    #   resp.endpoint_group.destination_descriptions[0].protocols #=> Array
    #   resp.endpoint_group.destination_descriptions[0].protocols[0] #=> String, one of "TCP", "UDP"
    #   resp.endpoint_group.endpoint_descriptions #=> Array
    #   resp.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingEndpointGroup AWS API Documentation
    #
    # @overload describe_custom_routing_endpoint_group(params = {})
    # @param [Hash] params ({})
    def describe_custom_routing_endpoint_group(params = {}, options = {})
      req = build_request(:describe_custom_routing_endpoint_group, params)
      req.send_request(options)
    end

    # The description of a listener for a custom routing accelerator.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener to describe.
    #
    # @return [Types::DescribeCustomRoutingListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomRoutingListenerResponse#listener #listener} => Types::CustomRoutingListener
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_routing_listener({
    #     listener_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.listener.listener_arn #=> String
    #   resp.listener.port_ranges #=> Array
    #   resp.listener.port_ranges[0].from_port #=> Integer
    #   resp.listener.port_ranges[0].to_port #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingListener AWS API Documentation
    #
    # @overload describe_custom_routing_listener(params = {})
    # @param [Hash] params ({})
    def describe_custom_routing_listener(params = {}, options = {})
      req = build_request(:describe_custom_routing_listener, params)
      req.send_request(options)
    end

    # Describe an endpoint group.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to describe.
    #
    # @return [Types::DescribeEndpointGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointGroupResponse#endpoint_group #endpoint_group} => Types::EndpointGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint_group({
    #     endpoint_group_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_group.endpoint_group_arn #=> String
    #   resp.endpoint_group.endpoint_group_region #=> String
    #   resp.endpoint_group.endpoint_descriptions #=> Array
    #   resp.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.endpoint_group.endpoint_descriptions[0].weight #=> Integer
    #   resp.endpoint_group.endpoint_descriptions[0].health_state #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.endpoint_group.endpoint_descriptions[0].health_reason #=> String
    #   resp.endpoint_group.endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
    #   resp.endpoint_group.traffic_dial_percentage #=> Float
    #   resp.endpoint_group.health_check_port #=> Integer
    #   resp.endpoint_group.health_check_protocol #=> String, one of "TCP", "HTTP", "HTTPS"
    #   resp.endpoint_group.health_check_path #=> String
    #   resp.endpoint_group.health_check_interval_seconds #=> Integer
    #   resp.endpoint_group.threshold_count #=> Integer
    #   resp.endpoint_group.port_overrides #=> Array
    #   resp.endpoint_group.port_overrides[0].listener_port #=> Integer
    #   resp.endpoint_group.port_overrides[0].endpoint_port #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeEndpointGroup AWS API Documentation
    #
    # @overload describe_endpoint_group(params = {})
    # @param [Hash] params ({})
    def describe_endpoint_group(params = {}, options = {})
      req = build_request(:describe_endpoint_group, params)
      req.send_request(options)
    end

    # Describe a listener.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener to describe.
    #
    # @return [Types::DescribeListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeListenerResponse#listener #listener} => Types::Listener
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_listener({
    #     listener_arn: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.listener.listener_arn #=> String
    #   resp.listener.port_ranges #=> Array
    #   resp.listener.port_ranges[0].from_port #=> Integer
    #   resp.listener.port_ranges[0].to_port #=> Integer
    #   resp.listener.protocol #=> String, one of "TCP", "UDP"
    #   resp.listener.client_affinity #=> String, one of "NONE", "SOURCE_IP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeListener AWS API Documentation
    #
    # @overload describe_listener(params = {})
    # @param [Hash] params ({})
    def describe_listener(params = {}, options = {})
      req = build_request(:describe_listener, params)
      req.send_request(options)
    end

    # List the accelerators for an Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The number of Global Accelerator objects that you want to return with
    #   this call. The default value is 10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @return [Types::ListAcceleratorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAcceleratorsResponse#accelerators #accelerators} => Array&lt;Types::Accelerator&gt;
    #   * {Types::ListAcceleratorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accelerators({
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerators #=> Array
    #   resp.accelerators[0].accelerator_arn #=> String
    #   resp.accelerators[0].name #=> String
    #   resp.accelerators[0].ip_address_type #=> String, one of "IPV4", "DUAL_STACK"
    #   resp.accelerators[0].enabled #=> Boolean
    #   resp.accelerators[0].ip_sets #=> Array
    #   resp.accelerators[0].ip_sets[0].ip_family #=> String
    #   resp.accelerators[0].ip_sets[0].ip_addresses #=> Array
    #   resp.accelerators[0].ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerators[0].ip_sets[0].ip_address_family #=> String, one of "IPv4", "IPv6"
    #   resp.accelerators[0].dns_name #=> String
    #   resp.accelerators[0].status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerators[0].created_time #=> Time
    #   resp.accelerators[0].last_modified_time #=> Time
    #   resp.accelerators[0].dual_stack_dns_name #=> String
    #   resp.accelerators[0].events #=> Array
    #   resp.accelerators[0].events[0].message #=> String
    #   resp.accelerators[0].events[0].timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListAccelerators AWS API Documentation
    #
    # @overload list_accelerators(params = {})
    # @param [Hash] params ({})
    def list_accelerators(params = {}, options = {})
      req = build_request(:list_accelerators, params)
      req.send_request(options)
    end

    # Lists the IP address ranges that were specified in calls to
    # [ProvisionByoipCidr][1], including the current state and a history of
    # state changes.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListByoipCidrsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListByoipCidrsResponse#byoip_cidrs #byoip_cidrs} => Array&lt;Types::ByoipCidr&gt;
    #   * {Types::ListByoipCidrsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_byoip_cidrs({
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.byoip_cidrs #=> Array
    #   resp.byoip_cidrs[0].cidr #=> String
    #   resp.byoip_cidrs[0].state #=> String, one of "PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"
    #   resp.byoip_cidrs[0].events #=> Array
    #   resp.byoip_cidrs[0].events[0].message #=> String
    #   resp.byoip_cidrs[0].events[0].timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListByoipCidrs AWS API Documentation
    #
    # @overload list_byoip_cidrs(params = {})
    # @param [Hash] params ({})
    def list_byoip_cidrs(params = {}, options = {})
      req = build_request(:list_byoip_cidrs, params)
      req.send_request(options)
    end

    # List the custom routing accelerators for an Amazon Web Services
    # account.
    #
    # @option params [Integer] :max_results
    #   The number of custom routing Global Accelerator objects that you want
    #   to return with this call. The default value is 10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @return [Types::ListCustomRoutingAcceleratorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomRoutingAcceleratorsResponse#accelerators #accelerators} => Array&lt;Types::CustomRoutingAccelerator&gt;
    #   * {Types::ListCustomRoutingAcceleratorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_routing_accelerators({
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerators #=> Array
    #   resp.accelerators[0].accelerator_arn #=> String
    #   resp.accelerators[0].name #=> String
    #   resp.accelerators[0].ip_address_type #=> String, one of "IPV4", "DUAL_STACK"
    #   resp.accelerators[0].enabled #=> Boolean
    #   resp.accelerators[0].ip_sets #=> Array
    #   resp.accelerators[0].ip_sets[0].ip_family #=> String
    #   resp.accelerators[0].ip_sets[0].ip_addresses #=> Array
    #   resp.accelerators[0].ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerators[0].ip_sets[0].ip_address_family #=> String, one of "IPv4", "IPv6"
    #   resp.accelerators[0].dns_name #=> String
    #   resp.accelerators[0].status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerators[0].created_time #=> Time
    #   resp.accelerators[0].last_modified_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingAccelerators AWS API Documentation
    #
    # @overload list_custom_routing_accelerators(params = {})
    # @param [Hash] params ({})
    def list_custom_routing_accelerators(params = {}, options = {})
      req = build_request(:list_custom_routing_accelerators, params)
      req.send_request(options)
    end

    # List the endpoint groups that are associated with a listener for a
    # custom routing accelerator.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener to list endpoint groups
    #   for.
    #
    # @option params [Integer] :max_results
    #   The number of endpoint group objects that you want to return with this
    #   call. The default value is 10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @return [Types::ListCustomRoutingEndpointGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomRoutingEndpointGroupsResponse#endpoint_groups #endpoint_groups} => Array&lt;Types::CustomRoutingEndpointGroup&gt;
    #   * {Types::ListCustomRoutingEndpointGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_routing_endpoint_groups({
    #     listener_arn: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_groups #=> Array
    #   resp.endpoint_groups[0].endpoint_group_arn #=> String
    #   resp.endpoint_groups[0].endpoint_group_region #=> String
    #   resp.endpoint_groups[0].destination_descriptions #=> Array
    #   resp.endpoint_groups[0].destination_descriptions[0].from_port #=> Integer
    #   resp.endpoint_groups[0].destination_descriptions[0].to_port #=> Integer
    #   resp.endpoint_groups[0].destination_descriptions[0].protocols #=> Array
    #   resp.endpoint_groups[0].destination_descriptions[0].protocols[0] #=> String, one of "TCP", "UDP"
    #   resp.endpoint_groups[0].endpoint_descriptions #=> Array
    #   resp.endpoint_groups[0].endpoint_descriptions[0].endpoint_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingEndpointGroups AWS API Documentation
    #
    # @overload list_custom_routing_endpoint_groups(params = {})
    # @param [Hash] params ({})
    def list_custom_routing_endpoint_groups(params = {}, options = {})
      req = build_request(:list_custom_routing_endpoint_groups, params)
      req.send_request(options)
    end

    # List the listeners for a custom routing accelerator.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to list listeners
    #   for.
    #
    # @option params [Integer] :max_results
    #   The number of listener objects that you want to return with this call.
    #   The default value is 10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @return [Types::ListCustomRoutingListenersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomRoutingListenersResponse#listeners #listeners} => Array&lt;Types::CustomRoutingListener&gt;
    #   * {Types::ListCustomRoutingListenersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_routing_listeners({
    #     accelerator_arn: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.listeners #=> Array
    #   resp.listeners[0].listener_arn #=> String
    #   resp.listeners[0].port_ranges #=> Array
    #   resp.listeners[0].port_ranges[0].from_port #=> Integer
    #   resp.listeners[0].port_ranges[0].to_port #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingListeners AWS API Documentation
    #
    # @overload list_custom_routing_listeners(params = {})
    # @param [Hash] params ({})
    def list_custom_routing_listeners(params = {}, options = {})
      req = build_request(:list_custom_routing_listeners, params)
      req.send_request(options)
    end

    # Provides a complete mapping from the public accelerator IP address and
    # port to destination EC2 instance IP addresses and ports in the virtual
    # public cloud (VPC) subnet endpoint for a custom routing accelerator.
    # For each subnet endpoint that you add, Global Accelerator creates a
    # new static port mapping for the accelerator. The port mappings don't
    # change after Global Accelerator generates them, so you can retrieve
    # and cache the full mapping on your servers.
    #
    # If you remove a subnet from your accelerator, Global Accelerator
    # removes (reclaims) the port mappings. If you add a subnet to your
    # accelerator, Global Accelerator creates new port mappings (the
    # existing ones don't change). If you add or remove EC2 instances in
    # your subnet, the port mappings don't change, because the mappings are
    # created when you add the subnet to Global Accelerator.
    #
    # The mappings also include a flag for each destination denoting which
    # destination IP addresses and ports are allowed or denied traffic.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to list the custom
    #   routing port mappings for.
    #
    # @option params [String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to list the
    #   custom routing port mappings for.
    #
    # @option params [Integer] :max_results
    #   The number of destination port mappings that you want to return with
    #   this call. The default value is 10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @return [Types::ListCustomRoutingPortMappingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomRoutingPortMappingsResponse#port_mappings #port_mappings} => Array&lt;Types::PortMapping&gt;
    #   * {Types::ListCustomRoutingPortMappingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_routing_port_mappings({
    #     accelerator_arn: "GenericString", # required
    #     endpoint_group_arn: "GenericString",
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.port_mappings #=> Array
    #   resp.port_mappings[0].accelerator_port #=> Integer
    #   resp.port_mappings[0].endpoint_group_arn #=> String
    #   resp.port_mappings[0].endpoint_id #=> String
    #   resp.port_mappings[0].destination_socket_address.ip_address #=> String
    #   resp.port_mappings[0].destination_socket_address.port #=> Integer
    #   resp.port_mappings[0].protocols #=> Array
    #   resp.port_mappings[0].protocols[0] #=> String, one of "TCP", "UDP"
    #   resp.port_mappings[0].destination_traffic_state #=> String, one of "ALLOW", "DENY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingPortMappings AWS API Documentation
    #
    # @overload list_custom_routing_port_mappings(params = {})
    # @param [Hash] params ({})
    def list_custom_routing_port_mappings(params = {}, options = {})
      req = build_request(:list_custom_routing_port_mappings, params)
      req.send_request(options)
    end

    # List the port mappings for a specific EC2 instance (destination) in a
    # VPC subnet endpoint. The response is the mappings for one destination
    # IP address. This is useful when your subnet endpoint has mappings that
    # span multiple custom routing accelerators in your account, or for
    # scenarios where you only want to list the port mappings for a specific
    # destination instance.
    #
    # @option params [required, String] :endpoint_id
    #   The ID for the virtual private cloud (VPC) subnet.
    #
    # @option params [required, String] :destination_address
    #   The endpoint IP address in a virtual private cloud (VPC) subnet for
    #   which you want to receive back port mappings.
    #
    # @option params [Integer] :max_results
    #   The number of destination port mappings that you want to return with
    #   this call. The default value is 10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @return [Types::ListCustomRoutingPortMappingsByDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomRoutingPortMappingsByDestinationResponse#destination_port_mappings #destination_port_mappings} => Array&lt;Types::DestinationPortMapping&gt;
    #   * {Types::ListCustomRoutingPortMappingsByDestinationResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_routing_port_mappings_by_destination({
    #     endpoint_id: "GenericString", # required
    #     destination_address: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_port_mappings #=> Array
    #   resp.destination_port_mappings[0].accelerator_arn #=> String
    #   resp.destination_port_mappings[0].accelerator_socket_addresses #=> Array
    #   resp.destination_port_mappings[0].accelerator_socket_addresses[0].ip_address #=> String
    #   resp.destination_port_mappings[0].accelerator_socket_addresses[0].port #=> Integer
    #   resp.destination_port_mappings[0].endpoint_group_arn #=> String
    #   resp.destination_port_mappings[0].endpoint_id #=> String
    #   resp.destination_port_mappings[0].endpoint_group_region #=> String
    #   resp.destination_port_mappings[0].destination_socket_address.ip_address #=> String
    #   resp.destination_port_mappings[0].destination_socket_address.port #=> Integer
    #   resp.destination_port_mappings[0].ip_address_type #=> String, one of "IPV4", "DUAL_STACK"
    #   resp.destination_port_mappings[0].destination_traffic_state #=> String, one of "ALLOW", "DENY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingPortMappingsByDestination AWS API Documentation
    #
    # @overload list_custom_routing_port_mappings_by_destination(params = {})
    # @param [Hash] params ({})
    def list_custom_routing_port_mappings_by_destination(params = {}, options = {})
      req = build_request(:list_custom_routing_port_mappings_by_destination, params)
      req.send_request(options)
    end

    # List the endpoint groups that are associated with a listener.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [Integer] :max_results
    #   The number of endpoint group objects that you want to return with this
    #   call. The default value is 10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @return [Types::ListEndpointGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEndpointGroupsResponse#endpoint_groups #endpoint_groups} => Array&lt;Types::EndpointGroup&gt;
    #   * {Types::ListEndpointGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoint_groups({
    #     listener_arn: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_groups #=> Array
    #   resp.endpoint_groups[0].endpoint_group_arn #=> String
    #   resp.endpoint_groups[0].endpoint_group_region #=> String
    #   resp.endpoint_groups[0].endpoint_descriptions #=> Array
    #   resp.endpoint_groups[0].endpoint_descriptions[0].endpoint_id #=> String
    #   resp.endpoint_groups[0].endpoint_descriptions[0].weight #=> Integer
    #   resp.endpoint_groups[0].endpoint_descriptions[0].health_state #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.endpoint_groups[0].endpoint_descriptions[0].health_reason #=> String
    #   resp.endpoint_groups[0].endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
    #   resp.endpoint_groups[0].traffic_dial_percentage #=> Float
    #   resp.endpoint_groups[0].health_check_port #=> Integer
    #   resp.endpoint_groups[0].health_check_protocol #=> String, one of "TCP", "HTTP", "HTTPS"
    #   resp.endpoint_groups[0].health_check_path #=> String
    #   resp.endpoint_groups[0].health_check_interval_seconds #=> Integer
    #   resp.endpoint_groups[0].threshold_count #=> Integer
    #   resp.endpoint_groups[0].port_overrides #=> Array
    #   resp.endpoint_groups[0].port_overrides[0].listener_port #=> Integer
    #   resp.endpoint_groups[0].port_overrides[0].endpoint_port #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListEndpointGroups AWS API Documentation
    #
    # @overload list_endpoint_groups(params = {})
    # @param [Hash] params ({})
    def list_endpoint_groups(params = {}, options = {})
      req = build_request(:list_endpoint_groups, params)
      req.send_request(options)
    end

    # List the listeners for an accelerator.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator for which you want
    #   to list listener objects.
    #
    # @option params [Integer] :max_results
    #   The number of listener objects that you want to return with this call.
    #   The default value is 10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #
    # @return [Types::ListListenersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListListenersResponse#listeners #listeners} => Array&lt;Types::Listener&gt;
    #   * {Types::ListListenersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_listeners({
    #     accelerator_arn: "GenericString", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.listeners #=> Array
    #   resp.listeners[0].listener_arn #=> String
    #   resp.listeners[0].port_ranges #=> Array
    #   resp.listeners[0].port_ranges[0].from_port #=> Integer
    #   resp.listeners[0].port_ranges[0].to_port #=> Integer
    #   resp.listeners[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.listeners[0].client_affinity #=> String, one of "NONE", "SOURCE_IP"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListListeners AWS API Documentation
    #
    # @overload list_listeners(params = {})
    # @param [Hash] params ({})
    def list_listeners(params = {}, options = {})
      req = build_request(:list_listeners, params)
      req.send_request(options)
    end

    # List all tags for an accelerator.
    #
    # For more information, see [Tagging in Global Accelerator][1] in the
    # *Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the accelerator to list tags for. An
    #   ARN uniquely identifies an accelerator.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Provisions an IP address range to use with your Amazon Web Services
    # resources through bring your own IP addresses (BYOIP) and creates a
    # corresponding address pool. After the address range is provisioned, it
    # is ready to be advertised using [ AdvertiseByoipCidr][1].
    #
    # For more information, see [Bring your own IP addresses (BYOIP)][2] in
    # the *Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html
    # [2]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #
    # @option params [required, String] :cidr
    #   The public IPv4 address range, in CIDR notation. The most specific IP
    #   prefix that you can specify is /24. The address range cannot overlap
    #   with another address range that you've brought to this or another
    #   Region.
    #
    # @option params [required, Types::CidrAuthorizationContext] :cidr_authorization_context
    #   A signed document that proves that you are authorized to bring the
    #   specified IP address range to Amazon using BYOIP.
    #
    # @return [Types::ProvisionByoipCidrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProvisionByoipCidrResponse#byoip_cidr #byoip_cidr} => Types::ByoipCidr
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provision_byoip_cidr({
    #     cidr: "GenericString", # required
    #     cidr_authorization_context: { # required
    #       message: "GenericString", # required
    #       signature: "GenericString", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.byoip_cidr.cidr #=> String
    #   resp.byoip_cidr.state #=> String, one of "PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"
    #   resp.byoip_cidr.events #=> Array
    #   resp.byoip_cidr.events[0].message #=> String
    #   resp.byoip_cidr.events[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ProvisionByoipCidr AWS API Documentation
    #
    # @overload provision_byoip_cidr(params = {})
    # @param [Hash] params ({})
    def provision_byoip_cidr(params = {}, options = {})
      req = build_request(:provision_byoip_cidr, params)
      req.send_request(options)
    end

    # Remove endpoints from a custom routing accelerator.
    #
    # @option params [required, Array<String>] :endpoint_ids
    #   The IDs for the endpoints. For custom routing accelerators, endpoint
    #   IDs are the virtual private cloud (VPC) subnet IDs.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to remove
    #   endpoints from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_custom_routing_endpoints({
    #     endpoint_ids: ["GenericString"], # required
    #     endpoint_group_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/RemoveCustomRoutingEndpoints AWS API Documentation
    #
    # @overload remove_custom_routing_endpoints(params = {})
    # @param [Hash] params ({})
    def remove_custom_routing_endpoints(params = {}, options = {})
      req = build_request(:remove_custom_routing_endpoints, params)
      req.send_request(options)
    end

    # Remove endpoints from an endpoint group.
    #
    # The `RemoveEndpoints` API operation is the recommended option for
    # removing endpoints. The alternative is to remove endpoints by updating
    # an endpoint group by using the [UpdateEndpointGroup][1] API operation.
    # There are two advantages to using `AddEndpoints` to remove endpoints
    # instead:
    #
    # * It's more convenient, because you only need to specify the
    #   endpoints that you want to remove. With the `UpdateEndpointGroup`
    #   API operation, you must specify all of the endpoints in the endpoint
    #   group except the ones that you want to remove from the group.
    #
    # * It's faster, because Global Accelerator doesn't need to resolve
    #   any endpoints. With the `UpdateEndpointGroup` API operation, Global
    #   Accelerator must resolve all of the endpoints that remain in the
    #   group.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html
    #
    # @option params [required, Array<Types::EndpointIdentifier>] :endpoint_identifiers
    #   The identifiers of the endpoints that you want to remove.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_endpoints({
    #     endpoint_identifiers: [ # required
    #       {
    #         endpoint_id: "GenericString", # required
    #         client_ip_preservation_enabled: false,
    #       },
    #     ],
    #     endpoint_group_arn: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/RemoveEndpoints AWS API Documentation
    #
    # @overload remove_endpoints(params = {})
    # @param [Hash] params ({})
    def remove_endpoints(params = {}, options = {})
      req = build_request(:remove_endpoints, params)
      req.send_request(options)
    end

    # Add tags to an accelerator resource.
    #
    # For more information, see [Tagging in Global Accelerator][1] in the
    # *Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Global Accelerator resource to
    #   add tags to. An ARN uniquely identifies a resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to a resource. A tag consists of a key and a value
    #   that you define.
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
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove tags from a Global Accelerator resource. When you specify a tag
    # key, the action removes both that key and its associated value. The
    # operation succeeds even if you attempt to remove tags from an
    # accelerator that was already removed.
    #
    # For more information, see [Tagging in Global Accelerator][1] in the
    # *Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Global Accelerator resource to
    #   remove tags from. An ARN uniquely identifies a resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key pairs that you want to remove from the specified
    #   resources.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update an accelerator.
    #
    # Global Accelerator is a global service that supports endpoints in
    # multiple Amazon Web Services Regions but you must specify the US West
    # (Oregon) Region to create, update, or otherwise work with
    # accelerators. That is, for example, specify `--region us-west-2` on
    # AWS CLI commands.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to update.
    #
    # @option params [String] :name
    #   The name of the accelerator. The name can have a maximum of 64
    #   characters, must contain only alphanumeric characters, periods (.), or
    #   hyphens (-), and must not begin or end with a hyphen or period.
    #
    # @option params [String] :ip_address_type
    #   The IP address type that an accelerator supports. For a standard
    #   accelerator, the value can be IPV4 or DUAL\_STACK.
    #
    # @option params [Boolean] :enabled
    #   Indicates whether an accelerator is enabled. The value is true or
    #   false. The default value is true.
    #
    #   If the value is set to true, the accelerator cannot be deleted. If set
    #   to false, the accelerator can be deleted.
    #
    # @return [Types::UpdateAcceleratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAcceleratorResponse#accelerator #accelerator} => Types::Accelerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_accelerator({
    #     accelerator_arn: "GenericString", # required
    #     name: "GenericString",
    #     ip_address_type: "IPV4", # accepts IPV4, DUAL_STACK
    #     enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator.accelerator_arn #=> String
    #   resp.accelerator.name #=> String
    #   resp.accelerator.ip_address_type #=> String, one of "IPV4", "DUAL_STACK"
    #   resp.accelerator.enabled #=> Boolean
    #   resp.accelerator.ip_sets #=> Array
    #   resp.accelerator.ip_sets[0].ip_family #=> String
    #   resp.accelerator.ip_sets[0].ip_addresses #=> Array
    #   resp.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerator.ip_sets[0].ip_address_family #=> String, one of "IPv4", "IPv6"
    #   resp.accelerator.dns_name #=> String
    #   resp.accelerator.status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerator.created_time #=> Time
    #   resp.accelerator.last_modified_time #=> Time
    #   resp.accelerator.dual_stack_dns_name #=> String
    #   resp.accelerator.events #=> Array
    #   resp.accelerator.events[0].message #=> String
    #   resp.accelerator.events[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateAccelerator AWS API Documentation
    #
    # @overload update_accelerator(params = {})
    # @param [Hash] params ({})
    def update_accelerator(params = {}, options = {})
      req = build_request(:update_accelerator, params)
      req.send_request(options)
    end

    # Update the attributes for an accelerator.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator that you want to
    #   update.
    #
    # @option params [Boolean] :flow_logs_enabled
    #   Update whether flow logs are enabled. The default value is false. If
    #   the value is true, `FlowLogsS3Bucket` and `FlowLogsS3Prefix` must be
    #   specified.
    #
    #   For more information, see [Flow Logs][1] in the *Global Accelerator
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html
    #
    # @option params [String] :flow_logs_s3_bucket
    #   The name of the Amazon S3 bucket for the flow logs. Attribute is
    #   required if `FlowLogsEnabled` is `true`. The bucket must exist and
    #   have a bucket policy that grants Global Accelerator permission to
    #   write to the bucket.
    #
    # @option params [String] :flow_logs_s3_prefix
    #   Update the prefix for the location in the Amazon S3 bucket for the
    #   flow logs. Attribute is required if `FlowLogsEnabled` is `true`.
    #
    #   If you specify slash (/) for the S3 bucket prefix, the log file bucket
    #   folder structure will include a double slash (//), like the following:
    #
    #   s3-bucket\_name//AWSLogs/aws\_account\_id
    #
    # @return [Types::UpdateAcceleratorAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAcceleratorAttributesResponse#accelerator_attributes #accelerator_attributes} => Types::AcceleratorAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_accelerator_attributes({
    #     accelerator_arn: "GenericString", # required
    #     flow_logs_enabled: false,
    #     flow_logs_s3_bucket: "GenericString",
    #     flow_logs_s3_prefix: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator_attributes.flow_logs_enabled #=> Boolean
    #   resp.accelerator_attributes.flow_logs_s3_bucket #=> String
    #   resp.accelerator_attributes.flow_logs_s3_prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateAcceleratorAttributes AWS API Documentation
    #
    # @overload update_accelerator_attributes(params = {})
    # @param [Hash] params ({})
    def update_accelerator_attributes(params = {}, options = {})
      req = build_request(:update_accelerator_attributes, params)
      req.send_request(options)
    end

    # Update a custom routing accelerator.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to update.
    #
    # @option params [String] :name
    #   The name of the accelerator. The name can have a maximum of 64
    #   characters, must contain only alphanumeric characters, periods (.), or
    #   hyphens (-), and must not begin or end with a hyphen or period.
    #
    # @option params [String] :ip_address_type
    #   The IP address type that an accelerator supports. For a custom routing
    #   accelerator, the value must be IPV4.
    #
    # @option params [Boolean] :enabled
    #   Indicates whether an accelerator is enabled. The value is true or
    #   false. The default value is true.
    #
    #   If the value is set to true, the accelerator cannot be deleted. If set
    #   to false, the accelerator can be deleted.
    #
    # @return [Types::UpdateCustomRoutingAcceleratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCustomRoutingAcceleratorResponse#accelerator #accelerator} => Types::CustomRoutingAccelerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_routing_accelerator({
    #     accelerator_arn: "GenericString", # required
    #     name: "GenericString",
    #     ip_address_type: "IPV4", # accepts IPV4, DUAL_STACK
    #     enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator.accelerator_arn #=> String
    #   resp.accelerator.name #=> String
    #   resp.accelerator.ip_address_type #=> String, one of "IPV4", "DUAL_STACK"
    #   resp.accelerator.enabled #=> Boolean
    #   resp.accelerator.ip_sets #=> Array
    #   resp.accelerator.ip_sets[0].ip_family #=> String
    #   resp.accelerator.ip_sets[0].ip_addresses #=> Array
    #   resp.accelerator.ip_sets[0].ip_addresses[0] #=> String
    #   resp.accelerator.ip_sets[0].ip_address_family #=> String, one of "IPv4", "IPv6"
    #   resp.accelerator.dns_name #=> String
    #   resp.accelerator.status #=> String, one of "DEPLOYED", "IN_PROGRESS"
    #   resp.accelerator.created_time #=> Time
    #   resp.accelerator.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateCustomRoutingAccelerator AWS API Documentation
    #
    # @overload update_custom_routing_accelerator(params = {})
    # @param [Hash] params ({})
    def update_custom_routing_accelerator(params = {}, options = {})
      req = build_request(:update_custom_routing_accelerator, params)
      req.send_request(options)
    end

    # Update the attributes for a custom routing accelerator.
    #
    # @option params [required, String] :accelerator_arn
    #   The Amazon Resource Name (ARN) of the custom routing accelerator to
    #   update attributes for.
    #
    # @option params [Boolean] :flow_logs_enabled
    #   Update whether flow logs are enabled. The default value is false. If
    #   the value is true, `FlowLogsS3Bucket` and `FlowLogsS3Prefix` must be
    #   specified.
    #
    #   For more information, see [Flow logs][1] in the *Global Accelerator
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html
    #
    # @option params [String] :flow_logs_s3_bucket
    #   The name of the Amazon S3 bucket for the flow logs. Attribute is
    #   required if `FlowLogsEnabled` is `true`. The bucket must exist and
    #   have a bucket policy that grants Global Accelerator permission to
    #   write to the bucket.
    #
    # @option params [String] :flow_logs_s3_prefix
    #   Update the prefix for the location in the Amazon S3 bucket for the
    #   flow logs. Attribute is required if `FlowLogsEnabled` is `true`.
    #
    #   If you don’t specify a prefix, the flow logs are stored in the root of
    #   the bucket. If you specify slash (/) for the S3 bucket prefix, the log
    #   file bucket folder structure will include a double slash (//), like
    #   the following:
    #
    #   DOC-EXAMPLE-BUCKET//AWSLogs/aws\_account\_id
    #
    # @return [Types::UpdateCustomRoutingAcceleratorAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCustomRoutingAcceleratorAttributesResponse#accelerator_attributes #accelerator_attributes} => Types::CustomRoutingAcceleratorAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_routing_accelerator_attributes({
    #     accelerator_arn: "GenericString", # required
    #     flow_logs_enabled: false,
    #     flow_logs_s3_bucket: "GenericString",
    #     flow_logs_s3_prefix: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.accelerator_attributes.flow_logs_enabled #=> Boolean
    #   resp.accelerator_attributes.flow_logs_s3_bucket #=> String
    #   resp.accelerator_attributes.flow_logs_s3_prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateCustomRoutingAcceleratorAttributes AWS API Documentation
    #
    # @overload update_custom_routing_accelerator_attributes(params = {})
    # @param [Hash] params ({})
    def update_custom_routing_accelerator_attributes(params = {}, options = {})
      req = build_request(:update_custom_routing_accelerator_attributes, params)
      req.send_request(options)
    end

    # Update a listener for a custom routing accelerator.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener to update.
    #
    # @option params [required, Array<Types::PortRange>] :port_ranges
    #   The updated port range to support for connections from clients to your
    #   accelerator. If you remove ports that are currently being used by a
    #   subnet endpoint, the call fails.
    #
    #   Separately, you set port ranges for endpoints. For more information,
    #   see [About endpoints for custom routing accelerators][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html
    #
    # @return [Types::UpdateCustomRoutingListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCustomRoutingListenerResponse#listener #listener} => Types::CustomRoutingListener
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_routing_listener({
    #     listener_arn: "GenericString", # required
    #     port_ranges: [ # required
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.listener.listener_arn #=> String
    #   resp.listener.port_ranges #=> Array
    #   resp.listener.port_ranges[0].from_port #=> Integer
    #   resp.listener.port_ranges[0].to_port #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateCustomRoutingListener AWS API Documentation
    #
    # @overload update_custom_routing_listener(params = {})
    # @param [Hash] params ({})
    def update_custom_routing_listener(params = {}, options = {})
      req = build_request(:update_custom_routing_listener, params)
      req.send_request(options)
    end

    # Update an endpoint group. A resource must be valid and active when you
    # add it as an endpoint.
    #
    # @option params [required, String] :endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #
    # @option params [Array<Types::EndpointConfiguration>] :endpoint_configurations
    #   The list of endpoint objects. A resource must be valid and active when
    #   you add it as an endpoint.
    #
    # @option params [Float] :traffic_dial_percentage
    #   The percentage of traffic to send to an Amazon Web Services Region.
    #   Additional traffic is distributed to other endpoint groups for this
    #   listener.
    #
    #   Use this action to increase (dial up) or decrease (dial down) traffic
    #   to a specific Region. The percentage is applied to the traffic that
    #   would otherwise have been routed to the Region based on optimal
    #   routing.
    #
    #   The default value is 100.
    #
    # @option params [Integer] :health_check_port
    #   The port that Global Accelerator uses to check the health of endpoints
    #   that are part of this endpoint group. The default port is the listener
    #   port that this endpoint group is associated with. If the listener port
    #   is a list of ports, Global Accelerator uses the first port in the
    #   list.
    #
    # @option params [String] :health_check_protocol
    #   The protocol that Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default value is
    #   TCP.
    #
    # @option params [String] :health_check_path
    #   If the protocol is HTTP/S, then this specifies the path that is the
    #   destination for health check targets. The default value is slash (/).
    #
    # @option params [Integer] :health_check_interval_seconds
    #   The time—10 seconds or 30 seconds—between each health check for an
    #   endpoint. The default value is 30.
    #
    # @option params [Integer] :threshold_count
    #   The number of consecutive health checks required to set the state of a
    #   healthy endpoint to unhealthy, or to set an unhealthy endpoint to
    #   healthy. The default value is 3.
    #
    # @option params [Array<Types::PortOverride>] :port_overrides
    #   Override specific listener ports used to route traffic to endpoints
    #   that are part of this endpoint group. For example, you can create a
    #   port override in which the listener receives user traffic on ports 80
    #   and 443, but your accelerator routes that traffic to ports 1080 and
    #   1443, respectively, on the endpoints.
    #
    #   For more information, see [ Overriding listener ports][1] in the
    #   *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html
    #
    # @return [Types::UpdateEndpointGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointGroupResponse#endpoint_group #endpoint_group} => Types::EndpointGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint_group({
    #     endpoint_group_arn: "GenericString", # required
    #     endpoint_configurations: [
    #       {
    #         endpoint_id: "GenericString",
    #         weight: 1,
    #         client_ip_preservation_enabled: false,
    #       },
    #     ],
    #     traffic_dial_percentage: 1.0,
    #     health_check_port: 1,
    #     health_check_protocol: "TCP", # accepts TCP, HTTP, HTTPS
    #     health_check_path: "HealthCheckPath",
    #     health_check_interval_seconds: 1,
    #     threshold_count: 1,
    #     port_overrides: [
    #       {
    #         listener_port: 1,
    #         endpoint_port: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_group.endpoint_group_arn #=> String
    #   resp.endpoint_group.endpoint_group_region #=> String
    #   resp.endpoint_group.endpoint_descriptions #=> Array
    #   resp.endpoint_group.endpoint_descriptions[0].endpoint_id #=> String
    #   resp.endpoint_group.endpoint_descriptions[0].weight #=> Integer
    #   resp.endpoint_group.endpoint_descriptions[0].health_state #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.endpoint_group.endpoint_descriptions[0].health_reason #=> String
    #   resp.endpoint_group.endpoint_descriptions[0].client_ip_preservation_enabled #=> Boolean
    #   resp.endpoint_group.traffic_dial_percentage #=> Float
    #   resp.endpoint_group.health_check_port #=> Integer
    #   resp.endpoint_group.health_check_protocol #=> String, one of "TCP", "HTTP", "HTTPS"
    #   resp.endpoint_group.health_check_path #=> String
    #   resp.endpoint_group.health_check_interval_seconds #=> Integer
    #   resp.endpoint_group.threshold_count #=> Integer
    #   resp.endpoint_group.port_overrides #=> Array
    #   resp.endpoint_group.port_overrides[0].listener_port #=> Integer
    #   resp.endpoint_group.port_overrides[0].endpoint_port #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateEndpointGroup AWS API Documentation
    #
    # @overload update_endpoint_group(params = {})
    # @param [Hash] params ({})
    def update_endpoint_group(params = {}, options = {})
      req = build_request(:update_endpoint_group, params)
      req.send_request(options)
    end

    # Update a listener.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener to update.
    #
    # @option params [Array<Types::PortRange>] :port_ranges
    #   The updated list of port ranges for the connections from clients to
    #   the accelerator.
    #
    # @option params [String] :protocol
    #   The updated protocol for the connections from clients to the
    #   accelerator.
    #
    # @option params [String] :client_affinity
    #   Client affinity lets you direct all requests from a user to the same
    #   endpoint, if you have stateful applications, regardless of the port
    #   and protocol of the client request. Client affinity gives you control
    #   over whether to always route each client to the same specific
    #   endpoint.
    #
    #   Global Accelerator uses a consistent-flow hashing algorithm to choose
    #   the optimal endpoint for a connection. If client affinity is `NONE`,
    #   Global Accelerator uses the "five-tuple" (5-tuple) properties—source
    #   IP address, source port, destination IP address, destination port, and
    #   protocol—to select the hash value, and then chooses the best endpoint.
    #   However, with this setting, if someone uses different ports to connect
    #   to Global Accelerator, their connections might not be always routed to
    #   the same endpoint because the hash value changes.
    #
    #   If you want a given client to always be routed to the same endpoint,
    #   set client affinity to `SOURCE_IP` instead. When you use the
    #   `SOURCE_IP` setting, Global Accelerator uses the "two-tuple"
    #   (2-tuple) properties— source (client) IP address and destination IP
    #   address—to select the hash value.
    #
    #   The default value is `NONE`.
    #
    # @return [Types::UpdateListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateListenerResponse#listener #listener} => Types::Listener
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_listener({
    #     listener_arn: "GenericString", # required
    #     port_ranges: [
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #       },
    #     ],
    #     protocol: "TCP", # accepts TCP, UDP
    #     client_affinity: "NONE", # accepts NONE, SOURCE_IP
    #   })
    #
    # @example Response structure
    #
    #   resp.listener.listener_arn #=> String
    #   resp.listener.port_ranges #=> Array
    #   resp.listener.port_ranges[0].from_port #=> Integer
    #   resp.listener.port_ranges[0].to_port #=> Integer
    #   resp.listener.protocol #=> String, one of "TCP", "UDP"
    #   resp.listener.client_affinity #=> String, one of "NONE", "SOURCE_IP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateListener AWS API Documentation
    #
    # @overload update_listener(params = {})
    # @param [Hash] params ({})
    def update_listener(params = {}, options = {})
      req = build_request(:update_listener, params)
      req.send_request(options)
    end

    # Stops advertising an address range that is provisioned as an address
    # pool. You can perform this operation at most once every 10 seconds,
    # even if you specify different address ranges each time.
    #
    # It can take a few minutes before traffic to the specified addresses
    # stops routing to Amazon Web Services because of propagation delays.
    #
    # For more information, see [Bring your own IP addresses (BYOIP)][1] in
    # the *Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #
    # @option params [required, String] :cidr
    #   The address range, in CIDR notation.
    #
    # @return [Types::WithdrawByoipCidrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::WithdrawByoipCidrResponse#byoip_cidr #byoip_cidr} => Types::ByoipCidr
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.withdraw_byoip_cidr({
    #     cidr: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.byoip_cidr.cidr #=> String
    #   resp.byoip_cidr.state #=> String, one of "PENDING_PROVISIONING", "READY", "PENDING_ADVERTISING", "ADVERTISING", "PENDING_WITHDRAWING", "PENDING_DEPROVISIONING", "DEPROVISIONED", "FAILED_PROVISION", "FAILED_ADVERTISING", "FAILED_WITHDRAW", "FAILED_DEPROVISION"
    #   resp.byoip_cidr.events #=> Array
    #   resp.byoip_cidr.events[0].message #=> String
    #   resp.byoip_cidr.events[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/WithdrawByoipCidr AWS API Documentation
    #
    # @overload withdraw_byoip_cidr(params = {})
    # @param [Hash] params ({})
    def withdraw_byoip_cidr(params = {}, options = {})
      req = build_request(:withdraw_byoip_cidr, params)
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
      context[:gem_name] = 'aws-sdk-globalaccelerator'
      context[:gem_version] = '1.48.0'
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
