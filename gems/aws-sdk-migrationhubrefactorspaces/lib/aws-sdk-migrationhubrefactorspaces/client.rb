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

Aws::Plugins::GlobalConfiguration.add_identifier(:migrationhubrefactorspaces)

module Aws::MigrationHubRefactorSpaces
  # An API client for MigrationHubRefactorSpaces.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MigrationHubRefactorSpaces::Client.new(
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

    @identifier = :migrationhubrefactorspaces

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
    add_plugin(Aws::MigrationHubRefactorSpaces::Plugins::Endpoints)

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
    #   @option options [Aws::MigrationHubRefactorSpaces::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::MigrationHubRefactorSpaces::EndpointParameters`
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

    # Creates an Amazon Web Services Migration Hub Refactor Spaces
    # application. The account that owns the environment also owns the
    # applications created inside the environment, regardless of the account
    # that creates the application. Refactor Spaces provisions an Amazon API
    # Gateway, API Gateway VPC link, and Network Load Balancer for the
    # application proxy inside your account.
    #
    # In environments created with a
    # [CreateEnvironment:NetworkFabricType][1] of `NONE` you need to
    # configure [ VPC to VPC connectivity][2] between your service VPC and
    # the application proxy VPC to route traffic through the application
    # proxy to a service with a private URL endpoint. For more information,
    # see [ Create an application][3] in the *Refactor Spaces User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType
    # [2]: https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html
    # [3]: https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-application.html
    #
    # @option params [Types::ApiGatewayProxyInput] :api_gateway_proxy
    #   A wrapper object holding the API Gateway endpoint type and stage name
    #   for the proxy.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_identifier
    #   The unique identifier of the environment.
    #
    # @option params [required, String] :name
    #   The name to use for the application.
    #
    # @option params [required, String] :proxy_type
    #   The proxy type of the proxy created within the application.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the application. A tag is a label that you
    #   assign to an Amazon Web Services resource. Each tag consists of a
    #   key-value pair.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the virtual private cloud (VPC).
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#api_gateway_proxy #api_gateway_proxy} => Types::ApiGatewayProxyInput
    #   * {Types::CreateApplicationResponse#application_id #application_id} => String
    #   * {Types::CreateApplicationResponse#arn #arn} => String
    #   * {Types::CreateApplicationResponse#created_by_account_id #created_by_account_id} => String
    #   * {Types::CreateApplicationResponse#created_time #created_time} => Time
    #   * {Types::CreateApplicationResponse#environment_id #environment_id} => String
    #   * {Types::CreateApplicationResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::CreateApplicationResponse#name #name} => String
    #   * {Types::CreateApplicationResponse#owner_account_id #owner_account_id} => String
    #   * {Types::CreateApplicationResponse#proxy_type #proxy_type} => String
    #   * {Types::CreateApplicationResponse#state #state} => String
    #   * {Types::CreateApplicationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateApplicationResponse#vpc_id #vpc_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     api_gateway_proxy: {
    #       endpoint_type: "REGIONAL", # accepts REGIONAL, PRIVATE
    #       stage_name: "StageName",
    #     },
    #     client_token: "ClientToken",
    #     environment_identifier: "EnvironmentId", # required
    #     name: "ApplicationName", # required
    #     proxy_type: "API_GATEWAY", # required, accepts API_GATEWAY
    #     tags: {
    #       "TagMapKeyString" => "TagMapValueString",
    #     },
    #     vpc_id: "VpcId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_gateway_proxy.endpoint_type #=> String, one of "REGIONAL", "PRIVATE"
    #   resp.api_gateway_proxy.stage_name #=> String
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.created_by_account_id #=> String
    #   resp.created_time #=> Time
    #   resp.environment_id #=> String
    #   resp.last_updated_time #=> Time
    #   resp.name #=> String
    #   resp.owner_account_id #=> String
    #   resp.proxy_type #=> String, one of "API_GATEWAY"
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #   resp.tags #=> Hash
    #   resp.tags["TagMapKeyString"] #=> String
    #   resp.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates an Amazon Web Services Migration Hub Refactor Spaces
    # environment. The caller owns the environment resource, and all
    # Refactor Spaces applications, services, and routes created within the
    # environment. They are referred to as the *environment owner*. The
    # environment owner has cross-account visibility and control of Refactor
    # Spaces resources that are added to the environment by other accounts
    # that the environment is shared with.
    #
    # When creating an environment with a
    # [CreateEnvironment:NetworkFabricType][1] of `TRANSIT_GATEWAY`,
    # Refactor Spaces provisions a transit gateway to enable services in
    # VPCs to communicate directly across accounts. If
    # [CreateEnvironment:NetworkFabricType][1] is `NONE`, Refactor Spaces
    # does not create a transit gateway and you must use your network
    # infrastructure to route traffic to services with private URL
    # endpoints.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description of the environment.
    #
    # @option params [required, String] :name
    #   The name of the environment.
    #
    # @option params [required, String] :network_fabric_type
    #   The network fabric type of the environment.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the environment. A tag is a label that you
    #   assign to an Amazon Web Services resource. Each tag consists of a
    #   key-value pair.
    #
    # @return [Types::CreateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentResponse#arn #arn} => String
    #   * {Types::CreateEnvironmentResponse#created_time #created_time} => Time
    #   * {Types::CreateEnvironmentResponse#description #description} => String
    #   * {Types::CreateEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::CreateEnvironmentResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::CreateEnvironmentResponse#name #name} => String
    #   * {Types::CreateEnvironmentResponse#network_fabric_type #network_fabric_type} => String
    #   * {Types::CreateEnvironmentResponse#owner_account_id #owner_account_id} => String
    #   * {Types::CreateEnvironmentResponse#state #state} => String
    #   * {Types::CreateEnvironmentResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     name: "EnvironmentName", # required
    #     network_fabric_type: "TRANSIT_GATEWAY", # required, accepts TRANSIT_GATEWAY, NONE
    #     tags: {
    #       "TagMapKeyString" => "TagMapValueString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_time #=> Time
    #   resp.description #=> String
    #   resp.environment_id #=> String
    #   resp.last_updated_time #=> Time
    #   resp.name #=> String
    #   resp.network_fabric_type #=> String, one of "TRANSIT_GATEWAY", "NONE"
    #   resp.owner_account_id #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagMapKeyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Creates an Amazon Web Services Migration Hub Refactor Spaces route.
    # The account owner of the service resource is always the environment
    # owner, regardless of which account creates the route. Routes target a
    # service in the application. If an application does not have any
    # routes, then the first route must be created as a `DEFAULT`
    # `RouteType`.
    #
    # When created, the default route defaults to an active state so state
    # is not a required input. However, like all other state values the
    # state of the default route can be updated after creation, but only
    # when all other routes are also inactive. Conversely, no route can be
    # active without the default route also being active.
    #
    # When you create a route, Refactor Spaces configures the Amazon API
    # Gateway to send traffic to the target service as follows:
    #
    # * **URL Endpoints**
    #
    #   If the service has a URL endpoint, and the endpoint resolves to a
    #   private IP address, Refactor Spaces routes traffic using the API
    #   Gateway VPC link. If a service endpoint resolves to a public IP
    #   address, Refactor Spaces routes traffic over the public internet.
    #   Services can have HTTP or HTTPS URL endpoints. For HTTPS URLs,
    #   publicly-signed certificates are supported. Private Certificate
    #   Authorities (CAs) are permitted only if the CA's domain is also
    #   publicly resolvable.
    #
    #   Refactor Spaces automatically resolves the public Domain Name System
    #   (DNS) names that are set in `CreateService:UrlEndpoint `when you
    #   create a service. The DNS names resolve when the DNS time-to-live
    #   (TTL) expires, or every 60 seconds for TTLs less than 60 seconds.
    #   This periodic DNS resolution ensures that the route configuration
    #   remains up-to-date.
    #
    #
    #
    #   **One-time health check**
    #
    #   A one-time health check is performed on the service when either the
    #   route is updated from inactive to active, or when it is created with
    #   an active state. If the health check fails, the route transitions
    #   the route state to `FAILED`, an error code of
    #   `SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE` is provided, and no traffic
    #   is sent to the service.
    #
    #   For private URLs, a target group is created on the Network Load
    #   Balancer and the load balancer target group runs default target
    #   health checks. By default, the health check is run against the
    #   service endpoint URL. Optionally, the health check can be performed
    #   against a different protocol, port, and/or path using the
    #   [CreateService:UrlEndpoint][1] parameter. All other health check
    #   settings for the load balancer use the default values described in
    #   the [Health checks for your target groups][2] in the *Elastic Load
    #   Balancing guide*. The health check is considered successful if at
    #   least one target within the target group transitions to a healthy
    #   state.
    #
    #
    #
    # * **Lambda function endpoints**
    #
    #   If the service has an Lambda function endpoint, then Refactor Spaces
    #   configures the Lambda function's resource policy to allow the
    #   application's API Gateway to invoke the function.
    #
    #   The Lambda function state is checked. If the function is not active,
    #   the function configuration is updated so that Lambda resources are
    #   provisioned. If the Lambda state is `Failed`, then the route
    #   creation fails. For more information, see the
    #   [GetFunctionConfiguration's State response parameter][3] in the
    #   *Lambda Developer Guide*.
    #
    #   A check is performed to determine that a Lambda function with the
    #   specified ARN exists. If it does not exist, the health check fails.
    #   For public URLs, a connection is opened to the public endpoint. If
    #   the URL is not reachable, the health check fails.
    #
    # **Environments without a network bridge**
    #
    # When you create environments without a network bridge
    # ([CreateEnvironment:NetworkFabricType][4] is `NONE)` and you use your
    # own networking infrastructure, you need to configure [VPC to VPC
    # connectivity][5] between your network and the application proxy VPC.
    # Route creation from the application proxy to service endpoints will
    # fail if your network is not configured to connect to the application
    # proxy VPC. For more information, see [ Create a route][6] in the
    # *Refactor Spaces User Guide*.
    #
    #
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateService.html#migrationhubrefactorspaces-CreateService-request-UrlEndpoint
    # [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html
    # [3]: https://docs.aws.amazon.com/lambda/latest/dg/API_GetFunctionConfiguration.html#SSS-GetFunctionConfiguration-response-State
    # [4]: https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType
    # [5]: https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html
    # [6]: https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-role.html
    #
    # @option params [required, String] :application_identifier
    #   The ID of the application within which the route is being created.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::DefaultRouteInput] :default_route
    #   Configuration for the default route type.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment in which the route is created.
    #
    # @option params [required, String] :route_type
    #   The route type of the route. `DEFAULT` indicates that all traffic that
    #   does not match another route is forwarded to the default route.
    #   Applications must have a default route before any other routes can be
    #   created. `URI_PATH` indicates a route that is based on a URI path.
    #
    # @option params [required, String] :service_identifier
    #   The ID of the service in which the route is created. Traffic that
    #   matches this route is forwarded to this service.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the route. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key-value
    #   pair..
    #
    # @option params [Types::UriPathRouteInput] :uri_path_route
    #   The configuration for the URI path route type.
    #
    # @return [Types::CreateRouteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRouteResponse#application_id #application_id} => String
    #   * {Types::CreateRouteResponse#arn #arn} => String
    #   * {Types::CreateRouteResponse#created_by_account_id #created_by_account_id} => String
    #   * {Types::CreateRouteResponse#created_time #created_time} => Time
    #   * {Types::CreateRouteResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::CreateRouteResponse#owner_account_id #owner_account_id} => String
    #   * {Types::CreateRouteResponse#route_id #route_id} => String
    #   * {Types::CreateRouteResponse#route_type #route_type} => String
    #   * {Types::CreateRouteResponse#service_id #service_id} => String
    #   * {Types::CreateRouteResponse#state #state} => String
    #   * {Types::CreateRouteResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateRouteResponse#uri_path_route #uri_path_route} => Types::UriPathRouteInput
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route({
    #     application_identifier: "ApplicationId", # required
    #     client_token: "ClientToken",
    #     default_route: {
    #       activation_state: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     },
    #     environment_identifier: "EnvironmentId", # required
    #     route_type: "DEFAULT", # required, accepts DEFAULT, URI_PATH
    #     service_identifier: "ServiceId", # required
    #     tags: {
    #       "TagMapKeyString" => "TagMapValueString",
    #     },
    #     uri_path_route: {
    #       activation_state: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #       append_source_path: false,
    #       include_child_paths: false,
    #       methods: ["DELETE"], # accepts DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT
    #       source_path: "UriPath", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.created_by_account_id #=> String
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.owner_account_id #=> String
    #   resp.route_id #=> String
    #   resp.route_type #=> String, one of "DEFAULT", "URI_PATH"
    #   resp.service_id #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"
    #   resp.tags #=> Hash
    #   resp.tags["TagMapKeyString"] #=> String
    #   resp.uri_path_route.activation_state #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.uri_path_route.append_source_path #=> Boolean
    #   resp.uri_path_route.include_child_paths #=> Boolean
    #   resp.uri_path_route.methods #=> Array
    #   resp.uri_path_route.methods[0] #=> String, one of "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"
    #   resp.uri_path_route.source_path #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateRoute AWS API Documentation
    #
    # @overload create_route(params = {})
    # @param [Hash] params ({})
    def create_route(params = {}, options = {})
      req = build_request(:create_route, params)
      req.send_request(options)
    end

    # Creates an Amazon Web Services Migration Hub Refactor Spaces service.
    # The account owner of the service is always the environment owner,
    # regardless of which account in the environment creates the service.
    # Services have either a URL endpoint in a virtual private cloud (VPC),
    # or a Lambda function endpoint.
    #
    # If an Amazon Web Services resource is launched in a service VPC, and
    # you want it to be accessible to all of an environment’s services with
    # VPCs and routes, apply the `RefactorSpacesSecurityGroup` to the
    # resource. Alternatively, to add more cross-account constraints, apply
    # your own security group.
    #
    # @option params [required, String] :application_identifier
    #   The ID of the application which the service is created.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description of the service.
    #
    # @option params [required, String] :endpoint_type
    #   The type of endpoint to use for the service. The type can be a URL in
    #   a VPC or an Lambda function.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment in which the service is created.
    #
    # @option params [Types::LambdaEndpointInput] :lambda_endpoint
    #   The configuration for the Lambda endpoint type.
    #
    # @option params [required, String] :name
    #   The name of the service.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the service. A tag is a label that you assign to
    #   an Amazon Web Services resource. Each tag consists of a key-value
    #   pair..
    #
    # @option params [Types::UrlEndpointInput] :url_endpoint
    #   The configuration for the URL endpoint type. When creating a route to
    #   a service, Refactor Spaces automatically resolves the address in the
    #   `UrlEndpointInput` object URL when the Domain Name System (DNS)
    #   time-to-live (TTL) expires, or every 60 seconds for TTLs less than 60
    #   seconds.
    #
    # @option params [String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Types::CreateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceResponse#application_id #application_id} => String
    #   * {Types::CreateServiceResponse#arn #arn} => String
    #   * {Types::CreateServiceResponse#created_by_account_id #created_by_account_id} => String
    #   * {Types::CreateServiceResponse#created_time #created_time} => Time
    #   * {Types::CreateServiceResponse#description #description} => String
    #   * {Types::CreateServiceResponse#endpoint_type #endpoint_type} => String
    #   * {Types::CreateServiceResponse#environment_id #environment_id} => String
    #   * {Types::CreateServiceResponse#lambda_endpoint #lambda_endpoint} => Types::LambdaEndpointInput
    #   * {Types::CreateServiceResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::CreateServiceResponse#name #name} => String
    #   * {Types::CreateServiceResponse#owner_account_id #owner_account_id} => String
    #   * {Types::CreateServiceResponse#service_id #service_id} => String
    #   * {Types::CreateServiceResponse#state #state} => String
    #   * {Types::CreateServiceResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateServiceResponse#url_endpoint #url_endpoint} => Types::UrlEndpointInput
    #   * {Types::CreateServiceResponse#vpc_id #vpc_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service({
    #     application_identifier: "ApplicationId", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #     endpoint_type: "LAMBDA", # required, accepts LAMBDA, URL
    #     environment_identifier: "EnvironmentId", # required
    #     lambda_endpoint: {
    #       arn: "LambdaArn", # required
    #     },
    #     name: "ServiceName", # required
    #     tags: {
    #       "TagMapKeyString" => "TagMapValueString",
    #     },
    #     url_endpoint: {
    #       health_url: "Uri",
    #       url: "Uri", # required
    #     },
    #     vpc_id: "VpcId",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.created_by_account_id #=> String
    #   resp.created_time #=> Time
    #   resp.description #=> String
    #   resp.endpoint_type #=> String, one of "LAMBDA", "URL"
    #   resp.environment_id #=> String
    #   resp.lambda_endpoint.arn #=> String
    #   resp.last_updated_time #=> Time
    #   resp.name #=> String
    #   resp.owner_account_id #=> String
    #   resp.service_id #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagMapKeyString"] #=> String
    #   resp.url_endpoint.health_url #=> String
    #   resp.url_endpoint.url #=> String
    #   resp.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/CreateService AWS API Documentation
    #
    # @overload create_service(params = {})
    # @param [Hash] params ({})
    def create_service(params = {}, options = {})
      req = build_request(:create_service, params)
      req.send_request(options)
    end

    # Deletes an Amazon Web Services Migration Hub Refactor Spaces
    # application. Before you can delete an application, you must first
    # delete any services or routes within the application.
    #
    # @option params [required, String] :application_identifier
    #   The ID of the application.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment.
    #
    # @return [Types::DeleteApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApplicationResponse#application_id #application_id} => String
    #   * {Types::DeleteApplicationResponse#arn #arn} => String
    #   * {Types::DeleteApplicationResponse#environment_id #environment_id} => String
    #   * {Types::DeleteApplicationResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DeleteApplicationResponse#name #name} => String
    #   * {Types::DeleteApplicationResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application_identifier: "ApplicationId", # required
    #     environment_identifier: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.environment_id #=> String
    #   resp.last_updated_time #=> Time
    #   resp.name #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes an Amazon Web Services Migration Hub Refactor Spaces
    # environment. Before you can delete an environment, you must first
    # delete any applications and services within the environment.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment.
    #
    # @return [Types::DeleteEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEnvironmentResponse#arn #arn} => String
    #   * {Types::DeleteEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::DeleteEnvironmentResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DeleteEnvironmentResponse#name #name} => String
    #   * {Types::DeleteEnvironmentResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     environment_identifier: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.environment_id #=> String
    #   resp.last_updated_time #=> Time
    #   resp.name #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deletes the resource policy set for the environment.
    #
    # @option params [required, String] :identifier
    #   Amazon Resource Name (ARN) of the resource associated with the policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     identifier: "ResourcePolicyIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes an Amazon Web Services Migration Hub Refactor Spaces route.
    #
    # @option params [required, String] :application_identifier
    #   The ID of the application to delete the route from.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment to delete the route from.
    #
    # @option params [required, String] :route_identifier
    #   The ID of the route to delete.
    #
    # @return [Types::DeleteRouteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRouteResponse#application_id #application_id} => String
    #   * {Types::DeleteRouteResponse#arn #arn} => String
    #   * {Types::DeleteRouteResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DeleteRouteResponse#route_id #route_id} => String
    #   * {Types::DeleteRouteResponse#service_id #service_id} => String
    #   * {Types::DeleteRouteResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route({
    #     application_identifier: "ApplicationId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     route_identifier: "RouteId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.last_updated_time #=> Time
    #   resp.route_id #=> String
    #   resp.service_id #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteRoute AWS API Documentation
    #
    # @overload delete_route(params = {})
    # @param [Hash] params ({})
    def delete_route(params = {}, options = {})
      req = build_request(:delete_route, params)
      req.send_request(options)
    end

    # Deletes an Amazon Web Services Migration Hub Refactor Spaces service.
    #
    # @option params [required, String] :application_identifier
    #   Deletes a Refactor Spaces service.
    #
    #   <note markdown="1"> The `RefactorSpacesSecurityGroup` security group must be removed from
    #   all Amazon Web Services resources in the virtual private cloud (VPC)
    #   prior to deleting a service with a URL endpoint in a VPC.
    #
    #    </note>
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment that the service is in.
    #
    # @option params [required, String] :service_identifier
    #   The ID of the service to delete.
    #
    # @return [Types::DeleteServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceResponse#application_id #application_id} => String
    #   * {Types::DeleteServiceResponse#arn #arn} => String
    #   * {Types::DeleteServiceResponse#environment_id #environment_id} => String
    #   * {Types::DeleteServiceResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DeleteServiceResponse#name #name} => String
    #   * {Types::DeleteServiceResponse#service_id #service_id} => String
    #   * {Types::DeleteServiceResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service({
    #     application_identifier: "ApplicationId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     service_identifier: "ServiceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.environment_id #=> String
    #   resp.last_updated_time #=> Time
    #   resp.name #=> String
    #   resp.service_id #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/DeleteService AWS API Documentation
    #
    # @overload delete_service(params = {})
    # @param [Hash] params ({})
    def delete_service(params = {}, options = {})
      req = build_request(:delete_service, params)
      req.send_request(options)
    end

    # Gets an Amazon Web Services Migration Hub Refactor Spaces application.
    #
    # @option params [required, String] :application_identifier
    #   The ID of the application.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment.
    #
    # @return [Types::GetApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationResponse#api_gateway_proxy #api_gateway_proxy} => Types::ApiGatewayProxyConfig
    #   * {Types::GetApplicationResponse#application_id #application_id} => String
    #   * {Types::GetApplicationResponse#arn #arn} => String
    #   * {Types::GetApplicationResponse#created_by_account_id #created_by_account_id} => String
    #   * {Types::GetApplicationResponse#created_time #created_time} => Time
    #   * {Types::GetApplicationResponse#environment_id #environment_id} => String
    #   * {Types::GetApplicationResponse#error #error} => Types::ErrorResponse
    #   * {Types::GetApplicationResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::GetApplicationResponse#name #name} => String
    #   * {Types::GetApplicationResponse#owner_account_id #owner_account_id} => String
    #   * {Types::GetApplicationResponse#proxy_type #proxy_type} => String
    #   * {Types::GetApplicationResponse#state #state} => String
    #   * {Types::GetApplicationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetApplicationResponse#vpc_id #vpc_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     application_identifier: "ApplicationId", # required
    #     environment_identifier: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_gateway_proxy.api_gateway_id #=> String
    #   resp.api_gateway_proxy.endpoint_type #=> String, one of "REGIONAL", "PRIVATE"
    #   resp.api_gateway_proxy.nlb_arn #=> String
    #   resp.api_gateway_proxy.nlb_name #=> String
    #   resp.api_gateway_proxy.proxy_url #=> String
    #   resp.api_gateway_proxy.stage_name #=> String
    #   resp.api_gateway_proxy.vpc_link_id #=> String
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.created_by_account_id #=> String
    #   resp.created_time #=> Time
    #   resp.environment_id #=> String
    #   resp.error.account_id #=> String
    #   resp.error.additional_details #=> Hash
    #   resp.error.additional_details["AdditionalDetailsKey"] #=> String
    #   resp.error.code #=> String, one of "INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"
    #   resp.error.message #=> String
    #   resp.error.resource_identifier #=> String
    #   resp.error.resource_type #=> String, one of "ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"
    #   resp.last_updated_time #=> Time
    #   resp.name #=> String
    #   resp.owner_account_id #=> String
    #   resp.proxy_type #=> String, one of "API_GATEWAY"
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #   resp.tags #=> Hash
    #   resp.tags["TagMapKeyString"] #=> String
    #   resp.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Gets an Amazon Web Services Migration Hub Refactor Spaces environment.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment.
    #
    # @return [Types::GetEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentResponse#arn #arn} => String
    #   * {Types::GetEnvironmentResponse#created_time #created_time} => Time
    #   * {Types::GetEnvironmentResponse#description #description} => String
    #   * {Types::GetEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::GetEnvironmentResponse#error #error} => Types::ErrorResponse
    #   * {Types::GetEnvironmentResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::GetEnvironmentResponse#name #name} => String
    #   * {Types::GetEnvironmentResponse#network_fabric_type #network_fabric_type} => String
    #   * {Types::GetEnvironmentResponse#owner_account_id #owner_account_id} => String
    #   * {Types::GetEnvironmentResponse#state #state} => String
    #   * {Types::GetEnvironmentResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetEnvironmentResponse#transit_gateway_id #transit_gateway_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     environment_identifier: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_time #=> Time
    #   resp.description #=> String
    #   resp.environment_id #=> String
    #   resp.error.account_id #=> String
    #   resp.error.additional_details #=> Hash
    #   resp.error.additional_details["AdditionalDetailsKey"] #=> String
    #   resp.error.code #=> String, one of "INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"
    #   resp.error.message #=> String
    #   resp.error.resource_identifier #=> String
    #   resp.error.resource_type #=> String, one of "ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"
    #   resp.last_updated_time #=> Time
    #   resp.name #=> String
    #   resp.network_fabric_type #=> String, one of "TRANSIT_GATEWAY", "NONE"
    #   resp.owner_account_id #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagMapKeyString"] #=> String
    #   resp.transit_gateway_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Gets the resource-based permission policy that is set for the given
    # environment.
    #
    # @option params [required, String] :identifier
    #   The Amazon Resource Name (ARN) of the resource associated with the
    #   policy.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     identifier: "ResourcePolicyIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Gets an Amazon Web Services Migration Hub Refactor Spaces route.
    #
    # @option params [required, String] :application_identifier
    #   The ID of the application.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment.
    #
    # @option params [required, String] :route_identifier
    #   The ID of the route.
    #
    # @return [Types::GetRouteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRouteResponse#append_source_path #append_source_path} => Boolean
    #   * {Types::GetRouteResponse#application_id #application_id} => String
    #   * {Types::GetRouteResponse#arn #arn} => String
    #   * {Types::GetRouteResponse#created_by_account_id #created_by_account_id} => String
    #   * {Types::GetRouteResponse#created_time #created_time} => Time
    #   * {Types::GetRouteResponse#environment_id #environment_id} => String
    #   * {Types::GetRouteResponse#error #error} => Types::ErrorResponse
    #   * {Types::GetRouteResponse#include_child_paths #include_child_paths} => Boolean
    #   * {Types::GetRouteResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::GetRouteResponse#methods #data.methods} => Array&lt;String&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::GetRouteResponse#owner_account_id #owner_account_id} => String
    #   * {Types::GetRouteResponse#path_resource_to_id #path_resource_to_id} => Hash&lt;String,String&gt;
    #   * {Types::GetRouteResponse#route_id #route_id} => String
    #   * {Types::GetRouteResponse#route_type #route_type} => String
    #   * {Types::GetRouteResponse#service_id #service_id} => String
    #   * {Types::GetRouteResponse#source_path #source_path} => String
    #   * {Types::GetRouteResponse#state #state} => String
    #   * {Types::GetRouteResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_route({
    #     application_identifier: "ApplicationId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     route_identifier: "RouteId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.append_source_path #=> Boolean
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.created_by_account_id #=> String
    #   resp.created_time #=> Time
    #   resp.environment_id #=> String
    #   resp.error.account_id #=> String
    #   resp.error.additional_details #=> Hash
    #   resp.error.additional_details["AdditionalDetailsKey"] #=> String
    #   resp.error.code #=> String, one of "INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"
    #   resp.error.message #=> String
    #   resp.error.resource_identifier #=> String
    #   resp.error.resource_type #=> String, one of "ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"
    #   resp.include_child_paths #=> Boolean
    #   resp.last_updated_time #=> Time
    #   resp.data.methods #=> Array
    #   resp.data.methods[0] #=> String, one of "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"
    #   resp.owner_account_id #=> String
    #   resp.path_resource_to_id #=> Hash
    #   resp.path_resource_to_id["PathResourceToIdKey"] #=> String
    #   resp.route_id #=> String
    #   resp.route_type #=> String, one of "DEFAULT", "URI_PATH"
    #   resp.service_id #=> String
    #   resp.source_path #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"
    #   resp.tags #=> Hash
    #   resp.tags["TagMapKeyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetRoute AWS API Documentation
    #
    # @overload get_route(params = {})
    # @param [Hash] params ({})
    def get_route(params = {}, options = {})
      req = build_request(:get_route, params)
      req.send_request(options)
    end

    # Gets an Amazon Web Services Migration Hub Refactor Spaces service.
    #
    # @option params [required, String] :application_identifier
    #   The ID of the application.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment.
    #
    # @option params [required, String] :service_identifier
    #   The ID of the service.
    #
    # @return [Types::GetServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceResponse#application_id #application_id} => String
    #   * {Types::GetServiceResponse#arn #arn} => String
    #   * {Types::GetServiceResponse#created_by_account_id #created_by_account_id} => String
    #   * {Types::GetServiceResponse#created_time #created_time} => Time
    #   * {Types::GetServiceResponse#description #description} => String
    #   * {Types::GetServiceResponse#endpoint_type #endpoint_type} => String
    #   * {Types::GetServiceResponse#environment_id #environment_id} => String
    #   * {Types::GetServiceResponse#error #error} => Types::ErrorResponse
    #   * {Types::GetServiceResponse#lambda_endpoint #lambda_endpoint} => Types::LambdaEndpointConfig
    #   * {Types::GetServiceResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::GetServiceResponse#name #name} => String
    #   * {Types::GetServiceResponse#owner_account_id #owner_account_id} => String
    #   * {Types::GetServiceResponse#service_id #service_id} => String
    #   * {Types::GetServiceResponse#state #state} => String
    #   * {Types::GetServiceResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetServiceResponse#url_endpoint #url_endpoint} => Types::UrlEndpointConfig
    #   * {Types::GetServiceResponse#vpc_id #vpc_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service({
    #     application_identifier: "ApplicationId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     service_identifier: "ServiceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.created_by_account_id #=> String
    #   resp.created_time #=> Time
    #   resp.description #=> String
    #   resp.endpoint_type #=> String, one of "LAMBDA", "URL"
    #   resp.environment_id #=> String
    #   resp.error.account_id #=> String
    #   resp.error.additional_details #=> Hash
    #   resp.error.additional_details["AdditionalDetailsKey"] #=> String
    #   resp.error.code #=> String, one of "INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"
    #   resp.error.message #=> String
    #   resp.error.resource_identifier #=> String
    #   resp.error.resource_type #=> String, one of "ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"
    #   resp.lambda_endpoint.arn #=> String
    #   resp.last_updated_time #=> Time
    #   resp.name #=> String
    #   resp.owner_account_id #=> String
    #   resp.service_id #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagMapKeyString"] #=> String
    #   resp.url_endpoint.health_url #=> String
    #   resp.url_endpoint.url #=> String
    #   resp.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/GetService AWS API Documentation
    #
    # @overload get_service(params = {})
    # @param [Hash] params ({})
    def get_service(params = {}, options = {})
      req = build_request(:get_service, params)
      req.send_request(options)
    end

    # Lists all the Amazon Web Services Migration Hub Refactor Spaces
    # applications within an environment.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#application_summary_list #application_summary_list} => Array&lt;Types::ApplicationSummary&gt;
    #   * {Types::ListApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     environment_identifier: "EnvironmentId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_summary_list #=> Array
    #   resp.application_summary_list[0].api_gateway_proxy.api_gateway_id #=> String
    #   resp.application_summary_list[0].api_gateway_proxy.endpoint_type #=> String, one of "REGIONAL", "PRIVATE"
    #   resp.application_summary_list[0].api_gateway_proxy.nlb_arn #=> String
    #   resp.application_summary_list[0].api_gateway_proxy.nlb_name #=> String
    #   resp.application_summary_list[0].api_gateway_proxy.proxy_url #=> String
    #   resp.application_summary_list[0].api_gateway_proxy.stage_name #=> String
    #   resp.application_summary_list[0].api_gateway_proxy.vpc_link_id #=> String
    #   resp.application_summary_list[0].application_id #=> String
    #   resp.application_summary_list[0].arn #=> String
    #   resp.application_summary_list[0].created_by_account_id #=> String
    #   resp.application_summary_list[0].created_time #=> Time
    #   resp.application_summary_list[0].environment_id #=> String
    #   resp.application_summary_list[0].error.account_id #=> String
    #   resp.application_summary_list[0].error.additional_details #=> Hash
    #   resp.application_summary_list[0].error.additional_details["AdditionalDetailsKey"] #=> String
    #   resp.application_summary_list[0].error.code #=> String, one of "INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"
    #   resp.application_summary_list[0].error.message #=> String
    #   resp.application_summary_list[0].error.resource_identifier #=> String
    #   resp.application_summary_list[0].error.resource_type #=> String, one of "ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"
    #   resp.application_summary_list[0].last_updated_time #=> Time
    #   resp.application_summary_list[0].name #=> String
    #   resp.application_summary_list[0].owner_account_id #=> String
    #   resp.application_summary_list[0].proxy_type #=> String, one of "API_GATEWAY"
    #   resp.application_summary_list[0].state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING"
    #   resp.application_summary_list[0].tags #=> Hash
    #   resp.application_summary_list[0].tags["TagMapKeyString"] #=> String
    #   resp.application_summary_list[0].vpc_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Lists all Amazon Web Services Migration Hub Refactor Spaces service
    # virtual private clouds (VPCs) that are part of the environment.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListEnvironmentVpcsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentVpcsResponse#environment_vpc_list #environment_vpc_list} => Array&lt;Types::EnvironmentVpc&gt;
    #   * {Types::ListEnvironmentVpcsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_vpcs({
    #     environment_identifier: "EnvironmentId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_vpc_list #=> Array
    #   resp.environment_vpc_list[0].account_id #=> String
    #   resp.environment_vpc_list[0].cidr_blocks #=> Array
    #   resp.environment_vpc_list[0].cidr_blocks[0] #=> String
    #   resp.environment_vpc_list[0].created_time #=> Time
    #   resp.environment_vpc_list[0].environment_id #=> String
    #   resp.environment_vpc_list[0].last_updated_time #=> Time
    #   resp.environment_vpc_list[0].vpc_id #=> String
    #   resp.environment_vpc_list[0].vpc_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListEnvironmentVpcs AWS API Documentation
    #
    # @overload list_environment_vpcs(params = {})
    # @param [Hash] params ({})
    def list_environment_vpcs(params = {}, options = {})
      req = build_request(:list_environment_vpcs, params)
      req.send_request(options)
    end

    # Lists Amazon Web Services Migration Hub Refactor Spaces environments
    # owned by a caller account or shared with the caller account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsResponse#environment_summary_list #environment_summary_list} => Array&lt;Types::EnvironmentSummary&gt;
    #   * {Types::ListEnvironmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_summary_list #=> Array
    #   resp.environment_summary_list[0].arn #=> String
    #   resp.environment_summary_list[0].created_time #=> Time
    #   resp.environment_summary_list[0].description #=> String
    #   resp.environment_summary_list[0].environment_id #=> String
    #   resp.environment_summary_list[0].error.account_id #=> String
    #   resp.environment_summary_list[0].error.additional_details #=> Hash
    #   resp.environment_summary_list[0].error.additional_details["AdditionalDetailsKey"] #=> String
    #   resp.environment_summary_list[0].error.code #=> String, one of "INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"
    #   resp.environment_summary_list[0].error.message #=> String
    #   resp.environment_summary_list[0].error.resource_identifier #=> String
    #   resp.environment_summary_list[0].error.resource_type #=> String, one of "ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"
    #   resp.environment_summary_list[0].last_updated_time #=> Time
    #   resp.environment_summary_list[0].name #=> String
    #   resp.environment_summary_list[0].network_fabric_type #=> String, one of "TRANSIT_GATEWAY", "NONE"
    #   resp.environment_summary_list[0].owner_account_id #=> String
    #   resp.environment_summary_list[0].state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.environment_summary_list[0].tags #=> Hash
    #   resp.environment_summary_list[0].tags["TagMapKeyString"] #=> String
    #   resp.environment_summary_list[0].transit_gateway_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Lists all the Amazon Web Services Migration Hub Refactor Spaces routes
    # within an application.
    #
    # @option params [required, String] :application_identifier
    #   The ID of the application.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListRoutesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoutesResponse#next_token #next_token} => String
    #   * {Types::ListRoutesResponse#route_summary_list #route_summary_list} => Array&lt;Types::RouteSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routes({
    #     application_identifier: "ApplicationId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.route_summary_list #=> Array
    #   resp.route_summary_list[0].append_source_path #=> Boolean
    #   resp.route_summary_list[0].application_id #=> String
    #   resp.route_summary_list[0].arn #=> String
    #   resp.route_summary_list[0].created_by_account_id #=> String
    #   resp.route_summary_list[0].created_time #=> Time
    #   resp.route_summary_list[0].environment_id #=> String
    #   resp.route_summary_list[0].error.account_id #=> String
    #   resp.route_summary_list[0].error.additional_details #=> Hash
    #   resp.route_summary_list[0].error.additional_details["AdditionalDetailsKey"] #=> String
    #   resp.route_summary_list[0].error.code #=> String, one of "INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"
    #   resp.route_summary_list[0].error.message #=> String
    #   resp.route_summary_list[0].error.resource_identifier #=> String
    #   resp.route_summary_list[0].error.resource_type #=> String, one of "ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"
    #   resp.route_summary_list[0].include_child_paths #=> Boolean
    #   resp.route_summary_list[0].last_updated_time #=> Time
    #   resp.route_summary_list[0].methods #=> Array
    #   resp.route_summary_list[0].methods[0] #=> String, one of "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"
    #   resp.route_summary_list[0].owner_account_id #=> String
    #   resp.route_summary_list[0].path_resource_to_id #=> Hash
    #   resp.route_summary_list[0].path_resource_to_id["PathResourceToIdKey"] #=> String
    #   resp.route_summary_list[0].route_id #=> String
    #   resp.route_summary_list[0].route_type #=> String, one of "DEFAULT", "URI_PATH"
    #   resp.route_summary_list[0].service_id #=> String
    #   resp.route_summary_list[0].source_path #=> String
    #   resp.route_summary_list[0].state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"
    #   resp.route_summary_list[0].tags #=> Hash
    #   resp.route_summary_list[0].tags["TagMapKeyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListRoutes AWS API Documentation
    #
    # @overload list_routes(params = {})
    # @param [Hash] params ({})
    def list_routes(params = {}, options = {})
      req = build_request(:list_routes, params)
      req.send_request(options)
    end

    # Lists all the Amazon Web Services Migration Hub Refactor Spaces
    # services within an application.
    #
    # @option params [required, String] :application_identifier
    #   The ID of the application.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesResponse#next_token #next_token} => String
    #   * {Types::ListServicesResponse#service_summary_list #service_summary_list} => Array&lt;Types::ServiceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     application_identifier: "ApplicationId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.service_summary_list #=> Array
    #   resp.service_summary_list[0].application_id #=> String
    #   resp.service_summary_list[0].arn #=> String
    #   resp.service_summary_list[0].created_by_account_id #=> String
    #   resp.service_summary_list[0].created_time #=> Time
    #   resp.service_summary_list[0].description #=> String
    #   resp.service_summary_list[0].endpoint_type #=> String, one of "LAMBDA", "URL"
    #   resp.service_summary_list[0].environment_id #=> String
    #   resp.service_summary_list[0].error.account_id #=> String
    #   resp.service_summary_list[0].error.additional_details #=> Hash
    #   resp.service_summary_list[0].error.additional_details["AdditionalDetailsKey"] #=> String
    #   resp.service_summary_list[0].error.code #=> String, one of "INVALID_RESOURCE_STATE", "RESOURCE_LIMIT_EXCEEDED", "RESOURCE_CREATION_FAILURE", "RESOURCE_UPDATE_FAILURE", "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE", "RESOURCE_DELETION_FAILURE", "RESOURCE_RETRIEVAL_FAILURE", "RESOURCE_IN_USE", "RESOURCE_NOT_FOUND", "STATE_TRANSITION_FAILURE", "REQUEST_LIMIT_EXCEEDED", "NOT_AUTHORIZED"
    #   resp.service_summary_list[0].error.message #=> String
    #   resp.service_summary_list[0].error.resource_identifier #=> String
    #   resp.service_summary_list[0].error.resource_type #=> String, one of "ENVIRONMENT", "APPLICATION", "ROUTE", "SERVICE", "TRANSIT_GATEWAY", "TRANSIT_GATEWAY_ATTACHMENT", "API_GATEWAY", "NLB", "TARGET_GROUP", "LOAD_BALANCER_LISTENER", "VPC_LINK", "LAMBDA", "VPC", "SUBNET", "ROUTE_TABLE", "SECURITY_GROUP", "VPC_ENDPOINT_SERVICE_CONFIGURATION", "RESOURCE_SHARE", "IAM_ROLE"
    #   resp.service_summary_list[0].lambda_endpoint.arn #=> String
    #   resp.service_summary_list[0].last_updated_time #=> Time
    #   resp.service_summary_list[0].name #=> String
    #   resp.service_summary_list[0].owner_account_id #=> String
    #   resp.service_summary_list[0].service_id #=> String
    #   resp.service_summary_list[0].state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.service_summary_list[0].tags #=> Hash
    #   resp.service_summary_list[0].tags["TagMapKeyString"] #=> String
    #   resp.service_summary_list[0].url_endpoint.health_url #=> String
    #   resp.service_summary_list[0].url_endpoint.url #=> String
    #   resp.service_summary_list[0].vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # Lists the tags of a resource. The caller account must be the same as
    # the resource’s `OwnerAccountId`. Listing tags in other accounts is not
    # supported.
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
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagMapKeyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Attaches a resource-based permission policy to the Amazon Web Services
    # Migration Hub Refactor Spaces environment. The policy must contain the
    # same actions and condition statements as the
    # `arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment`
    # permission in Resource Access Manager. The policy must not contain new
    # lines or blank lines.
    #
    # @option params [required, String] :policy
    #   A JSON-formatted string for an Amazon Web Services resource-based
    #   policy.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which the policy is
    #   being attached.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy: "PolicyString", # required
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Removes the tags of a given resource. Tags are metadata which can be
    # used to manage a resource. To tag a resource, the caller account must
    # be the same as the resource’s `OwnerAccountId`. Tagging resources in
    # other accounts is not supported.
    #
    # <note markdown="1"> Amazon Web Services Migration Hub Refactor Spaces does not propagate
    # tags to orchestrated resources, such as an environment’s transit
    # gateway.
    #
    #  </note>
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The new or modified tags for the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagMapKeyString" => "TagMapValueString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Adds to or modifies the tags of the given resource. Tags are metadata
    # which can be used to manage a resource. To untag a resource, the
    # caller account must be the same as the resource’s `OwnerAccountId`.
    # Untagging resources across accounts is not supported.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of keys of the tags to be removed from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an Amazon Web Services Migration Hub Refactor Spaces route.
    #
    # @option params [required, String] :activation_state
    #   If set to `ACTIVE`, traffic is forwarded to this route’s service after
    #   the route is updated.
    #
    # @option params [required, String] :application_identifier
    #   The ID of the application within which the route is being updated.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment in which the route is being updated.
    #
    # @option params [required, String] :route_identifier
    #   The unique identifier of the route to update.
    #
    # @return [Types::UpdateRouteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRouteResponse#application_id #application_id} => String
    #   * {Types::UpdateRouteResponse#arn #arn} => String
    #   * {Types::UpdateRouteResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::UpdateRouteResponse#route_id #route_id} => String
    #   * {Types::UpdateRouteResponse#service_id #service_id} => String
    #   * {Types::UpdateRouteResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_route({
    #     activation_state: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #     application_identifier: "ApplicationId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     route_identifier: "RouteId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.last_updated_time #=> Time
    #   resp.route_id #=> String
    #   resp.service_id #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migration-hub-refactor-spaces-2021-10-26/UpdateRoute AWS API Documentation
    #
    # @overload update_route(params = {})
    # @param [Hash] params ({})
    def update_route(params = {}, options = {})
      req = build_request(:update_route, params)
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
      context[:gem_name] = 'aws-sdk-migrationhubrefactorspaces'
      context[:gem_version] = '1.18.0'
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
