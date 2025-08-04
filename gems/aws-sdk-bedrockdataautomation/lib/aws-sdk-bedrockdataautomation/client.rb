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

module Aws::BedrockDataAutomation
  # An API client for BedrockDataAutomation.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BedrockDataAutomation::Client.new(
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

    @identifier = :bedrockdataautomation

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
    add_plugin(Aws::BedrockDataAutomation::Plugins::Endpoints)

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
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
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
    #   @option options [Aws::BedrockDataAutomation::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::BedrockDataAutomation::EndpointParameters`.
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

    # Creates an Amazon Bedrock Data Automation Blueprint
    #
    # @option params [required, String] :blueprint_name
    #   Name of the Blueprint
    #
    # @option params [required, String] :type
    #   Type
    #
    # @option params [String] :blueprint_stage
    #   Stage of the Blueprint
    #
    # @option params [required, String] :schema
    #   Schema of the blueprint
    #
    # @option params [String] :client_token
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   KMS Encryption Configuration
    #
    # @option params [Array<Types::Tag>] :tags
    #   List of tags
    #
    # @return [Types::CreateBlueprintResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBlueprintResponse#blueprint #blueprint} => Types::Blueprint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_blueprint({
    #     blueprint_name: "BlueprintName", # required
    #     type: "DOCUMENT", # required, accepts DOCUMENT, IMAGE, AUDIO, VIDEO
    #     blueprint_stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #     schema: "BlueprintSchema", # required
    #     client_token: "ClientToken",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId", # required
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue",
    #       },
    #     },
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
    #   resp.blueprint.blueprint_arn #=> String
    #   resp.blueprint.schema #=> String
    #   resp.blueprint.type #=> String, one of "DOCUMENT", "IMAGE", "AUDIO", "VIDEO"
    #   resp.blueprint.creation_time #=> Time
    #   resp.blueprint.last_modified_time #=> Time
    #   resp.blueprint.blueprint_name #=> String
    #   resp.blueprint.blueprint_version #=> String
    #   resp.blueprint.blueprint_stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.blueprint.kms_key_id #=> String
    #   resp.blueprint.kms_encryption_context #=> Hash
    #   resp.blueprint.kms_encryption_context["EncryptionContextKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/CreateBlueprint AWS API Documentation
    #
    # @overload create_blueprint(params = {})
    # @param [Hash] params ({})
    def create_blueprint(params = {}, options = {})
      req = build_request(:create_blueprint, params)
      req.send_request(options)
    end

    # Creates a new version of an existing Amazon Bedrock Data Automation
    # Blueprint
    #
    # @option params [required, String] :blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #
    # @option params [String] :client_token
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateBlueprintVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBlueprintVersionResponse#blueprint #blueprint} => Types::Blueprint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_blueprint_version({
    #     blueprint_arn: "BlueprintArn", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprint.blueprint_arn #=> String
    #   resp.blueprint.schema #=> String
    #   resp.blueprint.type #=> String, one of "DOCUMENT", "IMAGE", "AUDIO", "VIDEO"
    #   resp.blueprint.creation_time #=> Time
    #   resp.blueprint.last_modified_time #=> Time
    #   resp.blueprint.blueprint_name #=> String
    #   resp.blueprint.blueprint_version #=> String
    #   resp.blueprint.blueprint_stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.blueprint.kms_key_id #=> String
    #   resp.blueprint.kms_encryption_context #=> Hash
    #   resp.blueprint.kms_encryption_context["EncryptionContextKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/CreateBlueprintVersion AWS API Documentation
    #
    # @overload create_blueprint_version(params = {})
    # @param [Hash] params ({})
    def create_blueprint_version(params = {}, options = {})
      req = build_request(:create_blueprint_version, params)
      req.send_request(options)
    end

    # Creates an Amazon Bedrock Data Automation Project
    #
    # @option params [required, String] :project_name
    #   Name of the DataAutomationProject
    #
    # @option params [String] :project_description
    #   Description of the DataAutomationProject
    #
    # @option params [String] :project_stage
    #   Stage of the Project
    #
    # @option params [required, Types::StandardOutputConfiguration] :standard_output_configuration
    #   Standard output configuration
    #
    # @option params [Types::CustomOutputConfiguration] :custom_output_configuration
    #   Custom output configuration
    #
    # @option params [Types::OverrideConfiguration] :override_configuration
    #   Override configuration
    #
    # @option params [String] :client_token
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   KMS Encryption Configuration
    #
    # @option params [Array<Types::Tag>] :tags
    #   List of tags
    #
    # @return [Types::CreateDataAutomationProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataAutomationProjectResponse#project_arn #project_arn} => String
    #   * {Types::CreateDataAutomationProjectResponse#project_stage #project_stage} => String
    #   * {Types::CreateDataAutomationProjectResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_automation_project({
    #     project_name: "DataAutomationProjectName", # required
    #     project_description: "DataAutomationProjectDescription",
    #     project_stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #     standard_output_configuration: { # required
    #       document: {
    #         extraction: {
    #           granularity: { # required
    #             types: ["DOCUMENT"], # accepts DOCUMENT, PAGE, ELEMENT, WORD, LINE
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           },
    #         },
    #         generative_field: {
    #           state: "ENABLED", # required, accepts ENABLED, DISABLED
    #         },
    #         output_format: {
    #           text_format: { # required
    #             types: ["PLAIN_TEXT"], # accepts PLAIN_TEXT, MARKDOWN, HTML, CSV
    #           },
    #           additional_file_format: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           },
    #         },
    #       },
    #       image: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #             types: ["CONTENT_MODERATION"], # accepts CONTENT_MODERATION, TEXT_DETECTION, LOGOS
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           },
    #         },
    #         generative_field: {
    #           state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           types: ["IMAGE_SUMMARY"], # accepts IMAGE_SUMMARY, IAB
    #         },
    #       },
    #       video: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #             types: ["CONTENT_MODERATION"], # accepts CONTENT_MODERATION, TEXT_DETECTION, TRANSCRIPT, LOGOS
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           },
    #         },
    #         generative_field: {
    #           state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           types: ["VIDEO_SUMMARY"], # accepts VIDEO_SUMMARY, IAB, CHAPTER_SUMMARY
    #         },
    #       },
    #       audio: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #             types: ["AUDIO_CONTENT_MODERATION"], # accepts AUDIO_CONTENT_MODERATION, TRANSCRIPT, TOPIC_CONTENT_MODERATION
    #           },
    #         },
    #         generative_field: {
    #           state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           types: ["AUDIO_SUMMARY"], # accepts AUDIO_SUMMARY, IAB, TOPIC_SUMMARY
    #         },
    #       },
    #     },
    #     custom_output_configuration: {
    #       blueprints: [
    #         {
    #           blueprint_arn: "BlueprintArn", # required
    #           blueprint_version: "BlueprintVersion",
    #           blueprint_stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #         },
    #       ],
    #     },
    #     override_configuration: {
    #       document: {
    #         splitter: {
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #         modality_processing: {
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       },
    #       image: {
    #         modality_processing: {
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       },
    #       video: {
    #         modality_processing: {
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       },
    #       audio: {
    #         modality_processing: {
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       },
    #       modality_routing: {
    #         jpeg: "IMAGE", # accepts IMAGE, DOCUMENT, AUDIO, VIDEO
    #         png: "IMAGE", # accepts IMAGE, DOCUMENT, AUDIO, VIDEO
    #         mp4: "IMAGE", # accepts IMAGE, DOCUMENT, AUDIO, VIDEO
    #         mov: "IMAGE", # accepts IMAGE, DOCUMENT, AUDIO, VIDEO
    #       },
    #     },
    #     client_token: "ClientToken",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId", # required
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue",
    #       },
    #     },
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
    #   resp.project_arn #=> String
    #   resp.project_stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.status #=> String, one of "COMPLETED", "IN_PROGRESS", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/CreateDataAutomationProject AWS API Documentation
    #
    # @overload create_data_automation_project(params = {})
    # @param [Hash] params ({})
    def create_data_automation_project(params = {}, options = {})
      req = build_request(:create_data_automation_project, params)
      req.send_request(options)
    end

    # Deletes an existing Amazon Bedrock Data Automation Blueprint
    #
    # @option params [required, String] :blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #
    # @option params [String] :blueprint_version
    #   Optional field to delete a specific Blueprint version
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_blueprint({
    #     blueprint_arn: "BlueprintArn", # required
    #     blueprint_version: "BlueprintVersion",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DeleteBlueprint AWS API Documentation
    #
    # @overload delete_blueprint(params = {})
    # @param [Hash] params ({})
    def delete_blueprint(params = {}, options = {})
      req = build_request(:delete_blueprint, params)
      req.send_request(options)
    end

    # Deletes an existing Amazon Bedrock Data Automation Project
    #
    # @option params [required, String] :project_arn
    #   ARN generated at the server side when a DataAutomationProject is
    #   created
    #
    # @return [Types::DeleteDataAutomationProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataAutomationProjectResponse#project_arn #project_arn} => String
    #   * {Types::DeleteDataAutomationProjectResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_automation_project({
    #     project_arn: "DataAutomationProjectArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.project_arn #=> String
    #   resp.status #=> String, one of "COMPLETED", "IN_PROGRESS", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DeleteDataAutomationProject AWS API Documentation
    #
    # @overload delete_data_automation_project(params = {})
    # @param [Hash] params ({})
    def delete_data_automation_project(params = {}, options = {})
      req = build_request(:delete_data_automation_project, params)
      req.send_request(options)
    end

    # Gets an existing Amazon Bedrock Data Automation Blueprint
    #
    # @option params [required, String] :blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #
    # @option params [String] :blueprint_version
    #   Optional field to get a specific Blueprint version
    #
    # @option params [String] :blueprint_stage
    #   Optional field to get a specific Blueprint stage
    #
    # @return [Types::GetBlueprintResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlueprintResponse#blueprint #blueprint} => Types::Blueprint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_blueprint({
    #     blueprint_arn: "BlueprintArn", # required
    #     blueprint_version: "BlueprintVersion",
    #     blueprint_stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprint.blueprint_arn #=> String
    #   resp.blueprint.schema #=> String
    #   resp.blueprint.type #=> String, one of "DOCUMENT", "IMAGE", "AUDIO", "VIDEO"
    #   resp.blueprint.creation_time #=> Time
    #   resp.blueprint.last_modified_time #=> Time
    #   resp.blueprint.blueprint_name #=> String
    #   resp.blueprint.blueprint_version #=> String
    #   resp.blueprint.blueprint_stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.blueprint.kms_key_id #=> String
    #   resp.blueprint.kms_encryption_context #=> Hash
    #   resp.blueprint.kms_encryption_context["EncryptionContextKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/GetBlueprint AWS API Documentation
    #
    # @overload get_blueprint(params = {})
    # @param [Hash] params ({})
    def get_blueprint(params = {}, options = {})
      req = build_request(:get_blueprint, params)
      req.send_request(options)
    end

    # Gets an existing Amazon Bedrock Data Automation Project
    #
    # @option params [required, String] :project_arn
    #   ARN generated at the server side when a DataAutomationProject is
    #   created
    #
    # @option params [String] :project_stage
    #   Optional field to delete a specific DataAutomationProject stage
    #
    # @return [Types::GetDataAutomationProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataAutomationProjectResponse#project #project} => Types::DataAutomationProject
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_automation_project({
    #     project_arn: "DataAutomationProjectArn", # required
    #     project_stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.project.project_arn #=> String
    #   resp.project.creation_time #=> Time
    #   resp.project.last_modified_time #=> Time
    #   resp.project.project_name #=> String
    #   resp.project.project_stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.project.project_description #=> String
    #   resp.project.standard_output_configuration.document.extraction.granularity.types #=> Array
    #   resp.project.standard_output_configuration.document.extraction.granularity.types[0] #=> String, one of "DOCUMENT", "PAGE", "ELEMENT", "WORD", "LINE"
    #   resp.project.standard_output_configuration.document.extraction.bounding_box.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.standard_output_configuration.document.generative_field.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.standard_output_configuration.document.output_format.text_format.types #=> Array
    #   resp.project.standard_output_configuration.document.output_format.text_format.types[0] #=> String, one of "PLAIN_TEXT", "MARKDOWN", "HTML", "CSV"
    #   resp.project.standard_output_configuration.document.output_format.additional_file_format.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.standard_output_configuration.image.extraction.category.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.standard_output_configuration.image.extraction.category.types #=> Array
    #   resp.project.standard_output_configuration.image.extraction.category.types[0] #=> String, one of "CONTENT_MODERATION", "TEXT_DETECTION", "LOGOS"
    #   resp.project.standard_output_configuration.image.extraction.bounding_box.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.standard_output_configuration.image.generative_field.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.standard_output_configuration.image.generative_field.types #=> Array
    #   resp.project.standard_output_configuration.image.generative_field.types[0] #=> String, one of "IMAGE_SUMMARY", "IAB"
    #   resp.project.standard_output_configuration.video.extraction.category.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.standard_output_configuration.video.extraction.category.types #=> Array
    #   resp.project.standard_output_configuration.video.extraction.category.types[0] #=> String, one of "CONTENT_MODERATION", "TEXT_DETECTION", "TRANSCRIPT", "LOGOS"
    #   resp.project.standard_output_configuration.video.extraction.bounding_box.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.standard_output_configuration.video.generative_field.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.standard_output_configuration.video.generative_field.types #=> Array
    #   resp.project.standard_output_configuration.video.generative_field.types[0] #=> String, one of "VIDEO_SUMMARY", "IAB", "CHAPTER_SUMMARY"
    #   resp.project.standard_output_configuration.audio.extraction.category.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.standard_output_configuration.audio.extraction.category.types #=> Array
    #   resp.project.standard_output_configuration.audio.extraction.category.types[0] #=> String, one of "AUDIO_CONTENT_MODERATION", "TRANSCRIPT", "TOPIC_CONTENT_MODERATION"
    #   resp.project.standard_output_configuration.audio.generative_field.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.standard_output_configuration.audio.generative_field.types #=> Array
    #   resp.project.standard_output_configuration.audio.generative_field.types[0] #=> String, one of "AUDIO_SUMMARY", "IAB", "TOPIC_SUMMARY"
    #   resp.project.custom_output_configuration.blueprints #=> Array
    #   resp.project.custom_output_configuration.blueprints[0].blueprint_arn #=> String
    #   resp.project.custom_output_configuration.blueprints[0].blueprint_version #=> String
    #   resp.project.custom_output_configuration.blueprints[0].blueprint_stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.project.override_configuration.document.splitter.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.override_configuration.document.modality_processing.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.override_configuration.image.modality_processing.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.override_configuration.video.modality_processing.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.override_configuration.audio.modality_processing.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.override_configuration.modality_routing.jpeg #=> String, one of "IMAGE", "DOCUMENT", "AUDIO", "VIDEO"
    #   resp.project.override_configuration.modality_routing.png #=> String, one of "IMAGE", "DOCUMENT", "AUDIO", "VIDEO"
    #   resp.project.override_configuration.modality_routing.mp4 #=> String, one of "IMAGE", "DOCUMENT", "AUDIO", "VIDEO"
    #   resp.project.override_configuration.modality_routing.mov #=> String, one of "IMAGE", "DOCUMENT", "AUDIO", "VIDEO"
    #   resp.project.status #=> String, one of "COMPLETED", "IN_PROGRESS", "FAILED"
    #   resp.project.kms_key_id #=> String
    #   resp.project.kms_encryption_context #=> Hash
    #   resp.project.kms_encryption_context["EncryptionContextKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/GetDataAutomationProject AWS API Documentation
    #
    # @overload get_data_automation_project(params = {})
    # @param [Hash] params ({})
    def get_data_automation_project(params = {}, options = {})
      req = build_request(:get_data_automation_project, params)
      req.send_request(options)
    end

    # Lists all existing Amazon Bedrock Data Automation Blueprints
    #
    # @option params [String] :blueprint_arn
    #   ARN of a Blueprint
    #
    # @option params [String] :resource_owner
    #   Resource Owner
    #
    # @option params [String] :blueprint_stage_filter
    #   Blueprint Stage filter
    #
    # @option params [Integer] :max_results
    #   Max Results
    #
    # @option params [String] :next_token
    #   Pagination token
    #
    # @option params [Types::DataAutomationProjectFilter] :project_filter
    #   Data Automation Project Filter
    #
    # @return [Types::ListBlueprintsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBlueprintsResponse#blueprints #blueprints} => Array&lt;Types::BlueprintSummary&gt;
    #   * {Types::ListBlueprintsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_blueprints({
    #     blueprint_arn: "BlueprintArn",
    #     resource_owner: "SERVICE", # accepts SERVICE, ACCOUNT
    #     blueprint_stage_filter: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE, ALL
    #     max_results: 1,
    #     next_token: "NextToken",
    #     project_filter: {
    #       project_arn: "DataAutomationProjectArn", # required
    #       project_stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprints #=> Array
    #   resp.blueprints[0].blueprint_arn #=> String
    #   resp.blueprints[0].blueprint_version #=> String
    #   resp.blueprints[0].blueprint_stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.blueprints[0].blueprint_name #=> String
    #   resp.blueprints[0].creation_time #=> Time
    #   resp.blueprints[0].last_modified_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ListBlueprints AWS API Documentation
    #
    # @overload list_blueprints(params = {})
    # @param [Hash] params ({})
    def list_blueprints(params = {}, options = {})
      req = build_request(:list_blueprints, params)
      req.send_request(options)
    end

    # Lists all existing Amazon Bedrock Data Automation Projects
    #
    # @option params [Integer] :max_results
    #   Max Results
    #
    # @option params [String] :next_token
    #   Pagination token
    #
    # @option params [String] :project_stage_filter
    #   Project Stage filter
    #
    # @option params [Types::BlueprintFilter] :blueprint_filter
    #   Blueprint Filter
    #
    # @option params [String] :resource_owner
    #   Resource Owner
    #
    # @return [Types::ListDataAutomationProjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataAutomationProjectsResponse#projects #projects} => Array&lt;Types::DataAutomationProjectSummary&gt;
    #   * {Types::ListDataAutomationProjectsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_automation_projects({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     project_stage_filter: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE, ALL
    #     blueprint_filter: {
    #       blueprint_arn: "BlueprintArn", # required
    #       blueprint_version: "BlueprintVersion",
    #       blueprint_stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #     },
    #     resource_owner: "SERVICE", # accepts SERVICE, ACCOUNT
    #   })
    #
    # @example Response structure
    #
    #   resp.projects #=> Array
    #   resp.projects[0].project_arn #=> String
    #   resp.projects[0].project_stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.projects[0].project_name #=> String
    #   resp.projects[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ListDataAutomationProjects AWS API Documentation
    #
    # @overload list_data_automation_projects(params = {})
    # @param [Hash] params ({})
    def list_data_automation_projects(params = {}, options = {})
      req = build_request(:list_data_automation_projects, params)
      req.send_request(options)
    end

    # List tags for an Amazon Bedrock Data Automation resource
    #
    # @option params [required, String] :resource_arn
    #   ARN of a taggable resource
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Tag an Amazon Bedrock Data Automation resource
    #
    # @option params [required, String] :resource_arn
    #   ARN of a taggable resource
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   List of tags
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untag an Amazon Bedrock Data Automation resource
    #
    # @option params [required, String] :resource_arn
    #   ARN of a taggable resource
    #
    # @option params [required, Array<String>] :tag_keys
    #   List of tag keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Bedrock Data Automation Blueprint
    #
    # @option params [required, String] :blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #
    # @option params [required, String] :schema
    #   Schema of the blueprint
    #
    # @option params [String] :blueprint_stage
    #   Stage of the Blueprint
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   KMS Encryption Configuration
    #
    # @return [Types::UpdateBlueprintResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBlueprintResponse#blueprint #blueprint} => Types::Blueprint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_blueprint({
    #     blueprint_arn: "BlueprintArn", # required
    #     schema: "BlueprintSchema", # required
    #     blueprint_stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId", # required
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprint.blueprint_arn #=> String
    #   resp.blueprint.schema #=> String
    #   resp.blueprint.type #=> String, one of "DOCUMENT", "IMAGE", "AUDIO", "VIDEO"
    #   resp.blueprint.creation_time #=> Time
    #   resp.blueprint.last_modified_time #=> Time
    #   resp.blueprint.blueprint_name #=> String
    #   resp.blueprint.blueprint_version #=> String
    #   resp.blueprint.blueprint_stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.blueprint.kms_key_id #=> String
    #   resp.blueprint.kms_encryption_context #=> Hash
    #   resp.blueprint.kms_encryption_context["EncryptionContextKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/UpdateBlueprint AWS API Documentation
    #
    # @overload update_blueprint(params = {})
    # @param [Hash] params ({})
    def update_blueprint(params = {}, options = {})
      req = build_request(:update_blueprint, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Bedrock Data Automation Project
    #
    # @option params [required, String] :project_arn
    #   ARN generated at the server side when a DataAutomationProject is
    #   created
    #
    # @option params [String] :project_stage
    #   Stage of the Project
    #
    # @option params [String] :project_description
    #   Description of the DataAutomationProject
    #
    # @option params [required, Types::StandardOutputConfiguration] :standard_output_configuration
    #   Standard output configuration
    #
    # @option params [Types::CustomOutputConfiguration] :custom_output_configuration
    #   Custom output configuration
    #
    # @option params [Types::OverrideConfiguration] :override_configuration
    #   Override configuration
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   KMS Encryption Configuration
    #
    # @return [Types::UpdateDataAutomationProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataAutomationProjectResponse#project_arn #project_arn} => String
    #   * {Types::UpdateDataAutomationProjectResponse#project_stage #project_stage} => String
    #   * {Types::UpdateDataAutomationProjectResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_automation_project({
    #     project_arn: "DataAutomationProjectArn", # required
    #     project_stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #     project_description: "DataAutomationProjectDescription",
    #     standard_output_configuration: { # required
    #       document: {
    #         extraction: {
    #           granularity: { # required
    #             types: ["DOCUMENT"], # accepts DOCUMENT, PAGE, ELEMENT, WORD, LINE
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           },
    #         },
    #         generative_field: {
    #           state: "ENABLED", # required, accepts ENABLED, DISABLED
    #         },
    #         output_format: {
    #           text_format: { # required
    #             types: ["PLAIN_TEXT"], # accepts PLAIN_TEXT, MARKDOWN, HTML, CSV
    #           },
    #           additional_file_format: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           },
    #         },
    #       },
    #       image: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #             types: ["CONTENT_MODERATION"], # accepts CONTENT_MODERATION, TEXT_DETECTION, LOGOS
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           },
    #         },
    #         generative_field: {
    #           state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           types: ["IMAGE_SUMMARY"], # accepts IMAGE_SUMMARY, IAB
    #         },
    #       },
    #       video: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #             types: ["CONTENT_MODERATION"], # accepts CONTENT_MODERATION, TEXT_DETECTION, TRANSCRIPT, LOGOS
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           },
    #         },
    #         generative_field: {
    #           state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           types: ["VIDEO_SUMMARY"], # accepts VIDEO_SUMMARY, IAB, CHAPTER_SUMMARY
    #         },
    #       },
    #       audio: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED", # required, accepts ENABLED, DISABLED
    #             types: ["AUDIO_CONTENT_MODERATION"], # accepts AUDIO_CONTENT_MODERATION, TRANSCRIPT, TOPIC_CONTENT_MODERATION
    #           },
    #         },
    #         generative_field: {
    #           state: "ENABLED", # required, accepts ENABLED, DISABLED
    #           types: ["AUDIO_SUMMARY"], # accepts AUDIO_SUMMARY, IAB, TOPIC_SUMMARY
    #         },
    #       },
    #     },
    #     custom_output_configuration: {
    #       blueprints: [
    #         {
    #           blueprint_arn: "BlueprintArn", # required
    #           blueprint_version: "BlueprintVersion",
    #           blueprint_stage: "DEVELOPMENT", # accepts DEVELOPMENT, LIVE
    #         },
    #       ],
    #     },
    #     override_configuration: {
    #       document: {
    #         splitter: {
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #         modality_processing: {
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       },
    #       image: {
    #         modality_processing: {
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       },
    #       video: {
    #         modality_processing: {
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       },
    #       audio: {
    #         modality_processing: {
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       },
    #       modality_routing: {
    #         jpeg: "IMAGE", # accepts IMAGE, DOCUMENT, AUDIO, VIDEO
    #         png: "IMAGE", # accepts IMAGE, DOCUMENT, AUDIO, VIDEO
    #         mp4: "IMAGE", # accepts IMAGE, DOCUMENT, AUDIO, VIDEO
    #         mov: "IMAGE", # accepts IMAGE, DOCUMENT, AUDIO, VIDEO
    #       },
    #     },
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId", # required
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.project_arn #=> String
    #   resp.project_stage #=> String, one of "DEVELOPMENT", "LIVE"
    #   resp.status #=> String, one of "COMPLETED", "IN_PROGRESS", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/UpdateDataAutomationProject AWS API Documentation
    #
    # @overload update_data_automation_project(params = {})
    # @param [Hash] params ({})
    def update_data_automation_project(params = {}, options = {})
      req = build_request(:update_data_automation_project, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::BedrockDataAutomation')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-bedrockdataautomation'
      context[:gem_version] = '1.14.0'
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
