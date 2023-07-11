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

Aws::Plugins::GlobalConfiguration.add_identifier(:backupgateway)

module Aws::BackupGateway
  # An API client for BackupGateway.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BackupGateway::Client.new(
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

    @identifier = :backupgateway

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
    add_plugin(Aws::BackupGateway::Plugins::Endpoints)

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
    #   @option options [Aws::BackupGateway::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::BackupGateway::EndpointParameters`
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

    # Associates a backup gateway with your server. After you complete the
    # association process, you can back up and restore your VMs through the
    # gateway.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the `ListGateways`
    #   operation to return a list of gateways for your account and Amazon Web
    #   Services Region.
    #
    # @option params [required, String] :server_arn
    #   The Amazon Resource Name (ARN) of the server that hosts your virtual
    #   machines.
    #
    # @return [Types::AssociateGatewayToServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateGatewayToServerOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_gateway_to_server({
    #     gateway_arn: "GatewayArn", # required
    #     server_arn: "ServerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/AssociateGatewayToServer AWS API Documentation
    #
    # @overload associate_gateway_to_server(params = {})
    # @param [Hash] params ({})
    def associate_gateway_to_server(params = {}, options = {})
      req = build_request(:associate_gateway_to_server, params)
      req.send_request(options)
    end

    # Creates a backup gateway. After you create a gateway, you can
    # associate it with a server using the `AssociateGatewayToServer`
    # operation.
    #
    # @option params [required, String] :activation_key
    #   The activation key of the created gateway.
    #
    # @option params [required, String] :gateway_display_name
    #   The display name of the created gateway.
    #
    # @option params [required, String] :gateway_type
    #   The type of created gateway.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags to assign to the gateway. Each tag is a
    #   key-value pair.
    #
    # @return [Types::CreateGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGatewayOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway({
    #     activation_key: "ActivationKey", # required
    #     gateway_display_name: "Name", # required
    #     gateway_type: "BACKUP_VM", # required, accepts BACKUP_VM
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
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/CreateGateway AWS API Documentation
    #
    # @overload create_gateway(params = {})
    # @param [Hash] params ({})
    def create_gateway(params = {}, options = {})
      req = build_request(:create_gateway, params)
      req.send_request(options)
    end

    # Deletes a backup gateway.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to delete.
    #
    # @return [Types::DeleteGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGatewayOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway({
    #     gateway_arn: "GatewayArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DeleteGateway AWS API Documentation
    #
    # @overload delete_gateway(params = {})
    # @param [Hash] params ({})
    def delete_gateway(params = {}, options = {})
      req = build_request(:delete_gateway, params)
      req.send_request(options)
    end

    # Deletes a hypervisor.
    #
    # @option params [required, String] :hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor to delete.
    #
    # @return [Types::DeleteHypervisorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteHypervisorOutput#hypervisor_arn #hypervisor_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hypervisor({
    #     hypervisor_arn: "ServerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hypervisor_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DeleteHypervisor AWS API Documentation
    #
    # @overload delete_hypervisor(params = {})
    # @param [Hash] params ({})
    def delete_hypervisor(params = {}, options = {})
      req = build_request(:delete_hypervisor, params)
      req.send_request(options)
    end

    # Disassociates a backup gateway from the specified server. After the
    # disassociation process finishes, the gateway can no longer access the
    # virtual machines on the server.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to disassociate.
    #
    # @return [Types::DisassociateGatewayFromServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateGatewayFromServerOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_gateway_from_server({
    #     gateway_arn: "GatewayArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DisassociateGatewayFromServer AWS API Documentation
    #
    # @overload disassociate_gateway_from_server(params = {})
    # @param [Hash] params ({})
    def disassociate_gateway_from_server(params = {}, options = {})
      req = build_request(:disassociate_gateway_from_server, params)
      req.send_request(options)
    end

    # Retrieves the bandwidth rate limit schedule for a specified gateway.
    # By default, gateways do not have bandwidth rate limit schedules, which
    # means no bandwidth rate limiting is in effect. Use this to get a
    # gateway's bandwidth rate limit schedule.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the [
    #   `ListGateways` ][1] operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html
    #
    # @return [Types::GetBandwidthRateLimitScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBandwidthRateLimitScheduleOutput#bandwidth_rate_limit_intervals #bandwidth_rate_limit_intervals} => Array&lt;Types::BandwidthRateLimitInterval&gt;
    #   * {Types::GetBandwidthRateLimitScheduleOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bandwidth_rate_limit_schedule({
    #     gateway_arn: "GatewayArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bandwidth_rate_limit_intervals #=> Array
    #   resp.bandwidth_rate_limit_intervals[0].average_upload_rate_limit_in_bits_per_sec #=> Integer
    #   resp.bandwidth_rate_limit_intervals[0].days_of_week #=> Array
    #   resp.bandwidth_rate_limit_intervals[0].days_of_week[0] #=> Integer
    #   resp.bandwidth_rate_limit_intervals[0].end_hour_of_day #=> Integer
    #   resp.bandwidth_rate_limit_intervals[0].end_minute_of_hour #=> Integer
    #   resp.bandwidth_rate_limit_intervals[0].start_hour_of_day #=> Integer
    #   resp.bandwidth_rate_limit_intervals[0].start_minute_of_hour #=> Integer
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetBandwidthRateLimitSchedule AWS API Documentation
    #
    # @overload get_bandwidth_rate_limit_schedule(params = {})
    # @param [Hash] params ({})
    def get_bandwidth_rate_limit_schedule(params = {}, options = {})
      req = build_request(:get_bandwidth_rate_limit_schedule, params)
      req.send_request(options)
    end

    # By providing the ARN (Amazon Resource Name), this API returns the
    # gateway.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway.
    #
    # @return [Types::GetGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGatewayOutput#gateway #gateway} => Types::GatewayDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway({
    #     gateway_arn: "GatewayArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway.gateway_arn #=> String
    #   resp.gateway.gateway_display_name #=> String
    #   resp.gateway.gateway_type #=> String, one of "BACKUP_VM"
    #   resp.gateway.hypervisor_id #=> String
    #   resp.gateway.last_seen_time #=> Time
    #   resp.gateway.maintenance_start_time.day_of_month #=> Integer
    #   resp.gateway.maintenance_start_time.day_of_week #=> Integer
    #   resp.gateway.maintenance_start_time.hour_of_day #=> Integer
    #   resp.gateway.maintenance_start_time.minute_of_hour #=> Integer
    #   resp.gateway.next_update_availability_time #=> Time
    #   resp.gateway.vpc_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetGateway AWS API Documentation
    #
    # @overload get_gateway(params = {})
    # @param [Hash] params ({})
    def get_gateway(params = {}, options = {})
      req = build_request(:get_gateway, params)
      req.send_request(options)
    end

    # This action requests information about the specified hypervisor to
    # which the gateway will connect. A hypervisor is hardware, software, or
    # firmware that creates and manages virtual machines, and allocates
    # resources to them.
    #
    # @option params [required, String] :hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #
    # @return [Types::GetHypervisorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHypervisorOutput#hypervisor #hypervisor} => Types::HypervisorDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hypervisor({
    #     hypervisor_arn: "ServerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hypervisor.host #=> String
    #   resp.hypervisor.hypervisor_arn #=> String
    #   resp.hypervisor.kms_key_arn #=> String
    #   resp.hypervisor.last_successful_metadata_sync_time #=> Time
    #   resp.hypervisor.latest_metadata_sync_status #=> String, one of "CREATED", "RUNNING", "FAILED", "PARTIALLY_FAILED", "SUCCEEDED"
    #   resp.hypervisor.latest_metadata_sync_status_message #=> String
    #   resp.hypervisor.log_group_arn #=> String
    #   resp.hypervisor.name #=> String
    #   resp.hypervisor.state #=> String, one of "PENDING", "ONLINE", "OFFLINE", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetHypervisor AWS API Documentation
    #
    # @overload get_hypervisor(params = {})
    # @param [Hash] params ({})
    def get_hypervisor(params = {}, options = {})
      req = build_request(:get_hypervisor, params)
      req.send_request(options)
    end

    # This action retrieves the property mappings for the specified
    # hypervisor. A hypervisor property mapping displays the relationship of
    # entity properties available from the on-premises hypervisor to the
    # properties available in Amazon Web Services.
    #
    # @option params [required, String] :hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #
    # @return [Types::GetHypervisorPropertyMappingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHypervisorPropertyMappingsOutput#hypervisor_arn #hypervisor_arn} => String
    #   * {Types::GetHypervisorPropertyMappingsOutput#iam_role_arn #iam_role_arn} => String
    #   * {Types::GetHypervisorPropertyMappingsOutput#vmware_to_aws_tag_mappings #vmware_to_aws_tag_mappings} => Array&lt;Types::VmwareToAwsTagMapping&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hypervisor_property_mappings({
    #     hypervisor_arn: "ServerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hypervisor_arn #=> String
    #   resp.iam_role_arn #=> String
    #   resp.vmware_to_aws_tag_mappings #=> Array
    #   resp.vmware_to_aws_tag_mappings[0].aws_tag_key #=> String
    #   resp.vmware_to_aws_tag_mappings[0].aws_tag_value #=> String
    #   resp.vmware_to_aws_tag_mappings[0].vmware_category #=> String
    #   resp.vmware_to_aws_tag_mappings[0].vmware_tag_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetHypervisorPropertyMappings AWS API Documentation
    #
    # @overload get_hypervisor_property_mappings(params = {})
    # @param [Hash] params ({})
    def get_hypervisor_property_mappings(params = {}, options = {})
      req = build_request(:get_hypervisor_property_mappings, params)
      req.send_request(options)
    end

    # By providing the ARN (Amazon Resource Name), this API returns the
    # virtual machine.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the virtual machine.
    #
    # @return [Types::GetVirtualMachineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVirtualMachineOutput#virtual_machine #virtual_machine} => Types::VirtualMachineDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_virtual_machine({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_machine.host_name #=> String
    #   resp.virtual_machine.hypervisor_id #=> String
    #   resp.virtual_machine.last_backup_date #=> Time
    #   resp.virtual_machine.name #=> String
    #   resp.virtual_machine.path #=> String
    #   resp.virtual_machine.resource_arn #=> String
    #   resp.virtual_machine.vmware_tags #=> Array
    #   resp.virtual_machine.vmware_tags[0].vmware_category #=> String
    #   resp.virtual_machine.vmware_tags[0].vmware_tag_description #=> String
    #   resp.virtual_machine.vmware_tags[0].vmware_tag_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/GetVirtualMachine AWS API Documentation
    #
    # @overload get_virtual_machine(params = {})
    # @param [Hash] params ({})
    def get_virtual_machine(params = {}, options = {})
      req = build_request(:get_virtual_machine, params)
      req.send_request(options)
    end

    # Connect to a hypervisor by importing its configuration.
    #
    # @option params [required, String] :host
    #   The server host of the hypervisor. This can be either an IP address or
    #   a fully-qualified domain name (FQDN).
    #
    # @option params [String] :kms_key_arn
    #   The Key Management Service for the hypervisor.
    #
    # @option params [required, String] :name
    #   The name of the hypervisor.
    #
    # @option params [String] :password
    #   The password for the hypervisor.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags of the hypervisor configuration to import.
    #
    # @option params [String] :username
    #   The username for the hypervisor.
    #
    # @return [Types::ImportHypervisorConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportHypervisorConfigurationOutput#hypervisor_arn #hypervisor_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_hypervisor_configuration({
    #     host: "Host", # required
    #     kms_key_arn: "KmsKeyArn",
    #     name: "Name", # required
    #     password: "Password",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     username: "Username",
    #   })
    #
    # @example Response structure
    #
    #   resp.hypervisor_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ImportHypervisorConfiguration AWS API Documentation
    #
    # @overload import_hypervisor_configuration(params = {})
    # @param [Hash] params ({})
    def import_hypervisor_configuration(params = {}, options = {})
      req = build_request(:import_hypervisor_configuration, params)
      req.send_request(options)
    end

    # Lists backup gateways owned by an Amazon Web Services account in an
    # Amazon Web Services Region. The returned list is ordered by gateway
    # Amazon Resource Name (ARN).
    #
    # @option params [Integer] :max_results
    #   The maximum number of gateways to list.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `MaxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #
    # @return [Types::ListGatewaysOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewaysOutput#gateways #gateways} => Array&lt;Types::Gateway&gt;
    #   * {Types::ListGatewaysOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.gateways #=> Array
    #   resp.gateways[0].gateway_arn #=> String
    #   resp.gateways[0].gateway_display_name #=> String
    #   resp.gateways[0].gateway_type #=> String, one of "BACKUP_VM"
    #   resp.gateways[0].hypervisor_id #=> String
    #   resp.gateways[0].last_seen_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListGateways AWS API Documentation
    #
    # @overload list_gateways(params = {})
    # @param [Hash] params ({})
    def list_gateways(params = {}, options = {})
      req = build_request(:list_gateways, params)
      req.send_request(options)
    end

    # Lists your hypervisors.
    #
    # @option params [Integer] :max_results
    #   The maximum number of hypervisors to list.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #
    # @return [Types::ListHypervisorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHypervisorsOutput#hypervisors #hypervisors} => Array&lt;Types::Hypervisor&gt;
    #   * {Types::ListHypervisorsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hypervisors({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.hypervisors #=> Array
    #   resp.hypervisors[0].host #=> String
    #   resp.hypervisors[0].hypervisor_arn #=> String
    #   resp.hypervisors[0].kms_key_arn #=> String
    #   resp.hypervisors[0].name #=> String
    #   resp.hypervisors[0].state #=> String, one of "PENDING", "ONLINE", "OFFLINE", "ERROR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListHypervisors AWS API Documentation
    #
    # @overload list_hypervisors(params = {})
    # @param [Hash] params ({})
    def list_hypervisors(params = {}, options = {})
      req = build_request(:list_hypervisors, params)
      req.send_request(options)
    end

    # Lists the tags applied to the resource identified by its Amazon
    # Resource Name (ARN).
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource's tags to list.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#resource_arn #resource_arn} => String
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists your virtual machines.
    #
    # @option params [String] :hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor connected to your
    #   virtual machine.
    #
    # @option params [Integer] :max_results
    #   The maximum number of virtual machines to list.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #
    # @return [Types::ListVirtualMachinesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVirtualMachinesOutput#next_token #next_token} => String
    #   * {Types::ListVirtualMachinesOutput#virtual_machines #virtual_machines} => Array&lt;Types::VirtualMachine&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_machines({
    #     hypervisor_arn: "ServerArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.virtual_machines #=> Array
    #   resp.virtual_machines[0].host_name #=> String
    #   resp.virtual_machines[0].hypervisor_id #=> String
    #   resp.virtual_machines[0].last_backup_date #=> Time
    #   resp.virtual_machines[0].name #=> String
    #   resp.virtual_machines[0].path #=> String
    #   resp.virtual_machines[0].resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListVirtualMachines AWS API Documentation
    #
    # @overload list_virtual_machines(params = {})
    # @param [Hash] params ({})
    def list_virtual_machines(params = {}, options = {})
      req = build_request(:list_virtual_machines, params)
      req.send_request(options)
    end

    # This action sets the bandwidth rate limit schedule for a specified
    # gateway. By default, gateways do not have a bandwidth rate limit
    # schedule, which means no bandwidth rate limiting is in effect. Use
    # this to initiate a gateway's bandwidth rate limit schedule.
    #
    # @option params [required, Array<Types::BandwidthRateLimitInterval>] :bandwidth_rate_limit_intervals
    #   An array containing bandwidth rate limit schedule intervals for a
    #   gateway. When no bandwidth rate limit intervals have been scheduled,
    #   the array is empty.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the [
    #   `ListGateways` ][1] operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html
    #
    # @return [Types::PutBandwidthRateLimitScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutBandwidthRateLimitScheduleOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bandwidth_rate_limit_schedule({
    #     bandwidth_rate_limit_intervals: [ # required
    #       {
    #         average_upload_rate_limit_in_bits_per_sec: 1,
    #         days_of_week: [1], # required
    #         end_hour_of_day: 1, # required
    #         end_minute_of_hour: 1, # required
    #         start_hour_of_day: 1, # required
    #         start_minute_of_hour: 1, # required
    #       },
    #     ],
    #     gateway_arn: "GatewayArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/PutBandwidthRateLimitSchedule AWS API Documentation
    #
    # @overload put_bandwidth_rate_limit_schedule(params = {})
    # @param [Hash] params ({})
    def put_bandwidth_rate_limit_schedule(params = {}, options = {})
      req = build_request(:put_bandwidth_rate_limit_schedule, params)
      req.send_request(options)
    end

    # This action sets the property mappings for the specified hypervisor. A
    # hypervisor property mapping displays the relationship of entity
    # properties available from the on-premises hypervisor to the properties
    # available in Amazon Web Services.
    #
    # @option params [required, String] :hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #
    # @option params [required, String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role.
    #
    # @option params [required, Array<Types::VmwareToAwsTagMapping>] :vmware_to_aws_tag_mappings
    #   This action requests the mappings of on-premises VMware tags to the
    #   Amazon Web Services tags.
    #
    # @return [Types::PutHypervisorPropertyMappingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutHypervisorPropertyMappingsOutput#hypervisor_arn #hypervisor_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_hypervisor_property_mappings({
    #     hypervisor_arn: "ServerArn", # required
    #     iam_role_arn: "IamRoleArn", # required
    #     vmware_to_aws_tag_mappings: [ # required
    #       {
    #         aws_tag_key: "TagKey", # required
    #         aws_tag_value: "TagValue", # required
    #         vmware_category: "VmwareCategory", # required
    #         vmware_tag_name: "VmwareTagName", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.hypervisor_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/PutHypervisorPropertyMappings AWS API Documentation
    #
    # @overload put_hypervisor_property_mappings(params = {})
    # @param [Hash] params ({})
    def put_hypervisor_property_mappings(params = {}, options = {})
      req = build_request(:put_hypervisor_property_mappings, params)
      req.send_request(options)
    end

    # Set the maintenance start time for a gateway.
    #
    # @option params [Integer] :day_of_month
    #   The day of the month start maintenance on a gateway.
    #
    #   Valid values range from `Sunday` to `Saturday`.
    #
    # @option params [Integer] :day_of_week
    #   The day of the week to start maintenance on a gateway.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) for the gateway, used to specify its
    #   maintenance start time.
    #
    # @option params [required, Integer] :hour_of_day
    #   The hour of the day to start maintenance on a gateway.
    #
    # @option params [required, Integer] :minute_of_hour
    #   The minute of the hour to start maintenance on a gateway.
    #
    # @return [Types::PutMaintenanceStartTimeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutMaintenanceStartTimeOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_maintenance_start_time({
    #     day_of_month: 1,
    #     day_of_week: 1,
    #     gateway_arn: "GatewayArn", # required
    #     hour_of_day: 1, # required
    #     minute_of_hour: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/PutMaintenanceStartTime AWS API Documentation
    #
    # @overload put_maintenance_start_time(params = {})
    # @param [Hash] params ({})
    def put_maintenance_start_time(params = {}, options = {})
      req = build_request(:put_maintenance_start_time, params)
      req.send_request(options)
    end

    # This action sends a request to sync metadata across the specified
    # virtual machines.
    #
    # @option params [required, String] :hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #
    # @return [Types::StartVirtualMachinesMetadataSyncOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartVirtualMachinesMetadataSyncOutput#hypervisor_arn #hypervisor_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_virtual_machines_metadata_sync({
    #     hypervisor_arn: "ServerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hypervisor_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/StartVirtualMachinesMetadataSync AWS API Documentation
    #
    # @overload start_virtual_machines_metadata_sync(params = {})
    # @param [Hash] params ({})
    def start_virtual_machines_metadata_sync(params = {}, options = {})
      req = build_request(:start_virtual_machines_metadata_sync, params)
      req.send_request(options)
    end

    # Tag the resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags to assign to the resource.
    #
    # @return [Types::TagResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagResourceOutput#resource_arn #resource_arn} => String
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
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Tests your hypervisor configuration to validate that backup gateway
    # can connect with the hypervisor and its resources.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to the hypervisor to
    #   test.
    #
    # @option params [required, String] :host
    #   The server host of the hypervisor. This can be either an IP address or
    #   a fully-qualified domain name (FQDN).
    #
    # @option params [String] :password
    #   The password for the hypervisor.
    #
    # @option params [String] :username
    #   The username for the hypervisor.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_hypervisor_configuration({
    #     gateway_arn: "GatewayArn", # required
    #     host: "Host", # required
    #     password: "Password",
    #     username: "Username",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/TestHypervisorConfiguration AWS API Documentation
    #
    # @overload test_hypervisor_configuration(params = {})
    # @param [Hash] params ({})
    def test_hypervisor_configuration(params = {}, options = {})
      req = build_request(:test_hypervisor_configuration, params)
      req.send_request(options)
    end

    # Removes tags from the resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys specifying which tags to remove.
    #
    # @return [Types::UntagResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagResourceOutput#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a gateway's name. Specify which gateway to update using the
    # Amazon Resource Name (ARN) of the gateway in your request.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to update.
    #
    # @option params [String] :gateway_display_name
    #   The updated display name of the gateway.
    #
    # @return [Types::UpdateGatewayInformationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewayInformationOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_information({
    #     gateway_arn: "GatewayArn", # required
    #     gateway_display_name: "Name",
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateGatewayInformation AWS API Documentation
    #
    # @overload update_gateway_information(params = {})
    # @param [Hash] params ({})
    def update_gateway_information(params = {}, options = {})
      req = build_request(:update_gateway_information, params)
      req.send_request(options)
    end

    # Updates the gateway virtual machine (VM) software. The request
    # immediately triggers the software update.
    #
    # <note markdown="1"> When you make this request, you get a `200 OK` success response
    # immediately. However, it might take some time for the update to
    # complete.
    #
    #  </note>
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to be updated.
    #
    # @return [Types::UpdateGatewaySoftwareNowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewaySoftwareNowOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_software_now({
    #     gateway_arn: "GatewayArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateGatewaySoftwareNow AWS API Documentation
    #
    # @overload update_gateway_software_now(params = {})
    # @param [Hash] params ({})
    def update_gateway_software_now(params = {}, options = {})
      req = build_request(:update_gateway_software_now, params)
      req.send_request(options)
    end

    # Updates a hypervisor metadata, including its host, username, and
    # password. Specify which hypervisor to update using the Amazon Resource
    # Name (ARN) of the hypervisor in your request.
    #
    # @option params [String] :host
    #   The updated host of the hypervisor. This can be either an IP address
    #   or a fully-qualified domain name (FQDN).
    #
    # @option params [required, String] :hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor to update.
    #
    # @option params [String] :log_group_arn
    #   The Amazon Resource Name (ARN) of the group of gateways within the
    #   requested log.
    #
    # @option params [String] :name
    #   The updated name for the hypervisor
    #
    # @option params [String] :password
    #   The updated password for the hypervisor.
    #
    # @option params [String] :username
    #   The updated username for the hypervisor.
    #
    # @return [Types::UpdateHypervisorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateHypervisorOutput#hypervisor_arn #hypervisor_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hypervisor({
    #     host: "Host",
    #     hypervisor_arn: "ServerArn", # required
    #     log_group_arn: "LogGroupArn",
    #     name: "Name",
    #     password: "Password",
    #     username: "Username",
    #   })
    #
    # @example Response structure
    #
    #   resp.hypervisor_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateHypervisor AWS API Documentation
    #
    # @overload update_hypervisor(params = {})
    # @param [Hash] params ({})
    def update_hypervisor(params = {}, options = {})
      req = build_request(:update_hypervisor, params)
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
      context[:gem_name] = 'aws-sdk-backupgateway'
      context[:gem_version] = '1.13.0'
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
