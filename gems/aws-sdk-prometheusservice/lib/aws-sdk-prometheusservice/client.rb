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
require 'aws-sdk-core/plugins/invocation_id.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/telemetry.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

module Aws::PrometheusService
  # An API client for PrometheusService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PrometheusService::Client.new(
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

    @identifier = :prometheusservice

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
    add_plugin(Aws::PrometheusService::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
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
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'],
    #       ENV['AWS_SESSION_TOKEN'], and ENV['AWS_ACCOUNT_ID']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
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
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
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
    #   @option options [Aws::PrometheusService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PrometheusService::EndpointParameters`.
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

    # The `CreateAlertManagerDefinition` operation creates the alert manager
    # definition in a workspace. If a workspace already has an alert manager
    # definition, don't use this operation to update it. Instead, use
    # `PutAlertManagerDefinition`.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String, StringIO, File] :data
    #   The alert manager definition to add. A base64-encoded version of the
    #   YAML alert manager definition file.
    #
    #   For details about the alert manager definition, see
    #   [AlertManagedDefinitionData][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to add the alert manager definition to.
    #
    # @return [Types::CreateAlertManagerDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAlertManagerDefinitionResponse#status #status} => Types::AlertManagerDefinitionStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alert_manager_definition({
    #     client_token: "IdempotencyToken",
    #     data: "data", # required
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateAlertManagerDefinition AWS API Documentation
    #
    # @overload create_alert_manager_definition(params = {})
    # @param [Hash] params ({})
    def create_alert_manager_definition(params = {}, options = {})
      req = build_request(:create_alert_manager_definition, params)
      req.send_request(options)
    end

    # The `CreateLoggingConfiguration` operation creates a logging
    # configuration for the workspace. Use this operation to set the
    # CloudWatch log group to which the logs will be published to.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :log_group_arn
    #   The ARN of the CloudWatch log group to which the vended log data will
    #   be published. This log group must exist prior to calling this
    #   operation.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to create the logging configuration for.
    #
    # @return [Types::CreateLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLoggingConfigurationResponse#status #status} => Types::LoggingConfigurationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_logging_configuration({
    #     client_token: "IdempotencyToken",
    #     log_group_arn: "LogGroupArn", # required
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateLoggingConfiguration AWS API Documentation
    #
    # @overload create_logging_configuration(params = {})
    # @param [Hash] params ({})
    def create_logging_configuration(params = {}, options = {})
      req = build_request(:create_logging_configuration, params)
      req.send_request(options)
    end

    # The `CreateRuleGroupsNamespace` operation creates a rule groups
    # namespace within a workspace. A rule groups namespace is associated
    # with exactly one rules file. A workspace can have multiple rule groups
    # namespaces.
    #
    # Use this operation only to create new rule groups namespaces. To
    # update an existing rule groups namespace, use
    # `PutRuleGroupsNamespace`.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String, StringIO, File] :data
    #   The rules file to use in the new namespace.
    #
    #   Contains the base64-encoded version of the YAML rules file.
    #
    #   For details about the rule groups namespace structure, see
    #   [RuleGroupsNamespaceData][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html
    #
    # @option params [required, String] :name
    #   The name for the new rule groups namespace.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of tag keys and values to associate with the rule groups
    #   namespace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to add the rule groups namespace.
    #
    # @return [Types::CreateRuleGroupsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleGroupsNamespaceResponse#arn #arn} => String
    #   * {Types::CreateRuleGroupsNamespaceResponse#name #name} => String
    #   * {Types::CreateRuleGroupsNamespaceResponse#status #status} => Types::RuleGroupsNamespaceStatus
    #   * {Types::CreateRuleGroupsNamespaceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule_groups_namespace({
    #     client_token: "IdempotencyToken",
    #     data: "data", # required
    #     name: "RuleGroupsNamespaceName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateRuleGroupsNamespace AWS API Documentation
    #
    # @overload create_rule_groups_namespace(params = {})
    # @param [Hash] params ({})
    def create_rule_groups_namespace(params = {}, options = {})
      req = build_request(:create_rule_groups_namespace, params)
      req.send_request(options)
    end

    # The `CreateScraper` operation creates a scraper to collect metrics. A
    # scraper pulls metrics from Prometheus-compatible sources within an
    # Amazon EKS cluster, and sends them to your Amazon Managed Service for
    # Prometheus workspace. Scrapers are flexible, and can be configured to
    # control what metrics are collected, the frequency of collection, what
    # transformations are applied to the metrics, and more.
    #
    # An IAM role will be created for you that Amazon Managed Service for
    # Prometheus uses to access the metrics in your cluster. You must
    # configure this role with a policy that allows it to scrape metrics
    # from your cluster. For more information, see [Configuring your Amazon
    # EKS cluster][1] in the *Amazon Managed Service for Prometheus User
    # Guide*.
    #
    # The `scrapeConfiguration` parameter contains the base-64 encoded YAML
    # configuration for the scraper.
    #
    # <note markdown="1"> For more information about collectors, including what metrics are
    # collected, and how to configure the scraper, see [Using an Amazon Web
    # Services managed collector][2] in the *Amazon Managed Service for
    # Prometheus User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-eks-setup
    # [2]: https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html
    #
    # @option params [String] :alias
    #   (optional) An alias to associate with the scraper. This is for your
    #   use, and does not need to be unique.
    #
    # @option params [String] :client_token
    #   (Optional) A unique, case-sensitive identifier that you can provide to
    #   ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::Destination] :destination
    #   The Amazon Managed Service for Prometheus workspace to send metrics
    #   to.
    #
    # @option params [Types::RoleConfiguration] :role_configuration
    #   The scraper role configuration for the workspace.
    #
    # @option params [required, Types::ScrapeConfiguration] :scrape_configuration
    #   The configuration file to use in the new scraper. For more
    #   information, see [Scraper configuration][1] in the *Amazon Managed
    #   Service for Prometheus User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration
    #
    # @option params [required, Types::Source] :source
    #   The Amazon EKS cluster from which the scraper will collect metrics.
    #
    # @option params [Hash<String,String>] :tags
    #   (Optional) The list of tag keys and values to associate with the
    #   scraper.
    #
    # @return [Types::CreateScraperResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScraperResponse#arn #arn} => String
    #   * {Types::CreateScraperResponse#scraper_id #scraper_id} => String
    #   * {Types::CreateScraperResponse#status #status} => Types::ScraperStatus
    #   * {Types::CreateScraperResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scraper({
    #     alias: "ScraperAlias",
    #     client_token: "IdempotencyToken",
    #     destination: { # required
    #       amp_configuration: {
    #         workspace_arn: "WorkspaceArn", # required
    #       },
    #     },
    #     role_configuration: {
    #       source_role_arn: "IamRoleArn",
    #       target_role_arn: "IamRoleArn",
    #     },
    #     scrape_configuration: { # required
    #       configuration_blob: "data",
    #     },
    #     source: { # required
    #       eks_configuration: {
    #         cluster_arn: "ClusterArn", # required
    #         security_group_ids: ["SecurityGroupId"],
    #         subnet_ids: ["SubnetId"], # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.scraper_id #=> String
    #   resp.status.status_code #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "CREATION_FAILED", "UPDATE_FAILED", "DELETION_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateScraper AWS API Documentation
    #
    # @overload create_scraper(params = {})
    # @param [Hash] params ({})
    def create_scraper(params = {}, options = {})
      req = build_request(:create_scraper, params)
      req.send_request(options)
    end

    # Creates a Prometheus workspace. A workspace is a logical space
    # dedicated to the storage and querying of Prometheus metrics. You can
    # have one or more workspaces in each Region in your account.
    #
    # @option params [String] :alias
    #   An alias that you assign to this workspace to help you identify it. It
    #   does not need to be unique.
    #
    #   Blank spaces at the beginning or end of the alias that you specify
    #   will be trimmed from the value used.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :kms_key_arn
    #   (optional) The ARN for a customer managed KMS key to use for
    #   encrypting data within your workspace. For more information about
    #   using your own key in your workspace, see [Encryption at rest][1] in
    #   the *Amazon Managed Service for Prometheus User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html
    #
    # @option params [Hash<String,String>] :tags
    #   The list of tag keys and values to associate with the workspace.
    #
    # @return [Types::CreateWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspaceResponse#arn #arn} => String
    #   * {Types::CreateWorkspaceResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::CreateWorkspaceResponse#status #status} => Types::WorkspaceStatus
    #   * {Types::CreateWorkspaceResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateWorkspaceResponse#workspace_id #workspace_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace({
    #     alias: "WorkspaceAlias",
    #     client_token: "IdempotencyToken",
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.kms_key_arn #=> String
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.workspace_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateWorkspace AWS API Documentation
    #
    # @overload create_workspace(params = {})
    # @param [Hash] params ({})
    def create_workspace(params = {}, options = {})
      req = build_request(:create_workspace, params)
      req.send_request(options)
    end

    # Deletes the alert manager definition from a workspace.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to delete the alert manager definition from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alert_manager_definition({
    #     client_token: "IdempotencyToken",
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteAlertManagerDefinition AWS API Documentation
    #
    # @overload delete_alert_manager_definition(params = {})
    # @param [Hash] params ({})
    def delete_alert_manager_definition(params = {}, options = {})
      req = build_request(:delete_alert_manager_definition, params)
      req.send_request(options)
    end

    # Deletes the logging configuration for a workspace.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace containing the logging configuration to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_logging_configuration({
    #     client_token: "IdempotencyToken",
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteLoggingConfiguration AWS API Documentation
    #
    # @overload delete_logging_configuration(params = {})
    # @param [Hash] params ({})
    def delete_logging_configuration(params = {}, options = {})
      req = build_request(:delete_logging_configuration, params)
      req.send_request(options)
    end

    # Deletes one rule groups namespace and its associated rule groups
    # definition.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the rule groups namespace to delete.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace containing the rule groups namespace and
    #   definition to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule_groups_namespace({
    #     client_token: "IdempotencyToken",
    #     name: "RuleGroupsNamespaceName", # required
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteRuleGroupsNamespace AWS API Documentation
    #
    # @overload delete_rule_groups_namespace(params = {})
    # @param [Hash] params ({})
    def delete_rule_groups_namespace(params = {}, options = {})
      req = build_request(:delete_rule_groups_namespace, params)
      req.send_request(options)
    end

    # The `DeleteScraper` operation deletes one scraper, and stops any
    # metrics collection that the scraper performs.
    #
    # @option params [String] :client_token
    #   (Optional) A unique, case-sensitive identifier that you can provide to
    #   ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :scraper_id
    #   The ID of the scraper to delete.
    #
    # @return [Types::DeleteScraperResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteScraperResponse#scraper_id #scraper_id} => String
    #   * {Types::DeleteScraperResponse#status #status} => Types::ScraperStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scraper({
    #     client_token: "IdempotencyToken",
    #     scraper_id: "ScraperId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scraper_id #=> String
    #   resp.status.status_code #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "CREATION_FAILED", "UPDATE_FAILED", "DELETION_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteScraper AWS API Documentation
    #
    # @overload delete_scraper(params = {})
    # @param [Hash] params ({})
    def delete_scraper(params = {}, options = {})
      req = build_request(:delete_scraper, params)
      req.send_request(options)
    end

    # Deletes an existing workspace.
    #
    # <note markdown="1"> When you delete a workspace, the data that has been ingested into it
    # is not immediately deleted. It will be permanently deleted within one
    # month.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace({
    #     client_token: "IdempotencyToken",
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteWorkspace AWS API Documentation
    #
    # @overload delete_workspace(params = {})
    # @param [Hash] params ({})
    def delete_workspace(params = {}, options = {})
      req = build_request(:delete_workspace, params)
      req.send_request(options)
    end

    # Retrieves the full information about the alert manager definition for
    # a workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to retrieve the alert manager definition from.
    #
    # @return [Types::DescribeAlertManagerDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAlertManagerDefinitionResponse#alert_manager_definition #alert_manager_definition} => Types::AlertManagerDefinitionDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alert_manager_definition({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alert_manager_definition.created_at #=> Time
    #   resp.alert_manager_definition.data #=> String
    #   resp.alert_manager_definition.modified_at #=> Time
    #   resp.alert_manager_definition.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.alert_manager_definition.status.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeAlertManagerDefinition AWS API Documentation
    #
    # @overload describe_alert_manager_definition(params = {})
    # @param [Hash] params ({})
    def describe_alert_manager_definition(params = {}, options = {})
      req = build_request(:describe_alert_manager_definition, params)
      req.send_request(options)
    end

    # Returns complete information about the current logging configuration
    # of the workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to describe the logging configuration for.
    #
    # @return [Types::DescribeLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoggingConfigurationResponse#logging_configuration #logging_configuration} => Types::LoggingConfigurationMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_logging_configuration({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_configuration.created_at #=> Time
    #   resp.logging_configuration.log_group_arn #=> String
    #   resp.logging_configuration.modified_at #=> Time
    #   resp.logging_configuration.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.logging_configuration.status.status_reason #=> String
    #   resp.logging_configuration.workspace #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeLoggingConfiguration AWS API Documentation
    #
    # @overload describe_logging_configuration(params = {})
    # @param [Hash] params ({})
    def describe_logging_configuration(params = {}, options = {})
      req = build_request(:describe_logging_configuration, params)
      req.send_request(options)
    end

    # Returns complete information about one rule groups namespace. To
    # retrieve a list of rule groups namespaces, use
    # `ListRuleGroupsNamespaces`.
    #
    # @option params [required, String] :name
    #   The name of the rule groups namespace that you want information for.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace containing the rule groups namespace.
    #
    # @return [Types::DescribeRuleGroupsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuleGroupsNamespaceResponse#rule_groups_namespace #rule_groups_namespace} => Types::RuleGroupsNamespaceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule_groups_namespace({
    #     name: "RuleGroupsNamespaceName", # required
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_groups_namespace.arn #=> String
    #   resp.rule_groups_namespace.created_at #=> Time
    #   resp.rule_groups_namespace.data #=> String
    #   resp.rule_groups_namespace.modified_at #=> Time
    #   resp.rule_groups_namespace.name #=> String
    #   resp.rule_groups_namespace.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.rule_groups_namespace.status.status_reason #=> String
    #   resp.rule_groups_namespace.tags #=> Hash
    #   resp.rule_groups_namespace.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeRuleGroupsNamespace AWS API Documentation
    #
    # @overload describe_rule_groups_namespace(params = {})
    # @param [Hash] params ({})
    def describe_rule_groups_namespace(params = {}, options = {})
      req = build_request(:describe_rule_groups_namespace, params)
      req.send_request(options)
    end

    # The `DescribeScraper` operation displays information about an existing
    # scraper.
    #
    # @option params [required, String] :scraper_id
    #   The ID of the scraper to describe.
    #
    # @return [Types::DescribeScraperResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScraperResponse#scraper #scraper} => Types::ScraperDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scraper({
    #     scraper_id: "ScraperId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scraper.alias #=> String
    #   resp.scraper.arn #=> String
    #   resp.scraper.created_at #=> Time
    #   resp.scraper.destination.amp_configuration.workspace_arn #=> String
    #   resp.scraper.last_modified_at #=> Time
    #   resp.scraper.role_arn #=> String
    #   resp.scraper.role_configuration.source_role_arn #=> String
    #   resp.scraper.role_configuration.target_role_arn #=> String
    #   resp.scraper.scrape_configuration.configuration_blob #=> String
    #   resp.scraper.scraper_id #=> String
    #   resp.scraper.source.eks_configuration.cluster_arn #=> String
    #   resp.scraper.source.eks_configuration.security_group_ids #=> Array
    #   resp.scraper.source.eks_configuration.security_group_ids[0] #=> String
    #   resp.scraper.source.eks_configuration.subnet_ids #=> Array
    #   resp.scraper.source.eks_configuration.subnet_ids[0] #=> String
    #   resp.scraper.status.status_code #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "CREATION_FAILED", "UPDATE_FAILED", "DELETION_FAILED"
    #   resp.scraper.status_reason #=> String
    #   resp.scraper.tags #=> Hash
    #   resp.scraper.tags["TagKey"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * scraper_active
    #   * scraper_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeScraper AWS API Documentation
    #
    # @overload describe_scraper(params = {})
    # @param [Hash] params ({})
    def describe_scraper(params = {}, options = {})
      req = build_request(:describe_scraper, params)
      req.send_request(options)
    end

    # Returns information about an existing workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to describe.
    #
    # @return [Types::DescribeWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceResponse#workspace #workspace} => Types::WorkspaceDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace.alias #=> String
    #   resp.workspace.arn #=> String
    #   resp.workspace.created_at #=> Time
    #   resp.workspace.kms_key_arn #=> String
    #   resp.workspace.prometheus_endpoint #=> String
    #   resp.workspace.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED"
    #   resp.workspace.tags #=> Hash
    #   resp.workspace.tags["TagKey"] #=> String
    #   resp.workspace.workspace_id #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * workspace_active
    #   * workspace_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeWorkspace AWS API Documentation
    #
    # @overload describe_workspace(params = {})
    # @param [Hash] params ({})
    def describe_workspace(params = {}, options = {})
      req = build_request(:describe_workspace, params)
      req.send_request(options)
    end

    # The `GetDefaultScraperConfiguration` operation returns the default
    # scraper configuration used when Amazon EKS creates a scraper for you.
    #
    # @return [Types::GetDefaultScraperConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDefaultScraperConfigurationResponse#configuration #configuration} => String
    #
    # @example Response structure
    #
    #   resp.configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/GetDefaultScraperConfiguration AWS API Documentation
    #
    # @overload get_default_scraper_configuration(params = {})
    # @param [Hash] params ({})
    def get_default_scraper_configuration(params = {}, options = {})
      req = build_request(:get_default_scraper_configuration, params)
      req.send_request(options)
    end

    # Returns a list of rule groups namespaces in a workspace.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. The default is 100.
    #
    # @option params [String] :name
    #   Use this parameter to filter the rule groups namespaces that are
    #   returned. Only the namespaces with names that begin with the value
    #   that you specify are returned.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. You receive this token
    #   from a previous call, and use it to get the next page of results. The
    #   other parameters must be the same as the initial call.
    #
    #   For example, if your initial request has `maxResults` of 10, and there
    #   are 12 rule groups namespaces to return, then your initial request
    #   will return 10 and a `nextToken`. Using the next token in a subsequent
    #   call will return the remaining 2 namespaces.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace containing the rule groups namespaces.
    #
    # @return [Types::ListRuleGroupsNamespacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleGroupsNamespacesResponse#next_token #next_token} => String
    #   * {Types::ListRuleGroupsNamespacesResponse#rule_groups_namespaces #rule_groups_namespaces} => Array&lt;Types::RuleGroupsNamespaceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_groups_namespaces({
    #     max_results: 1,
    #     name: "RuleGroupsNamespaceName",
    #     next_token: "PaginationToken",
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.rule_groups_namespaces #=> Array
    #   resp.rule_groups_namespaces[0].arn #=> String
    #   resp.rule_groups_namespaces[0].created_at #=> Time
    #   resp.rule_groups_namespaces[0].modified_at #=> Time
    #   resp.rule_groups_namespaces[0].name #=> String
    #   resp.rule_groups_namespaces[0].status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.rule_groups_namespaces[0].status.status_reason #=> String
    #   resp.rule_groups_namespaces[0].tags #=> Hash
    #   resp.rule_groups_namespaces[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListRuleGroupsNamespaces AWS API Documentation
    #
    # @overload list_rule_groups_namespaces(params = {})
    # @param [Hash] params ({})
    def list_rule_groups_namespaces(params = {}, options = {})
      req = build_request(:list_rule_groups_namespaces, params)
      req.send_request(options)
    end

    # The `ListScrapers` operation lists all of the scrapers in your
    # account. This includes scrapers being created or deleted. You can
    # optionally filter the returned list.
    #
    # @option params [Hash<String,Array>] :filters
    #   (Optional) A list of key-value pairs to filter the list of scrapers
    #   returned. Keys include `status`, `sourceArn`, `destinationArn`, and
    #   `alias`.
    #
    #   Filters on the same key are `OR`'d together, and filters on different
    #   keys are `AND`'d together. For example,
    #   `status=ACTIVE&status=CREATING&alias=Test`, will return all scrapers
    #   that have the alias Test, and are either in status ACTIVE or CREATING.
    #
    #   To find all active scrapers that are sending metrics to a specific
    #   Amazon Managed Service for Prometheus workspace, you would use the ARN
    #   of the workspace in a query:
    #
    #   `status=ACTIVE&destinationArn=arn:aws:aps:us-east-1:123456789012:workspace/ws-example1-1234-abcd-56ef-123456789012`
    #
    #   If this is included, it filters the results to only the scrapers that
    #   match the filter.
    #
    # @option params [Integer] :max_results
    #   Optional) The maximum number of scrapers to return in one
    #   `ListScrapers` operation. The range is 1-1000.
    #
    #   If you omit this parameter, the default of 100 is used.
    #
    # @option params [String] :next_token
    #   (Optional) The token for the next set of items to return. (You
    #   received this token from a previous call.)
    #
    # @return [Types::ListScrapersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScrapersResponse#next_token #next_token} => String
    #   * {Types::ListScrapersResponse#scrapers #scrapers} => Array&lt;Types::ScraperSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scrapers({
    #     filters: {
    #       "FilterKey" => ["FilterValue"],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.scrapers #=> Array
    #   resp.scrapers[0].alias #=> String
    #   resp.scrapers[0].arn #=> String
    #   resp.scrapers[0].created_at #=> Time
    #   resp.scrapers[0].destination.amp_configuration.workspace_arn #=> String
    #   resp.scrapers[0].last_modified_at #=> Time
    #   resp.scrapers[0].role_arn #=> String
    #   resp.scrapers[0].role_configuration.source_role_arn #=> String
    #   resp.scrapers[0].role_configuration.target_role_arn #=> String
    #   resp.scrapers[0].scraper_id #=> String
    #   resp.scrapers[0].source.eks_configuration.cluster_arn #=> String
    #   resp.scrapers[0].source.eks_configuration.security_group_ids #=> Array
    #   resp.scrapers[0].source.eks_configuration.security_group_ids[0] #=> String
    #   resp.scrapers[0].source.eks_configuration.subnet_ids #=> Array
    #   resp.scrapers[0].source.eks_configuration.subnet_ids[0] #=> String
    #   resp.scrapers[0].status.status_code #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "CREATION_FAILED", "UPDATE_FAILED", "DELETION_FAILED"
    #   resp.scrapers[0].status_reason #=> String
    #   resp.scrapers[0].tags #=> Hash
    #   resp.scrapers[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListScrapers AWS API Documentation
    #
    # @overload list_scrapers(params = {})
    # @param [Hash] params ({})
    def list_scrapers(params = {}, options = {})
      req = build_request(:list_scrapers, params)
      req.send_request(options)
    end

    # The `ListTagsForResource` operation returns the tags that are
    # associated with an Amazon Managed Service for Prometheus resource.
    # Currently, the only resources that can be tagged are scrapers,
    # workspaces, and rule groups namespaces.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to list tages for. Must be a workspace,
    #   scraper, or rule groups namespace resource.
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
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all of the Amazon Managed Service for Prometheus workspaces in
    # your account. This includes workspaces being created or deleted.
    #
    # @option params [String] :alias
    #   If this is included, it filters the results to only the workspaces
    #   with names that start with the value that you specify here.
    #
    #   Amazon Managed Service for Prometheus will automatically strip any
    #   blank spaces from the beginning and end of the alias that you specify.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workspaces to return per request. The default is
    #   100.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. You receive this token
    #   from a previous call, and use it to get the next page of results. The
    #   other parameters must be the same as the initial call.
    #
    #   For example, if your initial request has `maxResults` of 10, and there
    #   are 12 workspaces to return, then your initial request will return 10
    #   and a `nextToken`. Using the next token in a subsequent call will
    #   return the remaining 2 workspaces.
    #
    # @return [Types::ListWorkspacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkspacesResponse#next_token #next_token} => String
    #   * {Types::ListWorkspacesResponse#workspaces #workspaces} => Array&lt;Types::WorkspaceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workspaces({
    #     alias: "WorkspaceAlias",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.workspaces #=> Array
    #   resp.workspaces[0].alias #=> String
    #   resp.workspaces[0].arn #=> String
    #   resp.workspaces[0].created_at #=> Time
    #   resp.workspaces[0].kms_key_arn #=> String
    #   resp.workspaces[0].status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED"
    #   resp.workspaces[0].tags #=> Hash
    #   resp.workspaces[0].tags["TagKey"] #=> String
    #   resp.workspaces[0].workspace_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListWorkspaces AWS API Documentation
    #
    # @overload list_workspaces(params = {})
    # @param [Hash] params ({})
    def list_workspaces(params = {}, options = {})
      req = build_request(:list_workspaces, params)
      req.send_request(options)
    end

    # Updates an existing alert manager definition in a workspace. If the
    # workspace does not already have an alert manager definition, don't
    # use this operation to create it. Instead, use
    # `CreateAlertManagerDefinition`.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String, StringIO, File] :data
    #   The alert manager definition to use. A base64-encoded version of the
    #   YAML alert manager definition file.
    #
    #   For details about the alert manager definition, see
    #   [AlertManagedDefinitionData][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to update the alert manager definition in.
    #
    # @return [Types::PutAlertManagerDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAlertManagerDefinitionResponse#status #status} => Types::AlertManagerDefinitionStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_alert_manager_definition({
    #     client_token: "IdempotencyToken",
    #     data: "data", # required
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutAlertManagerDefinition AWS API Documentation
    #
    # @overload put_alert_manager_definition(params = {})
    # @param [Hash] params ({})
    def put_alert_manager_definition(params = {}, options = {})
      req = build_request(:put_alert_manager_definition, params)
      req.send_request(options)
    end

    # Updates an existing rule groups namespace within a workspace. A rule
    # groups namespace is associated with exactly one rules file. A
    # workspace can have multiple rule groups namespaces.
    #
    # Use this operation only to update existing rule groups namespaces. To
    # create a new rule groups namespace, use `CreateRuleGroupsNamespace`.
    #
    # You can't use this operation to add tags to an existing rule groups
    # namespace. Instead, use `TagResource`.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String, StringIO, File] :data
    #   The new rules file to use in the namespace. A base64-encoded version
    #   of the YAML rule groups file.
    #
    #   For details about the rule groups namespace structure, see
    #   [RuleGroupsNamespaceData][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html
    #
    # @option params [required, String] :name
    #   The name of the rule groups namespace that you are updating.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace where you are updating the rule groups
    #   namespace.
    #
    # @return [Types::PutRuleGroupsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRuleGroupsNamespaceResponse#arn #arn} => String
    #   * {Types::PutRuleGroupsNamespaceResponse#name #name} => String
    #   * {Types::PutRuleGroupsNamespaceResponse#status #status} => Types::RuleGroupsNamespaceStatus
    #   * {Types::PutRuleGroupsNamespaceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rule_groups_namespace({
    #     client_token: "IdempotencyToken",
    #     data: "data", # required
    #     name: "RuleGroupsNamespaceName", # required
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutRuleGroupsNamespace AWS API Documentation
    #
    # @overload put_rule_groups_namespace(params = {})
    # @param [Hash] params ({})
    def put_rule_groups_namespace(params = {}, options = {})
      req = build_request(:put_rule_groups_namespace, params)
      req.send_request(options)
    end

    # The `TagResource` operation associates tags with an Amazon Managed
    # Service for Prometheus resource. The only resources that can be tagged
    # are rule groups namespaces, scrapers, and workspaces.
    #
    # If you specify a new tag key for the resource, this tag is appended to
    # the list of tags associated with the resource. If you specify a tag
    # key that is already associated with the resource, the new tag value
    # that you specify replaces the previous value for that tag. To remove a
    # tag, use `UntagResource`.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to apply tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of tag keys and values to associate with the resource.
    #
    #   Keys must not begin with `aws:`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from an Amazon Managed Service for
    # Prometheus resource. The only resources that can be tagged are rule
    # groups namespaces, scrapers, and workspaces.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource from which to remove a tag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the log group ARN or the workspace ID of the current logging
    # configuration.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :log_group_arn
    #   The ARN of the CloudWatch log group to which the vended log data will
    #   be published.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to update the logging configuration for.
    #
    # @return [Types::UpdateLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLoggingConfigurationResponse#status #status} => Types::LoggingConfigurationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_logging_configuration({
    #     client_token: "IdempotencyToken",
    #     log_group_arn: "LogGroupArn", # required
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status.status_code #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"
    #   resp.status.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateLoggingConfiguration AWS API Documentation
    #
    # @overload update_logging_configuration(params = {})
    # @param [Hash] params ({})
    def update_logging_configuration(params = {}, options = {})
      req = build_request(:update_logging_configuration, params)
      req.send_request(options)
    end

    # Updates an existing scraper.
    #
    # You can't use this function to update the source from which the
    # scraper is collecting metrics. To change the source, delete the
    # scraper and create a new one.
    #
    # @option params [String] :alias
    #   The new alias of the scraper.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::Destination] :destination
    #   The new Amazon Managed Service for Prometheus workspace to send
    #   metrics to.
    #
    # @option params [Types::RoleConfiguration] :role_configuration
    #   The scraper role configuration for the workspace.
    #
    # @option params [Types::ScrapeConfiguration] :scrape_configuration
    #   Contains the base-64 encoded YAML configuration for the scraper.
    #
    #   <note markdown="1"> For more information about configuring a scraper, see [Using an Amazon
    #   Web Services managed collector][1] in the *Amazon Managed Service for
    #   Prometheus User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html
    #
    # @option params [required, String] :scraper_id
    #   The ID of the scraper to update.
    #
    # @return [Types::UpdateScraperResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateScraperResponse#arn #arn} => String
    #   * {Types::UpdateScraperResponse#scraper_id #scraper_id} => String
    #   * {Types::UpdateScraperResponse#status #status} => Types::ScraperStatus
    #   * {Types::UpdateScraperResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scraper({
    #     alias: "ScraperAlias",
    #     client_token: "IdempotencyToken",
    #     destination: {
    #       amp_configuration: {
    #         workspace_arn: "WorkspaceArn", # required
    #       },
    #     },
    #     role_configuration: {
    #       source_role_arn: "IamRoleArn",
    #       target_role_arn: "IamRoleArn",
    #     },
    #     scrape_configuration: {
    #       configuration_blob: "data",
    #     },
    #     scraper_id: "ScraperId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.scraper_id #=> String
    #   resp.status.status_code #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "CREATION_FAILED", "UPDATE_FAILED", "DELETION_FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateScraper AWS API Documentation
    #
    # @overload update_scraper(params = {})
    # @param [Hash] params ({})
    def update_scraper(params = {}, options = {})
      req = build_request(:update_scraper, params)
      req.send_request(options)
    end

    # Updates the alias of an existing workspace.
    #
    # @option params [String] :alias
    #   The new alias for the workspace. It does not need to be unique.
    #
    #   Amazon Managed Service for Prometheus will automatically strip any
    #   blank spaces from the beginning and end of the alias that you specify.
    #
    # @option params [String] :client_token
    #   A unique identifier that you can provide to ensure the idempotency of
    #   the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace_alias({
    #     alias: "WorkspaceAlias",
    #     client_token: "IdempotencyToken",
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateWorkspaceAlias AWS API Documentation
    #
    # @overload update_workspace_alias(params = {})
    # @param [Hash] params ({})
    def update_workspace_alias(params = {}, options = {})
      req = build_request(:update_workspace_alias, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PrometheusService')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-prometheusservice'
      context[:gem_version] = '1.47.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name       | params                      | :delay   | :max_attempts |
    # | ----------------- | --------------------------- | -------- | ------------- |
    # | scraper_active    | {Client#describe_scraper}   | 2        | 60            |
    # | scraper_deleted   | {Client#describe_scraper}   | 2        | 60            |
    # | workspace_active  | {Client#describe_workspace} | 2        | 60            |
    # | workspace_deleted | {Client#describe_workspace} | 2        | 60            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        scraper_active: Waiters::ScraperActive,
        scraper_deleted: Waiters::ScraperDeleted,
        workspace_active: Waiters::WorkspaceActive,
        workspace_deleted: Waiters::WorkspaceDeleted
      }
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
