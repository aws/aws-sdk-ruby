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

Aws::Plugins::GlobalConfiguration.add_identifier(:arczonalshift)

module Aws::ARCZonalShift
  # An API client for ARCZonalShift.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ARCZonalShift::Client.new(
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

    @identifier = :arczonalshift

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
    add_plugin(Aws::ARCZonalShift::Plugins::Endpoints)

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
    #   @option options [Aws::ARCZonalShift::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ARCZonalShift::EndpointParameters`
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

    # Cancel a zonal shift in Amazon Route 53 Application Recovery
    # Controller that you've started for a resource in your AWS account in
    # an AWS Region.
    #
    # @option params [required, String] :zonal_shift_id
    #   The internally-generated identifier of a zonal shift.
    #
    # @return [Types::ZonalShift] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ZonalShift#away_from #away_from} => String
    #   * {Types::ZonalShift#comment #comment} => String
    #   * {Types::ZonalShift#expiry_time #expiry_time} => Time
    #   * {Types::ZonalShift#resource_identifier #resource_identifier} => String
    #   * {Types::ZonalShift#start_time #start_time} => Time
    #   * {Types::ZonalShift#status #status} => String
    #   * {Types::ZonalShift#zonal_shift_id #zonal_shift_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_zonal_shift({
    #     zonal_shift_id: "ZonalShiftId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.away_from #=> String
    #   resp.comment #=> String
    #   resp.expiry_time #=> Time
    #   resp.resource_identifier #=> String
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "ACTIVE", "EXPIRED", "CANCELED"
    #   resp.zonal_shift_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/CancelZonalShift AWS API Documentation
    #
    # @overload cancel_zonal_shift(params = {})
    # @param [Hash] params ({})
    def cancel_zonal_shift(params = {}, options = {})
      req = build_request(:cancel_zonal_shift, params)
      req.send_request(options)
    end

    # Get information about a resource that's been registered for zonal
    # shifts with Amazon Route 53 Application Recovery Controller in this
    # AWS Region. Resources that are registered for zonal shifts are managed
    # resources in Route 53 ARC.
    #
    # At this time, you can only start a zonal shift for Network Load
    # Balancers and Application Load Balancers with cross-zone load
    # balancing turned off.
    #
    # @option params [required, String] :resource_identifier
    #   The identifier for the resource to include in a zonal shift. The
    #   identifier is the Amazon Resource Name (ARN) for the resource.
    #
    #   At this time, you can only start a zonal shift for Network Load
    #   Balancers and Application Load Balancers with cross-zone load
    #   balancing turned off.
    #
    # @return [Types::GetManagedResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedResourceResponse#applied_weights #applied_weights} => Hash&lt;String,Float&gt;
    #   * {Types::GetManagedResourceResponse#arn #arn} => String
    #   * {Types::GetManagedResourceResponse#name #name} => String
    #   * {Types::GetManagedResourceResponse#zonal_shifts #zonal_shifts} => Array&lt;Types::ZonalShiftInResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_resource({
    #     resource_identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.applied_weights #=> Hash
    #   resp.applied_weights["AvailabilityZone"] #=> Float
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.zonal_shifts #=> Array
    #   resp.zonal_shifts[0].applied_status #=> String, one of "APPLIED", "NOT_APPLIED"
    #   resp.zonal_shifts[0].away_from #=> String
    #   resp.zonal_shifts[0].comment #=> String
    #   resp.zonal_shifts[0].expiry_time #=> Time
    #   resp.zonal_shifts[0].resource_identifier #=> String
    #   resp.zonal_shifts[0].start_time #=> Time
    #   resp.zonal_shifts[0].zonal_shift_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/GetManagedResource AWS API Documentation
    #
    # @overload get_managed_resource(params = {})
    # @param [Hash] params ({})
    def get_managed_resource(params = {}, options = {})
      req = build_request(:get_managed_resource, params)
      req.send_request(options)
    end

    # Lists all the resources in your AWS account in this AWS Region that
    # are managed for zonal shifts in Amazon Route 53 Application Recovery
    # Controller, and information about them. The information includes their
    # Amazon Resource Names (ARNs), the Availability Zones the resources are
    # deployed in, and the resource name.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @return [Types::ListManagedResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedResourcesResponse#items #items} => Array&lt;Types::ManagedResourceSummary&gt;
    #   * {Types::ListManagedResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_resources({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].availability_zones #=> Array
    #   resp.items[0].availability_zones[0] #=> String
    #   resp.items[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ListManagedResources AWS API Documentation
    #
    # @overload list_managed_resources(params = {})
    # @param [Hash] params ({})
    def list_managed_resources(params = {}, options = {})
      req = build_request(:list_managed_resources, params)
      req.send_request(options)
    end

    # Lists all the active zonal shifts in Amazon Route 53 Application
    # Recovery Controller in your AWS account in this AWS Region.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `NextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `NextToken`
    #   response to request the next page of results.
    #
    # @option params [String] :status
    #   A status for a zonal shift.
    #
    #   The `Status` for a zonal shift can have one of the following values:
    #
    #   * **ACTIVE**: The zonal shift is started and active.
    #
    #   * **EXPIRED**: The zonal shift has expired (the expiry time was
    #     exceeded).
    #
    #   * **CANCELED**: The zonal shift was canceled.
    #
    # @return [Types::ListZonalShiftsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListZonalShiftsResponse#items #items} => Array&lt;Types::ZonalShiftSummary&gt;
    #   * {Types::ListZonalShiftsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_zonal_shifts({
    #     max_results: 1,
    #     next_token: "String",
    #     status: "ACTIVE", # accepts ACTIVE, EXPIRED, CANCELED
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].away_from #=> String
    #   resp.items[0].comment #=> String
    #   resp.items[0].expiry_time #=> Time
    #   resp.items[0].resource_identifier #=> String
    #   resp.items[0].start_time #=> Time
    #   resp.items[0].status #=> String, one of "ACTIVE", "EXPIRED", "CANCELED"
    #   resp.items[0].zonal_shift_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ListZonalShifts AWS API Documentation
    #
    # @overload list_zonal_shifts(params = {})
    # @param [Hash] params ({})
    def list_zonal_shifts(params = {}, options = {})
      req = build_request(:list_zonal_shifts, params)
      req.send_request(options)
    end

    # You start a zonal shift to temporarily move load balancer traffic away
    # from an Availability Zone in a AWS Region, to help your application
    # recover immediately, for example, from a developer's bad code
    # deployment or from an AWS infrastructure failure in a single
    # Availability Zone. You can start a zonal shift in Route 53 ARC only
    # for managed resources in your account in an AWS Region. Resources are
    # automatically registered with Route 53 ARC by AWS services.
    #
    # At this time, you can only start a zonal shift for Network Load
    # Balancers and Application Load Balancers with cross-zone load
    # balancing turned off.
    #
    # When you start a zonal shift, traffic for the resource is no longer
    # routed to the Availability Zone. The zonal shift is created
    # immediately in Route 53 ARC. However, it can take a short time,
    # typically up to a few minutes, for existing, in-progress connections
    # in the Availability Zone to complete.
    #
    # For more information, see [Zonal shift][1] in the Amazon Route 53
    # Application Recovery Controller Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.html
    #
    # @option params [required, String] :away_from
    #   The Availability Zone that traffic is moved away from for a resource
    #   when you start a zonal shift. Until the zonal shift expires or you
    #   cancel it, traffic for the resource is instead moved to other
    #   Availability Zones in the AWS Region.
    #
    # @option params [required, String] :comment
    #   A comment that you enter about the zonal shift. Only the latest
    #   comment is retained; no comment history is maintained. A new comment
    #   overwrites any existing comment string.
    #
    # @option params [required, String] :expires_in
    #   The length of time that you want a zonal shift to be active, which
    #   Route 53 ARC converts to an expiry time (expiration time). Zonal
    #   shifts are temporary. You can set a zonal shift to be active initially
    #   for up to three days (72 hours).
    #
    #   If you want to still keep traffic away from an Availability Zone, you
    #   can update the zonal shift and set a new expiration. You can also
    #   cancel a zonal shift, before it expires, for example, if you're ready
    #   to restore traffic to the Availability Zone.
    #
    #   To set a length of time for a zonal shift to be active, specify a
    #   whole number, and then one of the following, with no space:
    #
    #        <ul> <li> <p> <b>A lowercase letter m:</b> To specify that the value is in minutes.</p> </li> <li> <p> <b>A lowercase letter h:</b> To specify that the value is in hours.</p> </li> </ul> <p>For example: <code>20h</code> means the zonal shift expires in 20 hours. <code>120m</code> means the zonal shift expires in 120 minutes (2 hours).</p>
    #
    # @option params [required, String] :resource_identifier
    #   The identifier for the resource to include in a zonal shift. The
    #   identifier is the Amazon Resource Name (ARN) for the resource.
    #
    #   At this time, you can only start a zonal shift for Network Load
    #   Balancers and Application Load Balancers with cross-zone load
    #   balancing turned off.
    #
    # @return [Types::ZonalShift] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ZonalShift#away_from #away_from} => String
    #   * {Types::ZonalShift#comment #comment} => String
    #   * {Types::ZonalShift#expiry_time #expiry_time} => Time
    #   * {Types::ZonalShift#resource_identifier #resource_identifier} => String
    #   * {Types::ZonalShift#start_time #start_time} => Time
    #   * {Types::ZonalShift#status #status} => String
    #   * {Types::ZonalShift#zonal_shift_id #zonal_shift_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_zonal_shift({
    #     away_from: "AvailabilityZone", # required
    #     comment: "ZonalShiftComment", # required
    #     expires_in: "ExpiresIn", # required
    #     resource_identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.away_from #=> String
    #   resp.comment #=> String
    #   resp.expiry_time #=> Time
    #   resp.resource_identifier #=> String
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "ACTIVE", "EXPIRED", "CANCELED"
    #   resp.zonal_shift_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/StartZonalShift AWS API Documentation
    #
    # @overload start_zonal_shift(params = {})
    # @param [Hash] params ({})
    def start_zonal_shift(params = {}, options = {})
      req = build_request(:start_zonal_shift, params)
      req.send_request(options)
    end

    # Update an active zonal shift in Amazon Route 53 Application Recovery
    # Controller in your AWS account. You can update a zonal shift to set a
    # new expiration, or edit or replace the comment for the zonal shift.
    #
    # @option params [String] :comment
    #   A comment that you enter about the zonal shift. Only the latest
    #   comment is retained; no comment history is maintained. A new comment
    #   overwrites any existing comment string.
    #
    # @option params [String] :expires_in
    #   The length of time that you want a zonal shift to be active, which
    #   Route 53 ARC converts to an expiry time (expiration time). Zonal
    #   shifts are temporary. You can set a zonal shift to be active initially
    #   for up to three days (72 hours).
    #
    #   If you want to still keep traffic away from an Availability Zone, you
    #   can update the zonal shift and set a new expiration. You can also
    #   cancel a zonal shift, before it expires, for example, if you're ready
    #   to restore traffic to the Availability Zone.
    #
    #   To set a length of time for a zonal shift to be active, specify a
    #   whole number, and then one of the following, with no space:
    #
    #   * **A lowercase letter m:** To specify that the value is in minutes.
    #
    #   * **A lowercase letter h:** To specify that the value is in hours.
    #
    #   For example: `20h` means the zonal shift expires in 20 hours. `120m`
    #   means the zonal shift expires in 120 minutes (2 hours).
    #
    # @option params [required, String] :zonal_shift_id
    #   The identifier of a zonal shift.
    #
    # @return [Types::ZonalShift] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ZonalShift#away_from #away_from} => String
    #   * {Types::ZonalShift#comment #comment} => String
    #   * {Types::ZonalShift#expiry_time #expiry_time} => Time
    #   * {Types::ZonalShift#resource_identifier #resource_identifier} => String
    #   * {Types::ZonalShift#start_time #start_time} => Time
    #   * {Types::ZonalShift#status #status} => String
    #   * {Types::ZonalShift#zonal_shift_id #zonal_shift_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_zonal_shift({
    #     comment: "ZonalShiftComment",
    #     expires_in: "ExpiresIn",
    #     zonal_shift_id: "ZonalShiftId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.away_from #=> String
    #   resp.comment #=> String
    #   resp.expiry_time #=> Time
    #   resp.resource_identifier #=> String
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "ACTIVE", "EXPIRED", "CANCELED"
    #   resp.zonal_shift_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdateZonalShift AWS API Documentation
    #
    # @overload update_zonal_shift(params = {})
    # @param [Hash] params ({})
    def update_zonal_shift(params = {}, options = {})
      req = build_request(:update_zonal_shift, params)
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
      context[:gem_name] = 'aws-sdk-arczonalshift'
      context[:gem_version] = '1.6.0'
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
