# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::NetworkSecurityManager
  # An API client for NetworkSecurityManager.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::NetworkSecurityManager::Client.new(
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

    @identifier = :networksecuritymanager

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
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::NetworkSecurityManager::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
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
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
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
    #   @option options [String] :account_id
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
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
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
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
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
    #     * `legacy` - The pre-existing retry behavior. This is the default
    #       value if no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - A retry mode that includes all the functionality of
    #       `standard` mode along with automatic client side throttling.
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
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
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
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
    #   @option options [Aws::NetworkSecurityManager::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::NetworkSecurityManager::EndpointParameters`.
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a deployment. A deployment applies one or more policies to the
    # accounts and resources selected by a scope. Use `isPublished` to
    # create the deployment in published (`ACTIVE`) or draft (`DRAFT`)
    # state. The response includes coverage information and any warnings
    # about the deployment.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :deployment_name
    #   The name of the deployment.
    #
    # @option params [String] :deployment_description
    #   A description of the deployment.
    #
    # @option params [required, Types::DeploymentConfiguration] :deployment_configuration
    #   The configuration settings for the deployment.
    #
    # @option params [required, Array<Types::PolicyReference>] :associated_policy_list
    #   The policies associated with the deployment.
    #
    # @option params [required, Array<Types::ScopeReference>] :associated_scope_list
    #   The scope associated with the deployment. A deployment has exactly one
    #   scope.
    #
    # @option params [Boolean] :is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as a
    #   draft (`DRAFT`). Default: `true`.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the resource when it is created.
    #
    # @return [Types::CreateDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentOutput#deployment_id #deployment_id} => String
    #   * {Types::CreateDeploymentOutput#deployment_arn #deployment_arn} => String
    #   * {Types::CreateDeploymentOutput#deployment_name #deployment_name} => String
    #   * {Types::CreateDeploymentOutput#deployment_description #deployment_description} => String
    #   * {Types::CreateDeploymentOutput#status #status} => String
    #   * {Types::CreateDeploymentOutput#deployment_configuration #deployment_configuration} => Types::DeploymentConfiguration
    #   * {Types::CreateDeploymentOutput#associated_policy_list #associated_policy_list} => Array&lt;Types::AssociatedPolicy&gt;
    #   * {Types::CreateDeploymentOutput#associated_scope_list #associated_scope_list} => Array&lt;Types::AssociatedScope&gt;
    #   * {Types::CreateDeploymentOutput#version #version} => String
    #   * {Types::CreateDeploymentOutput#update_token #update_token} => String
    #   * {Types::CreateDeploymentOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::CreateDeploymentOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::CreateDeploymentOutput#deployment_coverage #deployment_coverage} => Array&lt;Types::DeploymentCoverageEntry&gt;
    #   * {Types::CreateDeploymentOutput#warnings #warnings} => Array&lt;Types::DeploymentWarningEntry&gt;
    #   * {Types::CreateDeploymentOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Create a deployment
    #
    #   # Creates a new deployment in draft state.
    #
    #   resp = client.create_deployment({
    #     associated_policy_list: [
    #       {
    #         policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #       }, 
    #     ], 
    #     associated_scope_list: [
    #       {
    #         scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #       }, 
    #     ], 
    #     client_token: "550e8400-e29b-41d4-a716-446655440003", 
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false, 
    #     }, 
    #     deployment_description: "Production deployment for US East 1 region", 
    #     deployment_name: "prod-us-east-1-deployment", 
    #     is_published: false, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "1", 
    #     associated_policy_list: [
    #       {
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #       }, 
    #     ], 
    #     associated_scope_list: [
    #       {
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #       }, 
    #     ], 
    #     deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456", 
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false, 
    #     }, 
    #     deployment_description: "Production deployment for US East 1 region", 
    #     deployment_id: "def456", 
    #     deployment_name: "prod-us-east-1-deployment", 
    #     has_published_version: false, 
    #     is_snapshot: false, 
    #     status: "DRAFT", 
    #     update_token: "f4a5b6c7-7d8e-4f9a-8b1c-1d2e3f4a5b6c", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment({
    #     client_token: "IdempotencyToken",
    #     deployment_name: "DeploymentName", # required
    #     deployment_description: "Description",
    #     deployment_configuration: { # required
    #       enable_cross_account_visibility: false, # required
    #     },
    #     associated_policy_list: [ # required
    #       {
    #         policy_identifier: "PolicyIdentifier", # required
    #       },
    #     ],
    #     associated_scope_list: [ # required
    #       {
    #         scope_identifier: "ScopeIdentifier", # required
    #       },
    #     ],
    #     is_published: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_id #=> String
    #   resp.deployment_arn #=> String
    #   resp.deployment_name #=> String
    #   resp.deployment_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.deployment_configuration.enable_cross_account_visibility #=> Boolean
    #   resp.associated_policy_list #=> Array
    #   resp.associated_policy_list[0].policy_arn #=> String
    #   resp.associated_scope_list #=> Array
    #   resp.associated_scope_list[0].scope_arn #=> String
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.deployment_coverage #=> Array
    #   resp.deployment_coverage[0].firewall_type #=> String, one of "WAF", "SHIELD_ADVANCED"
    #   resp.deployment_coverage[0].policy_arns #=> Array
    #   resp.deployment_coverage[0].policy_arns[0] #=> String
    #   resp.deployment_coverage[0].in_scope_resource_types #=> Array
    #   resp.deployment_coverage[0].in_scope_resource_types[0] #=> String, one of "AWS::ApiGateway::Stage", "AWS::CloudFront::Distribution", "AWS::EC2::EIP", "AWS::ElasticLoadBalancingV2::LoadBalancer::application", "AWS::ElasticLoadBalancing::LoadBalancer"
    #   resp.warnings #=> Array
    #   resp.warnings[0].code #=> String
    #   resp.warnings[0].policy_arn #=> String
    #   resp.warnings[0].message #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateDeployment AWS API Documentation
    #
    # @overload create_deployment(params = {})
    # @param [Hash] params ({})
    def create_deployment(params = {}, options = {})
      req = build_request(:create_deployment, params)
      req.send_request(options)
    end

    # Creates a snapshot of the current published version of the specified
    # deployment.
    #
    # @option params [required, String] :deployment_identifier
    #   The identifier of the deployment. This is the deployment's Amazon
    #   Resource Name (ARN).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the snapshot when it is created.
    #
    # @return [Types::CreateDeploymentSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentSnapshotOutput#deployment_id #deployment_id} => String
    #   * {Types::CreateDeploymentSnapshotOutput#deployment_arn #deployment_arn} => String
    #   * {Types::CreateDeploymentSnapshotOutput#deployment_name #deployment_name} => String
    #   * {Types::CreateDeploymentSnapshotOutput#deployment_description #deployment_description} => String
    #   * {Types::CreateDeploymentSnapshotOutput#status #status} => String
    #   * {Types::CreateDeploymentSnapshotOutput#deployment_configuration #deployment_configuration} => Types::DeploymentConfiguration
    #   * {Types::CreateDeploymentSnapshotOutput#associated_policy_list #associated_policy_list} => Array&lt;Types::AssociatedPolicy&gt;
    #   * {Types::CreateDeploymentSnapshotOutput#associated_scope_list #associated_scope_list} => Array&lt;Types::AssociatedScope&gt;
    #   * {Types::CreateDeploymentSnapshotOutput#version #version} => String
    #   * {Types::CreateDeploymentSnapshotOutput#update_token #update_token} => String
    #   * {Types::CreateDeploymentSnapshotOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::CreateDeploymentSnapshotOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::CreateDeploymentSnapshotOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Create a deployment snapshot
    #
    #   # Creates an immutable snapshot of the current published version of a deployment. The snapshot is addressable by a
    #   # version-qualified ARN.
    #
    #   resp = client.create_deployment_snapshot({
    #     client_token: "550e8400-e29b-41d4-a716-446655440014", 
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "2", 
    #     associated_policy_list: [
    #       {
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #       }, 
    #     ], 
    #     associated_scope_list: [
    #       {
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #       }, 
    #     ], 
    #     deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456:2", 
    #     deployment_configuration: {
    #       enable_cross_account_visibility: true, 
    #     }, 
    #     deployment_id: "def456", 
    #     deployment_name: "prod-us-east-1-deployment", 
    #     is_snapshot: true, 
    #     status: "ACTIVE", 
    #     updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment_snapshot({
    #     deployment_identifier: "DeploymentIdentifier", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_id #=> String
    #   resp.deployment_arn #=> String
    #   resp.deployment_name #=> String
    #   resp.deployment_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.deployment_configuration.enable_cross_account_visibility #=> Boolean
    #   resp.associated_policy_list #=> Array
    #   resp.associated_policy_list[0].policy_arn #=> String
    #   resp.associated_scope_list #=> Array
    #   resp.associated_scope_list[0].scope_arn #=> String
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateDeploymentSnapshot AWS API Documentation
    #
    # @overload create_deployment_snapshot(params = {})
    # @param [Hash] params ({})
    def create_deployment_snapshot(params = {}, options = {})
      req = build_request(:create_deployment_snapshot, params)
      req.send_request(options)
    end

    # Creates a policy. A policy combines templates and rules with
    # enforcement settings for a firewall type, such as AWS WAF or AWS
    # Shield Advanced. Use `isPublished` to create the policy in published
    # (`ACTIVE`) or draft (`DRAFT`) state.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    # @option params [String] :policy_description
    #   A description of the policy.
    #
    # @option params [required, Integer] :priority
    #   The priority of the resource. A lower number indicates a higher
    #   priority.
    #
    # @option params [Array<Types::TemplateOrRuleReference>] :associated_template_and_rule_list
    #   The templates and rules to associate with the policy. For AWS WAF
    #   policies, specify 1 to 100 templates or rules, of which at most 2 can
    #   be templates. For AWS Shield Advanced policies, this list must be
    #   empty.
    #
    # @option params [required, String] :firewall_type
    #   The firewall type associated with the resource.
    #
    # @option params [required, Types::PolicyConfiguration] :policy_configuration
    #   The configuration settings that control the policy's behavior,
    #   including remediation and firewall-type-specific settings.
    #
    # @option params [Boolean] :is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as a
    #   draft (`DRAFT`). Default: `true`.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the resource when it is created.
    #
    # @return [Types::CreatePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyOutput#policy_id #policy_id} => String
    #   * {Types::CreatePolicyOutput#policy_arn #policy_arn} => String
    #   * {Types::CreatePolicyOutput#policy_name #policy_name} => String
    #   * {Types::CreatePolicyOutput#policy_description #policy_description} => String
    #   * {Types::CreatePolicyOutput#status #status} => String
    #   * {Types::CreatePolicyOutput#priority #priority} => Integer
    #   * {Types::CreatePolicyOutput#associated_template_and_rule_list #associated_template_and_rule_list} => Array&lt;Types::AssociatedTemplateOrRule&gt;
    #   * {Types::CreatePolicyOutput#version #version} => String
    #   * {Types::CreatePolicyOutput#update_token #update_token} => String
    #   * {Types::CreatePolicyOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::CreatePolicyOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::CreatePolicyOutput#firewall_type #firewall_type} => String
    #   * {Types::CreatePolicyOutput#policy_configuration #policy_configuration} => Types::PolicyConfiguration
    #   * {Types::CreatePolicyOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Create a WAF policy
    #
    #   # Creates a new WAF policy in draft state with a template association.
    #
    #   resp = client.create_policy({
    #     associated_template_and_rule_list: [
    #       {
    #         template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #       }, 
    #     ], 
    #     client_token: "550e8400-e29b-41d4-a716-446655440002", 
    #     firewall_type: "WAF", 
    #     is_published: false, 
    #     policy_configuration: {
    #       remediation_enabled: false, 
    #       resources_clean_up: false, 
    #       waf_config: {
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE", 
    #         existing_customer_web_acl_resolution: "NO_REMEDIATION", 
    #       }, 
    #     }, 
    #     policy_description: "WAF policy for web application protection", 
    #     policy_name: "web-app-waf-policy", 
    #     priority: 1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "1", 
    #     associated_template_and_rule_list: [
    #       {
    #         template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #       }, 
    #     ], 
    #     firewall_type: "WAF", 
    #     has_published_version: false, 
    #     is_snapshot: false, 
    #     policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #     policy_configuration: {
    #       remediation_enabled: false, 
    #       resources_clean_up: false, 
    #       waf_config: {
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE", 
    #         existing_customer_web_acl_resolution: "NO_REMEDIATION", 
    #       }, 
    #     }, 
    #     policy_description: "WAF policy for web application protection", 
    #     policy_id: "xyz789", 
    #     policy_name: "web-app-waf-policy", 
    #     priority: 1, 
    #     status: "DRAFT", 
    #     update_token: "e3f4a5b6-6c7d-4e8f-9a0b-0c1d2e3f4a5b", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy({
    #     client_token: "IdempotencyToken",
    #     policy_name: "PolicyName", # required
    #     policy_description: "Description",
    #     priority: 1, # required
    #     associated_template_and_rule_list: [
    #       {
    #         template_identifier: "TemplateIdentifier",
    #         rule_identifier: "RuleIdentifier",
    #       },
    #     ],
    #     firewall_type: "WAF", # required, accepts WAF, SHIELD_ADVANCED
    #     policy_configuration: { # required
    #       remediation_enabled: false, # required
    #       resources_clean_up: false, # required
    #       waf_config: {
    #         existing_customer_web_acl_resolution: "RETROFIT", # required, accepts RETROFIT, OVERRIDE_ASSOCIATION, NO_REMEDIATION
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE", # required, accepts MERGE_WHERE_APPLICABLE
    #       },
    #     },
    #     is_published: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.policy_arn #=> String
    #   resp.policy_name #=> String
    #   resp.policy_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.priority #=> Integer
    #   resp.associated_template_and_rule_list #=> Array
    #   resp.associated_template_and_rule_list[0].template_arn #=> String
    #   resp.associated_template_and_rule_list[0].rule_arn #=> String
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.firewall_type #=> String, one of "WAF", "SHIELD_ADVANCED"
    #   resp.policy_configuration.remediation_enabled #=> Boolean
    #   resp.policy_configuration.resources_clean_up #=> Boolean
    #   resp.policy_configuration.waf_config.existing_customer_web_acl_resolution #=> String, one of "RETROFIT", "OVERRIDE_ASSOCIATION", "NO_REMEDIATION"
    #   resp.policy_configuration.waf_config.conflict_resolution #=> String, one of "MERGE_WHERE_APPLICABLE"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreatePolicy AWS API Documentation
    #
    # @overload create_policy(params = {})
    # @param [Hash] params ({})
    def create_policy(params = {}, options = {})
      req = build_request(:create_policy, params)
      req.send_request(options)
    end

    # Creates a snapshot of the current published version of the specified
    # policy.
    #
    # @option params [required, String] :policy_identifier
    #   The identifier of the policy. This is the policy's Amazon Resource
    #   Name (ARN).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the snapshot when it is created.
    #
    # @return [Types::CreatePolicySnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicySnapshotOutput#policy_id #policy_id} => String
    #   * {Types::CreatePolicySnapshotOutput#policy_arn #policy_arn} => String
    #   * {Types::CreatePolicySnapshotOutput#policy_name #policy_name} => String
    #   * {Types::CreatePolicySnapshotOutput#policy_description #policy_description} => String
    #   * {Types::CreatePolicySnapshotOutput#status #status} => String
    #   * {Types::CreatePolicySnapshotOutput#priority #priority} => Integer
    #   * {Types::CreatePolicySnapshotOutput#associated_template_and_rule_list #associated_template_and_rule_list} => Array&lt;Types::AssociatedTemplateOrRule&gt;
    #   * {Types::CreatePolicySnapshotOutput#version #version} => String
    #   * {Types::CreatePolicySnapshotOutput#update_token #update_token} => String
    #   * {Types::CreatePolicySnapshotOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::CreatePolicySnapshotOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::CreatePolicySnapshotOutput#firewall_type #firewall_type} => String
    #   * {Types::CreatePolicySnapshotOutput#policy_configuration #policy_configuration} => Types::PolicyConfiguration
    #   * {Types::CreatePolicySnapshotOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Create a policy snapshot
    #
    #   # Creates an immutable snapshot of the current published version of a policy. The snapshot is addressable by a
    #   # version-qualified ARN.
    #
    #   resp = client.create_policy_snapshot({
    #     client_token: "550e8400-e29b-41d4-a716-446655440013", 
    #     policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "2", 
    #     associated_template_and_rule_list: [
    #       {
    #         template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #       }, 
    #     ], 
    #     firewall_type: "WAF", 
    #     is_snapshot: true, 
    #     policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789:2", 
    #     policy_configuration: {
    #       remediation_enabled: true, 
    #       resources_clean_up: false, 
    #       waf_config: {
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE", 
    #         existing_customer_web_acl_resolution: "NO_REMEDIATION", 
    #       }, 
    #     }, 
    #     policy_id: "xyz789", 
    #     policy_name: "web-app-waf-policy", 
    #     priority: 2, 
    #     status: "ACTIVE", 
    #     updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_snapshot({
    #     policy_identifier: "PolicyIdentifier", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.policy_arn #=> String
    #   resp.policy_name #=> String
    #   resp.policy_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.priority #=> Integer
    #   resp.associated_template_and_rule_list #=> Array
    #   resp.associated_template_and_rule_list[0].template_arn #=> String
    #   resp.associated_template_and_rule_list[0].rule_arn #=> String
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.firewall_type #=> String, one of "WAF", "SHIELD_ADVANCED"
    #   resp.policy_configuration.remediation_enabled #=> Boolean
    #   resp.policy_configuration.resources_clean_up #=> Boolean
    #   resp.policy_configuration.waf_config.existing_customer_web_acl_resolution #=> String, one of "RETROFIT", "OVERRIDE_ASSOCIATION", "NO_REMEDIATION"
    #   resp.policy_configuration.waf_config.conflict_resolution #=> String, one of "MERGE_WHERE_APPLICABLE"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreatePolicySnapshot AWS API Documentation
    #
    # @overload create_policy_snapshot(params = {})
    # @param [Hash] params ({})
    def create_policy_snapshot(params = {}, options = {})
      req = build_request(:create_policy_snapshot, params)
      req.send_request(options)
    end

    # Creates a rule. A rule defines a network security configuration to
    # enforce, such as an AWS WAF rule group or configuration data. Use
    # `isPublished` to create the rule in published (`ACTIVE`) or draft
    # (`DRAFT`) state.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :rule_name
    #   The name of the rule.
    #
    # @option params [required, String] :firewall_type
    #   The firewall type associated with the resource.
    #
    # @option params [required, String] :rule_type
    #   The type of the rule. `CONFIGURATION` rules contain firewall settings,
    #   and `INSPECTION` rules contain rule groups.
    #
    # @option params [String] :rule_description
    #   A description of the rule.
    #
    # @option params [required, Hash,Array,String,Numeric,Boolean] :configuration
    #   The firewall configuration for the rule, as a JSON document. The
    #   structure depends on the rule's firewall type and rule type. For an
    #   AWS WAF `INSPECTION` rule, provide an AWS WAF rule group. For an AWS
    #   WAF `CONFIGURATION` rule, provide a single web ACL setting, such as
    #   `DefaultAction` or `VisibilityConfig`; use `wafConfigDataType` to
    #   declare which setting the document contains. For the schema of each
    #   setting and complete examples, see [Writing rule configurations][1] in
    #   the *AWS Network Security Manager Developer Guide*.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html
    #
    # @option params [Boolean] :is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as a
    #   draft (`DRAFT`). Default: `true`.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the resource when it is created.
    #
    # @return [Types::CreateRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleOutput#rule_id #rule_id} => String
    #   * {Types::CreateRuleOutput#rule_arn #rule_arn} => String
    #   * {Types::CreateRuleOutput#rule_name #rule_name} => String
    #   * {Types::CreateRuleOutput#firewall_type #firewall_type} => String
    #   * {Types::CreateRuleOutput#rule_type #rule_type} => String
    #   * {Types::CreateRuleOutput#rule_description #rule_description} => String
    #   * {Types::CreateRuleOutput#configuration #configuration} => Hash,Array,String,Numeric,Boolean
    #   * {Types::CreateRuleOutput#status #status} => String
    #   * {Types::CreateRuleOutput#version #version} => String
    #   * {Types::CreateRuleOutput#update_token #update_token} => String
    #   * {Types::CreateRuleOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::CreateRuleOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::CreateRuleOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Create a WAF rule
    #
    #   # Creates a new WAF inspection rule in draft state.
    #
    #   resp = client.create_rule({
    #     client_token: "550e8400-e29b-41d4-a716-446655440000", 
    #     configuration: {
    #     }, 
    #     firewall_type: "WAF", 
    #     is_published: false, 
    #     rule_description: "Blocks requests from known malicious IP addresses", 
    #     rule_name: "block-known-bad-ips", 
    #     rule_type: "INSPECTION", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "1", 
    #     configuration: {
    #     }, 
    #     firewall_type: "WAF", 
    #     has_published_version: false, 
    #     is_snapshot: false, 
    #     rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #     rule_description: "Blocks requests from known malicious IP addresses", 
    #     rule_id: "abc123", 
    #     rule_name: "block-known-bad-ips", 
    #     rule_type: "INSPECTION", 
    #     status: "DRAFT", 
    #     update_token: "c1d2e3f4-4a5b-4c6d-9e7f-8a9b0c1d2e3f", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule({
    #     client_token: "IdempotencyToken",
    #     rule_name: "RuleName", # required
    #     firewall_type: "WAF", # required, accepts WAF
    #     rule_type: "CONFIGURATION", # required, accepts CONFIGURATION, INSPECTION
    #     rule_description: "Description",
    #     configuration: { # required
    #     },
    #     is_published: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_id #=> String
    #   resp.rule_arn #=> String
    #   resp.rule_name #=> String
    #   resp.firewall_type #=> String, one of "WAF"
    #   resp.rule_type #=> String, one of "CONFIGURATION", "INSPECTION"
    #   resp.rule_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateRule AWS API Documentation
    #
    # @overload create_rule(params = {})
    # @param [Hash] params ({})
    def create_rule(params = {}, options = {})
      req = build_request(:create_rule, params)
      req.send_request(options)
    end

    # Creates a snapshot of the current published version of the specified
    # rule. A snapshot is an immutable, versioned copy that other resources
    # can reference.
    #
    # @option params [required, String] :rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the snapshot when it is created.
    #
    # @return [Types::CreateRuleSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleSnapshotOutput#rule_id #rule_id} => String
    #   * {Types::CreateRuleSnapshotOutput#rule_arn #rule_arn} => String
    #   * {Types::CreateRuleSnapshotOutput#rule_name #rule_name} => String
    #   * {Types::CreateRuleSnapshotOutput#firewall_type #firewall_type} => String
    #   * {Types::CreateRuleSnapshotOutput#rule_type #rule_type} => String
    #   * {Types::CreateRuleSnapshotOutput#rule_description #rule_description} => String
    #   * {Types::CreateRuleSnapshotOutput#configuration #configuration} => Hash,Array,String,Numeric,Boolean
    #   * {Types::CreateRuleSnapshotOutput#status #status} => String
    #   * {Types::CreateRuleSnapshotOutput#version #version} => String
    #   * {Types::CreateRuleSnapshotOutput#update_token #update_token} => String
    #   * {Types::CreateRuleSnapshotOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::CreateRuleSnapshotOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::CreateRuleSnapshotOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Create a rule snapshot
    #
    #   # Creates an immutable snapshot of the current published version of a rule. The snapshot is addressable by a
    #   # version-qualified ARN.
    #
    #   resp = client.create_rule_snapshot({
    #     client_token: "550e8400-e29b-41d4-a716-446655440011", 
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "2", 
    #     configuration: {
    #     }, 
    #     firewall_type: "WAF", 
    #     is_snapshot: true, 
    #     rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123:2", 
    #     rule_id: "abc123", 
    #     rule_name: "block-known-bad-ips", 
    #     rule_type: "INSPECTION", 
    #     status: "ACTIVE", 
    #     updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule_snapshot({
    #     rule_identifier: "RuleIdentifier", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_id #=> String
    #   resp.rule_arn #=> String
    #   resp.rule_name #=> String
    #   resp.firewall_type #=> String, one of "WAF"
    #   resp.rule_type #=> String, one of "CONFIGURATION", "INSPECTION"
    #   resp.rule_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateRuleSnapshot AWS API Documentation
    #
    # @overload create_rule_snapshot(params = {})
    # @param [Hash] params ({})
    def create_rule_snapshot(params = {}, options = {})
      req = build_request(:create_rule_snapshot, params)
      req.send_request(options)
    end

    # Creates a scope. A scope selects the accounts and resources that a
    # deployment applies to. Use `isPublished` to create the scope in
    # published (`ACTIVE`) or draft (`DRAFT`) state.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :scope_name
    #   The name of the scope.
    #
    # @option params [String] :scope_description
    #   A description of the scope.
    #
    # @option params [required, Types::ScopeConfiguration] :scope_configuration
    #   The configuration that defines which accounts and resources are in
    #   scope.
    #
    # @option params [Boolean] :is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as a
    #   draft (`DRAFT`). Default: `true`.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the resource when it is created.
    #
    # @return [Types::CreateScopeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScopeOutput#scope_id #scope_id} => String
    #   * {Types::CreateScopeOutput#scope_arn #scope_arn} => String
    #   * {Types::CreateScopeOutput#scope_name #scope_name} => String
    #   * {Types::CreateScopeOutput#scope_description #scope_description} => String
    #   * {Types::CreateScopeOutput#scope_configuration #scope_configuration} => Types::ScopeConfiguration
    #   * {Types::CreateScopeOutput#status #status} => String
    #   * {Types::CreateScopeOutput#version #version} => String
    #   * {Types::CreateScopeOutput#update_token #update_token} => String
    #   * {Types::CreateScopeOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::CreateScopeOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::CreateScopeOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Create a scope
    #
    #   # Creates a new scope in published (ACTIVE) state.
    #
    #   resp = client.create_scope({
    #     client_token: "550e8400-e29b-41d4-a716-446655440001", 
    #     is_published: true, 
    #     scope_configuration: {
    #       account_filter: {
    #         include_all: {
    #         }, 
    #       }, 
    #       resource_scopes: {
    #       }, 
    #     }, 
    #     scope_description: "Scope covering all production web application resources", 
    #     scope_name: "production-web-apps", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "1", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #     scope_configuration: {
    #       account_filter: {
    #         include_all: {
    #         }, 
    #       }, 
    #       resource_scopes: {
    #       }, 
    #     }, 
    #     scope_description: "Scope covering all production web application resources", 
    #     scope_id: "abc123", 
    #     scope_name: "production-web-apps", 
    #     status: "ACTIVE", 
    #     update_token: "b0c4d1e2-3f4a-4b5c-8d6e-7f8a9b0c1d2e", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scope({
    #     client_token: "IdempotencyToken",
    #     scope_name: "ScopeName", # required
    #     scope_description: "Description",
    #     scope_configuration: { # required
    #       account_filter: {
    #         include_all: {
    #         },
    #         include: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"],
    #         },
    #         exclude: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"],
    #         },
    #       },
    #       resource_scopes: { # required
    #         "AWS::ApiGateway::Stage" => {
    #           include_all: false,
    #           include: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               criteria: {
    #                 tags: {
    #                   "String" => "String",
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing", # accepts internet-facing, internal
    #                   ip_address_type: "ipv4", # accepts ipv4, dualstack, dualstack-without-public-ipv4
    #                 },
    #               },
    #               and: [
    #                 {
    #                   # recursive ResourceLogicalExpression
    #                 },
    #               ],
    #               or: [
    #                 {
    #                   # recursive ResourceLogicalExpression
    #                 },
    #               ],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               },
    #             },
    #           },
    #           exclude: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               criteria: {
    #                 tags: {
    #                   "String" => "String",
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing", # accepts internet-facing, internal
    #                   ip_address_type: "ipv4", # accepts ipv4, dualstack, dualstack-without-public-ipv4
    #                 },
    #               },
    #               and: [
    #                 {
    #                   # recursive ResourceLogicalExpression
    #                 },
    #               ],
    #               or: [
    #                 {
    #                   # recursive ResourceLogicalExpression
    #                 },
    #               ],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               },
    #             },
    #           },
    #         },
    #       },
    #     },
    #     is_published: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scope_id #=> String
    #   resp.scope_arn #=> String
    #   resp.scope_name #=> String
    #   resp.scope_description #=> String
    #   resp.scope_configuration.account_filter.include.account_ids #=> Array
    #   resp.scope_configuration.account_filter.include.account_ids[0] #=> String
    #   resp.scope_configuration.account_filter.include.organizational_units #=> Array
    #   resp.scope_configuration.account_filter.include.organizational_units[0] #=> String
    #   resp.scope_configuration.account_filter.exclude.account_ids #=> Array
    #   resp.scope_configuration.account_filter.exclude.account_ids[0] #=> String
    #   resp.scope_configuration.account_filter.exclude.organizational_units #=> Array
    #   resp.scope_configuration.account_filter.exclude.organizational_units[0] #=> String
    #   resp.scope_configuration.resource_scopes #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include_all #=> Boolean
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.explicit_arns #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.explicit_arns[0] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.tags #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.tags["String"] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.alb_config.scheme #=> String, one of "internet-facing", "internal"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.alb_config.ip_address_type #=> String, one of "ipv4", "dualstack", "dualstack-without-public-ipv4"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.and #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.and[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.or #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.or[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.not #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.explicit_arns #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.explicit_arns[0] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.tags #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.tags["String"] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.alb_config.scheme #=> String, one of "internet-facing", "internal"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.alb_config.ip_address_type #=> String, one of "ipv4", "dualstack", "dualstack-without-public-ipv4"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.and #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.and[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.or #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.or[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.not #=> Types::ResourceLogicalExpression
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateScope AWS API Documentation
    #
    # @overload create_scope(params = {})
    # @param [Hash] params ({})
    def create_scope(params = {}, options = {})
      req = build_request(:create_scope, params)
      req.send_request(options)
    end

    # Creates a snapshot of the current published version of the specified
    # scope.
    #
    # @option params [required, String] :scope_identifier
    #   The identifier of the scope. This is the scope's Amazon Resource Name
    #   (ARN).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the snapshot when it is created.
    #
    # @return [Types::CreateScopeSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScopeSnapshotOutput#scope_id #scope_id} => String
    #   * {Types::CreateScopeSnapshotOutput#scope_arn #scope_arn} => String
    #   * {Types::CreateScopeSnapshotOutput#scope_name #scope_name} => String
    #   * {Types::CreateScopeSnapshotOutput#scope_description #scope_description} => String
    #   * {Types::CreateScopeSnapshotOutput#scope_configuration #scope_configuration} => Types::ScopeConfiguration
    #   * {Types::CreateScopeSnapshotOutput#status #status} => String
    #   * {Types::CreateScopeSnapshotOutput#version #version} => String
    #   * {Types::CreateScopeSnapshotOutput#update_token #update_token} => String
    #   * {Types::CreateScopeSnapshotOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::CreateScopeSnapshotOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::CreateScopeSnapshotOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Create a scope snapshot
    #
    #   # Creates an immutable snapshot of the current published version of a scope. The snapshot is addressable by a
    #   # version-qualified ARN.
    #
    #   resp = client.create_scope_snapshot({
    #     client_token: "550e8400-e29b-41d4-a716-446655440010", 
    #     scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "2", 
    #     is_snapshot: true, 
    #     scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123:2", 
    #     scope_configuration: {
    #       account_filter: {
    #         include_all: {
    #         }, 
    #       }, 
    #       resource_scopes: {
    #       }, 
    #     }, 
    #     scope_id: "abc123", 
    #     scope_name: "production-web-apps", 
    #     status: "ACTIVE", 
    #     updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scope_snapshot({
    #     scope_identifier: "ScopeIdentifier", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scope_id #=> String
    #   resp.scope_arn #=> String
    #   resp.scope_name #=> String
    #   resp.scope_description #=> String
    #   resp.scope_configuration.account_filter.include.account_ids #=> Array
    #   resp.scope_configuration.account_filter.include.account_ids[0] #=> String
    #   resp.scope_configuration.account_filter.include.organizational_units #=> Array
    #   resp.scope_configuration.account_filter.include.organizational_units[0] #=> String
    #   resp.scope_configuration.account_filter.exclude.account_ids #=> Array
    #   resp.scope_configuration.account_filter.exclude.account_ids[0] #=> String
    #   resp.scope_configuration.account_filter.exclude.organizational_units #=> Array
    #   resp.scope_configuration.account_filter.exclude.organizational_units[0] #=> String
    #   resp.scope_configuration.resource_scopes #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include_all #=> Boolean
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.explicit_arns #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.explicit_arns[0] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.tags #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.tags["String"] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.alb_config.scheme #=> String, one of "internet-facing", "internal"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.alb_config.ip_address_type #=> String, one of "ipv4", "dualstack", "dualstack-without-public-ipv4"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.and #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.and[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.or #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.or[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.not #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.explicit_arns #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.explicit_arns[0] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.tags #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.tags["String"] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.alb_config.scheme #=> String, one of "internet-facing", "internal"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.alb_config.ip_address_type #=> String, one of "ipv4", "dualstack", "dualstack-without-public-ipv4"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.and #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.and[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.or #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.or[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.not #=> Types::ResourceLogicalExpression
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateScopeSnapshot AWS API Documentation
    #
    # @overload create_scope_snapshot(params = {})
    # @param [Hash] params ({})
    def create_scope_snapshot(params = {}, options = {})
      req = build_request(:create_scope_snapshot, params)
      req.send_request(options)
    end

    # Creates a template. A template groups one or more rules to simplify
    # reuse across policies. You can also associate rules with a policy
    # directly, without a template. Use `isPublished` to create the template
    # in published (`ACTIVE`) or draft (`DRAFT`) state.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :template_name
    #   The name of the template.
    #
    # @option params [String] :template_description
    #   A description of the template.
    #
    # @option params [required, Array<Types::RuleReference>] :associated_rule_list
    #   The rules associated with the template.
    #
    # @option params [required, String] :firewall_type
    #   The firewall type associated with the resource.
    #
    # @option params [Boolean] :is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as a
    #   draft (`DRAFT`). Default: `true`.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the resource when it is created.
    #
    # @return [Types::CreateTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateOutput#template_id #template_id} => String
    #   * {Types::CreateTemplateOutput#template_arn #template_arn} => String
    #   * {Types::CreateTemplateOutput#template_name #template_name} => String
    #   * {Types::CreateTemplateOutput#template_description #template_description} => String
    #   * {Types::CreateTemplateOutput#status #status} => String
    #   * {Types::CreateTemplateOutput#version #version} => String
    #   * {Types::CreateTemplateOutput#associated_rule_list #associated_rule_list} => Array&lt;Types::AssociatedRule&gt;
    #   * {Types::CreateTemplateOutput#update_token #update_token} => String
    #   * {Types::CreateTemplateOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::CreateTemplateOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::CreateTemplateOutput#firewall_type #firewall_type} => String
    #   * {Types::CreateTemplateOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Create a WAF template
    #
    #   # Creates a new WAF template in published (ACTIVE) state with an associated rule.
    #
    #   resp = client.create_template({
    #     associated_rule_list: [
    #       {
    #         rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #       }, 
    #     ], 
    #     client_token: "550e8400-e29b-41d4-a716-446655440004", 
    #     firewall_type: "WAF", 
    #     is_published: true, 
    #     template_description: "Standard WAF template with baseline rule groups", 
    #     template_name: "standard-waf-template", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "1", 
    #     associated_rule_list: [
    #       {
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #       }, 
    #     ], 
    #     firewall_type: "WAF", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     status: "ACTIVE", 
    #     template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #     template_description: "Standard WAF template with baseline rule groups", 
    #     template_id: "xyz789", 
    #     template_name: "standard-waf-template", 
    #     update_token: "d2e3f4a5-5b6c-4d7e-8f9a-9b0c1d2e3f4a", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template({
    #     client_token: "IdempotencyToken",
    #     template_name: "TemplateName", # required
    #     template_description: "Description",
    #     associated_rule_list: [ # required
    #       {
    #         rule_identifier: "RuleIdentifier", # required
    #       },
    #     ],
    #     firewall_type: "WAF", # required, accepts WAF
    #     is_published: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.template_arn #=> String
    #   resp.template_name #=> String
    #   resp.template_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.associated_rule_list #=> Array
    #   resp.associated_rule_list[0].rule_arn #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.firewall_type #=> String, one of "WAF"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateTemplate AWS API Documentation
    #
    # @overload create_template(params = {})
    # @param [Hash] params ({})
    def create_template(params = {}, options = {})
      req = build_request(:create_template, params)
      req.send_request(options)
    end

    # Creates a snapshot of the current published version of the specified
    # template.
    #
    # @option params [required, String] :template_identifier
    #   The identifier of the template. This is the template's Amazon
    #   Resource Name (ARN).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the snapshot when it is created.
    #
    # @return [Types::CreateTemplateSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateSnapshotOutput#template_id #template_id} => String
    #   * {Types::CreateTemplateSnapshotOutput#template_arn #template_arn} => String
    #   * {Types::CreateTemplateSnapshotOutput#template_name #template_name} => String
    #   * {Types::CreateTemplateSnapshotOutput#template_description #template_description} => String
    #   * {Types::CreateTemplateSnapshotOutput#status #status} => String
    #   * {Types::CreateTemplateSnapshotOutput#version #version} => String
    #   * {Types::CreateTemplateSnapshotOutput#associated_rule_list #associated_rule_list} => Array&lt;Types::AssociatedRule&gt;
    #   * {Types::CreateTemplateSnapshotOutput#update_token #update_token} => String
    #   * {Types::CreateTemplateSnapshotOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::CreateTemplateSnapshotOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::CreateTemplateSnapshotOutput#firewall_type #firewall_type} => String
    #   * {Types::CreateTemplateSnapshotOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Create a template snapshot
    #
    #   # Creates an immutable snapshot of the current published version of a template. The snapshot is addressable by a
    #   # version-qualified ARN.
    #
    #   resp = client.create_template_snapshot({
    #     client_token: "550e8400-e29b-41d4-a716-446655440012", 
    #     template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "2", 
    #     associated_rule_list: [
    #       {
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #       }, 
    #     ], 
    #     firewall_type: "WAF", 
    #     is_snapshot: true, 
    #     status: "ACTIVE", 
    #     template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789:2", 
    #     template_id: "xyz789", 
    #     template_name: "standard-waf-template", 
    #     updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template_snapshot({
    #     template_identifier: "TemplateIdentifier", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.template_arn #=> String
    #   resp.template_name #=> String
    #   resp.template_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.associated_rule_list #=> Array
    #   resp.associated_rule_list[0].rule_arn #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.firewall_type #=> String, one of "WAF"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateTemplateSnapshot AWS API Documentation
    #
    # @overload create_template_snapshot(params = {})
    # @param [Hash] params ({})
    def create_template_snapshot(params = {}, options = {})
      req = build_request(:create_template_snapshot, params)
      req.send_request(options)
    end

    # Removes the specified AWS Network Security Manager administrator
    # account.
    #
    # @option params [required, String] :account_id
    #   The AWS account ID of the administrator account to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Remove an administrator account
    #
    #   # Removes an account's Network Security Manager administrator designation.
    #
    #   resp = client.delete_admin_account({
    #     account_id: "234567890123", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_admin_account({
    #     account_id: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeleteAdminAccount AWS API Documentation
    #
    # @overload delete_admin_account(params = {})
    # @param [Hash] params ({})
    def delete_admin_account(params = {}, options = {})
      req = build_request(:delete_admin_account, params)
      req.send_request(options)
    end

    # Deletes the specified deployment.
    #
    # @option params [required, String] :deployment_identifier
    #   The identifier of the deployment. This is the deployment's Amazon
    #   Resource Name (ARN).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a deployment
    #
    #   # Deletes a deployment by its ARN. Deleting an active deployment stops enforcement and triggers cleanup of managed
    #   # firewall resources.
    #
    #   resp = client.delete_deployment({
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment({
    #     deployment_identifier: "DeploymentIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeleteDeployment AWS API Documentation
    #
    # @overload delete_deployment(params = {})
    # @param [Hash] params ({})
    def delete_deployment(params = {}, options = {})
      req = build_request(:delete_deployment, params)
      req.send_request(options)
    end

    # Deletes the specified policy.
    #
    # @option params [required, String] :policy_identifier
    #   The identifier of the policy. This is the policy's Amazon Resource
    #   Name (ARN).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a policy
    #
    #   # Deletes a policy by its ARN. The policy must not be associated with any deployment.
    #
    #   resp = client.delete_policy({
    #     policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     policy_identifier: "PolicyIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Deletes the specified rule.
    #
    # @option params [required, String] :rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a rule
    #
    #   # Deletes a rule by its ARN. The rule must not be associated with any template or policy.
    #
    #   resp = client.delete_rule({
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     rule_identifier: "RuleIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
      req.send_request(options)
    end

    # Deletes the specified scope.
    #
    # @option params [required, String] :scope_identifier
    #   The identifier of the scope. This is the scope's Amazon Resource Name
    #   (ARN).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a scope
    #
    #   # Deletes a scope by its ARN. The scope must not be associated with any deployment.
    #
    #   resp = client.delete_scope({
    #     scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scope({
    #     scope_identifier: "ScopeIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeleteScope AWS API Documentation
    #
    # @overload delete_scope(params = {})
    # @param [Hash] params ({})
    def delete_scope(params = {}, options = {})
      req = build_request(:delete_scope, params)
      req.send_request(options)
    end

    # Deletes the specified template.
    #
    # @option params [required, String] :template_identifier
    #   The identifier of the template. This is the template's Amazon
    #   Resource Name (ARN).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a template
    #
    #   # Deletes a template by its ARN. The template must not be associated with any policy.
    #
    #   resp = client.delete_template({
    #     template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template({
    #     template_identifier: "TemplateIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeleteTemplate AWS API Documentation
    #
    # @overload delete_template(params = {})
    # @param [Hash] params ({})
    def delete_template(params = {}, options = {})
      req = build_request(:delete_template, params)
      req.send_request(options)
    end

    # Generates a rule configuration from a natural-language description.
    # Provide a prompt along with the rule's firewall type and rule type.
    # The service returns a configuration that you can use when you create
    # or update a rule. If you also provide an existing configuration, the
    # service edits that configuration instead of generating a new one.
    #
    # @option params [required, String] :prompt
    #   A natural-language description of the configuration that you want to
    #   generate.
    #
    # @option params [required, String] :rule_firewall_type
    #   The firewall type of the rule.
    #
    # @option params [required, String] :rule_type
    #   The type of the rule. `CONFIGURATION` rules contain firewall settings,
    #   and `INSPECTION` rules contain rule groups.
    #
    # @option params [String] :waf_config_data_type
    #   For AWS WAF configuration rules, the specific AWS WAF configuration
    #   variant to generate. This is optional; if you omit it, the service
    #   selects the variant.
    #
    # @option params [String] :current_configuration
    #   An existing configuration to edit, as a JSON string. When you provide
    #   this value, the operation edits the configuration. When you omit it,
    #   the operation generates a new configuration.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::GenerateRuleConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateRuleConfigurationResponse#configuration #configuration} => String
    #   * {Types::GenerateRuleConfigurationResponse#description #description} => String
    #
    #
    # @example Example: Generate a rule configuration from a description
    #
    #   # Generates a firewall rule configuration from a natural language description. The response contains the generated
    #   # configuration as a JSON string, ready to use as the configuration of a rule.
    #
    #   resp = client.generate_rule_configuration({
    #     client_token: "550e8400-e29b-41d4-a716-446655440015", 
    #     prompt: "Create a rate limiting rule that blocks IP addresses sending more than 2000 requests in 5 minutes", 
    #     rule_firewall_type: "WAF", 
    #     rule_type: "INSPECTION", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration: "{\"name\":\"rate-limit-rule\",\"priority\":1,\"statement\":{\"rateBasedStatement\":{\"limit\":2000,\"evaluationWindowSec\":300,\"aggregateKeyType\":\"IP\"}},\"action\":{\"block\":{}}}", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_rule_configuration({
    #     prompt: "GenerateRuleConfigurationRequestPromptString", # required
    #     rule_firewall_type: "WAF", # required, accepts WAF
    #     rule_type: "CONFIGURATION", # required, accepts CONFIGURATION, INSPECTION
    #     waf_config_data_type: "DefaultAction", # accepts DefaultAction, VisibilityConfig, CaptchaConfig, ChallengeConfig, CustomResponseBodies, LoggingConfiguration, DataProtectionConfig, AssociationConfig, OnSourceDDoSProtectionConfig, TokenDomains
    #     current_configuration: "GenerateRuleConfigurationRequestCurrentConfigurationString",
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GenerateRuleConfiguration AWS API Documentation
    #
    # @overload generate_rule_configuration(params = {})
    # @param [Hash] params ({})
    def generate_rule_configuration(params = {}, options = {})
      req = build_request(:generate_rule_configuration, params)
      req.send_request(options)
    end

    # Retrieves the details of the specified AWS Network Security Manager
    # administrator account.
    #
    # @option params [required, String] :account_id
    #   The AWS account ID of the administrator account to retrieve.
    #
    # @return [Types::GetAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAdminAccountResponse#admin_account_details #admin_account_details} => Types::AdminAccountDetails
    #
    #
    # @example Example: Get an administrator account
    #
    #   # Retrieves the details and administrative scope of a Network Security Manager administrator account.
    #
    #   resp = client.get_admin_account({
    #     account_id: "234567890123", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     admin_account_details: {
    #       admin_account: "234567890123", 
    #       admin_scope: {
    #         firewall_type_scope: {
    #           all_firewall_types_enabled: false, 
    #           firewall_types: [
    #             "WAF", 
    #           ], 
    #         }, 
    #         scope_filter: {
    #           include_only: {
    #             organizational_units: [
    #               {
    #                 name: "Production", 
    #                 ou_id: "ou-abcd-12345678", 
    #               }, 
    #             ], 
    #           }, 
    #         }, 
    #       }, 
    #       priority: 2, 
    #       status: "ONBOARDED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_admin_account({
    #     account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.admin_account_details.admin_account #=> String
    #   resp.admin_account_details.priority #=> Integer
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.accounts #=> Array
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.accounts[0].account_id #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.accounts[0].name #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.accounts[0].email #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.organizational_units #=> Array
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.organizational_units[0].ou_id #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.organizational_units[0].name #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.accounts #=> Array
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.accounts[0].account_id #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.accounts[0].name #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.accounts[0].email #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.organizational_units #=> Array
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.organizational_units[0].ou_id #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.organizational_units[0].name #=> String
    #   resp.admin_account_details.admin_scope.firewall_type_scope.all_firewall_types_enabled #=> Boolean
    #   resp.admin_account_details.admin_scope.firewall_type_scope.firewall_types #=> Array
    #   resp.admin_account_details.admin_scope.firewall_type_scope.firewall_types[0] #=> String, one of "WAF", "SHIELD_ADVANCED"
    #   resp.admin_account_details.status #=> String, one of "ONBOARDED", "OFFBOARDED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetAdminAccount AWS API Documentation
    #
    # @overload get_admin_account(params = {})
    # @param [Hash] params ({})
    def get_admin_account(params = {}, options = {})
      req = build_request(:get_admin_account, params)
      req.send_request(options)
    end

    # Retrieves the details of the specified deployment, including coverage
    # information and any warnings.
    #
    # @option params [required, String] :deployment_identifier
    #   The identifier of the deployment. This is the deployment's Amazon
    #   Resource Name (ARN).
    #
    # @return [Types::GetDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentOutput#deployment_id #deployment_id} => String
    #   * {Types::GetDeploymentOutput#deployment_arn #deployment_arn} => String
    #   * {Types::GetDeploymentOutput#deployment_name #deployment_name} => String
    #   * {Types::GetDeploymentOutput#deployment_description #deployment_description} => String
    #   * {Types::GetDeploymentOutput#status #status} => String
    #   * {Types::GetDeploymentOutput#deployment_configuration #deployment_configuration} => Types::DeploymentConfiguration
    #   * {Types::GetDeploymentOutput#associated_policy_list #associated_policy_list} => Array&lt;Types::AssociatedPolicy&gt;
    #   * {Types::GetDeploymentOutput#associated_scope_list #associated_scope_list} => Array&lt;Types::AssociatedScope&gt;
    #   * {Types::GetDeploymentOutput#version #version} => String
    #   * {Types::GetDeploymentOutput#update_token #update_token} => String
    #   * {Types::GetDeploymentOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::GetDeploymentOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::GetDeploymentOutput#updated_at #updated_at} => Time
    #   * {Types::GetDeploymentOutput#deployment_coverage #deployment_coverage} => Array&lt;Types::DeploymentCoverageEntry&gt;
    #   * {Types::GetDeploymentOutput#warnings #warnings} => Array&lt;Types::DeploymentWarningEntry&gt;
    #
    #
    # @example Example: Get a deployment
    #
    #   # Retrieves the current published version of a deployment by its base ARN, including per-firewall-type coverage showing
    #   # which in-scope resource types each policy protects.
    #
    #   resp = client.get_deployment({
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "1", 
    #     associated_policy_list: [
    #       {
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #       }, 
    #     ], 
    #     associated_scope_list: [
    #       {
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #       }, 
    #     ], 
    #     deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456", 
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false, 
    #     }, 
    #     deployment_coverage: [
    #       {
    #         firewall_type: "WAF", 
    #         in_scope_resource_types: [
    #           "AWS::ElasticLoadBalancingV2::LoadBalancer::application", 
    #           "AWS::CloudFront::Distribution", 
    #         ], 
    #         policy_arns: [
    #           "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #         ], 
    #       }, 
    #     ], 
    #     deployment_description: "Production deployment for US East 1 region", 
    #     deployment_id: "def456", 
    #     deployment_name: "prod-us-east-1-deployment", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     status: "ACTIVE", 
    #     update_token: "f4a5b6c7-7d8e-4f9a-8b1c-1d2e3f4a5b6c", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment({
    #     deployment_identifier: "DeploymentIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_id #=> String
    #   resp.deployment_arn #=> String
    #   resp.deployment_name #=> String
    #   resp.deployment_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.deployment_configuration.enable_cross_account_visibility #=> Boolean
    #   resp.associated_policy_list #=> Array
    #   resp.associated_policy_list[0].policy_arn #=> String
    #   resp.associated_scope_list #=> Array
    #   resp.associated_scope_list[0].scope_arn #=> String
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.updated_at #=> Time
    #   resp.deployment_coverage #=> Array
    #   resp.deployment_coverage[0].firewall_type #=> String, one of "WAF", "SHIELD_ADVANCED"
    #   resp.deployment_coverage[0].policy_arns #=> Array
    #   resp.deployment_coverage[0].policy_arns[0] #=> String
    #   resp.deployment_coverage[0].in_scope_resource_types #=> Array
    #   resp.deployment_coverage[0].in_scope_resource_types[0] #=> String, one of "AWS::ApiGateway::Stage", "AWS::CloudFront::Distribution", "AWS::EC2::EIP", "AWS::ElasticLoadBalancingV2::LoadBalancer::application", "AWS::ElasticLoadBalancing::LoadBalancer"
    #   resp.warnings #=> Array
    #   resp.warnings[0].code #=> String
    #   resp.warnings[0].policy_arn #=> String
    #   resp.warnings[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetDeployment AWS API Documentation
    #
    # @overload get_deployment(params = {})
    # @param [Hash] params ({})
    def get_deployment(params = {}, options = {})
      req = build_request(:get_deployment, params)
      req.send_request(options)
    end

    # Retrieves the details of the specified policy.
    #
    # @option params [required, String] :policy_identifier
    #   The identifier of the policy. This is the policy's Amazon Resource
    #   Name (ARN).
    #
    # @return [Types::GetPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyOutput#policy_id #policy_id} => String
    #   * {Types::GetPolicyOutput#policy_arn #policy_arn} => String
    #   * {Types::GetPolicyOutput#policy_name #policy_name} => String
    #   * {Types::GetPolicyOutput#policy_description #policy_description} => String
    #   * {Types::GetPolicyOutput#status #status} => String
    #   * {Types::GetPolicyOutput#priority #priority} => Integer
    #   * {Types::GetPolicyOutput#associated_template_and_rule_list #associated_template_and_rule_list} => Array&lt;Types::AssociatedTemplateOrRule&gt;
    #   * {Types::GetPolicyOutput#version #version} => String
    #   * {Types::GetPolicyOutput#update_token #update_token} => String
    #   * {Types::GetPolicyOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::GetPolicyOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::GetPolicyOutput#firewall_type #firewall_type} => String
    #   * {Types::GetPolicyOutput#policy_configuration #policy_configuration} => Types::PolicyConfiguration
    #   * {Types::GetPolicyOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Get a policy
    #
    #   # Retrieves the current published version of a policy by its base ARN, including its associated templates and rules and
    #   # its enforcement configuration.
    #
    #   resp = client.get_policy({
    #     policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "1", 
    #     associated_template_and_rule_list: [
    #       {
    #         template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #       }, 
    #     ], 
    #     firewall_type: "WAF", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #     policy_configuration: {
    #       remediation_enabled: true, 
    #       resources_clean_up: false, 
    #       waf_config: {
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE", 
    #         existing_customer_web_acl_resolution: "NO_REMEDIATION", 
    #       }, 
    #     }, 
    #     policy_description: "WAF policy for web application protection", 
    #     policy_id: "xyz789", 
    #     policy_name: "web-app-waf-policy", 
    #     priority: 1, 
    #     status: "ACTIVE", 
    #     update_token: "e3f4a5b6-6c7d-4e8f-9a0b-0c1d2e3f4a5b", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     policy_identifier: "PolicyIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.policy_arn #=> String
    #   resp.policy_name #=> String
    #   resp.policy_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.priority #=> Integer
    #   resp.associated_template_and_rule_list #=> Array
    #   resp.associated_template_and_rule_list[0].template_arn #=> String
    #   resp.associated_template_and_rule_list[0].rule_arn #=> String
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.firewall_type #=> String, one of "WAF", "SHIELD_ADVANCED"
    #   resp.policy_configuration.remediation_enabled #=> Boolean
    #   resp.policy_configuration.resources_clean_up #=> Boolean
    #   resp.policy_configuration.waf_config.existing_customer_web_acl_resolution #=> String, one of "RETROFIT", "OVERRIDE_ASSOCIATION", "NO_REMEDIATION"
    #   resp.policy_configuration.waf_config.conflict_resolution #=> String, one of "MERGE_WHERE_APPLICABLE"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Retrieves the details of the specified rule.
    #
    # @option params [required, String] :rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #
    # @return [Types::GetRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuleOutput#rule_id #rule_id} => String
    #   * {Types::GetRuleOutput#rule_arn #rule_arn} => String
    #   * {Types::GetRuleOutput#rule_name #rule_name} => String
    #   * {Types::GetRuleOutput#firewall_type #firewall_type} => String
    #   * {Types::GetRuleOutput#rule_type #rule_type} => String
    #   * {Types::GetRuleOutput#rule_description #rule_description} => String
    #   * {Types::GetRuleOutput#configuration #configuration} => Hash,Array,String,Numeric,Boolean
    #   * {Types::GetRuleOutput#status #status} => String
    #   * {Types::GetRuleOutput#version #version} => String
    #   * {Types::GetRuleOutput#update_token #update_token} => String
    #   * {Types::GetRuleOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::GetRuleOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::GetRuleOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Get a rule
    #
    #   # Retrieves the current published version of a rule by its base ARN.
    #
    #   resp = client.get_rule({
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "1", 
    #     configuration: {
    #     }, 
    #     firewall_type: "WAF", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #     rule_description: "Blocks requests from known malicious IP addresses", 
    #     rule_id: "abc123", 
    #     rule_name: "block-known-bad-ips", 
    #     rule_type: "INSPECTION", 
    #     status: "ACTIVE", 
    #     update_token: "c1d2e3f4-4a5b-4c6d-9e7f-8a9b0c1d2e3f", 
    #   }
    #
    # @example Example: Get a specific version of a rule
    #
    #   # Retrieves a specific immutable version (snapshot) of a rule using a version-qualified ARN. The response has isSnapshot
    #   # set to true. Omitting the version qualifier returns the current published rule instead.
    #
    #   resp = client.get_rule({
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123:3", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "3", 
    #     configuration: {
    #     }, 
    #     firewall_type: "WAF", 
    #     is_snapshot: true, 
    #     rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123:3", 
    #     rule_description: "Blocks requests from known malicious IP addresses", 
    #     rule_id: "abc123", 
    #     rule_name: "block-known-bad-ips", 
    #     rule_type: "INSPECTION", 
    #     status: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule({
    #     rule_identifier: "RuleIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_id #=> String
    #   resp.rule_arn #=> String
    #   resp.rule_name #=> String
    #   resp.firewall_type #=> String, one of "WAF"
    #   resp.rule_type #=> String, one of "CONFIGURATION", "INSPECTION"
    #   resp.rule_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetRule AWS API Documentation
    #
    # @overload get_rule(params = {})
    # @param [Hash] params ({})
    def get_rule(params = {}, options = {})
      req = build_request(:get_rule, params)
      req.send_request(options)
    end

    # Retrieves the details of the specified scope.
    #
    # @option params [required, String] :scope_identifier
    #   The identifier of the scope. This is the scope's Amazon Resource Name
    #   (ARN).
    #
    # @return [Types::GetScopeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetScopeOutput#scope_id #scope_id} => String
    #   * {Types::GetScopeOutput#scope_arn #scope_arn} => String
    #   * {Types::GetScopeOutput#scope_name #scope_name} => String
    #   * {Types::GetScopeOutput#scope_description #scope_description} => String
    #   * {Types::GetScopeOutput#scope_configuration #scope_configuration} => Types::ScopeConfiguration
    #   * {Types::GetScopeOutput#status #status} => String
    #   * {Types::GetScopeOutput#version #version} => String
    #   * {Types::GetScopeOutput#update_token #update_token} => String
    #   * {Types::GetScopeOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::GetScopeOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::GetScopeOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Get a scope
    #
    #   # Retrieves the current published version of a scope by its base ARN.
    #
    #   resp = client.get_scope({
    #     scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "1", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #     scope_configuration: {
    #       account_filter: {
    #         include_all: {
    #         }, 
    #       }, 
    #       resource_scopes: {
    #       }, 
    #     }, 
    #     scope_description: "Scope covering all production web application resources", 
    #     scope_id: "abc123", 
    #     scope_name: "production-web-apps", 
    #     status: "ACTIVE", 
    #     update_token: "b0c4d1e2-3f4a-4b5c-8d6e-7f8a9b0c1d2e", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_scope({
    #     scope_identifier: "ScopeIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scope_id #=> String
    #   resp.scope_arn #=> String
    #   resp.scope_name #=> String
    #   resp.scope_description #=> String
    #   resp.scope_configuration.account_filter.include.account_ids #=> Array
    #   resp.scope_configuration.account_filter.include.account_ids[0] #=> String
    #   resp.scope_configuration.account_filter.include.organizational_units #=> Array
    #   resp.scope_configuration.account_filter.include.organizational_units[0] #=> String
    #   resp.scope_configuration.account_filter.exclude.account_ids #=> Array
    #   resp.scope_configuration.account_filter.exclude.account_ids[0] #=> String
    #   resp.scope_configuration.account_filter.exclude.organizational_units #=> Array
    #   resp.scope_configuration.account_filter.exclude.organizational_units[0] #=> String
    #   resp.scope_configuration.resource_scopes #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include_all #=> Boolean
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.explicit_arns #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.explicit_arns[0] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.tags #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.tags["String"] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.alb_config.scheme #=> String, one of "internet-facing", "internal"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.alb_config.ip_address_type #=> String, one of "ipv4", "dualstack", "dualstack-without-public-ipv4"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.and #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.and[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.or #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.or[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.not #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.explicit_arns #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.explicit_arns[0] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.tags #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.tags["String"] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.alb_config.scheme #=> String, one of "internet-facing", "internal"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.alb_config.ip_address_type #=> String, one of "ipv4", "dualstack", "dualstack-without-public-ipv4"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.and #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.and[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.or #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.or[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.not #=> Types::ResourceLogicalExpression
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetScope AWS API Documentation
    #
    # @overload get_scope(params = {})
    # @param [Hash] params ({})
    def get_scope(params = {}, options = {})
      req = build_request(:get_scope, params)
      req.send_request(options)
    end

    # Retrieves the details of the specified template.
    #
    # @option params [required, String] :template_identifier
    #   The identifier of the template. This is the template's Amazon
    #   Resource Name (ARN).
    #
    # @return [Types::GetTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateOutput#template_id #template_id} => String
    #   * {Types::GetTemplateOutput#template_arn #template_arn} => String
    #   * {Types::GetTemplateOutput#template_name #template_name} => String
    #   * {Types::GetTemplateOutput#template_description #template_description} => String
    #   * {Types::GetTemplateOutput#status #status} => String
    #   * {Types::GetTemplateOutput#version #version} => String
    #   * {Types::GetTemplateOutput#associated_rule_list #associated_rule_list} => Array&lt;Types::AssociatedRule&gt;
    #   * {Types::GetTemplateOutput#update_token #update_token} => String
    #   * {Types::GetTemplateOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::GetTemplateOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::GetTemplateOutput#firewall_type #firewall_type} => String
    #   * {Types::GetTemplateOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Get a template
    #
    #   # Retrieves the current published version of a template by its base ARN, including its associated rules.
    #
    #   resp = client.get_template({
    #     template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "1", 
    #     associated_rule_list: [
    #       {
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #       }, 
    #     ], 
    #     firewall_type: "WAF", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     status: "ACTIVE", 
    #     template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #     template_description: "Standard WAF template with baseline rule groups", 
    #     template_id: "xyz789", 
    #     template_name: "standard-waf-template", 
    #     update_token: "d2e3f4a5-5b6c-4d7e-8f9a-9b0c1d2e3f4a", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template({
    #     template_identifier: "TemplateIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.template_arn #=> String
    #   resp.template_name #=> String
    #   resp.template_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.associated_rule_list #=> Array
    #   resp.associated_rule_list[0].rule_arn #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.firewall_type #=> String, one of "WAF"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetTemplate AWS API Documentation
    #
    # @overload get_template(params = {})
    # @param [Hash] params ({})
    def get_template(params = {}, options = {})
      req = build_request(:get_template, params)
      req.send_request(options)
    end

    # Lists the AWS Network Security Manager administrator accounts in the
    # organization.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @return [Types::ListAdminAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAdminAccountsResponse#next_token #next_token} => String
    #   * {Types::ListAdminAccountsResponse#admin_accounts #admin_accounts} => Array&lt;Types::AdminAccountSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List administrator accounts
    #
    #   # Lists the Network Security Manager administrator accounts for the organization.
    #
    #   resp = client.list_admin_accounts({
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     admin_accounts: [
    #       {
    #         account_id: "234567890123", 
    #         priority: 2, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_admin_accounts({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.admin_accounts #=> Array
    #   resp.admin_accounts[0].account_id #=> String
    #   resp.admin_accounts[0].priority #=> Integer
    #   resp.admin_accounts[0].name #=> String
    #   resp.admin_accounts[0].email #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListAdminAccounts AWS API Documentation
    #
    # @overload list_admin_accounts(params = {})
    # @param [Hash] params ({})
    def list_admin_accounts(params = {}, options = {})
      req = build_request(:list_admin_accounts, params)
      req.send_request(options)
    end

    # Lists the aggregated synchronization statuses of resources across the
    # deployments in your administrator account. You can filter the results
    # by synchronization status and page through them.
    #
    # @option params [String] :synchronization_status
    #   Filters the results by synchronization status, such as `IN_SYNC` or
    #   `OUT_OF_SYNC`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @return [Types::ListAggregateResourceSynchronizationStatusesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAggregateResourceSynchronizationStatusesOutput#next_token #next_token} => String
    #   * {Types::ListAggregateResourceSynchronizationStatusesOutput#resource_synchronization_statuses #resource_synchronization_statuses} => Array&lt;Types::ResourceSynchronizationStatusSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List synchronization statuses across all deployments
    #
    #   # Lists the aggregate synchronization status of resources across all deployments in the account.
    #
    #   resp = client.list_aggregate_resource_synchronization_statuses({
    #     max_results: 10, 
    #     synchronization_status: "IN_SYNC", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     resource_synchronization_statuses: [
    #       {
    #         account_id: "234567890123", 
    #         evaluated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #         resource_arn: "arn:aws:elasticloadbalancing:us-east-1:234567890123:loadbalancer/app/my-alb/50dc6c495c0c9188", 
    #         resource_type: "AWS::ElasticLoadBalancingV2::LoadBalancer::application", 
    #         synchronization_status: "IN_SYNC", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aggregate_resource_synchronization_statuses({
    #     synchronization_status: "IN_SYNC", # accepts IN_SYNC, OUT_OF_SYNC, NOT_APPLICABLE
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resource_synchronization_statuses #=> Array
    #   resp.resource_synchronization_statuses[0].synchronization_status #=> String, one of "IN_SYNC", "OUT_OF_SYNC", "NOT_APPLICABLE"
    #   resp.resource_synchronization_statuses[0].account_id #=> String
    #   resp.resource_synchronization_statuses[0].resource_arn #=> String
    #   resp.resource_synchronization_statuses[0].deployment_arn #=> String
    #   resp.resource_synchronization_statuses[0].resource_type #=> String, one of "AWS::ApiGateway::Stage", "AWS::CloudFront::Distribution", "AWS::EC2::EIP", "AWS::ElasticLoadBalancingV2::LoadBalancer::application", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::WAFv2::WebACL", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection"
    #   resp.resource_synchronization_statuses[0].updated_at #=> Time
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons #=> Hash
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].missing_firewall #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_single_value_configurations #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_single_value_configurations[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_single_value_configurations[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_single_value_configurations[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_appendable_configuration_values #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_appendable_configuration_values[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_appendable_configuration_values[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_appendable_configuration_values[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_appendable_configuration_values #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_appendable_configuration_values[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_appendable_configuration_values[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_appendable_configuration_values[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_appendable_configuration_order #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_appendable_configuration_order[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_appendable_configuration_order[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_appendable_configuration_order[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_mergeable_configuration_values #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_mergeable_configuration_values[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_mergeable_configuration_values[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_mergeable_configuration_values[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_mergeable_configuration_values #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_mergeable_configuration_values[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_mergeable_configuration_values[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_mergeable_configuration_values[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.not_visible.reason #=> String
    #   resp.resource_synchronization_statuses[0].remediation_issues.issues #=> Hash
    #   resp.resource_synchronization_statuses[0].remediation_issues.issues["PolicyFirewallType"].issue_type #=> String
    #   resp.resource_synchronization_statuses[0].remediation_issues.issues["PolicyFirewallType"].message #=> String
    #   resp.resource_synchronization_statuses[0].remediation_issues.issues["PolicyFirewallType"].corrective_action #=> String
    #   resp.resource_synchronization_statuses[0].remediation_issues.not_visible.reason #=> String
    #   resp.resource_synchronization_statuses[0].evaluated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListAggregateResourceSynchronizationStatuses AWS API Documentation
    #
    # @overload list_aggregate_resource_synchronization_statuses(params = {})
    # @param [Hash] params ({})
    def list_aggregate_resource_synchronization_statuses(params = {}, options = {})
      req = build_request(:list_aggregate_resource_synchronization_statuses, params)
      req.send_request(options)
    end

    # Lists the snapshots of the specified deployment.
    #
    # @option params [required, String] :deployment_identifier
    #   The identifier of the deployment. This is the deployment's Amazon
    #   Resource Name (ARN).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @return [Types::ListDeploymentSnapshotsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentSnapshotsOutput#next_token #next_token} => String
    #   * {Types::ListDeploymentSnapshotsOutput#snapshots #snapshots} => Array&lt;Types::DeploymentSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the snapshots of a deployment
    #
    #   # Lists the immutable snapshots that have been created for a deployment.
    #
    #   resp = client.list_deployment_snapshots({
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456", 
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshots: [
    #       {
    #         version: "2", 
    #         deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456:2", 
    #         deployment_id: "def456", 
    #         deployment_name: "prod-us-east-1-deployment", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_snapshots({
    #     deployment_identifier: "DeploymentIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].deployment_id #=> String
    #   resp.snapshots[0].deployment_arn #=> String
    #   resp.snapshots[0].deployment_name #=> String
    #   resp.snapshots[0].status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.snapshots[0].version #=> String
    #   resp.snapshots[0].has_published_version #=> Boolean
    #   resp.snapshots[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListDeploymentSnapshots AWS API Documentation
    #
    # @overload list_deployment_snapshots(params = {})
    # @param [Hash] params ({})
    def list_deployment_snapshots(params = {}, options = {})
      req = build_request(:list_deployment_snapshots, params)
      req.send_request(options)
    end

    # Lists the deployments in the account. You can filter the results by
    # status and page through them using `maxResults` and `nextToken`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @option params [String] :status
    #   Filters the results by status: `ACTIVE`, `DRAFT`, or `DISABLED`.
    #
    # @return [Types::ListDeploymentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentsOutput#next_token #next_token} => String
    #   * {Types::ListDeploymentsOutput#deployments #deployments} => Array&lt;Types::DeploymentSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List deployments
    #
    #   # Lists the published deployments in the account, one page at a time.
    #
    #   resp = client.list_deployments({
    #     max_results: 10, 
    #     status: "ACTIVE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     deployments: [
    #       {
    #         version: "2", 
    #         deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456", 
    #         deployment_id: "def456", 
    #         deployment_name: "prod-us-east-1-deployment", 
    #         has_published_version: true, 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVE", # accepts ACTIVE, DRAFT, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.deployments #=> Array
    #   resp.deployments[0].deployment_id #=> String
    #   resp.deployments[0].deployment_arn #=> String
    #   resp.deployments[0].deployment_name #=> String
    #   resp.deployments[0].status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.deployments[0].version #=> String
    #   resp.deployments[0].has_published_version #=> Boolean
    #   resp.deployments[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListDeployments AWS API Documentation
    #
    # @overload list_deployments(params = {})
    # @param [Hash] params ({})
    def list_deployments(params = {}, options = {})
      req = build_request(:list_deployments, params)
      req.send_request(options)
    end

    # Lists the policies in the account. You can filter the results by
    # status and page through them using `maxResults` and `nextToken`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @option params [String] :status
    #   Filters the results by status, either `ACTIVE` or `DRAFT`.
    #
    # @return [Types::ListPoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesOutput#next_token #next_token} => String
    #   * {Types::ListPoliciesOutput#policies #policies} => Array&lt;Types::PolicySummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List policies
    #
    #   # Lists the published policies in the account, one page at a time.
    #
    #   resp = client.list_policies({
    #     max_results: 10, 
    #     status: "ACTIVE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policies: [
    #       {
    #         version: "2", 
    #         firewall_type: "WAF", 
    #         has_published_version: true, 
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #         policy_id: "xyz789", 
    #         policy_name: "web-app-waf-policy", 
    #         priority: 2, 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVE", # accepts ACTIVE, DRAFT, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.policies #=> Array
    #   resp.policies[0].policy_id #=> String
    #   resp.policies[0].policy_arn #=> String
    #   resp.policies[0].policy_name #=> String
    #   resp.policies[0].status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.policies[0].version #=> String
    #   resp.policies[0].has_published_version #=> Boolean
    #   resp.policies[0].firewall_type #=> String, one of "WAF", "SHIELD_ADVANCED"
    #   resp.policies[0].priority #=> Integer
    #   resp.policies[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListPolicies AWS API Documentation
    #
    # @overload list_policies(params = {})
    # @param [Hash] params ({})
    def list_policies(params = {}, options = {})
      req = build_request(:list_policies, params)
      req.send_request(options)
    end

    # Lists the snapshots of the specified policy.
    #
    # @option params [required, String] :policy_identifier
    #   The identifier of the policy. This is the policy's Amazon Resource
    #   Name (ARN).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @return [Types::ListPolicySnapshotsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicySnapshotsOutput#next_token #next_token} => String
    #   * {Types::ListPolicySnapshotsOutput#snapshots #snapshots} => Array&lt;Types::PolicySummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the snapshots of a policy
    #
    #   # Lists the immutable snapshots that have been created for a policy.
    #
    #   resp = client.list_policy_snapshots({
    #     max_results: 10, 
    #     policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshots: [
    #       {
    #         version: "2", 
    #         firewall_type: "WAF", 
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789:2", 
    #         policy_id: "xyz789", 
    #         policy_name: "web-app-waf-policy", 
    #         priority: 2, 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_snapshots({
    #     policy_identifier: "PolicyIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].policy_id #=> String
    #   resp.snapshots[0].policy_arn #=> String
    #   resp.snapshots[0].policy_name #=> String
    #   resp.snapshots[0].status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.snapshots[0].version #=> String
    #   resp.snapshots[0].has_published_version #=> Boolean
    #   resp.snapshots[0].firewall_type #=> String, one of "WAF", "SHIELD_ADVANCED"
    #   resp.snapshots[0].priority #=> Integer
    #   resp.snapshots[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListPolicySnapshots AWS API Documentation
    #
    # @overload list_policy_snapshots(params = {})
    # @param [Hash] params ({})
    def list_policy_snapshots(params = {}, options = {})
      req = build_request(:list_policy_snapshots, params)
      req.send_request(options)
    end

    # Lists the resources associated with the specified resource.
    #
    # @option params [required, String] :resource_identifier
    #   The identifier of the resource to list associations for. This is the
    #   resource's Amazon Resource Name (ARN).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @return [Types::ListResourceAssociationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceAssociationsOutput#next_token #next_token} => String
    #   * {Types::ListResourceAssociationsOutput#resource_associations #resource_associations} => Array&lt;Types::ResourceAssociation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List what references a rule
    #
    #   # Lists the resources that reference the given rule, such as the templates and policies it is associated with.
    #
    #   resp = client.list_resource_associations({
    #     max_results: 10, 
    #     resource_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     resource_associations: [
    #       {
    #         arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #         resource_type: "Template", 
    #       }, 
    #       {
    #         arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #         resource_type: "Policy", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_associations({
    #     resource_identifier: "ResourceIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resource_associations #=> Array
    #   resp.resource_associations[0].arn #=> String
    #   resp.resource_associations[0].resource_type #=> String, one of "Rule", "Template", "Policy", "Deployment", "Scope"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListResourceAssociations AWS API Documentation
    #
    # @overload list_resource_associations(params = {})
    # @param [Hash] params ({})
    def list_resource_associations(params = {}, options = {})
      req = build_request(:list_resource_associations, params)
      req.send_request(options)
    end

    # Lists the synchronization statuses of the resources covered by the
    # specified deployment. You can filter the results by synchronization
    # status and page through them.
    #
    # @option params [required, String] :deployment_identifier
    #   The identifier of the deployment to list synchronization statuses for.
    #   This is the deployment's Amazon Resource Name (ARN).
    #
    # @option params [String] :synchronization_status
    #   Filters the results by synchronization status, such as `IN_SYNC` or
    #   `OUT_OF_SYNC`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @return [Types::ListResourceSynchronizationStatusesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceSynchronizationStatusesOutput#next_token #next_token} => String
    #   * {Types::ListResourceSynchronizationStatusesOutput#resource_synchronization_statuses #resource_synchronization_statuses} => Array&lt;Types::ResourceSynchronizationStatusSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List out-of-sync resources for a deployment
    #
    #   # Lists the resources tracked by a deployment that are out of sync, including the structured reason. Here a CloudFront
    #   # distribution has no web ACL where the policy requires one.
    #
    #   resp = client.list_resource_synchronization_statuses({
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456", 
    #     max_results: 10, 
    #     synchronization_status: "OUT_OF_SYNC", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     resource_synchronization_statuses: [
    #       {
    #         account_id: "123456789012", 
    #         deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456", 
    #         evaluated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #         out_of_sync_reasons: {
    #           reasons: {
    #             "WAF" => {
    #               missing_firewall: "No web ACL is associated with the resource", 
    #             }, 
    #           }, 
    #         }, 
    #         resource_arn: "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE", 
    #         resource_type: "AWS::CloudFront::Distribution", 
    #         synchronization_status: "OUT_OF_SYNC", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_synchronization_statuses({
    #     deployment_identifier: "DeploymentIdentifier", # required
    #     synchronization_status: "IN_SYNC", # accepts IN_SYNC, OUT_OF_SYNC, NOT_APPLICABLE
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resource_synchronization_statuses #=> Array
    #   resp.resource_synchronization_statuses[0].synchronization_status #=> String, one of "IN_SYNC", "OUT_OF_SYNC", "NOT_APPLICABLE"
    #   resp.resource_synchronization_statuses[0].account_id #=> String
    #   resp.resource_synchronization_statuses[0].resource_arn #=> String
    #   resp.resource_synchronization_statuses[0].deployment_arn #=> String
    #   resp.resource_synchronization_statuses[0].resource_type #=> String, one of "AWS::ApiGateway::Stage", "AWS::CloudFront::Distribution", "AWS::EC2::EIP", "AWS::ElasticLoadBalancingV2::LoadBalancer::application", "AWS::ElasticLoadBalancing::LoadBalancer", "AWS::WAFv2::WebACL", "AWS::Shield::Protection", "AWS::ShieldRegional::Protection"
    #   resp.resource_synchronization_statuses[0].updated_at #=> Time
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons #=> Hash
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].missing_firewall #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_single_value_configurations #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_single_value_configurations[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_single_value_configurations[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_single_value_configurations[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_appendable_configuration_values #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_appendable_configuration_values[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_appendable_configuration_values[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_appendable_configuration_values[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_appendable_configuration_values #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_appendable_configuration_values[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_appendable_configuration_values[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_appendable_configuration_values[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_appendable_configuration_order #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_appendable_configuration_order[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_appendable_configuration_order[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.incorrect_appendable_configuration_order[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_mergeable_configuration_values #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_mergeable_configuration_values[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_mergeable_configuration_values[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.missing_mergeable_configuration_values[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_mergeable_configuration_values #=> Array
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_mergeable_configuration_values[0].configuration_name #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_mergeable_configuration_values[0].expected_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.reasons["PolicyFirewallType"].invalid_firewall.unexpected_mergeable_configuration_values[0].actual_value #=> String
    #   resp.resource_synchronization_statuses[0].out_of_sync_reasons.not_visible.reason #=> String
    #   resp.resource_synchronization_statuses[0].remediation_issues.issues #=> Hash
    #   resp.resource_synchronization_statuses[0].remediation_issues.issues["PolicyFirewallType"].issue_type #=> String
    #   resp.resource_synchronization_statuses[0].remediation_issues.issues["PolicyFirewallType"].message #=> String
    #   resp.resource_synchronization_statuses[0].remediation_issues.issues["PolicyFirewallType"].corrective_action #=> String
    #   resp.resource_synchronization_statuses[0].remediation_issues.not_visible.reason #=> String
    #   resp.resource_synchronization_statuses[0].evaluated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListResourceSynchronizationStatuses AWS API Documentation
    #
    # @overload list_resource_synchronization_statuses(params = {})
    # @param [Hash] params ({})
    def list_resource_synchronization_statuses(params = {}, options = {})
      req = build_request(:list_resource_synchronization_statuses, params)
      req.send_request(options)
    end

    # Lists the snapshots of the specified rule.
    #
    # @option params [required, String] :rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @return [Types::ListRuleSnapshotsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleSnapshotsOutput#next_token #next_token} => String
    #   * {Types::ListRuleSnapshotsOutput#snapshots #snapshots} => Array&lt;Types::RuleSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the snapshots of a rule
    #
    #   # Lists the immutable snapshots that have been created for a rule.
    #
    #   resp = client.list_rule_snapshots({
    #     max_results: 10, 
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshots: [
    #       {
    #         version: "2", 
    #         firewall_type: "WAF", 
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123:2", 
    #         rule_id: "abc123", 
    #         rule_name: "block-known-bad-ips", 
    #         rule_type: "INSPECTION", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #       {
    #         version: "3", 
    #         firewall_type: "WAF", 
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123:3", 
    #         rule_id: "abc123", 
    #         rule_name: "block-known-bad-ips", 
    #         rule_type: "INSPECTION", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-08-21T09:30:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_snapshots({
    #     rule_identifier: "RuleIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].rule_id #=> String
    #   resp.snapshots[0].rule_arn #=> String
    #   resp.snapshots[0].rule_name #=> String
    #   resp.snapshots[0].firewall_type #=> String, one of "WAF"
    #   resp.snapshots[0].rule_type #=> String, one of "CONFIGURATION", "INSPECTION"
    #   resp.snapshots[0].status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.snapshots[0].version #=> String
    #   resp.snapshots[0].has_published_version #=> Boolean
    #   resp.snapshots[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListRuleSnapshots AWS API Documentation
    #
    # @overload list_rule_snapshots(params = {})
    # @param [Hash] params ({})
    def list_rule_snapshots(params = {}, options = {})
      req = build_request(:list_rule_snapshots, params)
      req.send_request(options)
    end

    # Lists the rules in the account. You can filter the results by status
    # and page through them using `maxResults` and `nextToken`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @option params [String] :status
    #   Filters the results by status, either `ACTIVE` or `DRAFT`.
    #
    # @return [Types::ListRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRulesOutput#next_token #next_token} => String
    #   * {Types::ListRulesOutput#rules #rules} => Array&lt;Types::RuleSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List rules
    #
    #   # Lists the published rules in the account, one page at a time.
    #
    #   resp = client.list_rules({
    #     max_results: 10, 
    #     status: "ACTIVE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     rules: [
    #       {
    #         version: "2", 
    #         firewall_type: "WAF", 
    #         has_published_version: true, 
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #         rule_id: "abc123", 
    #         rule_name: "block-known-bad-ips", 
    #         rule_type: "INSPECTION", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVE", # accepts ACTIVE, DRAFT, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.rules #=> Array
    #   resp.rules[0].rule_id #=> String
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].rule_name #=> String
    #   resp.rules[0].firewall_type #=> String, one of "WAF"
    #   resp.rules[0].rule_type #=> String, one of "CONFIGURATION", "INSPECTION"
    #   resp.rules[0].status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.rules[0].version #=> String
    #   resp.rules[0].has_published_version #=> Boolean
    #   resp.rules[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListRules AWS API Documentation
    #
    # @overload list_rules(params = {})
    # @param [Hash] params ({})
    def list_rules(params = {}, options = {})
      req = build_request(:list_rules, params)
      req.send_request(options)
    end

    # Lists the snapshots of the specified scope.
    #
    # @option params [required, String] :scope_identifier
    #   The identifier of the scope. This is the scope's Amazon Resource Name
    #   (ARN).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @return [Types::ListScopeSnapshotsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScopeSnapshotsOutput#next_token #next_token} => String
    #   * {Types::ListScopeSnapshotsOutput#snapshots #snapshots} => Array&lt;Types::ScopeSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the snapshots of a scope
    #
    #   # Lists the immutable snapshots that have been created for a scope.
    #
    #   resp = client.list_scope_snapshots({
    #     max_results: 10, 
    #     scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshots: [
    #       {
    #         version: "2", 
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123:2", 
    #         scope_id: "abc123", 
    #         scope_name: "production-web-apps", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scope_snapshots({
    #     scope_identifier: "ScopeIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].scope_id #=> String
    #   resp.snapshots[0].scope_arn #=> String
    #   resp.snapshots[0].scope_name #=> String
    #   resp.snapshots[0].status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.snapshots[0].version #=> String
    #   resp.snapshots[0].has_published_version #=> Boolean
    #   resp.snapshots[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListScopeSnapshots AWS API Documentation
    #
    # @overload list_scope_snapshots(params = {})
    # @param [Hash] params ({})
    def list_scope_snapshots(params = {}, options = {})
      req = build_request(:list_scope_snapshots, params)
      req.send_request(options)
    end

    # Lists the scopes in the account. You can filter the results by status
    # and page through them using `maxResults` and `nextToken`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @option params [String] :status
    #   Filters the results by status: `ACTIVE`, `DRAFT`, or `DISABLED`.
    #
    # @return [Types::ListScopesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScopesOutput#next_token #next_token} => String
    #   * {Types::ListScopesOutput#scopes #scopes} => Array&lt;Types::ScopeSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List scopes
    #
    #   # Lists the published scopes in the account, one page at a time.
    #
    #   resp = client.list_scopes({
    #     max_results: 10, 
    #     status: "ACTIVE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5IjoiYWJjMTIzIn0=", 
    #     scopes: [
    #       {
    #         version: "2", 
    #         has_published_version: true, 
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #         scope_id: "abc123", 
    #         scope_name: "production-web-apps", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scopes({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVE", # accepts ACTIVE, DRAFT, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.scopes #=> Array
    #   resp.scopes[0].scope_id #=> String
    #   resp.scopes[0].scope_arn #=> String
    #   resp.scopes[0].scope_name #=> String
    #   resp.scopes[0].status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.scopes[0].version #=> String
    #   resp.scopes[0].has_published_version #=> Boolean
    #   resp.scopes[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListScopes AWS API Documentation
    #
    # @overload list_scopes(params = {})
    # @param [Hash] params ({})
    def list_scopes(params = {}, options = {})
      req = build_request(:list_scopes, params)
      req.send_request(options)
    end

    # Lists the tags associated with the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to list tags for. The ARN must not include a
    #   `:DRAFT` qualifier.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: List the tags on a resource
    #
    #   # Lists the tags associated with a Network Security Manager resource.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "Environment" => "Production", 
    #       "Team" => "NetworkSecurity", 
    #     }, 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the snapshots of the specified template.
    #
    # @option params [required, String] :template_identifier
    #   The identifier of the template. This is the template's Amazon
    #   Resource Name (ARN).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @return [Types::ListTemplateSnapshotsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateSnapshotsOutput#next_token #next_token} => String
    #   * {Types::ListTemplateSnapshotsOutput#snapshots #snapshots} => Array&lt;Types::TemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List the snapshots of a template
    #
    #   # Lists the immutable snapshots that have been created for a template.
    #
    #   resp = client.list_template_snapshots({
    #     max_results: 10, 
    #     template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshots: [
    #       {
    #         version: "2", 
    #         firewall_type: "WAF", 
    #         status: "ACTIVE", 
    #         template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789:2", 
    #         template_id: "xyz789", 
    #         template_name: "standard-waf-template", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_snapshots({
    #     template_identifier: "TemplateIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].template_id #=> String
    #   resp.snapshots[0].template_arn #=> String
    #   resp.snapshots[0].template_name #=> String
    #   resp.snapshots[0].status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.snapshots[0].version #=> String
    #   resp.snapshots[0].has_published_version #=> Boolean
    #   resp.snapshots[0].firewall_type #=> String, one of "WAF"
    #   resp.snapshots[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListTemplateSnapshots AWS API Documentation
    #
    # @overload list_template_snapshots(params = {})
    # @param [Hash] params ({})
    def list_template_snapshots(params = {}, options = {})
      req = build_request(:list_template_snapshots, params)
      req.send_request(options)
    end

    # Lists the templates in the account. You can filter the results by
    # status and page through them using `maxResults` and `nextToken`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid range:
    #   1-100. To retrieve the remaining results, use the returned `nextToken`
    #   value in a subsequent call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #
    # @option params [String] :status
    #   Filters the results by status, either `ACTIVE` or `DRAFT`.
    #
    # @return [Types::ListTemplatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplatesOutput#next_token #next_token} => String
    #   * {Types::ListTemplatesOutput#templates #templates} => Array&lt;Types::TemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List templates
    #
    #   # Lists the published templates in the account, one page at a time.
    #
    #   resp = client.list_templates({
    #     max_results: 10, 
    #     status: "ACTIVE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     templates: [
    #       {
    #         version: "2", 
    #         firewall_type: "WAF", 
    #         has_published_version: true, 
    #         status: "ACTIVE", 
    #         template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #         template_id: "xyz789", 
    #         template_name: "standard-waf-template", 
    #         updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVE", # accepts ACTIVE, DRAFT, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.templates #=> Array
    #   resp.templates[0].template_id #=> String
    #   resp.templates[0].template_arn #=> String
    #   resp.templates[0].template_name #=> String
    #   resp.templates[0].status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.templates[0].version #=> String
    #   resp.templates[0].has_published_version #=> Boolean
    #   resp.templates[0].firewall_type #=> String, one of "WAF"
    #   resp.templates[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListTemplates AWS API Documentation
    #
    # @overload list_templates(params = {})
    # @param [Hash] params ({})
    def list_templates(params = {}, options = {})
      req = build_request(:list_templates, params)
      req.send_request(options)
    end

    # Sets the AWS account that serves as an AWS Network Security Manager
    # administrator account, and optionally configures the scope of
    # resources that the administrator can manage.
    #
    # You can't set an administrator account again immediately after you
    # remove it, or while the service creates its service-linked role. Retry
    # the request after a few minutes.
    #
    # @option params [required, String] :account_id
    #   The AWS account ID to set as the AWS Network Security Manager
    #   administrator account.
    #
    # @option params [required, Integer] :priority
    #   The priority to assign to the administrator account.
    #
    # @option params [Types::AdminScopeInput] :admin_scope
    #   The scope of accounts, organizational units, and firewall types that
    #   the administrator can manage.
    #
    # @return [Types::PutAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAdminAccountResponse#admin_account_details #admin_account_details} => Types::AdminAccountDetails
    #
    #
    # @example Example: Designate an administrator account
    #
    #   # Designates an account as a Network Security Manager administrator, scoped to a specific organizational unit and the WAF
    #   # firewall type.
    #
    #   resp = client.put_admin_account({
    #     account_id: "234567890123", 
    #     admin_scope: {
    #       firewall_type_scope: {
    #         all_firewall_types_enabled: false, 
    #         firewall_types: [
    #           "WAF", 
    #         ], 
    #       }, 
    #       scope_filter: {
    #         include_only: {
    #           organizational_units: [
    #             "ou-abcd-12345678", 
    #           ], 
    #         }, 
    #       }, 
    #     }, 
    #     priority: 2, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     admin_account_details: {
    #       admin_account: "234567890123", 
    #       admin_scope: {
    #         firewall_type_scope: {
    #           all_firewall_types_enabled: false, 
    #           firewall_types: [
    #             "WAF", 
    #           ], 
    #         }, 
    #         scope_filter: {
    #           include_only: {
    #             organizational_units: [
    #               {
    #                 name: "Production", 
    #                 ou_id: "ou-abcd-12345678", 
    #               }, 
    #             ], 
    #           }, 
    #         }, 
    #       }, 
    #       priority: 2, 
    #       status: "ONBOARDED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_admin_account({
    #     account_id: "AccountId", # required
    #     priority: 1, # required
    #     admin_scope: {
    #       scope_filter: {
    #         include_all: {
    #         },
    #         include_only: {
    #           accounts: ["AccountId"],
    #           organizational_units: ["OrganizationalUnitId"],
    #         },
    #         exclude_only: {
    #           accounts: ["AccountId"],
    #           organizational_units: ["OrganizationalUnitId"],
    #         },
    #       },
    #       firewall_type_scope: {
    #         all_firewall_types_enabled: false,
    #         firewall_types: ["WAF"], # accepts WAF, SHIELD_ADVANCED
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.admin_account_details.admin_account #=> String
    #   resp.admin_account_details.priority #=> Integer
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.accounts #=> Array
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.accounts[0].account_id #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.accounts[0].name #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.accounts[0].email #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.organizational_units #=> Array
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.organizational_units[0].ou_id #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.include_only.organizational_units[0].name #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.accounts #=> Array
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.accounts[0].account_id #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.accounts[0].name #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.accounts[0].email #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.organizational_units #=> Array
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.organizational_units[0].ou_id #=> String
    #   resp.admin_account_details.admin_scope.scope_filter.exclude_only.organizational_units[0].name #=> String
    #   resp.admin_account_details.admin_scope.firewall_type_scope.all_firewall_types_enabled #=> Boolean
    #   resp.admin_account_details.admin_scope.firewall_type_scope.firewall_types #=> Array
    #   resp.admin_account_details.admin_scope.firewall_type_scope.firewall_types[0] #=> String, one of "WAF", "SHIELD_ADVANCED"
    #   resp.admin_account_details.status #=> String, one of "ONBOARDED", "OFFBOARDED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/PutAdminAccount AWS API Documentation
    #
    # @overload put_admin_account(params = {})
    # @param [Hash] params ({})
    def put_admin_account(params = {}, options = {})
      req = build_request(:put_admin_account, params)
      req.send_request(options)
    end

    # Adds or overwrites the specified tags on the given resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to tag. The ARN must not include a `:DRAFT`
    #   qualifier.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Tag a resource
    #
    #   # Adds tags to a Network Security Manager resource.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #     tags: {
    #       "Environment" => "Production", 
    #       "Team" => "NetworkSecurity", 
    #     }, 
    #   })
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the given resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to remove tags from. The ARN must not include
    #   a `:DRAFT` qualifier.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Remove tags from a resource
    #
    #   # Removes the specified tag keys from a Network Security Manager resource.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #     tag_keys: [
    #       "Environment", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified deployment. To prevent conflicting concurrent
    # updates, provide the current `updateToken`. Use `isPublished` to
    # publish the update or keep the deployment as a draft.
    #
    # @option params [required, String] :deployment_identifier
    #   The identifier of the deployment. This is the deployment's Amazon
    #   Resource Name (ARN).
    #
    # @option params [required, String] :update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #
    # @option params [String] :deployment_description
    #   A description of the deployment.
    #
    # @option params [Types::DeploymentConfiguration] :deployment_configuration
    #   The configuration settings for the deployment.
    #
    # @option params [Array<Types::PolicyReference>] :associated_policy_list
    #   The policies associated with the deployment.
    #
    # @option params [Array<Types::ScopeReference>] :associated_scope_list
    #   The scope associated with the deployment. A deployment has exactly one
    #   scope.
    #
    # @option params [required, Boolean] :is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as a
    #   draft (`DRAFT`).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDeploymentOutput#deployment_id #deployment_id} => String
    #   * {Types::UpdateDeploymentOutput#deployment_arn #deployment_arn} => String
    #   * {Types::UpdateDeploymentOutput#deployment_name #deployment_name} => String
    #   * {Types::UpdateDeploymentOutput#deployment_description #deployment_description} => String
    #   * {Types::UpdateDeploymentOutput#status #status} => String
    #   * {Types::UpdateDeploymentOutput#deployment_configuration #deployment_configuration} => Types::DeploymentConfiguration
    #   * {Types::UpdateDeploymentOutput#associated_policy_list #associated_policy_list} => Array&lt;Types::AssociatedPolicy&gt;
    #   * {Types::UpdateDeploymentOutput#associated_scope_list #associated_scope_list} => Array&lt;Types::AssociatedScope&gt;
    #   * {Types::UpdateDeploymentOutput#version #version} => String
    #   * {Types::UpdateDeploymentOutput#update_token #update_token} => String
    #   * {Types::UpdateDeploymentOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::UpdateDeploymentOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::UpdateDeploymentOutput#deployment_coverage #deployment_coverage} => Array&lt;Types::DeploymentCoverageEntry&gt;
    #   * {Types::UpdateDeploymentOutput#warnings #warnings} => Array&lt;Types::DeploymentWarningEntry&gt;
    #   * {Types::UpdateDeploymentOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Update a deployment and publish it
    #
    #   # Updates the deployment's associations and publishes the change. The response includes deploymentCoverage showing which
    #   # resource types the associated policies can protect. The updateToken from the most recent read is required for optimistic
    #   # locking.
    #
    #   resp = client.update_deployment({
    #     associated_policy_list: [
    #       {
    #         policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #       }, 
    #     ], 
    #     associated_scope_list: [
    #       {
    #         scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #       }, 
    #     ], 
    #     deployment_configuration: {
    #       enable_cross_account_visibility: true, 
    #     }, 
    #     deployment_description: "Production deployment for US East 1 region - updated", 
    #     deployment_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456", 
    #     is_published: true, 
    #     update_token: "f4a5b6c7-7d8e-4f9a-8b1c-1d2e3f4a5b6c", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "2", 
    #     associated_policy_list: [
    #       {
    #         policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #       }, 
    #     ], 
    #     associated_scope_list: [
    #       {
    #         scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #       }, 
    #     ], 
    #     deployment_arn: "arn:aws:network-security-manager:us-east-1:123456789012:deployment:def456", 
    #     deployment_configuration: {
    #       enable_cross_account_visibility: true, 
    #     }, 
    #     deployment_coverage: [
    #       {
    #         firewall_type: "WAF", 
    #         in_scope_resource_types: [
    #           "AWS::ElasticLoadBalancingV2::LoadBalancer::application", 
    #           "AWS::CloudFront::Distribution", 
    #         ], 
    #         policy_arns: [
    #           "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #         ], 
    #       }, 
    #     ], 
    #     deployment_description: "Production deployment for US East 1 region - updated", 
    #     deployment_id: "def456", 
    #     deployment_name: "prod-us-east-1-deployment", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     status: "ACTIVE", 
    #     update_token: "a5b6c7d8-8e9f-4a0b-9c1d-2e3f4a5b6c7d", 
    #     updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_deployment({
    #     deployment_identifier: "DeploymentIdentifier", # required
    #     update_token: "UpdateToken", # required
    #     deployment_description: "Description",
    #     deployment_configuration: {
    #       enable_cross_account_visibility: false, # required
    #     },
    #     associated_policy_list: [
    #       {
    #         policy_identifier: "PolicyIdentifier", # required
    #       },
    #     ],
    #     associated_scope_list: [
    #       {
    #         scope_identifier: "ScopeIdentifier", # required
    #       },
    #     ],
    #     is_published: false, # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_id #=> String
    #   resp.deployment_arn #=> String
    #   resp.deployment_name #=> String
    #   resp.deployment_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.deployment_configuration.enable_cross_account_visibility #=> Boolean
    #   resp.associated_policy_list #=> Array
    #   resp.associated_policy_list[0].policy_arn #=> String
    #   resp.associated_scope_list #=> Array
    #   resp.associated_scope_list[0].scope_arn #=> String
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.deployment_coverage #=> Array
    #   resp.deployment_coverage[0].firewall_type #=> String, one of "WAF", "SHIELD_ADVANCED"
    #   resp.deployment_coverage[0].policy_arns #=> Array
    #   resp.deployment_coverage[0].policy_arns[0] #=> String
    #   resp.deployment_coverage[0].in_scope_resource_types #=> Array
    #   resp.deployment_coverage[0].in_scope_resource_types[0] #=> String, one of "AWS::ApiGateway::Stage", "AWS::CloudFront::Distribution", "AWS::EC2::EIP", "AWS::ElasticLoadBalancingV2::LoadBalancer::application", "AWS::ElasticLoadBalancing::LoadBalancer"
    #   resp.warnings #=> Array
    #   resp.warnings[0].code #=> String
    #   resp.warnings[0].policy_arn #=> String
    #   resp.warnings[0].message #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateDeployment AWS API Documentation
    #
    # @overload update_deployment(params = {})
    # @param [Hash] params ({})
    def update_deployment(params = {}, options = {})
      req = build_request(:update_deployment, params)
      req.send_request(options)
    end

    # Updates the specified policy. To prevent conflicting concurrent
    # updates, provide the current `updateToken`. Use `isPublished` to
    # publish the update or keep the policy as a draft.
    #
    # @option params [required, String] :policy_identifier
    #   The identifier of the policy. This is the policy's Amazon Resource
    #   Name (ARN).
    #
    # @option params [required, String] :update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #
    # @option params [String] :policy_description
    #   A description of the policy.
    #
    # @option params [Integer] :priority
    #   The priority of the resource. A lower number indicates a higher
    #   priority.
    #
    # @option params [Array<Types::TemplateOrRuleReference>] :associated_template_and_rule_list
    #   The templates and rules to associate with the policy. For AWS WAF
    #   policies, specify 1 to 100 templates or rules, of which at most 2 can
    #   be templates. For AWS Shield Advanced policies, this list must be
    #   empty.
    #
    # @option params [Types::PolicyConfiguration] :policy_configuration
    #   The configuration settings that control the policy's behavior,
    #   including remediation and firewall-type-specific settings.
    #
    # @option params [required, Boolean] :is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as a
    #   draft (`DRAFT`).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdatePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyOutput#policy_id #policy_id} => String
    #   * {Types::UpdatePolicyOutput#policy_arn #policy_arn} => String
    #   * {Types::UpdatePolicyOutput#policy_name #policy_name} => String
    #   * {Types::UpdatePolicyOutput#policy_description #policy_description} => String
    #   * {Types::UpdatePolicyOutput#status #status} => String
    #   * {Types::UpdatePolicyOutput#priority #priority} => Integer
    #   * {Types::UpdatePolicyOutput#associated_template_and_rule_list #associated_template_and_rule_list} => Array&lt;Types::AssociatedTemplateOrRule&gt;
    #   * {Types::UpdatePolicyOutput#version #version} => String
    #   * {Types::UpdatePolicyOutput#update_token #update_token} => String
    #   * {Types::UpdatePolicyOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::UpdatePolicyOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::UpdatePolicyOutput#firewall_type #firewall_type} => String
    #   * {Types::UpdatePolicyOutput#policy_configuration #policy_configuration} => Types::PolicyConfiguration
    #   * {Types::UpdatePolicyOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Update a policy and publish it
    #
    #   # Updates the policy's description, priority, and configuration and publishes the change. The updateToken from the most
    #   # recent read is required for optimistic locking.
    #
    #   resp = client.update_policy({
    #     associated_template_and_rule_list: [
    #       {
    #         template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #       }, 
    #     ], 
    #     is_published: true, 
    #     policy_configuration: {
    #       remediation_enabled: true, 
    #       resources_clean_up: false, 
    #       waf_config: {
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE", 
    #         existing_customer_web_acl_resolution: "NO_REMEDIATION", 
    #       }, 
    #     }, 
    #     policy_description: "WAF policy for web application protection - updated", 
    #     policy_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #     priority: 2, 
    #     update_token: "e3f4a5b6-6c7d-4e8f-9a0b-0c1d2e3f4a5b", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "2", 
    #     associated_template_and_rule_list: [
    #       {
    #         template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #       }, 
    #     ], 
    #     firewall_type: "WAF", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     policy_arn: "arn:aws:network-security-manager:us-east-1:123456789012:policy:xyz789", 
    #     policy_configuration: {
    #       remediation_enabled: true, 
    #       resources_clean_up: false, 
    #       waf_config: {
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE", 
    #         existing_customer_web_acl_resolution: "NO_REMEDIATION", 
    #       }, 
    #     }, 
    #     policy_description: "WAF policy for web application protection - updated", 
    #     policy_id: "xyz789", 
    #     policy_name: "web-app-waf-policy", 
    #     priority: 2, 
    #     status: "ACTIVE", 
    #     update_token: "f4a5b6c7-7d8e-4f9a-8b1c-1d2e3f4a5b6c", 
    #     updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy({
    #     policy_identifier: "PolicyIdentifier", # required
    #     update_token: "UpdateToken", # required
    #     policy_description: "Description",
    #     priority: 1,
    #     associated_template_and_rule_list: [
    #       {
    #         template_identifier: "TemplateIdentifier",
    #         rule_identifier: "RuleIdentifier",
    #       },
    #     ],
    #     policy_configuration: {
    #       remediation_enabled: false, # required
    #       resources_clean_up: false, # required
    #       waf_config: {
    #         existing_customer_web_acl_resolution: "RETROFIT", # required, accepts RETROFIT, OVERRIDE_ASSOCIATION, NO_REMEDIATION
    #         conflict_resolution: "MERGE_WHERE_APPLICABLE", # required, accepts MERGE_WHERE_APPLICABLE
    #       },
    #     },
    #     is_published: false, # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_id #=> String
    #   resp.policy_arn #=> String
    #   resp.policy_name #=> String
    #   resp.policy_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.priority #=> Integer
    #   resp.associated_template_and_rule_list #=> Array
    #   resp.associated_template_and_rule_list[0].template_arn #=> String
    #   resp.associated_template_and_rule_list[0].rule_arn #=> String
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.firewall_type #=> String, one of "WAF", "SHIELD_ADVANCED"
    #   resp.policy_configuration.remediation_enabled #=> Boolean
    #   resp.policy_configuration.resources_clean_up #=> Boolean
    #   resp.policy_configuration.waf_config.existing_customer_web_acl_resolution #=> String, one of "RETROFIT", "OVERRIDE_ASSOCIATION", "NO_REMEDIATION"
    #   resp.policy_configuration.waf_config.conflict_resolution #=> String, one of "MERGE_WHERE_APPLICABLE"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdatePolicy AWS API Documentation
    #
    # @overload update_policy(params = {})
    # @param [Hash] params ({})
    def update_policy(params = {}, options = {})
      req = build_request(:update_policy, params)
      req.send_request(options)
    end

    # Updates the specified rule. To prevent conflicting concurrent updates,
    # provide the current `updateToken`. Use `isPublished` to publish the
    # update or keep the rule as a draft.
    #
    # @option params [required, String] :rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #
    # @option params [required, String] :update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #
    # @option params [String] :rule_type
    #   The type of the rule. `CONFIGURATION` rules contain firewall settings,
    #   and `INSPECTION` rules contain rule groups.
    #
    # @option params [String] :rule_description
    #   A description of the rule.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :configuration
    #   The firewall configuration for the rule, as a JSON document. The
    #   structure depends on the rule's firewall type and rule type. For an
    #   AWS WAF `INSPECTION` rule, provide an AWS WAF rule group. For an AWS
    #   WAF `CONFIGURATION` rule, provide a single web ACL setting, such as
    #   `DefaultAction` or `VisibilityConfig`; use `wafConfigDataType` to
    #   declare which setting the document contains. For the schema of each
    #   setting and complete examples, see [Writing rule configurations][1] in
    #   the *AWS Network Security Manager Developer Guide*.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html
    #
    # @option params [required, Boolean] :is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as a
    #   draft (`DRAFT`).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuleOutput#rule_id #rule_id} => String
    #   * {Types::UpdateRuleOutput#rule_arn #rule_arn} => String
    #   * {Types::UpdateRuleOutput#rule_name #rule_name} => String
    #   * {Types::UpdateRuleOutput#firewall_type #firewall_type} => String
    #   * {Types::UpdateRuleOutput#rule_type #rule_type} => String
    #   * {Types::UpdateRuleOutput#rule_description #rule_description} => String
    #   * {Types::UpdateRuleOutput#configuration #configuration} => Hash,Array,String,Numeric,Boolean
    #   * {Types::UpdateRuleOutput#status #status} => String
    #   * {Types::UpdateRuleOutput#version #version} => String
    #   * {Types::UpdateRuleOutput#update_token #update_token} => String
    #   * {Types::UpdateRuleOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::UpdateRuleOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::UpdateRuleOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Update a rule and publish it
    #
    #   # Updates the rule's description and configuration and publishes the change. The updateToken from the most recent read is
    #   # required for optimistic locking.
    #
    #   resp = client.update_rule({
    #     configuration: {
    #     }, 
    #     is_published: true, 
    #     rule_description: "Blocks requests from known malicious IP addresses - updated list", 
    #     rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #     rule_type: "INSPECTION", 
    #     update_token: "c1d2e3f4-4a5b-4c6d-9e7f-8a9b0c1d2e3f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "2", 
    #     configuration: {
    #     }, 
    #     firewall_type: "WAF", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #     rule_description: "Blocks requests from known malicious IP addresses - updated list", 
    #     rule_id: "abc123", 
    #     rule_name: "block-known-bad-ips", 
    #     rule_type: "INSPECTION", 
    #     status: "ACTIVE", 
    #     update_token: "d2e3f4a5-5b6c-4d7e-8f9a-9b0c1d2e3f4a", 
    #     updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule({
    #     rule_identifier: "RuleIdentifier", # required
    #     update_token: "UpdateToken", # required
    #     rule_type: "CONFIGURATION", # accepts CONFIGURATION, INSPECTION
    #     rule_description: "Description",
    #     configuration: {
    #     },
    #     is_published: false, # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_id #=> String
    #   resp.rule_arn #=> String
    #   resp.rule_name #=> String
    #   resp.firewall_type #=> String, one of "WAF"
    #   resp.rule_type #=> String, one of "CONFIGURATION", "INSPECTION"
    #   resp.rule_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateRule AWS API Documentation
    #
    # @overload update_rule(params = {})
    # @param [Hash] params ({})
    def update_rule(params = {}, options = {})
      req = build_request(:update_rule, params)
      req.send_request(options)
    end

    # Updates the specified scope. To prevent conflicting concurrent
    # updates, provide the current `updateToken`. Use `isPublished` to
    # publish the update or keep the scope as a draft.
    #
    # @option params [required, String] :scope_identifier
    #   The identifier of the scope. This is the scope's Amazon Resource Name
    #   (ARN).
    #
    # @option params [required, String] :update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #
    # @option params [String] :scope_description
    #   A description of the scope.
    #
    # @option params [Types::ScopeConfiguration] :scope_configuration
    #   The configuration that defines which accounts and resources are in
    #   scope. If you don't include this member, the scope keeps its existing
    #   configuration.
    #
    #   A new configuration can change which accounts and resources are
    #   selected, but it can't add or remove the account filter itself: a
    #   scope created for multi-account use stays multi-account, and a scope
    #   created for single-account use stays single-account.
    #
    # @option params [required, Boolean] :is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as a
    #   draft (`DRAFT`).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateScopeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateScopeOutput#scope_id #scope_id} => String
    #   * {Types::UpdateScopeOutput#scope_arn #scope_arn} => String
    #   * {Types::UpdateScopeOutput#scope_name #scope_name} => String
    #   * {Types::UpdateScopeOutput#scope_description #scope_description} => String
    #   * {Types::UpdateScopeOutput#scope_configuration #scope_configuration} => Types::ScopeConfiguration
    #   * {Types::UpdateScopeOutput#status #status} => String
    #   * {Types::UpdateScopeOutput#version #version} => String
    #   * {Types::UpdateScopeOutput#update_token #update_token} => String
    #   * {Types::UpdateScopeOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::UpdateScopeOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::UpdateScopeOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Update a scope and publish it
    #
    #   # Updates the scope's description and configuration and publishes the change. The updateToken from the most recent read is
    #   # required for optimistic locking.
    #
    #   resp = client.update_scope({
    #     is_published: true, 
    #     scope_configuration: {
    #       account_filter: {
    #         include_all: {
    #         }, 
    #       }, 
    #       resource_scopes: {
    #       }, 
    #     }, 
    #     scope_description: "Scope covering all production web application resources in US East 1", 
    #     scope_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #     update_token: "b0c4d1e2-3f4a-4b5c-8d6e-7f8a9b0c1d2e", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "2", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     scope_arn: "arn:aws:network-security-manager:us-east-1:123456789012:scope:abc123", 
    #     scope_configuration: {
    #       account_filter: {
    #         include_all: {
    #         }, 
    #       }, 
    #       resource_scopes: {
    #       }, 
    #     }, 
    #     scope_description: "Scope covering all production web application resources in US East 1", 
    #     scope_id: "abc123", 
    #     scope_name: "production-web-apps", 
    #     status: "ACTIVE", 
    #     update_token: "c1d2e3f4-4a5b-4c6d-9e7f-8a9b0c1d2e3f", 
    #     updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scope({
    #     scope_identifier: "ScopeIdentifier", # required
    #     update_token: "UpdateToken", # required
    #     scope_description: "Description",
    #     scope_configuration: {
    #       account_filter: {
    #         include_all: {
    #         },
    #         include: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"],
    #         },
    #         exclude: {
    #           account_ids: ["AccountId"],
    #           organizational_units: ["OrganizationalUnit"],
    #         },
    #       },
    #       resource_scopes: { # required
    #         "AWS::ApiGateway::Stage" => {
    #           include_all: false,
    #           include: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               criteria: {
    #                 tags: {
    #                   "String" => "String",
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing", # accepts internet-facing, internal
    #                   ip_address_type: "ipv4", # accepts ipv4, dualstack, dualstack-without-public-ipv4
    #                 },
    #               },
    #               and: [
    #                 {
    #                   # recursive ResourceLogicalExpression
    #                 },
    #               ],
    #               or: [
    #                 {
    #                   # recursive ResourceLogicalExpression
    #                 },
    #               ],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               },
    #             },
    #           },
    #           exclude: {
    #             explicit_arns: ["Arn"],
    #             expression: {
    #               criteria: {
    #                 tags: {
    #                   "String" => "String",
    #                 },
    #                 alb_config: {
    #                   scheme: "internet-facing", # accepts internet-facing, internal
    #                   ip_address_type: "ipv4", # accepts ipv4, dualstack, dualstack-without-public-ipv4
    #                 },
    #               },
    #               and: [
    #                 {
    #                   # recursive ResourceLogicalExpression
    #                 },
    #               ],
    #               or: [
    #                 {
    #                   # recursive ResourceLogicalExpression
    #                 },
    #               ],
    #               not: {
    #                 # recursive ResourceLogicalExpression
    #               },
    #             },
    #           },
    #         },
    #       },
    #     },
    #     is_published: false, # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.scope_id #=> String
    #   resp.scope_arn #=> String
    #   resp.scope_name #=> String
    #   resp.scope_description #=> String
    #   resp.scope_configuration.account_filter.include.account_ids #=> Array
    #   resp.scope_configuration.account_filter.include.account_ids[0] #=> String
    #   resp.scope_configuration.account_filter.include.organizational_units #=> Array
    #   resp.scope_configuration.account_filter.include.organizational_units[0] #=> String
    #   resp.scope_configuration.account_filter.exclude.account_ids #=> Array
    #   resp.scope_configuration.account_filter.exclude.account_ids[0] #=> String
    #   resp.scope_configuration.account_filter.exclude.organizational_units #=> Array
    #   resp.scope_configuration.account_filter.exclude.organizational_units[0] #=> String
    #   resp.scope_configuration.resource_scopes #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include_all #=> Boolean
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.explicit_arns #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.explicit_arns[0] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.tags #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.tags["String"] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.alb_config.scheme #=> String, one of "internet-facing", "internal"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.criteria.alb_config.ip_address_type #=> String, one of "ipv4", "dualstack", "dualstack-without-public-ipv4"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.and #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.and[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.or #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.or[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].include.expression.not #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.explicit_arns #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.explicit_arns[0] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.tags #=> Hash
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.tags["String"] #=> String
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.alb_config.scheme #=> String, one of "internet-facing", "internal"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.criteria.alb_config.ip_address_type #=> String, one of "ipv4", "dualstack", "dualstack-without-public-ipv4"
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.and #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.and[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.or #=> Array
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.or[0] #=> Types::ResourceLogicalExpression
    #   resp.scope_configuration.resource_scopes["ScopeResourceType"].exclude.expression.not #=> Types::ResourceLogicalExpression
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateScope AWS API Documentation
    #
    # @overload update_scope(params = {})
    # @param [Hash] params ({})
    def update_scope(params = {}, options = {})
      req = build_request(:update_scope, params)
      req.send_request(options)
    end

    # Updates the specified template. To prevent conflicting concurrent
    # updates, provide the current `updateToken`. Use `isPublished` to
    # publish the update or keep the template as a draft.
    #
    # @option params [required, String] :template_identifier
    #   The identifier of the template. This is the template's Amazon
    #   Resource Name (ARN).
    #
    # @option params [required, String] :update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #
    # @option params [String] :template_description
    #   A description of the template.
    #
    # @option params [Array<Types::RuleReference>] :associated_rule_list
    #   The rules associated with the template.
    #
    # @option params [required, Boolean] :is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as a
    #   draft (`DRAFT`).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request with
    #   the same client token and the same parameters, the service returns the
    #   result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateTemplateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplateOutput#template_id #template_id} => String
    #   * {Types::UpdateTemplateOutput#template_arn #template_arn} => String
    #   * {Types::UpdateTemplateOutput#template_name #template_name} => String
    #   * {Types::UpdateTemplateOutput#template_description #template_description} => String
    #   * {Types::UpdateTemplateOutput#status #status} => String
    #   * {Types::UpdateTemplateOutput#version #version} => String
    #   * {Types::UpdateTemplateOutput#associated_rule_list #associated_rule_list} => Array&lt;Types::AssociatedRule&gt;
    #   * {Types::UpdateTemplateOutput#update_token #update_token} => String
    #   * {Types::UpdateTemplateOutput#is_snapshot #is_snapshot} => Boolean
    #   * {Types::UpdateTemplateOutput#has_published_version #has_published_version} => Boolean
    #   * {Types::UpdateTemplateOutput#firewall_type #firewall_type} => String
    #   * {Types::UpdateTemplateOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Update a template and publish it
    #
    #   # Updates the template's description and rule associations and publishes the change. The updateToken from the most recent
    #   # read is required for optimistic locking.
    #
    #   resp = client.update_template({
    #     associated_rule_list: [
    #       {
    #         rule_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #       }, 
    #     ], 
    #     is_published: true, 
    #     template_description: "Standard WAF template with baseline rule groups - updated", 
    #     template_identifier: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #     update_token: "d2e3f4a5-5b6c-4d7e-8f9a-9b0c1d2e3f4a", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "2", 
    #     associated_rule_list: [
    #       {
    #         rule_arn: "arn:aws:network-security-manager:us-east-1:123456789012:rule:abc123", 
    #       }, 
    #     ], 
    #     firewall_type: "WAF", 
    #     has_published_version: true, 
    #     is_snapshot: false, 
    #     status: "ACTIVE", 
    #     template_arn: "arn:aws:network-security-manager:us-east-1:123456789012:template:xyz789", 
    #     template_description: "Standard WAF template with baseline rule groups - updated", 
    #     template_id: "xyz789", 
    #     template_name: "standard-waf-template", 
    #     update_token: "e3f4a5b6-6c7d-4e8f-9a0b-0c1d2e3f4a5b", 
    #     updated_at: Time.parse("2026-08-20T12:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template({
    #     template_identifier: "TemplateIdentifier", # required
    #     update_token: "UpdateToken", # required
    #     template_description: "Description",
    #     associated_rule_list: [
    #       {
    #         rule_identifier: "RuleIdentifier", # required
    #       },
    #     ],
    #     is_published: false, # required
    #     client_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.template_arn #=> String
    #   resp.template_name #=> String
    #   resp.template_description #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "DISABLED"
    #   resp.version #=> String
    #   resp.associated_rule_list #=> Array
    #   resp.associated_rule_list[0].rule_arn #=> String
    #   resp.update_token #=> String
    #   resp.is_snapshot #=> Boolean
    #   resp.has_published_version #=> Boolean
    #   resp.firewall_type #=> String, one of "WAF"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateTemplate AWS API Documentation
    #
    # @overload update_template(params = {})
    # @param [Hash] params ({})
    def update_template(params = {}, options = {})
      req = build_request(:update_template, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::NetworkSecurityManager')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-networksecuritymanager'
      context[:gem_version] = '1.0.0'
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
