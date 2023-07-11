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

Aws::Plugins::GlobalConfiguration.add_identifier(:privatenetworks)

module Aws::PrivateNetworks
  # An API client for PrivateNetworks.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PrivateNetworks::Client.new(
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

    @identifier = :privatenetworks

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
    add_plugin(Aws::PrivateNetworks::Plugins::Endpoints)

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
    #   @option options [Aws::PrivateNetworks::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::PrivateNetworks::EndpointParameters`
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

    # Acknowledges that the specified network order was received.
    #
    # @option params [required, String] :order_arn
    #   The Amazon Resource Name (ARN) of the order.
    #
    # @return [Types::AcknowledgeOrderReceiptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcknowledgeOrderReceiptResponse#order #order} => Types::Order
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.acknowledge_order_receipt({
    #     order_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.order.acknowledgment_status #=> String, one of "ACKNOWLEDGING", "ACKNOWLEDGED", "UNACKNOWLEDGED"
    #   resp.order.created_at #=> Time
    #   resp.order.network_arn #=> String
    #   resp.order.network_site_arn #=> String
    #   resp.order.order_arn #=> String
    #   resp.order.ordered_resources #=> Array
    #   resp.order.ordered_resources[0].commitment_configuration.automatic_renewal #=> Boolean
    #   resp.order.ordered_resources[0].commitment_configuration.commitment_length #=> String, one of "SIXTY_DAYS", "ONE_YEAR", "THREE_YEARS"
    #   resp.order.ordered_resources[0].count #=> Integer
    #   resp.order.ordered_resources[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.order.shipping_address.city #=> String
    #   resp.order.shipping_address.company #=> String
    #   resp.order.shipping_address.country #=> String
    #   resp.order.shipping_address.email_address #=> String
    #   resp.order.shipping_address.name #=> String
    #   resp.order.shipping_address.phone_number #=> String
    #   resp.order.shipping_address.postal_code #=> String
    #   resp.order.shipping_address.state_or_province #=> String
    #   resp.order.shipping_address.street1 #=> String
    #   resp.order.shipping_address.street2 #=> String
    #   resp.order.shipping_address.street3 #=> String
    #   resp.order.tracking_information #=> Array
    #   resp.order.tracking_information[0].tracking_number #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/AcknowledgeOrderReceipt AWS API Documentation
    #
    # @overload acknowledge_order_receipt(params = {})
    # @param [Hash] params ({})
    def acknowledge_order_receipt(params = {}, options = {})
      req = build_request(:acknowledge_order_receipt, params)
      req.send_request(options)
    end

    # Activates the specified device identifier.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :device_identifier_arn
    #   The Amazon Resource Name (ARN) of the device identifier.
    #
    # @return [Types::ActivateDeviceIdentifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivateDeviceIdentifierResponse#device_identifier #device_identifier} => Types::DeviceIdentifier
    #   * {Types::ActivateDeviceIdentifierResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_device_identifier({
    #     client_token: "ClientToken",
    #     device_identifier_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_identifier.created_at #=> Time
    #   resp.device_identifier.device_identifier_arn #=> String
    #   resp.device_identifier.iccid #=> String
    #   resp.device_identifier.imsi #=> String
    #   resp.device_identifier.network_arn #=> String
    #   resp.device_identifier.order_arn #=> String
    #   resp.device_identifier.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.device_identifier.traffic_group_arn #=> String
    #   resp.device_identifier.vendor #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ActivateDeviceIdentifier AWS API Documentation
    #
    # @overload activate_device_identifier(params = {})
    # @param [Hash] params ({})
    def activate_device_identifier(params = {}, options = {})
      req = build_request(:activate_device_identifier, params)
      req.send_request(options)
    end

    # Activates the specified network site.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [Types::CommitmentConfiguration] :commitment_configuration
    #   Determines the duration and renewal status of the commitment period
    #   for all pending radio units.
    #
    #   If you include `commitmentConfiguration` in the
    #   `ActivateNetworkSiteRequest` action, you must specify the following:
    #
    #   * The commitment period for the radio unit. You can choose a 60-day,
    #     1-year, or 3-year period.
    #
    #   * Whether you want your commitment period to automatically renew for
    #     one more year after your current commitment period expires.
    #
    #   For pricing, see [Amazon Web Services Private 5G Pricing][1].
    #
    #   If you do not include `commitmentConfiguration` in the
    #   `ActivateNetworkSiteRequest` action, the commitment period is set to
    #   60-days.
    #
    #
    #
    #   [1]: http://aws.amazon.com/private5g/pricing
    #
    # @option params [required, String] :network_site_arn
    #   The Amazon Resource Name (ARN) of the network site.
    #
    # @option params [required, Types::Address] :shipping_address
    #   The shipping address of the network site.
    #
    # @return [Types::ActivateNetworkSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivateNetworkSiteResponse#network_site #network_site} => Types::NetworkSite
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_network_site({
    #     client_token: "ClientToken",
    #     commitment_configuration: {
    #       automatic_renewal: false, # required
    #       commitment_length: "SIXTY_DAYS", # required, accepts SIXTY_DAYS, ONE_YEAR, THREE_YEARS
    #     },
    #     network_site_arn: "Arn", # required
    #     shipping_address: { # required
    #       city: "AddressContent", # required
    #       company: "AddressContent",
    #       country: "AddressContent", # required
    #       email_address: "AddressContent",
    #       name: "AddressContent", # required
    #       phone_number: "AddressContent",
    #       postal_code: "AddressContent", # required
    #       state_or_province: "AddressContent", # required
    #       street1: "AddressContent", # required
    #       street2: "AddressContent",
    #       street3: "AddressContent",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.network_site.availability_zone #=> String
    #   resp.network_site.availability_zone_id #=> String
    #   resp.network_site.created_at #=> Time
    #   resp.network_site.current_plan.options #=> Array
    #   resp.network_site.current_plan.options[0].name #=> String
    #   resp.network_site.current_plan.options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.current_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.current_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.description #=> String
    #   resp.network_site.network_arn #=> String
    #   resp.network_site.network_site_arn #=> String
    #   resp.network_site.network_site_name #=> String
    #   resp.network_site.pending_plan.options #=> Array
    #   resp.network_site.pending_plan.options[0].name #=> String
    #   resp.network_site.pending_plan.options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.pending_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.status #=> String, one of "CREATED", "PROVISIONING", "AVAILABLE", "DEPROVISIONING", "DELETED"
    #   resp.network_site.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ActivateNetworkSite AWS API Documentation
    #
    # @overload activate_network_site(params = {})
    # @param [Hash] params ({})
    def activate_network_site(params = {}, options = {})
      req = build_request(:activate_network_site, params)
      req.send_request(options)
    end

    # Configures the specified network resource.
    #
    # Use this action to specify the geographic position of the hardware.
    # You must provide Certified Professional Installer (CPI) credentials in
    # the request so that we can obtain spectrum grants. For more
    # information, see [Radio units][1] in the *Amazon Web Services Private
    # 5G User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/private-networks/latest/userguide/radio-units.html
    #
    # @option params [required, String] :access_point_arn
    #   The Amazon Resource Name (ARN) of the network resource.
    #
    # @option params [String] :cpi_secret_key
    #   A Base64 encoded string of the CPI certificate associated with the CPI
    #   user who is certifying the coordinates of the network resource.
    #
    # @option params [String] :cpi_user_id
    #   The CPI user ID of the CPI user who is certifying the coordinates of
    #   the network resource.
    #
    # @option params [String] :cpi_user_password
    #   The CPI password associated with the CPI certificate in
    #   `cpiSecretKey`.
    #
    # @option params [String] :cpi_username
    #   The CPI user name of the CPI user who is certifying the coordinates of
    #   the radio unit.
    #
    # @option params [Types::Position] :position
    #   The position of the network resource.
    #
    # @return [Types::ConfigureAccessPointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigureAccessPointResponse#access_point #access_point} => Types::NetworkResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_access_point({
    #     access_point_arn: "Arn", # required
    #     cpi_secret_key: "ConfigureAccessPointRequestCpiSecretKeyString",
    #     cpi_user_id: "ConfigureAccessPointRequestCpiUserIdString",
    #     cpi_user_password: "ConfigureAccessPointRequestCpiUserPasswordString",
    #     cpi_username: "ConfigureAccessPointRequestCpiUsernameString",
    #     position: {
    #       elevation: 1.0,
    #       elevation_reference: "AGL", # accepts AGL, AMSL
    #       elevation_unit: "FEET", # accepts FEET
    #       latitude: 1.0,
    #       longitude: 1.0,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_point.attributes #=> Array
    #   resp.access_point.attributes[0].name #=> String
    #   resp.access_point.attributes[0].value #=> String
    #   resp.access_point.commitment_information.commitment_configuration.automatic_renewal #=> Boolean
    #   resp.access_point.commitment_information.commitment_configuration.commitment_length #=> String, one of "SIXTY_DAYS", "ONE_YEAR", "THREE_YEARS"
    #   resp.access_point.commitment_information.expires_on #=> Time
    #   resp.access_point.commitment_information.start_at #=> Time
    #   resp.access_point.created_at #=> Time
    #   resp.access_point.description #=> String
    #   resp.access_point.health #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.access_point.model #=> String
    #   resp.access_point.network_arn #=> String
    #   resp.access_point.network_resource_arn #=> String
    #   resp.access_point.network_site_arn #=> String
    #   resp.access_point.order_arn #=> String
    #   resp.access_point.position.elevation #=> Float
    #   resp.access_point.position.elevation_reference #=> String, one of "AGL", "AMSL"
    #   resp.access_point.position.elevation_unit #=> String, one of "FEET"
    #   resp.access_point.position.latitude #=> Float
    #   resp.access_point.position.longitude #=> Float
    #   resp.access_point.return_information.replacement_order_arn #=> String
    #   resp.access_point.return_information.return_reason #=> String
    #   resp.access_point.return_information.shipping_address.city #=> String
    #   resp.access_point.return_information.shipping_address.company #=> String
    #   resp.access_point.return_information.shipping_address.country #=> String
    #   resp.access_point.return_information.shipping_address.email_address #=> String
    #   resp.access_point.return_information.shipping_address.name #=> String
    #   resp.access_point.return_information.shipping_address.phone_number #=> String
    #   resp.access_point.return_information.shipping_address.postal_code #=> String
    #   resp.access_point.return_information.shipping_address.state_or_province #=> String
    #   resp.access_point.return_information.shipping_address.street1 #=> String
    #   resp.access_point.return_information.shipping_address.street2 #=> String
    #   resp.access_point.return_information.shipping_address.street3 #=> String
    #   resp.access_point.return_information.shipping_label #=> String
    #   resp.access_point.serial_number #=> String
    #   resp.access_point.status #=> String, one of "PENDING", "SHIPPED", "PROVISIONING", "PROVISIONED", "AVAILABLE", "DELETING", "PENDING_RETURN", "DELETED", "CREATING_SHIPPING_LABEL"
    #   resp.access_point.status_reason #=> String
    #   resp.access_point.type #=> String, one of "RADIO_UNIT"
    #   resp.access_point.vendor #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ConfigureAccessPoint AWS API Documentation
    #
    # @overload configure_access_point(params = {})
    # @param [Hash] params ({})
    def configure_access_point(params = {}, options = {})
      req = build_request(:configure_access_point, params)
      req.send_request(options)
    end

    # Creates a network.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [String] :description
    #   The description of the network.
    #
    # @option params [required, String] :network_name
    #   The name of the network. You can't change the name after you create
    #   the network.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the network.
    #
    # @return [Types::CreateNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkResponse#network #network} => Types::Network
    #   * {Types::CreateNetworkResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     network_name: "Name", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.network.created_at #=> Time
    #   resp.network.description #=> String
    #   resp.network.network_arn #=> String
    #   resp.network.network_name #=> String
    #   resp.network.status #=> String, one of "CREATED", "PROVISIONING", "AVAILABLE", "DEPROVISIONING", "DELETED"
    #   resp.network.status_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/CreateNetwork AWS API Documentation
    #
    # @overload create_network(params = {})
    # @param [Hash] params ({})
    def create_network(params = {}, options = {})
      req = build_request(:create_network, params)
      req.send_request(options)
    end

    # Creates a network site.
    #
    # @option params [String] :availability_zone
    #   The Availability Zone that is the parent of this site. You can't
    #   change the Availability Zone after you create the site.
    #
    # @option params [String] :availability_zone_id
    #   The ID of the Availability Zone that is the parent of this site. You
    #   can't change the Availability Zone after you create the site.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [String] :description
    #   The description of the site.
    #
    # @option params [required, String] :network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #
    # @option params [required, String] :network_site_name
    #   The name of the site. You can't change the name after you create the
    #   site.
    #
    # @option params [Types::SitePlan] :pending_plan
    #   Information about the pending plan for this site.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the network site.
    #
    # @return [Types::CreateNetworkSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkSiteResponse#network_site #network_site} => Types::NetworkSite
    #   * {Types::CreateNetworkSiteResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_site({
    #     availability_zone: "String",
    #     availability_zone_id: "String",
    #     client_token: "ClientToken",
    #     description: "Description",
    #     network_arn: "Arn", # required
    #     network_site_name: "Name", # required
    #     pending_plan: {
    #       options: [
    #         {
    #           name: "String", # required
    #           value: "String",
    #         },
    #       ],
    #       resource_definitions: [
    #         {
    #           count: 1, # required
    #           options: [
    #             {
    #               name: "String", # required
    #               value: "String",
    #             },
    #           ],
    #           type: "RADIO_UNIT", # required, accepts RADIO_UNIT, DEVICE_IDENTIFIER
    #         },
    #       ],
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.network_site.availability_zone #=> String
    #   resp.network_site.availability_zone_id #=> String
    #   resp.network_site.created_at #=> Time
    #   resp.network_site.current_plan.options #=> Array
    #   resp.network_site.current_plan.options[0].name #=> String
    #   resp.network_site.current_plan.options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.current_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.current_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.description #=> String
    #   resp.network_site.network_arn #=> String
    #   resp.network_site.network_site_arn #=> String
    #   resp.network_site.network_site_name #=> String
    #   resp.network_site.pending_plan.options #=> Array
    #   resp.network_site.pending_plan.options[0].name #=> String
    #   resp.network_site.pending_plan.options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.pending_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.status #=> String, one of "CREATED", "PROVISIONING", "AVAILABLE", "DEPROVISIONING", "DELETED"
    #   resp.network_site.status_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/CreateNetworkSite AWS API Documentation
    #
    # @overload create_network_site(params = {})
    # @param [Hash] params ({})
    def create_network_site(params = {}, options = {})
      req = build_request(:create_network_site, params)
      req.send_request(options)
    end

    # Deactivates the specified device identifier.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :device_identifier_arn
    #   The Amazon Resource Name (ARN) of the device identifier.
    #
    # @return [Types::DeactivateDeviceIdentifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeactivateDeviceIdentifierResponse#device_identifier #device_identifier} => Types::DeviceIdentifier
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_device_identifier({
    #     client_token: "ClientToken",
    #     device_identifier_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_identifier.created_at #=> Time
    #   resp.device_identifier.device_identifier_arn #=> String
    #   resp.device_identifier.iccid #=> String
    #   resp.device_identifier.imsi #=> String
    #   resp.device_identifier.network_arn #=> String
    #   resp.device_identifier.order_arn #=> String
    #   resp.device_identifier.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.device_identifier.traffic_group_arn #=> String
    #   resp.device_identifier.vendor #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/DeactivateDeviceIdentifier AWS API Documentation
    #
    # @overload deactivate_device_identifier(params = {})
    # @param [Hash] params ({})
    def deactivate_device_identifier(params = {}, options = {})
      req = build_request(:deactivate_device_identifier, params)
      req.send_request(options)
    end

    # Deletes the specified network. You must delete network sites before
    # you delete the network. For more information, see
    # [DeleteNetworkSite][1] in the *API Reference for Amazon Web Services
    # Private 5G*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/private-networks/latest/APIReference/API_DeleteNetworkSite.html
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #
    # @return [Types::DeleteNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNetworkResponse#network #network} => Types::Network
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network({
    #     client_token: "ClientToken",
    #     network_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network.created_at #=> Time
    #   resp.network.description #=> String
    #   resp.network.network_arn #=> String
    #   resp.network.network_name #=> String
    #   resp.network.status #=> String, one of "CREATED", "PROVISIONING", "AVAILABLE", "DEPROVISIONING", "DELETED"
    #   resp.network.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/DeleteNetwork AWS API Documentation
    #
    # @overload delete_network(params = {})
    # @param [Hash] params ({})
    def delete_network(params = {}, options = {})
      req = build_request(:delete_network, params)
      req.send_request(options)
    end

    # Deletes the specified network site. Return the hardware after you
    # delete the network site. You are responsible for minimum charges. For
    # more information, see [Hardware returns][1] in the *Amazon Web
    # Services Private 5G User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/private-networks/latest/userguide/hardware-maintenance.html
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :network_site_arn
    #   The Amazon Resource Name (ARN) of the network site.
    #
    # @return [Types::DeleteNetworkSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNetworkSiteResponse#network_site #network_site} => Types::NetworkSite
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_site({
    #     client_token: "ClientToken",
    #     network_site_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_site.availability_zone #=> String
    #   resp.network_site.availability_zone_id #=> String
    #   resp.network_site.created_at #=> Time
    #   resp.network_site.current_plan.options #=> Array
    #   resp.network_site.current_plan.options[0].name #=> String
    #   resp.network_site.current_plan.options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.current_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.current_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.description #=> String
    #   resp.network_site.network_arn #=> String
    #   resp.network_site.network_site_arn #=> String
    #   resp.network_site.network_site_name #=> String
    #   resp.network_site.pending_plan.options #=> Array
    #   resp.network_site.pending_plan.options[0].name #=> String
    #   resp.network_site.pending_plan.options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.pending_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.status #=> String, one of "CREATED", "PROVISIONING", "AVAILABLE", "DEPROVISIONING", "DELETED"
    #   resp.network_site.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/DeleteNetworkSite AWS API Documentation
    #
    # @overload delete_network_site(params = {})
    # @param [Hash] params ({})
    def delete_network_site(params = {}, options = {})
      req = build_request(:delete_network_site, params)
      req.send_request(options)
    end

    # Gets the specified device identifier.
    #
    # @option params [required, String] :device_identifier_arn
    #   The Amazon Resource Name (ARN) of the device identifier.
    #
    # @return [Types::GetDeviceIdentifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceIdentifierResponse#device_identifier #device_identifier} => Types::DeviceIdentifier
    #   * {Types::GetDeviceIdentifierResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_identifier({
    #     device_identifier_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_identifier.created_at #=> Time
    #   resp.device_identifier.device_identifier_arn #=> String
    #   resp.device_identifier.iccid #=> String
    #   resp.device_identifier.imsi #=> String
    #   resp.device_identifier.network_arn #=> String
    #   resp.device_identifier.order_arn #=> String
    #   resp.device_identifier.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.device_identifier.traffic_group_arn #=> String
    #   resp.device_identifier.vendor #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetDeviceIdentifier AWS API Documentation
    #
    # @overload get_device_identifier(params = {})
    # @param [Hash] params ({})
    def get_device_identifier(params = {}, options = {})
      req = build_request(:get_device_identifier, params)
      req.send_request(options)
    end

    # Gets the specified network.
    #
    # @option params [required, String] :network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #
    # @return [Types::GetNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkResponse#network #network} => Types::Network
    #   * {Types::GetNetworkResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network({
    #     network_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network.created_at #=> Time
    #   resp.network.description #=> String
    #   resp.network.network_arn #=> String
    #   resp.network.network_name #=> String
    #   resp.network.status #=> String, one of "CREATED", "PROVISIONING", "AVAILABLE", "DEPROVISIONING", "DELETED"
    #   resp.network.status_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetNetwork AWS API Documentation
    #
    # @overload get_network(params = {})
    # @param [Hash] params ({})
    def get_network(params = {}, options = {})
      req = build_request(:get_network, params)
      req.send_request(options)
    end

    # Gets the specified network resource.
    #
    # @option params [required, String] :network_resource_arn
    #   The Amazon Resource Name (ARN) of the network resource.
    #
    # @return [Types::GetNetworkResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkResourceResponse#network_resource #network_resource} => Types::NetworkResource
    #   * {Types::GetNetworkResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_resource({
    #     network_resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_resource.attributes #=> Array
    #   resp.network_resource.attributes[0].name #=> String
    #   resp.network_resource.attributes[0].value #=> String
    #   resp.network_resource.commitment_information.commitment_configuration.automatic_renewal #=> Boolean
    #   resp.network_resource.commitment_information.commitment_configuration.commitment_length #=> String, one of "SIXTY_DAYS", "ONE_YEAR", "THREE_YEARS"
    #   resp.network_resource.commitment_information.expires_on #=> Time
    #   resp.network_resource.commitment_information.start_at #=> Time
    #   resp.network_resource.created_at #=> Time
    #   resp.network_resource.description #=> String
    #   resp.network_resource.health #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.network_resource.model #=> String
    #   resp.network_resource.network_arn #=> String
    #   resp.network_resource.network_resource_arn #=> String
    #   resp.network_resource.network_site_arn #=> String
    #   resp.network_resource.order_arn #=> String
    #   resp.network_resource.position.elevation #=> Float
    #   resp.network_resource.position.elevation_reference #=> String, one of "AGL", "AMSL"
    #   resp.network_resource.position.elevation_unit #=> String, one of "FEET"
    #   resp.network_resource.position.latitude #=> Float
    #   resp.network_resource.position.longitude #=> Float
    #   resp.network_resource.return_information.replacement_order_arn #=> String
    #   resp.network_resource.return_information.return_reason #=> String
    #   resp.network_resource.return_information.shipping_address.city #=> String
    #   resp.network_resource.return_information.shipping_address.company #=> String
    #   resp.network_resource.return_information.shipping_address.country #=> String
    #   resp.network_resource.return_information.shipping_address.email_address #=> String
    #   resp.network_resource.return_information.shipping_address.name #=> String
    #   resp.network_resource.return_information.shipping_address.phone_number #=> String
    #   resp.network_resource.return_information.shipping_address.postal_code #=> String
    #   resp.network_resource.return_information.shipping_address.state_or_province #=> String
    #   resp.network_resource.return_information.shipping_address.street1 #=> String
    #   resp.network_resource.return_information.shipping_address.street2 #=> String
    #   resp.network_resource.return_information.shipping_address.street3 #=> String
    #   resp.network_resource.return_information.shipping_label #=> String
    #   resp.network_resource.serial_number #=> String
    #   resp.network_resource.status #=> String, one of "PENDING", "SHIPPED", "PROVISIONING", "PROVISIONED", "AVAILABLE", "DELETING", "PENDING_RETURN", "DELETED", "CREATING_SHIPPING_LABEL"
    #   resp.network_resource.status_reason #=> String
    #   resp.network_resource.type #=> String, one of "RADIO_UNIT"
    #   resp.network_resource.vendor #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetNetworkResource AWS API Documentation
    #
    # @overload get_network_resource(params = {})
    # @param [Hash] params ({})
    def get_network_resource(params = {}, options = {})
      req = build_request(:get_network_resource, params)
      req.send_request(options)
    end

    # Gets the specified network site.
    #
    # @option params [required, String] :network_site_arn
    #   The Amazon Resource Name (ARN) of the network site.
    #
    # @return [Types::GetNetworkSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkSiteResponse#network_site #network_site} => Types::NetworkSite
    #   * {Types::GetNetworkSiteResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_site({
    #     network_site_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_site.availability_zone #=> String
    #   resp.network_site.availability_zone_id #=> String
    #   resp.network_site.created_at #=> Time
    #   resp.network_site.current_plan.options #=> Array
    #   resp.network_site.current_plan.options[0].name #=> String
    #   resp.network_site.current_plan.options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.current_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.current_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.description #=> String
    #   resp.network_site.network_arn #=> String
    #   resp.network_site.network_site_arn #=> String
    #   resp.network_site.network_site_name #=> String
    #   resp.network_site.pending_plan.options #=> Array
    #   resp.network_site.pending_plan.options[0].name #=> String
    #   resp.network_site.pending_plan.options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.pending_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.status #=> String, one of "CREATED", "PROVISIONING", "AVAILABLE", "DEPROVISIONING", "DELETED"
    #   resp.network_site.status_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetNetworkSite AWS API Documentation
    #
    # @overload get_network_site(params = {})
    # @param [Hash] params ({})
    def get_network_site(params = {}, options = {})
      req = build_request(:get_network_site, params)
      req.send_request(options)
    end

    # Gets the specified order.
    #
    # @option params [required, String] :order_arn
    #   The Amazon Resource Name (ARN) of the order.
    #
    # @return [Types::GetOrderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOrderResponse#order #order} => Types::Order
    #   * {Types::GetOrderResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_order({
    #     order_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.order.acknowledgment_status #=> String, one of "ACKNOWLEDGING", "ACKNOWLEDGED", "UNACKNOWLEDGED"
    #   resp.order.created_at #=> Time
    #   resp.order.network_arn #=> String
    #   resp.order.network_site_arn #=> String
    #   resp.order.order_arn #=> String
    #   resp.order.ordered_resources #=> Array
    #   resp.order.ordered_resources[0].commitment_configuration.automatic_renewal #=> Boolean
    #   resp.order.ordered_resources[0].commitment_configuration.commitment_length #=> String, one of "SIXTY_DAYS", "ONE_YEAR", "THREE_YEARS"
    #   resp.order.ordered_resources[0].count #=> Integer
    #   resp.order.ordered_resources[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.order.shipping_address.city #=> String
    #   resp.order.shipping_address.company #=> String
    #   resp.order.shipping_address.country #=> String
    #   resp.order.shipping_address.email_address #=> String
    #   resp.order.shipping_address.name #=> String
    #   resp.order.shipping_address.phone_number #=> String
    #   resp.order.shipping_address.postal_code #=> String
    #   resp.order.shipping_address.state_or_province #=> String
    #   resp.order.shipping_address.street1 #=> String
    #   resp.order.shipping_address.street2 #=> String
    #   resp.order.shipping_address.street3 #=> String
    #   resp.order.tracking_information #=> Array
    #   resp.order.tracking_information[0].tracking_number #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/GetOrder AWS API Documentation
    #
    # @overload get_order(params = {})
    # @param [Hash] params ({})
    def get_order(params = {}, options = {})
      req = build_request(:get_order, params)
      req.send_request(options)
    end

    # Lists device identifiers. Add filters to your request to return a more
    # specific list of results. Use filters to match the Amazon Resource
    # Name (ARN) of an order, the status of device identifiers, or the ARN
    # of the traffic group.
    #
    # If you specify multiple filters, filters are joined with an OR, and
    # the request returns results that match all of the specified filters.
    #
    # @option params [Hash<String,Array>] :filters
    #   The filters.
    #
    #   * `ORDER` - The Amazon Resource Name (ARN) of the order.
    #
    #   * `STATUS` - The status (`ACTIVE` \| `INACTIVE`).
    #
    #   * `TRAFFIC_GROUP` - The Amazon Resource Name (ARN) of the traffic
    #     group.
    #
    #   Filter values are case sensitive. If you specify multiple values for a
    #   filter, the values are joined with an `OR`, and the request returns
    #   all results that match any of the specified values.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [required, String] :network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #
    # @option params [String] :start_token
    #   The token for the next page of results.
    #
    # @return [Types::ListDeviceIdentifiersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeviceIdentifiersResponse#device_identifiers #device_identifiers} => Array&lt;Types::DeviceIdentifier&gt;
    #   * {Types::ListDeviceIdentifiersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_identifiers({
    #     filters: {
    #       "STATUS" => ["String"],
    #     },
    #     max_results: 1,
    #     network_arn: "Arn", # required
    #     start_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.device_identifiers #=> Array
    #   resp.device_identifiers[0].created_at #=> Time
    #   resp.device_identifiers[0].device_identifier_arn #=> String
    #   resp.device_identifiers[0].iccid #=> String
    #   resp.device_identifiers[0].imsi #=> String
    #   resp.device_identifiers[0].network_arn #=> String
    #   resp.device_identifiers[0].order_arn #=> String
    #   resp.device_identifiers[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.device_identifiers[0].traffic_group_arn #=> String
    #   resp.device_identifiers[0].vendor #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListDeviceIdentifiers AWS API Documentation
    #
    # @overload list_device_identifiers(params = {})
    # @param [Hash] params ({})
    def list_device_identifiers(params = {}, options = {})
      req = build_request(:list_device_identifiers, params)
      req.send_request(options)
    end

    # Lists network resources. Add filters to your request to return a more
    # specific list of results. Use filters to match the Amazon Resource
    # Name (ARN) of an order or the status of network resources.
    #
    # If you specify multiple filters, filters are joined with an OR, and
    # the request returns results that match all of the specified filters.
    #
    # @option params [Hash<String,Array>] :filters
    #   The filters.
    #
    #   * `ORDER` - The Amazon Resource Name (ARN) of the order.
    #
    #   * `STATUS` - The status (`AVAILABLE` \| `DELETED` \| `DELETING` \|
    #     `PENDING` \| `PENDING_RETURN` \| `PROVISIONING` \| `SHIPPED`).
    #
    #   Filter values are case sensitive. If you specify multiple values for a
    #   filter, the values are joined with an `OR`, and the request returns
    #   all results that match any of the specified values.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [required, String] :network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #
    # @option params [String] :start_token
    #   The token for the next page of results.
    #
    # @return [Types::ListNetworkResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNetworkResourcesResponse#network_resources #network_resources} => Array&lt;Types::NetworkResource&gt;
    #   * {Types::ListNetworkResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_network_resources({
    #     filters: {
    #       "ORDER" => ["String"],
    #     },
    #     max_results: 1,
    #     network_arn: "Arn", # required
    #     start_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_resources #=> Array
    #   resp.network_resources[0].attributes #=> Array
    #   resp.network_resources[0].attributes[0].name #=> String
    #   resp.network_resources[0].attributes[0].value #=> String
    #   resp.network_resources[0].commitment_information.commitment_configuration.automatic_renewal #=> Boolean
    #   resp.network_resources[0].commitment_information.commitment_configuration.commitment_length #=> String, one of "SIXTY_DAYS", "ONE_YEAR", "THREE_YEARS"
    #   resp.network_resources[0].commitment_information.expires_on #=> Time
    #   resp.network_resources[0].commitment_information.start_at #=> Time
    #   resp.network_resources[0].created_at #=> Time
    #   resp.network_resources[0].description #=> String
    #   resp.network_resources[0].health #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.network_resources[0].model #=> String
    #   resp.network_resources[0].network_arn #=> String
    #   resp.network_resources[0].network_resource_arn #=> String
    #   resp.network_resources[0].network_site_arn #=> String
    #   resp.network_resources[0].order_arn #=> String
    #   resp.network_resources[0].position.elevation #=> Float
    #   resp.network_resources[0].position.elevation_reference #=> String, one of "AGL", "AMSL"
    #   resp.network_resources[0].position.elevation_unit #=> String, one of "FEET"
    #   resp.network_resources[0].position.latitude #=> Float
    #   resp.network_resources[0].position.longitude #=> Float
    #   resp.network_resources[0].return_information.replacement_order_arn #=> String
    #   resp.network_resources[0].return_information.return_reason #=> String
    #   resp.network_resources[0].return_information.shipping_address.city #=> String
    #   resp.network_resources[0].return_information.shipping_address.company #=> String
    #   resp.network_resources[0].return_information.shipping_address.country #=> String
    #   resp.network_resources[0].return_information.shipping_address.email_address #=> String
    #   resp.network_resources[0].return_information.shipping_address.name #=> String
    #   resp.network_resources[0].return_information.shipping_address.phone_number #=> String
    #   resp.network_resources[0].return_information.shipping_address.postal_code #=> String
    #   resp.network_resources[0].return_information.shipping_address.state_or_province #=> String
    #   resp.network_resources[0].return_information.shipping_address.street1 #=> String
    #   resp.network_resources[0].return_information.shipping_address.street2 #=> String
    #   resp.network_resources[0].return_information.shipping_address.street3 #=> String
    #   resp.network_resources[0].return_information.shipping_label #=> String
    #   resp.network_resources[0].serial_number #=> String
    #   resp.network_resources[0].status #=> String, one of "PENDING", "SHIPPED", "PROVISIONING", "PROVISIONED", "AVAILABLE", "DELETING", "PENDING_RETURN", "DELETED", "CREATING_SHIPPING_LABEL"
    #   resp.network_resources[0].status_reason #=> String
    #   resp.network_resources[0].type #=> String, one of "RADIO_UNIT"
    #   resp.network_resources[0].vendor #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListNetworkResources AWS API Documentation
    #
    # @overload list_network_resources(params = {})
    # @param [Hash] params ({})
    def list_network_resources(params = {}, options = {})
      req = build_request(:list_network_resources, params)
      req.send_request(options)
    end

    # Lists network sites. Add filters to your request to return a more
    # specific list of results. Use filters to match the status of the
    # network site.
    #
    # @option params [Hash<String,Array>] :filters
    #   The filters. Add filters to your request to return a more specific
    #   list of results. Use filters to match the status of the network sites.
    #
    #   * `STATUS` - The status (`AVAILABLE` \| `CREATED` \| `DELETED` \|
    #     `DEPROVISIONING` \| `PROVISIONING`).
    #
    #   ^
    #
    #   Filter values are case sensitive. If you specify multiple values for a
    #   filter, the values are joined with an `OR`, and the request returns
    #   all results that match any of the specified values.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [required, String] :network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #
    # @option params [String] :start_token
    #   The token for the next page of results.
    #
    # @return [Types::ListNetworkSitesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNetworkSitesResponse#network_sites #network_sites} => Array&lt;Types::NetworkSite&gt;
    #   * {Types::ListNetworkSitesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_network_sites({
    #     filters: {
    #       "STATUS" => ["String"],
    #     },
    #     max_results: 1,
    #     network_arn: "Arn", # required
    #     start_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_sites #=> Array
    #   resp.network_sites[0].availability_zone #=> String
    #   resp.network_sites[0].availability_zone_id #=> String
    #   resp.network_sites[0].created_at #=> Time
    #   resp.network_sites[0].current_plan.options #=> Array
    #   resp.network_sites[0].current_plan.options[0].name #=> String
    #   resp.network_sites[0].current_plan.options[0].value #=> String
    #   resp.network_sites[0].current_plan.resource_definitions #=> Array
    #   resp.network_sites[0].current_plan.resource_definitions[0].count #=> Integer
    #   resp.network_sites[0].current_plan.resource_definitions[0].options #=> Array
    #   resp.network_sites[0].current_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_sites[0].current_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_sites[0].current_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_sites[0].description #=> String
    #   resp.network_sites[0].network_arn #=> String
    #   resp.network_sites[0].network_site_arn #=> String
    #   resp.network_sites[0].network_site_name #=> String
    #   resp.network_sites[0].pending_plan.options #=> Array
    #   resp.network_sites[0].pending_plan.options[0].name #=> String
    #   resp.network_sites[0].pending_plan.options[0].value #=> String
    #   resp.network_sites[0].pending_plan.resource_definitions #=> Array
    #   resp.network_sites[0].pending_plan.resource_definitions[0].count #=> Integer
    #   resp.network_sites[0].pending_plan.resource_definitions[0].options #=> Array
    #   resp.network_sites[0].pending_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_sites[0].pending_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_sites[0].pending_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_sites[0].status #=> String, one of "CREATED", "PROVISIONING", "AVAILABLE", "DEPROVISIONING", "DELETED"
    #   resp.network_sites[0].status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListNetworkSites AWS API Documentation
    #
    # @overload list_network_sites(params = {})
    # @param [Hash] params ({})
    def list_network_sites(params = {}, options = {})
      req = build_request(:list_network_sites, params)
      req.send_request(options)
    end

    # Lists networks. Add filters to your request to return a more specific
    # list of results. Use filters to match the status of the network.
    #
    # @option params [Hash<String,Array>] :filters
    #   The filters.
    #
    #   * `STATUS` - The status (`AVAILABLE` \| `CREATED` \| `DELETED` \|
    #     `DEPROVISIONING` \| `PROVISIONING`).
    #
    #   ^
    #
    #   Filter values are case sensitive. If you specify multiple values for a
    #   filter, the values are joined with an `OR`, and the request returns
    #   all results that match any of the specified values.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :start_token
    #   The token for the next page of results.
    #
    # @return [Types::ListNetworksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNetworksResponse#networks #networks} => Array&lt;Types::Network&gt;
    #   * {Types::ListNetworksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_networks({
    #     filters: {
    #       "STATUS" => ["String"],
    #     },
    #     max_results: 1,
    #     start_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.networks #=> Array
    #   resp.networks[0].created_at #=> Time
    #   resp.networks[0].description #=> String
    #   resp.networks[0].network_arn #=> String
    #   resp.networks[0].network_name #=> String
    #   resp.networks[0].status #=> String, one of "CREATED", "PROVISIONING", "AVAILABLE", "DEPROVISIONING", "DELETED"
    #   resp.networks[0].status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListNetworks AWS API Documentation
    #
    # @overload list_networks(params = {})
    # @param [Hash] params ({})
    def list_networks(params = {}, options = {})
      req = build_request(:list_networks, params)
      req.send_request(options)
    end

    # Lists orders. Add filters to your request to return a more specific
    # list of results. Use filters to match the Amazon Resource Name (ARN)
    # of the network site or the status of the order.
    #
    # If you specify multiple filters, filters are joined with an OR, and
    # the request returns results that match all of the specified filters.
    #
    # @option params [Hash<String,Array>] :filters
    #   The filters.
    #
    #   * `NETWORK_SITE` - The Amazon Resource Name (ARN) of the network site.
    #
    #   * `STATUS` - The status (`ACKNOWLEDGING` \| `ACKNOWLEDGED` \|
    #     `UNACKNOWLEDGED`).
    #
    #   Filter values are case sensitive. If you specify multiple values for a
    #   filter, the values are joined with an `OR`, and the request returns
    #   all results that match any of the specified values.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [required, String] :network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #
    # @option params [String] :start_token
    #   The token for the next page of results.
    #
    # @return [Types::ListOrdersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrdersResponse#next_token #next_token} => String
    #   * {Types::ListOrdersResponse#orders #orders} => Array&lt;Types::Order&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_orders({
    #     filters: {
    #       "STATUS" => ["String"],
    #     },
    #     max_results: 1,
    #     network_arn: "Arn", # required
    #     start_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.orders #=> Array
    #   resp.orders[0].acknowledgment_status #=> String, one of "ACKNOWLEDGING", "ACKNOWLEDGED", "UNACKNOWLEDGED"
    #   resp.orders[0].created_at #=> Time
    #   resp.orders[0].network_arn #=> String
    #   resp.orders[0].network_site_arn #=> String
    #   resp.orders[0].order_arn #=> String
    #   resp.orders[0].ordered_resources #=> Array
    #   resp.orders[0].ordered_resources[0].commitment_configuration.automatic_renewal #=> Boolean
    #   resp.orders[0].ordered_resources[0].commitment_configuration.commitment_length #=> String, one of "SIXTY_DAYS", "ONE_YEAR", "THREE_YEARS"
    #   resp.orders[0].ordered_resources[0].count #=> Integer
    #   resp.orders[0].ordered_resources[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.orders[0].shipping_address.city #=> String
    #   resp.orders[0].shipping_address.company #=> String
    #   resp.orders[0].shipping_address.country #=> String
    #   resp.orders[0].shipping_address.email_address #=> String
    #   resp.orders[0].shipping_address.name #=> String
    #   resp.orders[0].shipping_address.phone_number #=> String
    #   resp.orders[0].shipping_address.postal_code #=> String
    #   resp.orders[0].shipping_address.state_or_province #=> String
    #   resp.orders[0].shipping_address.street1 #=> String
    #   resp.orders[0].shipping_address.street2 #=> String
    #   resp.orders[0].shipping_address.street3 #=> String
    #   resp.orders[0].tracking_information #=> Array
    #   resp.orders[0].tracking_information[0].tracking_number #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListOrders AWS API Documentation
    #
    # @overload list_orders(params = {})
    # @param [Hash] params ({})
    def list_orders(params = {}, options = {})
      req = build_request(:list_orders, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Checks the health of the service.
    #
    # @return [Types::PingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PingResponse#status #status} => String
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/Ping AWS API Documentation
    #
    # @overload ping(params = {})
    # @param [Hash] params ({})
    def ping(params = {}, options = {})
      req = build_request(:ping, params)
      req.send_request(options)
    end

    # Use this action to do the following tasks:
    #
    # * Update the duration and renewal status of the commitment period for
    #   a radio unit. The update goes into effect immediately.
    #
    # * Request a replacement for a network resource.
    #
    # * Request that you return a network resource.
    #
    # After you submit a request to replace or return a network resource,
    # the status of the network resource changes to
    # `CREATING_SHIPPING_LABEL`. The shipping label is available when the
    # status of the network resource is `PENDING_RETURN`. After the network
    # resource is successfully returned, its status changes to `DELETED`.
    # For more information, see [Return a radio unit][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/private-networks/latest/userguide/radio-units.html#return-radio-unit
    #
    # @option params [Types::CommitmentConfiguration] :commitment_configuration
    #   Use this action to extend and automatically renew the commitment
    #   period for the radio unit. You can do the following:
    #
    #   * Change a 60-day commitment to a 1-year or 3-year commitment. The
    #     change is immediate and the hourly rate decreases to the rate for
    #     the new commitment period.
    #
    #   * Change a 1-year commitment to a 3-year commitment. The change is
    #     immediate and the hourly rate decreases to the rate for the 3-year
    #     commitment period.
    #
    #   * Set a 1-year commitment to automatically renew for an additional 1
    #     year. The hourly rate for the additional year will continue to be
    #     the same as your existing 1-year rate.
    #
    #   * Set a 3-year commitment to automatically renew for an additional 1
    #     year. The hourly rate for the additional year will continue to be
    #     the same as your existing 3-year rate.
    #
    #   * Turn off a previously-enabled automatic renewal on a 1-year or
    #     3-year commitment. You cannot use the automatic-renewal option for a
    #     60-day commitment.
    #
    #   For pricing, see [Amazon Web Services Private 5G Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/private5g/pricing
    #
    # @option params [required, String] :network_resource_arn
    #   The Amazon Resource Name (ARN) of the network resource.
    #
    # @option params [String] :return_reason
    #   The reason for the return. Providing a reason for a return is
    #   optional.
    #
    # @option params [Types::Address] :shipping_address
    #   The shipping address. If you don't provide a shipping address when
    #   replacing or returning a network resource, we use the address from the
    #   original order for the network resource.
    #
    # @option params [required, String] :update_type
    #   The update type.
    #
    #   * `REPLACE` - Submits a request to replace a defective radio unit. We
    #     provide a shipping label that you can use for the return process and
    #     we ship a replacement radio unit to you.
    #
    #   * `RETURN` - Submits a request to return a radio unit that you no
    #     longer need. We provide a shipping label that you can use for the
    #     return process.
    #
    #   * `COMMITMENT` - Submits a request to change or renew the commitment
    #     period. If you choose this value, then you must set [
    #     `commitmentConfiguration` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/private-networks/latest/APIReference/API_StartNetworkResourceUpdate.html#privatenetworks-StartNetworkResourceUpdate-request-commitmentConfiguration
    #
    # @return [Types::StartNetworkResourceUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartNetworkResourceUpdateResponse#network_resource #network_resource} => Types::NetworkResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_network_resource_update({
    #     commitment_configuration: {
    #       automatic_renewal: false, # required
    #       commitment_length: "SIXTY_DAYS", # required, accepts SIXTY_DAYS, ONE_YEAR, THREE_YEARS
    #     },
    #     network_resource_arn: "Arn", # required
    #     return_reason: "StartNetworkResourceUpdateRequestReturnReasonString",
    #     shipping_address: {
    #       city: "AddressContent", # required
    #       company: "AddressContent",
    #       country: "AddressContent", # required
    #       email_address: "AddressContent",
    #       name: "AddressContent", # required
    #       phone_number: "AddressContent",
    #       postal_code: "AddressContent", # required
    #       state_or_province: "AddressContent", # required
    #       street1: "AddressContent", # required
    #       street2: "AddressContent",
    #       street3: "AddressContent",
    #     },
    #     update_type: "REPLACE", # required, accepts REPLACE, RETURN, COMMITMENT
    #   })
    #
    # @example Response structure
    #
    #   resp.network_resource.attributes #=> Array
    #   resp.network_resource.attributes[0].name #=> String
    #   resp.network_resource.attributes[0].value #=> String
    #   resp.network_resource.commitment_information.commitment_configuration.automatic_renewal #=> Boolean
    #   resp.network_resource.commitment_information.commitment_configuration.commitment_length #=> String, one of "SIXTY_DAYS", "ONE_YEAR", "THREE_YEARS"
    #   resp.network_resource.commitment_information.expires_on #=> Time
    #   resp.network_resource.commitment_information.start_at #=> Time
    #   resp.network_resource.created_at #=> Time
    #   resp.network_resource.description #=> String
    #   resp.network_resource.health #=> String, one of "INITIAL", "HEALTHY", "UNHEALTHY"
    #   resp.network_resource.model #=> String
    #   resp.network_resource.network_arn #=> String
    #   resp.network_resource.network_resource_arn #=> String
    #   resp.network_resource.network_site_arn #=> String
    #   resp.network_resource.order_arn #=> String
    #   resp.network_resource.position.elevation #=> Float
    #   resp.network_resource.position.elevation_reference #=> String, one of "AGL", "AMSL"
    #   resp.network_resource.position.elevation_unit #=> String, one of "FEET"
    #   resp.network_resource.position.latitude #=> Float
    #   resp.network_resource.position.longitude #=> Float
    #   resp.network_resource.return_information.replacement_order_arn #=> String
    #   resp.network_resource.return_information.return_reason #=> String
    #   resp.network_resource.return_information.shipping_address.city #=> String
    #   resp.network_resource.return_information.shipping_address.company #=> String
    #   resp.network_resource.return_information.shipping_address.country #=> String
    #   resp.network_resource.return_information.shipping_address.email_address #=> String
    #   resp.network_resource.return_information.shipping_address.name #=> String
    #   resp.network_resource.return_information.shipping_address.phone_number #=> String
    #   resp.network_resource.return_information.shipping_address.postal_code #=> String
    #   resp.network_resource.return_information.shipping_address.state_or_province #=> String
    #   resp.network_resource.return_information.shipping_address.street1 #=> String
    #   resp.network_resource.return_information.shipping_address.street2 #=> String
    #   resp.network_resource.return_information.shipping_address.street3 #=> String
    #   resp.network_resource.return_information.shipping_label #=> String
    #   resp.network_resource.serial_number #=> String
    #   resp.network_resource.status #=> String, one of "PENDING", "SHIPPED", "PROVISIONING", "PROVISIONED", "AVAILABLE", "DELETING", "PENDING_RETURN", "DELETED", "CREATING_SHIPPING_LABEL"
    #   resp.network_resource.status_reason #=> String
    #   resp.network_resource.type #=> String, one of "RADIO_UNIT"
    #   resp.network_resource.vendor #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/StartNetworkResourceUpdate AWS API Documentation
    #
    # @overload start_network_resource_update(params = {})
    # @param [Hash] params ({})
    def start_network_resource_update(params = {}, options = {})
      req = build_request(:start_network_resource_update, params)
      req.send_request(options)
    end

    # Adds tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified network site.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [required, String] :network_site_arn
    #   The Amazon Resource Name (ARN) of the network site.
    #
    # @return [Types::UpdateNetworkSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNetworkSiteResponse#network_site #network_site} => Types::NetworkSite
    #   * {Types::UpdateNetworkSiteResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_site({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     network_site_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_site.availability_zone #=> String
    #   resp.network_site.availability_zone_id #=> String
    #   resp.network_site.created_at #=> Time
    #   resp.network_site.current_plan.options #=> Array
    #   resp.network_site.current_plan.options[0].name #=> String
    #   resp.network_site.current_plan.options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.current_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.current_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.description #=> String
    #   resp.network_site.network_arn #=> String
    #   resp.network_site.network_site_arn #=> String
    #   resp.network_site.network_site_name #=> String
    #   resp.network_site.pending_plan.options #=> Array
    #   resp.network_site.pending_plan.options[0].name #=> String
    #   resp.network_site.pending_plan.options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.pending_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.status #=> String, one of "CREATED", "PROVISIONING", "AVAILABLE", "DEPROVISIONING", "DELETED"
    #   resp.network_site.status_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/UpdateNetworkSite AWS API Documentation
    #
    # @overload update_network_site(params = {})
    # @param [Hash] params ({})
    def update_network_site(params = {}, options = {})
      req = build_request(:update_network_site, params)
      req.send_request(options)
    end

    # Updates the specified network site plan.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to ensure
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :network_site_arn
    #   The Amazon Resource Name (ARN) of the network site.
    #
    # @option params [required, Types::SitePlan] :pending_plan
    #   The pending plan.
    #
    # @return [Types::UpdateNetworkSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNetworkSiteResponse#network_site #network_site} => Types::NetworkSite
    #   * {Types::UpdateNetworkSiteResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_site_plan({
    #     client_token: "ClientToken",
    #     network_site_arn: "Arn", # required
    #     pending_plan: { # required
    #       options: [
    #         {
    #           name: "String", # required
    #           value: "String",
    #         },
    #       ],
    #       resource_definitions: [
    #         {
    #           count: 1, # required
    #           options: [
    #             {
    #               name: "String", # required
    #               value: "String",
    #             },
    #           ],
    #           type: "RADIO_UNIT", # required, accepts RADIO_UNIT, DEVICE_IDENTIFIER
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.network_site.availability_zone #=> String
    #   resp.network_site.availability_zone_id #=> String
    #   resp.network_site.created_at #=> Time
    #   resp.network_site.current_plan.options #=> Array
    #   resp.network_site.current_plan.options[0].name #=> String
    #   resp.network_site.current_plan.options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.current_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.current_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.current_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.current_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.description #=> String
    #   resp.network_site.network_arn #=> String
    #   resp.network_site.network_site_arn #=> String
    #   resp.network_site.network_site_name #=> String
    #   resp.network_site.pending_plan.options #=> Array
    #   resp.network_site.pending_plan.options[0].name #=> String
    #   resp.network_site.pending_plan.options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].count #=> Integer
    #   resp.network_site.pending_plan.resource_definitions[0].options #=> Array
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].name #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].options[0].value #=> String
    #   resp.network_site.pending_plan.resource_definitions[0].type #=> String, one of "RADIO_UNIT", "DEVICE_IDENTIFIER"
    #   resp.network_site.status #=> String, one of "CREATED", "PROVISIONING", "AVAILABLE", "DEPROVISIONING", "DELETED"
    #   resp.network_site.status_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/privatenetworks-2021-12-03/UpdateNetworkSitePlan AWS API Documentation
    #
    # @overload update_network_site_plan(params = {})
    # @param [Hash] params ({})
    def update_network_site_plan(params = {}, options = {})
      req = build_request(:update_network_site_plan, params)
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
      context[:gem_name] = 'aws-sdk-privatenetworks'
      context[:gem_version] = '1.10.0'
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
