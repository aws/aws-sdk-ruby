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
require 'aws-sdk-core/plugins/protocols/json_rpc'

module Aws::HealthLake
  # An API client for HealthLake.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::HealthLake::Client.new(
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

    @identifier = :healthlake

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::HealthLake::Plugins::Endpoints)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disables response data type conversions. The request parameters
    #     hash must be formatted exactly as the API expects.This option is useful
    #     when you want to ensure the highest level of performance by avoiding
    #     overhead of walking request parameters and response data structures.
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
    #   @option options [Aws::HealthLake::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::HealthLake::EndpointParameters`.
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

    # Creates a data transformation profile in DRAFT state. Specify a
    # built-in starter profile, an existing profile version, raw profile
    # content, or a sample data file as the source.
    #
    # @option params [required, String] :source_format
    #   The source data format that this profile converts from (Consolidated
    #   Clinical Document Architecture (C-CDA) or Comma-separated values
    #   (CSV)).
    #
    # @option params [required, Types::CreateDataTransformationProfileSource] :source
    #   The source for the initial profile content. Specify a built-in starter
    #   profile, an existing profile version to clone, raw profile content for
    #   CI/CD workflows, or a sample data file in Amazon S3.
    #
    # @option params [String] :kms_key_id
    #   The AWS Key Management Service (AWS KMS) key identifier used to
    #   encrypt the profile content at rest.
    #
    # @option params [String] :profile_description
    #   A human-readable description of the profile's purpose.
    #
    # @option params [required, String] :profile_name
    #   A name for the data transformation profile.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with the profile at creation time.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request but does not return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDataTransformationProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataTransformationProfileResponse#profile_id #profile_id} => String
    #   * {Types::CreateDataTransformationProfileResponse#version #version} => Integer
    #   * {Types::CreateDataTransformationProfileResponse#source_format #source_format} => String
    #   * {Types::CreateDataTransformationProfileResponse#target_format #target_format} => String
    #   * {Types::CreateDataTransformationProfileResponse#profile_name #profile_name} => String
    #   * {Types::CreateDataTransformationProfileResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_transformation_profile({
    #     source_format: "CCDA", # required, accepts CCDA, CSV
    #     source: { # required
    #       starter_profile: {
    #         starter_profile_name: "String", # required
    #       },
    #       existing_versioned_profile_id: {
    #         profile_id: "String", # required
    #         version: 1, # required
    #       },
    #       profile_mapping: {
    #         profile_mapping: { # required
    #           "String" => "String",
    #         },
    #       },
    #       sample_data: {
    #         s3_uri: "SampleDataS3Uri", # required
    #       },
    #     },
    #     kms_key_id: "KmsKeyId",
    #     profile_description: "ProfileDescription",
    #     profile_name: "ProfileNameString", # required
    #     tags: {
    #       "DataTransformationTagKey" => "DataTransformationTagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.version #=> Integer
    #   resp.source_format #=> String, one of "CCDA", "CSV"
    #   resp.target_format #=> String, one of "FHIR_R4"
    #   resp.profile_name #=> String
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/CreateDataTransformationProfile AWS API Documentation
    #
    # @overload create_data_transformation_profile(params = {})
    # @param [Hash] params ({})
    def create_data_transformation_profile(params = {}, options = {})
      req = build_request(:create_data_transformation_profile, params)
      req.send_request(options)
    end

    # Create a FHIR-enabled data store.
    #
    # @option params [String] :datastore_name
    #   The data store name (user-generated).
    #
    # @option params [required, String] :datastore_type_version
    #   The FHIR release version supported by the data store. Current support
    #   is for version `R4`.
    #
    # @option params [Types::SseConfiguration] :sse_configuration
    #   The server-side encryption key configuration for a customer-provided
    #   encryption key specified for creating a data store.
    #
    # @option params [Types::PreloadDataConfig] :preload_data_config
    #   An optional parameter to preload (import) open source Synthea FHIR
    #   data upon creation of the data store.
    #
    # @option params [String] :client_token
    #   An optional user-provided token to ensure API idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The resource tags applied to a data store when it is created.
    #
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   The identity provider configuration to use for the data store.
    #
    # @option params [Types::AnalyticsConfiguration] :analytics_configuration
    #   The analytics configuration for the data store.
    #
    # @option params [Types::NlpConfiguration] :nlp_configuration
    #   The natural language processing (NLP) configuration for the data
    #   store.
    #
    # @option params [Types::ProfileConfiguration] :profile_configuration
    #   The profile configuration for the data store.
    #
    # @return [Types::CreateFHIRDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFHIRDatastoreResponse#datastore_id #datastore_id} => String
    #   * {Types::CreateFHIRDatastoreResponse#datastore_arn #datastore_arn} => String
    #   * {Types::CreateFHIRDatastoreResponse#datastore_status #datastore_status} => String
    #   * {Types::CreateFHIRDatastoreResponse#datastore_endpoint #datastore_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fhir_datastore({
    #     datastore_name: "DatastoreName",
    #     datastore_type_version: "R4", # required, accepts R4
    #     sse_configuration: {
    #       kms_encryption_config: { # required
    #         cmk_type: "CUSTOMER_MANAGED_KMS_KEY", # required, accepts CUSTOMER_MANAGED_KMS_KEY, AWS_OWNED_KMS_KEY
    #         kms_key_id: "EncryptionKeyID",
    #       },
    #     },
    #     preload_data_config: {
    #       preload_data_type: "SYNTHEA", # required, accepts SYNTHEA
    #     },
    #     client_token: "ClientTokenString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     identity_provider_configuration: {
    #       authorization_strategy: "SMART_ON_FHIR_V1", # required, accepts SMART_ON_FHIR_V1, SMART_ON_FHIR, AWS_AUTH
    #       fine_grained_authorization_enabled: false,
    #       metadata: "ConfigurationMetadata",
    #       idp_lambda_arn: "LambdaArn",
    #     },
    #     analytics_configuration: {
    #       status: "ENABLED", # accepts ENABLED, ENABLING, DISABLED, DISABLING, PAUSING, PAUSED
    #     },
    #     nlp_configuration: {
    #       status: "ENABLED", # accepts ENABLED, ENABLING, DISABLED, DISABLING
    #     },
    #     profile_configuration: {
    #       default_profiles: ["HealthLakeString"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_id #=> String
    #   resp.datastore_arn #=> String
    #   resp.datastore_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"
    #   resp.datastore_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/CreateFHIRDatastore AWS API Documentation
    #
    # @overload create_fhir_datastore(params = {})
    # @param [Hash] params ({})
    def create_fhir_datastore(params = {}, options = {})
      req = build_request(:create_fhir_datastore, params)
      req.send_request(options)
    end

    # Deletes a data transformation profile and all its versions, including
    # the DRAFT and all published versions.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile to delete.
    #
    # @return [Types::DeleteDataTransformationProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataTransformationProfileResponse#profile_id #profile_id} => String
    #   * {Types::DeleteDataTransformationProfileResponse#profile_name #profile_name} => String
    #   * {Types::DeleteDataTransformationProfileResponse#deletion_time #deletion_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_transformation_profile({
    #     profile_id: "ProfileIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.profile_name #=> String
    #   resp.deletion_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DeleteDataTransformationProfile AWS API Documentation
    #
    # @overload delete_data_transformation_profile(params = {})
    # @param [Hash] params ({})
    def delete_data_transformation_profile(params = {}, options = {})
      req = build_request(:delete_data_transformation_profile, params)
      req.send_request(options)
    end

    # Delete a FHIR-enabled data store.
    #
    # @option params [required, String] :datastore_id
    #   The AWS-generated identifier for the data store to be deleted.
    #
    # @return [Types::DeleteFHIRDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFHIRDatastoreResponse#datastore_id #datastore_id} => String
    #   * {Types::DeleteFHIRDatastoreResponse#datastore_arn #datastore_arn} => String
    #   * {Types::DeleteFHIRDatastoreResponse#datastore_status #datastore_status} => String
    #   * {Types::DeleteFHIRDatastoreResponse#datastore_endpoint #datastore_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fhir_datastore({
    #     datastore_id: "DatastoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_id #=> String
    #   resp.datastore_arn #=> String
    #   resp.datastore_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"
    #   resp.datastore_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DeleteFHIRDatastore AWS API Documentation
    #
    # @overload delete_fhir_datastore(params = {})
    # @param [Hash] params ({})
    def delete_fhir_datastore(params = {}, options = {})
      req = build_request(:delete_fhir_datastore, params)
      req.send_request(options)
    end

    # Describes a data transformation job, including its current status,
    # configuration, and progress information.
    #
    # @option params [required, String] :job_id
    #   The unique identifier of the data transformation job to describe.
    #
    # @return [Types::DescribeDataTransformationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataTransformationJobResponse#transformation_job_properties #transformation_job_properties} => Types::TransformationJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_transformation_job({
    #     job_id: "DataTransformationJobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transformation_job_properties.job_id #=> String
    #   resp.transformation_job_properties.job_status #=> String, one of "SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"
    #   resp.transformation_job_properties.input_data_config.s3_uri #=> String
    #   resp.transformation_job_properties.input_data_config.source_format #=> String, one of "CCDA", "CSV"
    #   resp.transformation_job_properties.output_data_config.s3_configuration.s3_uri #=> String
    #   resp.transformation_job_properties.output_data_config.s3_configuration.kms_key_id #=> String
    #   resp.transformation_job_properties.data_access_role_arn #=> String
    #   resp.transformation_job_properties.submit_time #=> Time
    #   resp.transformation_job_properties.job_name #=> String
    #   resp.transformation_job_properties.profile_id #=> String
    #   resp.transformation_job_properties.profile_name #=> String
    #   resp.transformation_job_properties.profile_version #=> Integer
    #   resp.transformation_job_properties.end_time #=> Time
    #   resp.transformation_job_properties.drift_detection_enabled #=> Boolean
    #   resp.transformation_job_properties.provenance_enabled #=> Boolean
    #   resp.transformation_job_properties.message #=> String
    #   resp.transformation_job_properties.job_progress_report.total_files_scanned #=> Integer
    #   resp.transformation_job_properties.job_progress_report.total_files_converted #=> Integer
    #   resp.transformation_job_properties.job_progress_report.total_files_failed #=> Integer
    #   resp.transformation_job_properties.job_progress_report.total_resources_generated #=> Integer
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * data_transformation_job_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeDataTransformationJob AWS API Documentation
    #
    # @overload describe_data_transformation_job(params = {})
    # @param [Hash] params ({})
    def describe_data_transformation_job(params = {}, options = {})
      req = build_request(:describe_data_transformation_job, params)
      req.send_request(options)
    end

    # Get properties for a FHIR-enabled data store.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @return [Types::DescribeFHIRDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFHIRDatastoreResponse#datastore_properties #datastore_properties} => Types::DatastoreProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fhir_datastore({
    #     datastore_id: "DatastoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_properties.datastore_id #=> String
    #   resp.datastore_properties.datastore_arn #=> String
    #   resp.datastore_properties.datastore_name #=> String
    #   resp.datastore_properties.datastore_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"
    #   resp.datastore_properties.created_at #=> Time
    #   resp.datastore_properties.datastore_type_version #=> String, one of "R4"
    #   resp.datastore_properties.datastore_endpoint #=> String
    #   resp.datastore_properties.sse_configuration.kms_encryption_config.cmk_type #=> String, one of "CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"
    #   resp.datastore_properties.sse_configuration.kms_encryption_config.kms_key_id #=> String
    #   resp.datastore_properties.preload_data_config.preload_data_type #=> String, one of "SYNTHEA"
    #   resp.datastore_properties.identity_provider_configuration.authorization_strategy #=> String, one of "SMART_ON_FHIR_V1", "SMART_ON_FHIR", "AWS_AUTH"
    #   resp.datastore_properties.identity_provider_configuration.fine_grained_authorization_enabled #=> Boolean
    #   resp.datastore_properties.identity_provider_configuration.metadata #=> String
    #   resp.datastore_properties.identity_provider_configuration.idp_lambda_arn #=> String
    #   resp.datastore_properties.error_cause.error_message #=> String
    #   resp.datastore_properties.error_cause.error_category #=> String, one of "RETRYABLE_ERROR", "NON_RETRYABLE_ERROR"
    #   resp.datastore_properties.nlp_configuration.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.datastore_properties.analytics_configuration.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING", "PAUSING", "PAUSED"
    #   resp.datastore_properties.profile_configuration.default_profiles #=> Array
    #   resp.datastore_properties.profile_configuration.default_profiles[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * fhir_datastore_active
    #   * fhir_datastore_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRDatastore AWS API Documentation
    #
    # @overload describe_fhir_datastore(params = {})
    # @param [Hash] params ({})
    def describe_fhir_datastore(params = {}, options = {})
      req = build_request(:describe_fhir_datastore, params)
      req.send_request(options)
    end

    # Get FHIR export job properties.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier from which FHIR data is being exported from.
    #
    # @option params [required, String] :job_id
    #   The export job identifier.
    #
    # @return [Types::DescribeFHIRExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFHIRExportJobResponse#export_job_properties #export_job_properties} => Types::ExportJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fhir_export_job({
    #     datastore_id: "DatastoreId", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.export_job_properties.job_id #=> String
    #   resp.export_job_properties.job_name #=> String
    #   resp.export_job_properties.job_status #=> String, one of "SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"
    #   resp.export_job_properties.submit_time #=> Time
    #   resp.export_job_properties.end_time #=> Time
    #   resp.export_job_properties.datastore_id #=> String
    #   resp.export_job_properties.output_data_config.s3_configuration.s3_uri #=> String
    #   resp.export_job_properties.output_data_config.s3_configuration.kms_key_id #=> String
    #   resp.export_job_properties.data_access_role_arn #=> String
    #   resp.export_job_properties.message #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * fhir_export_job_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRExportJob AWS API Documentation
    #
    # @overload describe_fhir_export_job(params = {})
    # @param [Hash] params ({})
    def describe_fhir_export_job(params = {}, options = {})
      req = build_request(:describe_fhir_export_job, params)
      req.send_request(options)
    end

    # Get the import job properties to learn more about the job or job
    # progress.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [required, String] :job_id
    #   The import job identifier.
    #
    # @return [Types::DescribeFHIRImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFHIRImportJobResponse#import_job_properties #import_job_properties} => Types::ImportJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fhir_import_job({
    #     datastore_id: "DatastoreId", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job_properties.job_id #=> String
    #   resp.import_job_properties.job_name #=> String
    #   resp.import_job_properties.job_status #=> String, one of "SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"
    #   resp.import_job_properties.submit_time #=> Time
    #   resp.import_job_properties.end_time #=> Time
    #   resp.import_job_properties.datastore_id #=> String
    #   resp.import_job_properties.input_data_config.s3_uri #=> String
    #   resp.import_job_properties.job_output_data_config.s3_configuration.s3_uri #=> String
    #   resp.import_job_properties.job_output_data_config.s3_configuration.kms_key_id #=> String
    #   resp.import_job_properties.job_progress_report.total_number_of_scanned_files #=> Integer
    #   resp.import_job_properties.job_progress_report.total_size_of_scanned_files_in_mb #=> Float
    #   resp.import_job_properties.job_progress_report.total_number_of_imported_files #=> Integer
    #   resp.import_job_properties.job_progress_report.total_number_of_resources_scanned #=> Integer
    #   resp.import_job_properties.job_progress_report.total_number_of_resources_imported #=> Integer
    #   resp.import_job_properties.job_progress_report.total_number_of_resources_with_customer_error #=> Integer
    #   resp.import_job_properties.job_progress_report.total_number_of_files_read_with_customer_error #=> Integer
    #   resp.import_job_properties.job_progress_report.total_number_of_scanned_non_fhir_files #=> Integer
    #   resp.import_job_properties.job_progress_report.total_size_of_scanned_non_fhir_files_in_mb #=> Float
    #   resp.import_job_properties.job_progress_report.total_number_of_imported_non_fhir_files #=> Integer
    #   resp.import_job_properties.job_progress_report.total_number_of_non_fhir_resources_scanned #=> Integer
    #   resp.import_job_properties.job_progress_report.total_number_of_non_fhir_resources_imported #=> Integer
    #   resp.import_job_properties.job_progress_report.total_number_of_non_fhir_resources_with_customer_error #=> Integer
    #   resp.import_job_properties.job_progress_report.total_number_of_non_fhir_files_read_with_customer_error #=> Integer
    #   resp.import_job_properties.job_progress_report.throughput #=> Float
    #   resp.import_job_properties.job_progress_report.total_files_converted #=> Integer
    #   resp.import_job_properties.job_progress_report.total_resources_generated #=> Integer
    #   resp.import_job_properties.data_access_role_arn #=> String
    #   resp.import_job_properties.message #=> String
    #   resp.import_job_properties.validation_level #=> String, one of "strict", "structure-only", "minimal"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * fhir_import_job_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRImportJob AWS API Documentation
    #
    # @overload describe_fhir_import_job(params = {})
    # @param [Hash] params ({})
    def describe_fhir_import_job(params = {}, options = {})
      req = build_request(:describe_fhir_import_job, params)
      req.send_request(options)
    end

    # Retrieves a data transformation profile's metadata and profile
    # content at a specific version. Specify version 0 to retrieve the
    # DRAFT, a version number between 1 and 99 to retrieve a specific
    # published version, or omit the version to retrieve the latest
    # published version.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile to retrieve.
    #
    # @option params [Integer] :profile_version
    #   The version number to retrieve. Specify 0 to retrieve the DRAFT
    #   version. If you omit this parameter, the service returns the latest
    #   published version.
    #
    # @return [Types::GetDataTransformationProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataTransformationProfileResponse#profile_id #profile_id} => String
    #   * {Types::GetDataTransformationProfileResponse#version #version} => Integer
    #   * {Types::GetDataTransformationProfileResponse#source_format #source_format} => String
    #   * {Types::GetDataTransformationProfileResponse#target_format #target_format} => String
    #   * {Types::GetDataTransformationProfileResponse#profile_mapping #profile_mapping} => Hash&lt;String,String&gt;
    #   * {Types::GetDataTransformationProfileResponse#profile_name #profile_name} => String
    #   * {Types::GetDataTransformationProfileResponse#profile_description #profile_description} => String
    #   * {Types::GetDataTransformationProfileResponse#change_description #change_description} => String
    #   * {Types::GetDataTransformationProfileResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_transformation_profile({
    #     profile_id: "ProfileIdString", # required
    #     profile_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.version #=> Integer
    #   resp.source_format #=> String, one of "CCDA", "CSV"
    #   resp.target_format #=> String, one of "FHIR_R4"
    #   resp.profile_mapping #=> Hash
    #   resp.profile_mapping["ProfileMappingKey"] #=> String
    #   resp.profile_name #=> String
    #   resp.profile_description #=> String
    #   resp.change_description #=> String
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/GetDataTransformationProfile AWS API Documentation
    #
    # @overload get_data_transformation_profile(params = {})
    # @param [Hash] params ({})
    def get_data_transformation_profile(params = {}, options = {})
      req = build_request(:get_data_transformation_profile, params)
      req.send_request(options)
    end

    # Lists data transformation jobs for your AWS account. Results can be
    # filtered by status, job name, and submit time window. Results are
    # paginated. Use the `NextToken` parameter to retrieve additional
    # results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return per page. If you don't specify a
    #   value, the service returns up to 100 results.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous response. Pass this value to
    #   retrieve the next page of results.
    #
    # @option params [String] :job_status
    #   Filters the results to include only jobs with the specified status.
    #
    # @option params [String] :job_name
    #   Filters the results to include only jobs with the specified name.
    #
    # @option params [Time,DateTime,Date,Integer,String] :submitted_after
    #   Filters the results to include only jobs submitted at or after this
    #   timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :submitted_before
    #   Filters the results to include only jobs submitted at or before this
    #   timestamp.
    #
    # @return [Types::ListDataTransformationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataTransformationJobsResponse#items #items} => Array&lt;Types::TransformationJobSummary&gt;
    #   * {Types::ListDataTransformationJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_transformation_jobs({
    #     max_results: 1,
    #     next_token: "DataTransformationNextToken",
    #     job_status: "SUBMITTED", # accepts SUBMITTED, QUEUED, IN_PROGRESS, COMPLETED, COMPLETED_WITH_ERRORS, FAILED
    #     job_name: "DataTransformationJobName",
    #     submitted_after: Time.now,
    #     submitted_before: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].job_id #=> String
    #   resp.items[0].job_status #=> String, one of "SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"
    #   resp.items[0].submit_time #=> Time
    #   resp.items[0].job_name #=> String
    #   resp.items[0].end_time #=> Time
    #   resp.items[0].source_format #=> String, one of "CCDA", "CSV"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListDataTransformationJobs AWS API Documentation
    #
    # @overload list_data_transformation_jobs(params = {})
    # @param [Hash] params ({})
    def list_data_transformation_jobs(params = {}, options = {})
      req = build_request(:list_data_transformation_jobs, params)
      req.send_request(options)
    end

    # Lists all versions of a specific data transformation profile (DRAFT
    # and published), in reverse chronological order (newest first). Use
    # `GetDataTransformationProfile` to retrieve profile content. Results
    # are paginated. Use the `NextToken` parameter to retrieve additional
    # results.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile whose versions to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of profile versions to return per page. If you
    #   don't specify a value, the service returns up to 100 results.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous response. Pass this value to
    #   retrieve the next page of results.
    #
    # @return [Types::ListDataTransformationProfileVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataTransformationProfileVersionsResponse#items #items} => Array&lt;Types::DataTransformationProfileVersionSummary&gt;
    #   * {Types::ListDataTransformationProfileVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_transformation_profile_versions({
    #     profile_id: "ProfileIdString", # required
    #     max_results: 1,
    #     next_token: "DataTransformationNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].profile_id #=> String
    #   resp.items[0].version #=> Integer
    #   resp.items[0].source_format #=> String, one of "CCDA", "CSV"
    #   resp.items[0].target_format #=> String, one of "FHIR_R4"
    #   resp.items[0].profile_name #=> String
    #   resp.items[0].change_description #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListDataTransformationProfileVersions AWS API Documentation
    #
    # @overload list_data_transformation_profile_versions(params = {})
    # @param [Hash] params ({})
    def list_data_transformation_profile_versions(params = {}, options = {})
      req = build_request(:list_data_transformation_profile_versions, params)
      req.send_request(options)
    end

    # Lists all data transformation profiles in your account, returning the
    # latest version summary for each. Use `GetDataTransformationProfile` to
    # retrieve profile content. Results are paginated. Use the `NextToken`
    # parameter to retrieve additional results.
    #
    # @option params [required, String] :source_format
    #   Filters the results by source data format.
    #
    # @option params [Integer] :max_results
    #   The maximum number of profiles to return per page. If you don't
    #   specify a value, the service returns up to 100 results.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous response. Pass this value to
    #   retrieve the next page of results.
    #
    # @return [Types::ListDataTransformationProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataTransformationProfilesResponse#items #items} => Array&lt;Types::DataTransformationProfileSummary&gt;
    #   * {Types::ListDataTransformationProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_transformation_profiles({
    #     source_format: "CCDA", # required, accepts CCDA, CSV
    #     max_results: 1,
    #     next_token: "DataTransformationNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].profile_id #=> String
    #   resp.items[0].version #=> Integer
    #   resp.items[0].source_format #=> String, one of "CCDA", "CSV"
    #   resp.items[0].target_format #=> String, one of "FHIR_R4"
    #   resp.items[0].profile_name #=> String
    #   resp.items[0].profile_description #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListDataTransformationProfiles AWS API Documentation
    #
    # @overload list_data_transformation_profiles(params = {})
    # @param [Hash] params ({})
    def list_data_transformation_profiles(params = {}, options = {})
      req = build_request(:list_data_transformation_profiles, params)
      req.send_request(options)
    end

    # List all FHIR-enabled data stores in a user’s account, regardless of
    # data store status.
    #
    # @option params [Types::DatastoreFilter] :filter
    #   List all filters associated with a FHIR data store request.
    #
    # @option params [String] :next_token
    #   The token used to retrieve the next page of data stores when results
    #   are paginated.
    #
    # @option params [Integer] :max_results
    #   The maximum number of data stores returned on a page.
    #
    # @return [Types::ListFHIRDatastoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFHIRDatastoresResponse#datastore_properties_list #datastore_properties_list} => Array&lt;Types::DatastoreProperties&gt;
    #   * {Types::ListFHIRDatastoresResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fhir_datastores({
    #     filter: {
    #       datastore_name: "DatastoreName",
    #       datastore_status: "CREATING", # accepts CREATING, ACTIVE, DELETING, DELETED, CREATE_FAILED, UPDATING, UPDATE_FAILED
    #       created_before: Time.now,
    #       created_after: Time.now,
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_properties_list #=> Array
    #   resp.datastore_properties_list[0].datastore_id #=> String
    #   resp.datastore_properties_list[0].datastore_arn #=> String
    #   resp.datastore_properties_list[0].datastore_name #=> String
    #   resp.datastore_properties_list[0].datastore_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"
    #   resp.datastore_properties_list[0].created_at #=> Time
    #   resp.datastore_properties_list[0].datastore_type_version #=> String, one of "R4"
    #   resp.datastore_properties_list[0].datastore_endpoint #=> String
    #   resp.datastore_properties_list[0].sse_configuration.kms_encryption_config.cmk_type #=> String, one of "CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"
    #   resp.datastore_properties_list[0].sse_configuration.kms_encryption_config.kms_key_id #=> String
    #   resp.datastore_properties_list[0].preload_data_config.preload_data_type #=> String, one of "SYNTHEA"
    #   resp.datastore_properties_list[0].identity_provider_configuration.authorization_strategy #=> String, one of "SMART_ON_FHIR_V1", "SMART_ON_FHIR", "AWS_AUTH"
    #   resp.datastore_properties_list[0].identity_provider_configuration.fine_grained_authorization_enabled #=> Boolean
    #   resp.datastore_properties_list[0].identity_provider_configuration.metadata #=> String
    #   resp.datastore_properties_list[0].identity_provider_configuration.idp_lambda_arn #=> String
    #   resp.datastore_properties_list[0].error_cause.error_message #=> String
    #   resp.datastore_properties_list[0].error_cause.error_category #=> String, one of "RETRYABLE_ERROR", "NON_RETRYABLE_ERROR"
    #   resp.datastore_properties_list[0].nlp_configuration.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.datastore_properties_list[0].analytics_configuration.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING", "PAUSING", "PAUSED"
    #   resp.datastore_properties_list[0].profile_configuration.default_profiles #=> Array
    #   resp.datastore_properties_list[0].profile_configuration.default_profiles[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListFHIRDatastores AWS API Documentation
    #
    # @overload list_fhir_datastores(params = {})
    # @param [Hash] params ({})
    def list_fhir_datastores(params = {}, options = {})
      req = build_request(:list_fhir_datastores, params)
      req.send_request(options)
    end

    # Lists all FHIR export jobs associated with an account and their
    # statuses.
    #
    # @option params [required, String] :datastore_id
    #   Limits the response to the export job with the specified data store
    #   ID.
    #
    # @option params [String] :next_token
    #   A pagination token used to identify the next page of results to
    #   return.
    #
    # @option params [Integer] :max_results
    #   Limits the number of results returned for a ListFHIRExportJobs to a
    #   maximum quantity specified by the user.
    #
    # @option params [String] :job_name
    #   Limits the response to the export job with the specified job name.
    #
    # @option params [String] :job_status
    #   Limits the response to export jobs with the specified job status.
    #
    # @option params [Time,DateTime,Date,Integer,String] :submitted_before
    #   Limits the response to FHIR export jobs submitted before a user-
    #   specified date.
    #
    # @option params [Time,DateTime,Date,Integer,String] :submitted_after
    #   Limits the response to FHIR export jobs submitted after a
    #   user-specified date.
    #
    # @return [Types::ListFHIRExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFHIRExportJobsResponse#export_job_properties_list #export_job_properties_list} => Array&lt;Types::ExportJobProperties&gt;
    #   * {Types::ListFHIRExportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fhir_export_jobs({
    #     datastore_id: "DatastoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     job_name: "JobName",
    #     job_status: "SUBMITTED", # accepts SUBMITTED, QUEUED, IN_PROGRESS, COMPLETED_WITH_ERRORS, COMPLETED, FAILED, CANCEL_SUBMITTED, CANCEL_IN_PROGRESS, CANCEL_COMPLETED, CANCEL_FAILED
    #     submitted_before: Time.now,
    #     submitted_after: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.export_job_properties_list #=> Array
    #   resp.export_job_properties_list[0].job_id #=> String
    #   resp.export_job_properties_list[0].job_name #=> String
    #   resp.export_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"
    #   resp.export_job_properties_list[0].submit_time #=> Time
    #   resp.export_job_properties_list[0].end_time #=> Time
    #   resp.export_job_properties_list[0].datastore_id #=> String
    #   resp.export_job_properties_list[0].output_data_config.s3_configuration.s3_uri #=> String
    #   resp.export_job_properties_list[0].output_data_config.s3_configuration.kms_key_id #=> String
    #   resp.export_job_properties_list[0].data_access_role_arn #=> String
    #   resp.export_job_properties_list[0].message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListFHIRExportJobs AWS API Documentation
    #
    # @overload list_fhir_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_fhir_export_jobs(params = {}, options = {})
      req = build_request(:list_fhir_export_jobs, params)
      req.send_request(options)
    end

    # List all FHIR import jobs associated with an account and their
    # statuses.
    #
    # @option params [required, String] :datastore_id
    #   Limits the response to the import job with the specified data store
    #   ID.
    #
    # @option params [String] :next_token
    #   The pagination token used to identify the next page of results to
    #   return.
    #
    # @option params [Integer] :max_results
    #   Limits the number of results returned for `ListFHIRImportJobs` to a
    #   maximum quantity specified by the user.
    #
    # @option params [String] :job_name
    #   Limits the response to the import job with the specified job name.
    #
    # @option params [String] :job_status
    #   Limits the response to the import job with the specified job status.
    #
    # @option params [Time,DateTime,Date,Integer,String] :submitted_before
    #   Limits the response to FHIR import jobs submitted before a user-
    #   specified date.
    #
    # @option params [Time,DateTime,Date,Integer,String] :submitted_after
    #   Limits the response to FHIR import jobs submitted after a
    #   user-specified date.
    #
    # @return [Types::ListFHIRImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFHIRImportJobsResponse#import_job_properties_list #import_job_properties_list} => Array&lt;Types::ImportJobProperties&gt;
    #   * {Types::ListFHIRImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fhir_import_jobs({
    #     datastore_id: "DatastoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     job_name: "JobName",
    #     job_status: "SUBMITTED", # accepts SUBMITTED, QUEUED, IN_PROGRESS, COMPLETED_WITH_ERRORS, COMPLETED, FAILED, CANCEL_SUBMITTED, CANCEL_IN_PROGRESS, CANCEL_COMPLETED, CANCEL_FAILED
    #     submitted_before: Time.now,
    #     submitted_after: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job_properties_list #=> Array
    #   resp.import_job_properties_list[0].job_id #=> String
    #   resp.import_job_properties_list[0].job_name #=> String
    #   resp.import_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"
    #   resp.import_job_properties_list[0].submit_time #=> Time
    #   resp.import_job_properties_list[0].end_time #=> Time
    #   resp.import_job_properties_list[0].datastore_id #=> String
    #   resp.import_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.import_job_properties_list[0].job_output_data_config.s3_configuration.s3_uri #=> String
    #   resp.import_job_properties_list[0].job_output_data_config.s3_configuration.kms_key_id #=> String
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_scanned_files #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_size_of_scanned_files_in_mb #=> Float
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_imported_files #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_resources_scanned #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_resources_imported #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_resources_with_customer_error #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_files_read_with_customer_error #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_scanned_non_fhir_files #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_size_of_scanned_non_fhir_files_in_mb #=> Float
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_imported_non_fhir_files #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_non_fhir_resources_scanned #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_non_fhir_resources_imported #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_non_fhir_resources_with_customer_error #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_number_of_non_fhir_files_read_with_customer_error #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.throughput #=> Float
    #   resp.import_job_properties_list[0].job_progress_report.total_files_converted #=> Integer
    #   resp.import_job_properties_list[0].job_progress_report.total_resources_generated #=> Integer
    #   resp.import_job_properties_list[0].data_access_role_arn #=> String
    #   resp.import_job_properties_list[0].message #=> String
    #   resp.import_job_properties_list[0].validation_level #=> String, one of "strict", "structure-only", "minimal"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListFHIRImportJobs AWS API Documentation
    #
    # @overload list_fhir_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_fhir_import_jobs(params = {}, options = {})
      req = build_request(:list_fhir_import_jobs, params)
      req.send_request(options)
    end

    # Returns a list of all existing tags associated with a data store.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the data store to which tags are
    #   being added.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Promotes the current DRAFT version of a data transformation profile to
    # a new immutable published version. Also supports rollback by
    # publishing from a previously published version.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile to publish.
    #
    # @option params [required, String] :source_format
    #   The source data format of the profile.
    #
    # @option params [Integer] :from_existing_version
    #   The version number of a previously published version to republish as
    #   the new latest version. Use this parameter for rollback scenarios. If
    #   you omit this parameter, the service publishes the current DRAFT
    #   version.
    #
    # @option params [String] :change_description
    #   A description of what changed or why this version is being published.
    #
    # @return [Types::PublishDataTransformationProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PublishDataTransformationProfileResponse#profile_id #profile_id} => String
    #   * {Types::PublishDataTransformationProfileResponse#version #version} => Integer
    #   * {Types::PublishDataTransformationProfileResponse#source_format #source_format} => String
    #   * {Types::PublishDataTransformationProfileResponse#target_format #target_format} => String
    #   * {Types::PublishDataTransformationProfileResponse#profile_name #profile_name} => String
    #   * {Types::PublishDataTransformationProfileResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_data_transformation_profile({
    #     profile_id: "ProfileIdString", # required
    #     source_format: "CCDA", # required, accepts CCDA, CSV
    #     from_existing_version: 1,
    #     change_description: "ChangeDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.version #=> Integer
    #   resp.source_format #=> String, one of "CCDA", "CSV"
    #   resp.target_format #=> String, one of "FHIR_R4"
    #   resp.profile_name #=> String
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/PublishDataTransformationProfile AWS API Documentation
    #
    # @overload publish_data_transformation_profile(params = {})
    # @param [Hash] params ({})
    def publish_data_transformation_profile(params = {}, options = {})
      req = build_request(:publish_data_transformation_profile, params)
      req.send_request(options)
    end

    # Starts an asynchronous data transformation job that converts source
    # files from Amazon Simple Storage Service (Amazon S3) and writes the
    # output to Amazon S3 or AWS HealthLake.
    #
    # @option params [required, Types::TransformationInputDataConfig] :input_data_config
    #   The Amazon S3 location and format of the source files to transform.
    #
    # @option params [required, Types::TransformationOutputDataConfig] :output_data_config
    #   The Amazon S3 output location and AWS Key Management Service (AWS KMS)
    #   encryption configuration.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that AWS HealthLake assumes to read from and
    #   write to the specified Amazon S3 locations.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request but does not return an error.
    #
    # @option params [String] :job_name
    #   A descriptive name for the data transformation job.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the data transformation profile to use for
    #   conversion.
    #
    # @option params [Boolean] :drift_detection_enabled
    #   Specifies whether drift detection is enabled for this job. When
    #   enabled, AWS HealthLake writes a drift report to the output Amazon S3
    #   location alongside the converted files.
    #
    # @option params [Boolean] :provenance_enabled
    #   Specifies whether FHIR R4 Provenance resource generation is enabled
    #   for this transformation job. When provenance is enabled, the service
    #   also generates related DocumentReference and Device resources. If you
    #   don't specify a value, the default is `true`. To disable provenance
    #   output, set this parameter to `false`.
    #
    # @return [Types::StartDataTransformationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDataTransformationJobResponse#job_id #job_id} => String
    #   * {Types::StartDataTransformationJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_transformation_job({
    #     input_data_config: { # required
    #       s3_uri: "DataTransformationS3Uri", # required
    #       source_format: "CCDA", # accepts CCDA, CSV
    #     },
    #     output_data_config: { # required
    #       s3_configuration: { # required
    #         s3_uri: "DataTransformationS3Uri", # required
    #         kms_key_id: "KmsKeyId", # required
    #       },
    #     },
    #     data_access_role_arn: "DataTransformationIamRoleArn", # required
    #     client_token: "ClientToken", # required
    #     job_name: "DataTransformationJobName",
    #     profile_id: "ProfileIdString", # required
    #     drift_detection_enabled: false,
    #     provenance_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StartDataTransformationJob AWS API Documentation
    #
    # @overload start_data_transformation_job(params = {})
    # @param [Hash] params ({})
    def start_data_transformation_job(params = {}, options = {})
      req = build_request(:start_data_transformation_job, params)
      req.send_request(options)
    end

    # Start a FHIR export job.
    #
    # @option params [String] :job_name
    #   The export job name.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   The output data configuration supplied when the export job was
    #   started.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier from which files are being exported.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) used during initiation of the export
    #   job.
    #
    # @option params [String] :client_token
    #   An optional user provided token used for ensuring API idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartFHIRExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFHIRExportJobResponse#job_id #job_id} => String
    #   * {Types::StartFHIRExportJobResponse#job_status #job_status} => String
    #   * {Types::StartFHIRExportJobResponse#datastore_id #datastore_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fhir_export_job({
    #     job_name: "JobName",
    #     output_data_config: { # required
    #       s3_configuration: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "EncryptionKeyID", # required
    #       },
    #     },
    #     datastore_id: "DatastoreId", # required
    #     data_access_role_arn: "IamRoleArn", # required
    #     client_token: "ClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"
    #   resp.datastore_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StartFHIRExportJob AWS API Documentation
    #
    # @overload start_fhir_export_job(params = {})
    # @param [Hash] params ({})
    def start_fhir_export_job(params = {}, options = {})
      req = build_request(:start_fhir_export_job, params)
      req.send_request(options)
    end

    # Start importing bulk FHIR data into an ACTIVE data store. The import
    # job imports FHIR data found in the `InputDataConfig` object and stores
    # processing results in the `JobOutputDataConfig` object.
    #
    # @option params [String] :job_name
    #   The import job name.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   The input properties for the import job request.
    #
    # @option params [required, Types::OutputDataConfig] :job_output_data_config
    #   The output data configuration supplied when the export job was
    #   created.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) that grants access permission to AWS
    #   HealthLake.
    #
    # @option params [String] :client_token
    #   The optional user-provided token used for ensuring API idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :validation_level
    #   The validation level of the import job.
    #
    # @option params [String] :profile_id
    #   A bounded-length string value.
    #
    # @option params [String] :input_format
    #   A bounded-length string value.
    #
    # @option params [Boolean] :drift_detection_enabled
    #   A boolean value.
    #
    # @option params [Boolean] :provenance_enabled
    #   Specifies whether to enable provenance for the import job.
    #
    # @return [Types::StartFHIRImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFHIRImportJobResponse#job_id #job_id} => String
    #   * {Types::StartFHIRImportJobResponse#job_status #job_status} => String
    #   * {Types::StartFHIRImportJobResponse#datastore_id #datastore_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fhir_import_job({
    #     job_name: "JobName",
    #     input_data_config: { # required
    #       s3_uri: "S3Uri",
    #     },
    #     job_output_data_config: { # required
    #       s3_configuration: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "EncryptionKeyID", # required
    #       },
    #     },
    #     datastore_id: "DatastoreId", # required
    #     data_access_role_arn: "IamRoleArn", # required
    #     client_token: "ClientTokenString",
    #     validation_level: "strict", # accepts strict, structure-only, minimal
    #     profile_id: "BoundedLengthString",
    #     input_format: "BoundedLengthString",
    #     drift_detection_enabled: false,
    #     provenance_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"
    #   resp.datastore_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StartFHIRImportJob AWS API Documentation
    #
    # @overload start_fhir_import_job(params = {})
    # @param [Hash] params ({})
    def start_fhir_import_job(params = {}, options = {})
      req = build_request(:start_fhir_import_job, params)
      req.send_request(options)
    end

    # Add a user-specifed key and value tag to a data store.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that grants access to the data store
    #   tags are being added to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The user-specified key and value pair tags being added to a data
    #   store.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove a user-specifed key and value tag from a data store.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the data store from which tags are
    #   being removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys for the tags to be removed from the data store.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the DRAFT version (version 0) of a data transformation profile
    # with new profile content. The update replaces all existing DRAFT
    # content.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile to update.
    #
    # @option params [required, Hash<String,String>] :profile_mapping
    #   The new profile content for the DRAFT version. This is a full
    #   replacement of all profile files.
    #
    # @option params [String] :change_description
    #   A description of what changed in this update.
    #
    # @return [Types::UpdateDataTransformationProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataTransformationProfileResponse#profile_id #profile_id} => String
    #   * {Types::UpdateDataTransformationProfileResponse#source_format #source_format} => String
    #   * {Types::UpdateDataTransformationProfileResponse#target_format #target_format} => String
    #   * {Types::UpdateDataTransformationProfileResponse#profile_name #profile_name} => String
    #   * {Types::UpdateDataTransformationProfileResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_transformation_profile({
    #     profile_id: "ProfileIdString", # required
    #     profile_mapping: { # required
    #       "ProfileMappingKey" => "ProfileMappingValue",
    #     },
    #     change_description: "ChangeDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #   resp.source_format #=> String, one of "CCDA", "CSV"
    #   resp.target_format #=> String, one of "FHIR_R4"
    #   resp.profile_name #=> String
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UpdateDataTransformationProfile AWS API Documentation
    #
    # @overload update_data_transformation_profile(params = {})
    # @param [Hash] params ({})
    def update_data_transformation_profile(params = {}, options = {})
      req = build_request(:update_data_transformation_profile, params)
      req.send_request(options)
    end

    # Update the properties of a FHIR-enabled data store.
    #
    # @option params [required, String] :datastore_id
    #   The data store identifier.
    #
    # @option params [String] :datastore_name
    #   The data store name.
    #
    # @option params [Types::AnalyticsConfiguration] :analytics_configuration
    #   The analytics configuration for the data store.
    #
    # @option params [Types::NlpConfiguration] :nlp_configuration
    #   The natural language processing (NLP) configuration for the data
    #   store.
    #
    # @option params [Types::ProfileConfiguration] :profile_configuration
    #   The profile configuration for the data store.
    #
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   The identity provider configuration for the data store.
    #
    # @return [Types::UpdateFHIRDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFHIRDatastoreResponse#datastore_properties #datastore_properties} => Types::DatastoreProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fhir_datastore({
    #     datastore_id: "DatastoreId", # required
    #     datastore_name: "DatastoreName",
    #     analytics_configuration: {
    #       status: "ENABLED", # accepts ENABLED, ENABLING, DISABLED, DISABLING, PAUSING, PAUSED
    #     },
    #     nlp_configuration: {
    #       status: "ENABLED", # accepts ENABLED, ENABLING, DISABLED, DISABLING
    #     },
    #     profile_configuration: {
    #       default_profiles: ["HealthLakeString"],
    #     },
    #     identity_provider_configuration: {
    #       authorization_strategy: "SMART_ON_FHIR_V1", # required, accepts SMART_ON_FHIR_V1, SMART_ON_FHIR, AWS_AUTH
    #       fine_grained_authorization_enabled: false,
    #       metadata: "ConfigurationMetadata",
    #       idp_lambda_arn: "LambdaArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_properties.datastore_id #=> String
    #   resp.datastore_properties.datastore_arn #=> String
    #   resp.datastore_properties.datastore_name #=> String
    #   resp.datastore_properties.datastore_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"
    #   resp.datastore_properties.created_at #=> Time
    #   resp.datastore_properties.datastore_type_version #=> String, one of "R4"
    #   resp.datastore_properties.datastore_endpoint #=> String
    #   resp.datastore_properties.sse_configuration.kms_encryption_config.cmk_type #=> String, one of "CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"
    #   resp.datastore_properties.sse_configuration.kms_encryption_config.kms_key_id #=> String
    #   resp.datastore_properties.preload_data_config.preload_data_type #=> String, one of "SYNTHEA"
    #   resp.datastore_properties.identity_provider_configuration.authorization_strategy #=> String, one of "SMART_ON_FHIR_V1", "SMART_ON_FHIR", "AWS_AUTH"
    #   resp.datastore_properties.identity_provider_configuration.fine_grained_authorization_enabled #=> Boolean
    #   resp.datastore_properties.identity_provider_configuration.metadata #=> String
    #   resp.datastore_properties.identity_provider_configuration.idp_lambda_arn #=> String
    #   resp.datastore_properties.error_cause.error_message #=> String
    #   resp.datastore_properties.error_cause.error_category #=> String, one of "RETRYABLE_ERROR", "NON_RETRYABLE_ERROR"
    #   resp.datastore_properties.nlp_configuration.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.datastore_properties.analytics_configuration.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING", "PAUSING", "PAUSED"
    #   resp.datastore_properties.profile_configuration.default_profiles #=> Array
    #   resp.datastore_properties.profile_configuration.default_profiles[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UpdateFHIRDatastore AWS API Documentation
    #
    # @overload update_fhir_datastore(params = {})
    # @param [Hash] params ({})
    def update_fhir_datastore(params = {}, options = {})
      req = build_request(:update_fhir_datastore, params)
      req.send_request(options)
    end

    # Updates a data transformation profile using chat-based interaction
    # with an agent. Supports multi-turn conversations for iteratively
    # customizing profiles.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile to update via the agent.
    #
    # @option params [required, String] :source_format
    #   The source data format for the transformation.
    #
    # @option params [required, Types::AgentInputMessage] :input_message
    #   The message to send to the agent.
    #
    # @option params [String] :conversation_id
    #   The conversation identifier for multi-turn interactions. Omit to start
    #   a new conversation.
    #
    # @return [Types::UpdateProfileWithAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProfileWithAgentResponse#agent_response #agent_response} => Types::AgentOutputMessage
    #   * {Types::UpdateProfileWithAgentResponse#conversation_id #conversation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile_with_agent({
    #     profile_id: "ProfileIdString", # required
    #     source_format: "CCDA", # required, accepts CCDA, CSV
    #     input_message: { # required
    #       body: "AgentMessageString", # required
    #       type: "normal", # required, accepts normal, confirmation_response
    #     },
    #     conversation_id: "ConversationIdString",
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_response.body #=> String
    #   resp.agent_response.type #=> String, one of "INITIAL_GREETING", "normal", "confirmation", "complete", "error", "options", "choices"
    #   resp.agent_response.options_list #=> Array
    #   resp.agent_response.options_list[0] #=> String
    #   resp.conversation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UpdateProfileWithAgent AWS API Documentation
    #
    # @overload update_profile_with_agent(params = {})
    # @param [Hash] params ({})
    def update_profile_with_agent(params = {}, options = {})
      req = build_request(:update_profile_with_agent, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::HealthLake')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-healthlake'
      context[:gem_version] = '1.69.0'
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
    # | waiter_name                       | params                                    | :delay   | :max_attempts |
    # | --------------------------------- | ----------------------------------------- | -------- | ------------- |
    # | data_transformation_job_completed | {Client#describe_data_transformation_job} | 30       | 5             |
    # | fhir_datastore_active             | {Client#describe_fhir_datastore}          | 60       | 5             |
    # | fhir_datastore_deleted            | {Client#describe_fhir_datastore}          | 120      | 5             |
    # | fhir_export_job_completed         | {Client#describe_fhir_export_job}         | 120      | 5             |
    # | fhir_import_job_completed         | {Client#describe_fhir_import_job}         | 120      | 5             |
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
        data_transformation_job_completed: Waiters::DataTransformationJobCompleted,
        fhir_datastore_active: Waiters::FHIRDatastoreActive,
        fhir_datastore_deleted: Waiters::FHIRDatastoreDeleted,
        fhir_export_job_completed: Waiters::FHIRExportJobCompleted,
        fhir_import_job_completed: Waiters::FHIRImportJobCompleted
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
