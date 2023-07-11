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

Aws::Plugins::GlobalConfiguration.add_identifier(:route53recoveryreadiness)

module Aws::Route53RecoveryReadiness
  # An API client for Route53RecoveryReadiness.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Route53RecoveryReadiness::Client.new(
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

    @identifier = :route53recoveryreadiness

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
    add_plugin(Aws::Route53RecoveryReadiness::Plugins::Endpoints)

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
    #   @option options [Aws::Route53RecoveryReadiness::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Route53RecoveryReadiness::EndpointParameters`
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

    # Creates a cell in an account.
    #
    # @option params [required, String] :cell_name
    #
    # @option params [Array<String>] :cells
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of tags associated with a resource.
    #
    # @return [Types::CreateCellResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCellResponse#cell_arn #cell_arn} => String
    #   * {Types::CreateCellResponse#cell_name #cell_name} => String
    #   * {Types::CreateCellResponse#cells #cells} => Array&lt;String&gt;
    #   * {Types::CreateCellResponse#parent_readiness_scopes #parent_readiness_scopes} => Array&lt;String&gt;
    #   * {Types::CreateCellResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cell({
    #     cell_name: "__string", # required
    #     cells: ["__string"],
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cell_arn #=> String
    #   resp.cell_name #=> String
    #   resp.cells #=> Array
    #   resp.cells[0] #=> String
    #   resp.parent_readiness_scopes #=> Array
    #   resp.parent_readiness_scopes[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateCell AWS API Documentation
    #
    # @overload create_cell(params = {})
    # @param [Hash] params ({})
    def create_cell(params = {}, options = {})
      req = build_request(:create_cell, params)
      req.send_request(options)
    end

    # Creates a cross-account readiness authorization. This lets you
    # authorize another account to work with Route 53 Application Recovery
    # Controller, for example, to check the readiness status of resources in
    # a separate account.
    #
    # @option params [required, String] :cross_account_authorization
    #   CrossAccountAuthorization
    #
    # @return [Types::CreateCrossAccountAuthorizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCrossAccountAuthorizationResponse#cross_account_authorization #cross_account_authorization} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cross_account_authorization({
    #     cross_account_authorization: "CrossAccountAuthorization", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cross_account_authorization #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateCrossAccountAuthorization AWS API Documentation
    #
    # @overload create_cross_account_authorization(params = {})
    # @param [Hash] params ({})
    def create_cross_account_authorization(params = {}, options = {})
      req = build_request(:create_cross_account_authorization, params)
      req.send_request(options)
    end

    # Creates a readiness check in an account. A readiness check monitors a
    # resource set in your application, such as a set of Amazon Aurora
    # instances, that Application Recovery Controller is auditing recovery
    # readiness for. The audits run once every minute on every resource
    # that's associated with a readiness check.
    #
    # @option params [required, String] :readiness_check_name
    #
    # @option params [required, String] :resource_set_name
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of tags associated with a resource.
    #
    # @return [Types::CreateReadinessCheckResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReadinessCheckResponse#readiness_check_arn #readiness_check_arn} => String
    #   * {Types::CreateReadinessCheckResponse#readiness_check_name #readiness_check_name} => String
    #   * {Types::CreateReadinessCheckResponse#resource_set #resource_set} => String
    #   * {Types::CreateReadinessCheckResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_readiness_check({
    #     readiness_check_name: "__string", # required
    #     resource_set_name: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.readiness_check_arn #=> String
    #   resp.readiness_check_name #=> String
    #   resp.resource_set #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateReadinessCheck AWS API Documentation
    #
    # @overload create_readiness_check(params = {})
    # @param [Hash] params ({})
    def create_readiness_check(params = {}, options = {})
      req = build_request(:create_readiness_check, params)
      req.send_request(options)
    end

    # Creates a recovery group in an account. A recovery group corresponds
    # to an application and includes a list of the cells that make up the
    # application.
    #
    # @option params [Array<String>] :cells
    #
    # @option params [required, String] :recovery_group_name
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of tags associated with a resource.
    #
    # @return [Types::CreateRecoveryGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRecoveryGroupResponse#cells #cells} => Array&lt;String&gt;
    #   * {Types::CreateRecoveryGroupResponse#recovery_group_arn #recovery_group_arn} => String
    #   * {Types::CreateRecoveryGroupResponse#recovery_group_name #recovery_group_name} => String
    #   * {Types::CreateRecoveryGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recovery_group({
    #     cells: ["__string"],
    #     recovery_group_name: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cells #=> Array
    #   resp.cells[0] #=> String
    #   resp.recovery_group_arn #=> String
    #   resp.recovery_group_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateRecoveryGroup AWS API Documentation
    #
    # @overload create_recovery_group(params = {})
    # @param [Hash] params ({})
    def create_recovery_group(params = {}, options = {})
      req = build_request(:create_recovery_group, params)
      req.send_request(options)
    end

    # Creates a resource set. A resource set is a set of resources of one
    # type that span multiple cells. You can associate a resource set with a
    # readiness check to monitor the resources for failover readiness.
    #
    # @option params [required, String] :resource_set_name
    #
    # @option params [required, String] :resource_set_type
    #
    # @option params [required, Array<Types::Resource>] :resources
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of tags associated with a resource.
    #
    # @return [Types::CreateResourceSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceSetResponse#resource_set_arn #resource_set_arn} => String
    #   * {Types::CreateResourceSetResponse#resource_set_name #resource_set_name} => String
    #   * {Types::CreateResourceSetResponse#resource_set_type #resource_set_type} => String
    #   * {Types::CreateResourceSetResponse#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::CreateResourceSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_set({
    #     resource_set_name: "__string", # required
    #     resource_set_type: "__stringPatternAWSAZaZ09AZaZ09", # required
    #     resources: [ # required
    #       {
    #         component_id: "__string",
    #         dns_target_resource: {
    #           domain_name: "__string",
    #           hosted_zone_arn: "__string",
    #           record_set_id: "__string",
    #           record_type: "__string",
    #           target_resource: {
    #             nlb_resource: {
    #               arn: "__string",
    #             },
    #             r53_resource: {
    #               domain_name: "__string",
    #               record_set_id: "__string",
    #             },
    #           },
    #         },
    #         readiness_scopes: ["__string"],
    #         resource_arn: "__string",
    #       },
    #     ],
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_set_arn #=> String
    #   resp.resource_set_name #=> String
    #   resp.resource_set_type #=> String
    #   resp.resources #=> Array
    #   resp.resources[0].component_id #=> String
    #   resp.resources[0].dns_target_resource.domain_name #=> String
    #   resp.resources[0].dns_target_resource.hosted_zone_arn #=> String
    #   resp.resources[0].dns_target_resource.record_set_id #=> String
    #   resp.resources[0].dns_target_resource.record_type #=> String
    #   resp.resources[0].dns_target_resource.target_resource.nlb_resource.arn #=> String
    #   resp.resources[0].dns_target_resource.target_resource.r53_resource.domain_name #=> String
    #   resp.resources[0].dns_target_resource.target_resource.r53_resource.record_set_id #=> String
    #   resp.resources[0].readiness_scopes #=> Array
    #   resp.resources[0].readiness_scopes[0] #=> String
    #   resp.resources[0].resource_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/CreateResourceSet AWS API Documentation
    #
    # @overload create_resource_set(params = {})
    # @param [Hash] params ({})
    def create_resource_set(params = {}, options = {})
      req = build_request(:create_resource_set, params)
      req.send_request(options)
    end

    # Delete a cell. When successful, the response code is 204, with no
    # response body.
    #
    # @option params [required, String] :cell_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cell({
    #     cell_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DeleteCell AWS API Documentation
    #
    # @overload delete_cell(params = {})
    # @param [Hash] params ({})
    def delete_cell(params = {}, options = {})
      req = build_request(:delete_cell, params)
      req.send_request(options)
    end

    # Deletes cross account readiness authorization.
    #
    # @option params [required, String] :cross_account_authorization
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cross_account_authorization({
    #     cross_account_authorization: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DeleteCrossAccountAuthorization AWS API Documentation
    #
    # @overload delete_cross_account_authorization(params = {})
    # @param [Hash] params ({})
    def delete_cross_account_authorization(params = {}, options = {})
      req = build_request(:delete_cross_account_authorization, params)
      req.send_request(options)
    end

    # Deletes a readiness check.
    #
    # @option params [required, String] :readiness_check_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_readiness_check({
    #     readiness_check_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DeleteReadinessCheck AWS API Documentation
    #
    # @overload delete_readiness_check(params = {})
    # @param [Hash] params ({})
    def delete_readiness_check(params = {}, options = {})
      req = build_request(:delete_readiness_check, params)
      req.send_request(options)
    end

    # Deletes a recovery group.
    #
    # @option params [required, String] :recovery_group_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recovery_group({
    #     recovery_group_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DeleteRecoveryGroup AWS API Documentation
    #
    # @overload delete_recovery_group(params = {})
    # @param [Hash] params ({})
    def delete_recovery_group(params = {}, options = {})
      req = build_request(:delete_recovery_group, params)
      req.send_request(options)
    end

    # Deletes a resource set.
    #
    # @option params [required, String] :resource_set_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_set({
    #     resource_set_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/DeleteResourceSet AWS API Documentation
    #
    # @overload delete_resource_set(params = {})
    # @param [Hash] params ({})
    def delete_resource_set(params = {}, options = {})
      req = build_request(:delete_resource_set, params)
      req.send_request(options)
    end

    # Gets recommendations about architecture designs for improving
    # resiliency for an application, based on a recovery group.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :recovery_group_name
    #
    # @return [Types::GetArchitectureRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetArchitectureRecommendationsResponse#last_audit_timestamp #last_audit_timestamp} => Time
    #   * {Types::GetArchitectureRecommendationsResponse#next_token #next_token} => String
    #   * {Types::GetArchitectureRecommendationsResponse#recommendations #recommendations} => Array&lt;Types::Recommendation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_architecture_recommendations({
    #     max_results: 1,
    #     next_token: "__string",
    #     recovery_group_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.last_audit_timestamp #=> Time
    #   resp.next_token #=> String
    #   resp.recommendations #=> Array
    #   resp.recommendations[0].recommendation_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetArchitectureRecommendations AWS API Documentation
    #
    # @overload get_architecture_recommendations(params = {})
    # @param [Hash] params ({})
    def get_architecture_recommendations(params = {}, options = {})
      req = build_request(:get_architecture_recommendations, params)
      req.send_request(options)
    end

    # Gets information about a cell including cell name, cell Amazon
    # Resource Name (ARN), ARNs of nested cells for this cell, and a list of
    # those cell ARNs with their associated recovery group ARNs.
    #
    # @option params [required, String] :cell_name
    #
    # @return [Types::GetCellResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCellResponse#cell_arn #cell_arn} => String
    #   * {Types::GetCellResponse#cell_name #cell_name} => String
    #   * {Types::GetCellResponse#cells #cells} => Array&lt;String&gt;
    #   * {Types::GetCellResponse#parent_readiness_scopes #parent_readiness_scopes} => Array&lt;String&gt;
    #   * {Types::GetCellResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cell({
    #     cell_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cell_arn #=> String
    #   resp.cell_name #=> String
    #   resp.cells #=> Array
    #   resp.cells[0] #=> String
    #   resp.parent_readiness_scopes #=> Array
    #   resp.parent_readiness_scopes[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetCell AWS API Documentation
    #
    # @overload get_cell(params = {})
    # @param [Hash] params ({})
    def get_cell(params = {}, options = {})
      req = build_request(:get_cell, params)
      req.send_request(options)
    end

    # Gets readiness for a cell. Aggregates the readiness of all the
    # resources that are associated with the cell into a single value.
    #
    # @option params [required, String] :cell_name
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetCellReadinessSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCellReadinessSummaryResponse#next_token #next_token} => String
    #   * {Types::GetCellReadinessSummaryResponse#readiness #readiness} => String
    #   * {Types::GetCellReadinessSummaryResponse#readiness_checks #readiness_checks} => Array&lt;Types::ReadinessCheckSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cell_readiness_summary({
    #     cell_name: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.readiness #=> String, one of "READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"
    #   resp.readiness_checks #=> Array
    #   resp.readiness_checks[0].readiness #=> String, one of "READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"
    #   resp.readiness_checks[0].readiness_check_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetCellReadinessSummary AWS API Documentation
    #
    # @overload get_cell_readiness_summary(params = {})
    # @param [Hash] params ({})
    def get_cell_readiness_summary(params = {}, options = {})
      req = build_request(:get_cell_readiness_summary, params)
      req.send_request(options)
    end

    # Gets details about a readiness check.
    #
    # @option params [required, String] :readiness_check_name
    #
    # @return [Types::GetReadinessCheckResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadinessCheckResponse#readiness_check_arn #readiness_check_arn} => String
    #   * {Types::GetReadinessCheckResponse#readiness_check_name #readiness_check_name} => String
    #   * {Types::GetReadinessCheckResponse#resource_set #resource_set} => String
    #   * {Types::GetReadinessCheckResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_readiness_check({
    #     readiness_check_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.readiness_check_arn #=> String
    #   resp.readiness_check_name #=> String
    #   resp.resource_set #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetReadinessCheck AWS API Documentation
    #
    # @overload get_readiness_check(params = {})
    # @param [Hash] params ({})
    def get_readiness_check(params = {}, options = {})
      req = build_request(:get_readiness_check, params)
      req.send_request(options)
    end

    # Gets individual readiness status for a readiness check. To see the
    # overall readiness status for a recovery group, that considers the
    # readiness status for all the readiness checks in the recovery group,
    # use GetRecoveryGroupReadinessSummary.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :readiness_check_name
    #
    # @option params [required, String] :resource_identifier
    #
    # @return [Types::GetReadinessCheckResourceStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadinessCheckResourceStatusResponse#next_token #next_token} => String
    #   * {Types::GetReadinessCheckResourceStatusResponse#readiness #readiness} => String
    #   * {Types::GetReadinessCheckResourceStatusResponse#rules #rules} => Array&lt;Types::RuleResult&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_readiness_check_resource_status({
    #     max_results: 1,
    #     next_token: "__string",
    #     readiness_check_name: "__string", # required
    #     resource_identifier: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.readiness #=> String, one of "READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"
    #   resp.rules #=> Array
    #   resp.rules[0].last_checked_timestamp #=> Time
    #   resp.rules[0].messages #=> Array
    #   resp.rules[0].messages[0].message_text #=> String
    #   resp.rules[0].readiness #=> String, one of "READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"
    #   resp.rules[0].rule_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetReadinessCheckResourceStatus AWS API Documentation
    #
    # @overload get_readiness_check_resource_status(params = {})
    # @param [Hash] params ({})
    def get_readiness_check_resource_status(params = {}, options = {})
      req = build_request(:get_readiness_check_resource_status, params)
      req.send_request(options)
    end

    # Gets the readiness status for an individual readiness check. To see
    # the overall readiness status for a recovery group, that considers the
    # readiness status for all the readiness checks in a recovery group, use
    # GetRecoveryGroupReadinessSummary.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :readiness_check_name
    #
    # @return [Types::GetReadinessCheckStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadinessCheckStatusResponse#messages #messages} => Array&lt;Types::Message&gt;
    #   * {Types::GetReadinessCheckStatusResponse#next_token #next_token} => String
    #   * {Types::GetReadinessCheckStatusResponse#readiness #readiness} => String
    #   * {Types::GetReadinessCheckStatusResponse#resources #resources} => Array&lt;Types::ResourceResult&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_readiness_check_status({
    #     max_results: 1,
    #     next_token: "__string",
    #     readiness_check_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.messages #=> Array
    #   resp.messages[0].message_text #=> String
    #   resp.next_token #=> String
    #   resp.readiness #=> String, one of "READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"
    #   resp.resources #=> Array
    #   resp.resources[0].component_id #=> String
    #   resp.resources[0].last_checked_timestamp #=> Time
    #   resp.resources[0].readiness #=> String, one of "READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"
    #   resp.resources[0].resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetReadinessCheckStatus AWS API Documentation
    #
    # @overload get_readiness_check_status(params = {})
    # @param [Hash] params ({})
    def get_readiness_check_status(params = {}, options = {})
      req = build_request(:get_readiness_check_status, params)
      req.send_request(options)
    end

    # Gets details about a recovery group, including a list of the cells
    # that are included in it.
    #
    # @option params [required, String] :recovery_group_name
    #
    # @return [Types::GetRecoveryGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecoveryGroupResponse#cells #cells} => Array&lt;String&gt;
    #   * {Types::GetRecoveryGroupResponse#recovery_group_arn #recovery_group_arn} => String
    #   * {Types::GetRecoveryGroupResponse#recovery_group_name #recovery_group_name} => String
    #   * {Types::GetRecoveryGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recovery_group({
    #     recovery_group_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cells #=> Array
    #   resp.cells[0] #=> String
    #   resp.recovery_group_arn #=> String
    #   resp.recovery_group_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetRecoveryGroup AWS API Documentation
    #
    # @overload get_recovery_group(params = {})
    # @param [Hash] params ({})
    def get_recovery_group(params = {}, options = {})
      req = build_request(:get_recovery_group, params)
      req.send_request(options)
    end

    # Displays a summary of information about a recovery group's readiness
    # status. Includes the readiness checks for resources in the recovery
    # group and the readiness status of each one.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :recovery_group_name
    #
    # @return [Types::GetRecoveryGroupReadinessSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecoveryGroupReadinessSummaryResponse#next_token #next_token} => String
    #   * {Types::GetRecoveryGroupReadinessSummaryResponse#readiness #readiness} => String
    #   * {Types::GetRecoveryGroupReadinessSummaryResponse#readiness_checks #readiness_checks} => Array&lt;Types::ReadinessCheckSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recovery_group_readiness_summary({
    #     max_results: 1,
    #     next_token: "__string",
    #     recovery_group_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.readiness #=> String, one of "READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"
    #   resp.readiness_checks #=> Array
    #   resp.readiness_checks[0].readiness #=> String, one of "READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"
    #   resp.readiness_checks[0].readiness_check_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetRecoveryGroupReadinessSummary AWS API Documentation
    #
    # @overload get_recovery_group_readiness_summary(params = {})
    # @param [Hash] params ({})
    def get_recovery_group_readiness_summary(params = {}, options = {})
      req = build_request(:get_recovery_group_readiness_summary, params)
      req.send_request(options)
    end

    # Displays the details about a resource set, including a list of the
    # resources in the set.
    #
    # @option params [required, String] :resource_set_name
    #
    # @return [Types::GetResourceSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceSetResponse#resource_set_arn #resource_set_arn} => String
    #   * {Types::GetResourceSetResponse#resource_set_name #resource_set_name} => String
    #   * {Types::GetResourceSetResponse#resource_set_type #resource_set_type} => String
    #   * {Types::GetResourceSetResponse#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::GetResourceSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_set({
    #     resource_set_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_set_arn #=> String
    #   resp.resource_set_name #=> String
    #   resp.resource_set_type #=> String
    #   resp.resources #=> Array
    #   resp.resources[0].component_id #=> String
    #   resp.resources[0].dns_target_resource.domain_name #=> String
    #   resp.resources[0].dns_target_resource.hosted_zone_arn #=> String
    #   resp.resources[0].dns_target_resource.record_set_id #=> String
    #   resp.resources[0].dns_target_resource.record_type #=> String
    #   resp.resources[0].dns_target_resource.target_resource.nlb_resource.arn #=> String
    #   resp.resources[0].dns_target_resource.target_resource.r53_resource.domain_name #=> String
    #   resp.resources[0].dns_target_resource.target_resource.r53_resource.record_set_id #=> String
    #   resp.resources[0].readiness_scopes #=> Array
    #   resp.resources[0].readiness_scopes[0] #=> String
    #   resp.resources[0].resource_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/GetResourceSet AWS API Documentation
    #
    # @overload get_resource_set(params = {})
    # @param [Hash] params ({})
    def get_resource_set(params = {}, options = {})
      req = build_request(:get_resource_set, params)
      req.send_request(options)
    end

    # Lists the cells for an account.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListCellsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCellsResponse#cells #cells} => Array&lt;Types::CellOutput&gt;
    #   * {Types::ListCellsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cells({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.cells #=> Array
    #   resp.cells[0].cell_arn #=> String
    #   resp.cells[0].cell_name #=> String
    #   resp.cells[0].cells #=> Array
    #   resp.cells[0].cells[0] #=> String
    #   resp.cells[0].parent_readiness_scopes #=> Array
    #   resp.cells[0].parent_readiness_scopes[0] #=> String
    #   resp.cells[0].tags #=> Hash
    #   resp.cells[0].tags["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListCells AWS API Documentation
    #
    # @overload list_cells(params = {})
    # @param [Hash] params ({})
    def list_cells(params = {}, options = {})
      req = build_request(:list_cells, params)
      req.send_request(options)
    end

    # Lists the cross-account readiness authorizations that are in place for
    # an account.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListCrossAccountAuthorizationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCrossAccountAuthorizationsResponse#cross_account_authorizations #cross_account_authorizations} => Array&lt;String&gt;
    #   * {Types::ListCrossAccountAuthorizationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cross_account_authorizations({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.cross_account_authorizations #=> Array
    #   resp.cross_account_authorizations[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListCrossAccountAuthorizations AWS API Documentation
    #
    # @overload list_cross_account_authorizations(params = {})
    # @param [Hash] params ({})
    def list_cross_account_authorizations(params = {}, options = {})
      req = build_request(:list_cross_account_authorizations, params)
      req.send_request(options)
    end

    # Lists the readiness checks for an account.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListReadinessChecksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReadinessChecksResponse#next_token #next_token} => String
    #   * {Types::ListReadinessChecksResponse#readiness_checks #readiness_checks} => Array&lt;Types::ReadinessCheckOutput&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_readiness_checks({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.readiness_checks #=> Array
    #   resp.readiness_checks[0].readiness_check_arn #=> String
    #   resp.readiness_checks[0].readiness_check_name #=> String
    #   resp.readiness_checks[0].resource_set #=> String
    #   resp.readiness_checks[0].tags #=> Hash
    #   resp.readiness_checks[0].tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListReadinessChecks AWS API Documentation
    #
    # @overload list_readiness_checks(params = {})
    # @param [Hash] params ({})
    def list_readiness_checks(params = {}, options = {})
      req = build_request(:list_readiness_checks, params)
      req.send_request(options)
    end

    # Lists the recovery groups in an account.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListRecoveryGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecoveryGroupsResponse#next_token #next_token} => String
    #   * {Types::ListRecoveryGroupsResponse#recovery_groups #recovery_groups} => Array&lt;Types::RecoveryGroupOutput&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recovery_groups({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recovery_groups #=> Array
    #   resp.recovery_groups[0].cells #=> Array
    #   resp.recovery_groups[0].cells[0] #=> String
    #   resp.recovery_groups[0].recovery_group_arn #=> String
    #   resp.recovery_groups[0].recovery_group_name #=> String
    #   resp.recovery_groups[0].tags #=> Hash
    #   resp.recovery_groups[0].tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListRecoveryGroups AWS API Documentation
    #
    # @overload list_recovery_groups(params = {})
    # @param [Hash] params ({})
    def list_recovery_groups(params = {}, options = {})
      req = build_request(:list_recovery_groups, params)
      req.send_request(options)
    end

    # Lists the resource sets in an account.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListResourceSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceSetsResponse#next_token #next_token} => String
    #   * {Types::ListResourceSetsResponse#resource_sets #resource_sets} => Array&lt;Types::ResourceSetOutput&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_sets({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resource_sets #=> Array
    #   resp.resource_sets[0].resource_set_arn #=> String
    #   resp.resource_sets[0].resource_set_name #=> String
    #   resp.resource_sets[0].resource_set_type #=> String
    #   resp.resource_sets[0].resources #=> Array
    #   resp.resource_sets[0].resources[0].component_id #=> String
    #   resp.resource_sets[0].resources[0].dns_target_resource.domain_name #=> String
    #   resp.resource_sets[0].resources[0].dns_target_resource.hosted_zone_arn #=> String
    #   resp.resource_sets[0].resources[0].dns_target_resource.record_set_id #=> String
    #   resp.resource_sets[0].resources[0].dns_target_resource.record_type #=> String
    #   resp.resource_sets[0].resources[0].dns_target_resource.target_resource.nlb_resource.arn #=> String
    #   resp.resource_sets[0].resources[0].dns_target_resource.target_resource.r53_resource.domain_name #=> String
    #   resp.resource_sets[0].resources[0].dns_target_resource.target_resource.r53_resource.record_set_id #=> String
    #   resp.resource_sets[0].resources[0].readiness_scopes #=> Array
    #   resp.resource_sets[0].resources[0].readiness_scopes[0] #=> String
    #   resp.resource_sets[0].resources[0].resource_arn #=> String
    #   resp.resource_sets[0].tags #=> Hash
    #   resp.resource_sets[0].tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListResourceSets AWS API Documentation
    #
    # @overload list_resource_sets(params = {})
    # @param [Hash] params ({})
    def list_resource_sets(params = {}, options = {})
      req = build_request(:list_resource_sets, params)
      req.send_request(options)
    end

    # Lists all readiness rules, or lists the readiness rules for a specific
    # resource type.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [String] :resource_type
    #
    # @return [Types::ListRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRulesResponse#next_token #next_token} => String
    #   * {Types::ListRulesResponse#rules #rules} => Array&lt;Types::ListRulesOutput&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules({
    #     max_results: 1,
    #     next_token: "__string",
    #     resource_type: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.rules #=> Array
    #   resp.rules[0].resource_type #=> String
    #   resp.rules[0].rule_description #=> String
    #   resp.rules[0].rule_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListRules AWS API Documentation
    #
    # @overload list_rules(params = {})
    # @param [Hash] params ({})
    def list_rules(params = {}, options = {})
      req = build_request(:list_rules, params)
      req.send_request(options)
    end

    # Lists the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @return [Types::ListTagsForResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourcesResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resources({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/ListTagsForResources AWS API Documentation
    #
    # @overload list_tags_for_resources(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resources(params = {}, options = {})
      req = build_request(:list_tags_for_resources, params)
      req.send_request(options)
    end

    # Adds a tag to a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Hash<String,String>] :tags
    #   A collection of tags associated with a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a cell to replace the list of nested cells with a new list of
    # nested cells.
    #
    # @option params [required, String] :cell_name
    #
    # @option params [required, Array<String>] :cells
    #
    # @return [Types::UpdateCellResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCellResponse#cell_arn #cell_arn} => String
    #   * {Types::UpdateCellResponse#cell_name #cell_name} => String
    #   * {Types::UpdateCellResponse#cells #cells} => Array&lt;String&gt;
    #   * {Types::UpdateCellResponse#parent_readiness_scopes #parent_readiness_scopes} => Array&lt;String&gt;
    #   * {Types::UpdateCellResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cell({
    #     cell_name: "__string", # required
    #     cells: ["__string"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cell_arn #=> String
    #   resp.cell_name #=> String
    #   resp.cells #=> Array
    #   resp.cells[0] #=> String
    #   resp.parent_readiness_scopes #=> Array
    #   resp.parent_readiness_scopes[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateCell AWS API Documentation
    #
    # @overload update_cell(params = {})
    # @param [Hash] params ({})
    def update_cell(params = {}, options = {})
      req = build_request(:update_cell, params)
      req.send_request(options)
    end

    # Updates a readiness check.
    #
    # @option params [required, String] :readiness_check_name
    #
    # @option params [required, String] :resource_set_name
    #
    # @return [Types::UpdateReadinessCheckResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateReadinessCheckResponse#readiness_check_arn #readiness_check_arn} => String
    #   * {Types::UpdateReadinessCheckResponse#readiness_check_name #readiness_check_name} => String
    #   * {Types::UpdateReadinessCheckResponse#resource_set #resource_set} => String
    #   * {Types::UpdateReadinessCheckResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_readiness_check({
    #     readiness_check_name: "__string", # required
    #     resource_set_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.readiness_check_arn #=> String
    #   resp.readiness_check_name #=> String
    #   resp.resource_set #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateReadinessCheck AWS API Documentation
    #
    # @overload update_readiness_check(params = {})
    # @param [Hash] params ({})
    def update_readiness_check(params = {}, options = {})
      req = build_request(:update_readiness_check, params)
      req.send_request(options)
    end

    # Updates a recovery group.
    #
    # @option params [required, Array<String>] :cells
    #
    # @option params [required, String] :recovery_group_name
    #
    # @return [Types::UpdateRecoveryGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRecoveryGroupResponse#cells #cells} => Array&lt;String&gt;
    #   * {Types::UpdateRecoveryGroupResponse#recovery_group_arn #recovery_group_arn} => String
    #   * {Types::UpdateRecoveryGroupResponse#recovery_group_name #recovery_group_name} => String
    #   * {Types::UpdateRecoveryGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recovery_group({
    #     cells: ["__string"], # required
    #     recovery_group_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cells #=> Array
    #   resp.cells[0] #=> String
    #   resp.recovery_group_arn #=> String
    #   resp.recovery_group_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateRecoveryGroup AWS API Documentation
    #
    # @overload update_recovery_group(params = {})
    # @param [Hash] params ({})
    def update_recovery_group(params = {}, options = {})
      req = build_request(:update_recovery_group, params)
      req.send_request(options)
    end

    # Updates a resource set.
    #
    # @option params [required, String] :resource_set_name
    #
    # @option params [required, String] :resource_set_type
    #
    # @option params [required, Array<Types::Resource>] :resources
    #
    # @return [Types::UpdateResourceSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResourceSetResponse#resource_set_arn #resource_set_arn} => String
    #   * {Types::UpdateResourceSetResponse#resource_set_name #resource_set_name} => String
    #   * {Types::UpdateResourceSetResponse#resource_set_type #resource_set_type} => String
    #   * {Types::UpdateResourceSetResponse#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::UpdateResourceSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_set({
    #     resource_set_name: "__string", # required
    #     resource_set_type: "__stringPatternAWSAZaZ09AZaZ09", # required
    #     resources: [ # required
    #       {
    #         component_id: "__string",
    #         dns_target_resource: {
    #           domain_name: "__string",
    #           hosted_zone_arn: "__string",
    #           record_set_id: "__string",
    #           record_type: "__string",
    #           target_resource: {
    #             nlb_resource: {
    #               arn: "__string",
    #             },
    #             r53_resource: {
    #               domain_name: "__string",
    #               record_set_id: "__string",
    #             },
    #           },
    #         },
    #         readiness_scopes: ["__string"],
    #         resource_arn: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_set_arn #=> String
    #   resp.resource_set_name #=> String
    #   resp.resource_set_type #=> String
    #   resp.resources #=> Array
    #   resp.resources[0].component_id #=> String
    #   resp.resources[0].dns_target_resource.domain_name #=> String
    #   resp.resources[0].dns_target_resource.hosted_zone_arn #=> String
    #   resp.resources[0].dns_target_resource.record_set_id #=> String
    #   resp.resources[0].dns_target_resource.record_type #=> String
    #   resp.resources[0].dns_target_resource.target_resource.nlb_resource.arn #=> String
    #   resp.resources[0].dns_target_resource.target_resource.r53_resource.domain_name #=> String
    #   resp.resources[0].dns_target_resource.target_resource.r53_resource.record_set_id #=> String
    #   resp.resources[0].readiness_scopes #=> Array
    #   resp.resources[0].readiness_scopes[0] #=> String
    #   resp.resources[0].resource_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness-2019-12-02/UpdateResourceSet AWS API Documentation
    #
    # @overload update_resource_set(params = {})
    # @param [Hash] params ({})
    def update_resource_set(params = {}, options = {})
      req = build_request(:update_resource_set, params)
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
      context[:gem_name] = 'aws-sdk-route53recoveryreadiness'
      context[:gem_version] = '1.17.0'
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
