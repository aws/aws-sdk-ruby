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

module Aws::EndUserMessaging
  # An API client for EndUserMessaging.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::EndUserMessaging::Client.new(
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

    @identifier = :endusermessaging

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
    add_plugin(Aws::EndUserMessaging::Plugins::Endpoints)

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
    #   @option options [Aws::EndUserMessaging::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::EndUserMessaging::EndpointParameters`.
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

    # Creates a brand profile. A brand profile is a lightweight container
    # that holds your brand identity information as flexible attributes.
    # After you create a brand profile, use the CreateBrandProfileAttributes
    # operation to add company information, addresses, compliance documents,
    # and logos.
    #
    # @option params [required, String] :brand_profile_name
    #   The name of the brand profile. The name can contain alphanumeric
    #   characters, underscores, hyphens, and spaces.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token, the
    #   AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #
    # @return [Types::CreateBrandProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBrandProfileOutput#brand_profile_id #brand_profile_id} => String
    #   * {Types::CreateBrandProfileOutput#brand_profile_arn #brand_profile_arn} => String
    #   * {Types::CreateBrandProfileOutput#brand_profile_name #brand_profile_name} => String
    #   * {Types::CreateBrandProfileOutput#status #status} => String
    #   * {Types::CreateBrandProfileOutput#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #   * {Types::CreateBrandProfileOutput#created_at #created_at} => Time
    #   * {Types::CreateBrandProfileOutput#updated_at #updated_at} => Time
    #   * {Types::CreateBrandProfileOutput#attributes_created #attributes_created} => Integer
    #
    #
    # @example Example: Create a brand profile
    #
    #   resp = client.create_brand_profile({
    #     brand_profile_name: "AcmeCorp", 
    #     deletion_protection_enabled: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes_created: 0, 
    #     brand_profile_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234", 
    #     brand_profile_id: "bp-abc12345678901234", 
    #     brand_profile_name: "AcmeCorp", 
    #     created_at: Time.parse(1727130000), 
    #     deletion_protection_enabled: true, 
    #     status: "ACTIVE", 
    #     updated_at: Time.parse(1727130000), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_brand_profile({
    #     brand_profile_name: "BrandProfileName", # required
    #     client_token: "ClientToken",
    #     deletion_protection_enabled: false,
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
    #   resp.brand_profile_id #=> String
    #   resp.brand_profile_arn #=> String
    #   resp.brand_profile_name #=> String
    #   resp.status #=> String, one of "ACTIVE", "BLOCKED", "PAUSED", "CANCELLED", "FAILED"
    #   resp.deletion_protection_enabled #=> Boolean
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.attributes_created #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateBrandProfile AWS API Documentation
    #
    # @overload create_brand_profile(params = {})
    # @param [Hash] params ({})
    def create_brand_profile(params = {}, options = {})
      req = build_request(:create_brand_profile, params)
      req.send_request(options)
    end

    # Creates up to 10 attributes for a brand profile in a single request.
    # For attributes of type IMAGE or DOCUMENT, the response includes a
    # presigned Amazon S3 URL that you use to upload the media. This
    # operation is atomic: either all of the attributes are created, or none
    # of them are.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @option params [required, Array<Types::BrandProfileAttributeInput>] :attributes
    #   The brand profile attributes.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token, the
    #   AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateBrandProfileAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBrandProfileAttributesOutput#attributes #attributes} => Array&lt;Types::BrandProfileAttributeOutput&gt;
    #
    #
    # @example Example: Create a text attribute on a brand profile
    #
    #   resp = client.create_brand_profile_attributes({
    #     attributes: [
    #       {
    #         attribute_name: "SupportEmail", 
    #         attribute_type: "TEXT", 
    #         attribute_value: "support@example.com", 
    #         category: "CONTACT", 
    #       }, 
    #     ], 
    #     brand_profile_id: "bp-abc12345678901234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         attribute_name: "SupportEmail", 
    #         attribute_type: "TEXT", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_brand_profile_attributes({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     attributes: [ # required
    #       {
    #         attribute_name: "BrandProfileAttributeName", # required
    #         attribute_type: "TEXT", # required, accepts TEXT, IMAGE, DOCUMENT
    #         attribute_value: "BrandProfileAttributeValue",
    #         attachment_body: "data",
    #         description: "BrandProfileAttributeDescription",
    #         category: "BrandProfileAttributeCategory",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].attribute_name #=> String
    #   resp.attributes[0].attribute_type #=> String, one of "TEXT", "IMAGE", "DOCUMENT"
    #   resp.attributes[0].media_download_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateBrandProfileAttributes AWS API Documentation
    #
    # @overload create_brand_profile_attributes(params = {})
    # @param [Hash] params ({})
    def create_brand_profile_attributes(params = {}, options = {})
      req = build_request(:create_brand_profile_attributes, params)
      req.send_request(options)
    end

    # Creates a brand profile and populates its attributes from an existing
    # registration. This operation runs asynchronously. Use the GetJob
    # operation to track its progress.
    #
    # @option params [required, String] :registration_id
    #   The identifier or Amazon Resource Name (ARN) of the registration to
    #   populate the brand profile from.
    #
    # @option params [required, String] :brand_profile_name
    #   The name of the brand profile. The name can contain alphanumeric
    #   characters, underscores, hyphens, and spaces.
    #
    # @option params [Boolean] :smart_match
    #   Specifies whether to use semantic field mapping between brand profile
    #   attributes and registration fields. The default is true. When false,
    #   the service maps fields using a fixed set of standard field types.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token, the
    #   AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateBrandProfileFromRegistrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBrandProfileFromRegistrationOutput#results #results} => Array&lt;Types::JobResult&gt;
    #
    #
    # @example Example: Create a brand profile from a registration
    #
    #   resp = client.create_brand_profile_from_registration({
    #     brand_profile_name: "AcmeCorp", 
    #     registration_id: "reg-abc12345678901234", 
    #     smart_match: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     results: [
    #       {
    #         job_id: "job-abc12345678901234", 
    #         resource_identifier: "reg-abc12345678901234", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_brand_profile_from_registration({
    #     registration_id: "RegistrationIdOrArn", # required
    #     brand_profile_name: "BrandProfileName", # required
    #     smart_match: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].job_id #=> String
    #   resp.results[0].resource_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateBrandProfileFromRegistration AWS API Documentation
    #
    # @overload create_brand_profile_from_registration(params = {})
    # @param [Hash] params ({})
    def create_brand_profile_from_registration(params = {}, options = {})
      req = build_request(:create_brand_profile_from_registration, params)
      req.send_request(options)
    end

    # Creates a notify code configuration. A notify code configuration is a
    # reusable policy that defines how one-time passcodes are generated and
    # rendered, including the code type, length, validity period, maximum
    # number of attempts, and channel templates.
    #
    # @option params [required, String] :notify_code_configuration_name
    #   The name of the notify code configuration.
    #
    # @option params [Types::CodeConfigurationParameters] :code_configuration_parameters
    #   The passcode policy parameters, including the code type, length,
    #   validity period, and maximum number of attempts. Each member is
    #   optional. When you omit a member, no value is applied at create time
    #   and the default is applied when a passcode is sent.
    #
    # @option params [Types::ChannelParameters] :channel_parameters
    #   The channel-specific parameters used to render and deliver the
    #   one-time passcode. Provide parameters for any subset of channels. Each
    #   member configures one delivery route, and the route that is selected
    #   at send time uses the matching channel.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token, the
    #   AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #
    # @return [Types::CreateNotifyCodeConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNotifyCodeConfigurationOutput#notify_code_configuration #notify_code_configuration} => Types::NotifyCodeConfiguration
    #
    #
    # @example Example: Create a notify code configuration
    #
    #   resp = client.create_notify_code_configuration({
    #     channel_parameters: {
    #       text: {
    #         inline_template_body: "Your verification code is {{code}}.", 
    #       }, 
    #     }, 
    #     code_configuration_parameters: {
    #       code_length: 6, 
    #       code_type: "NUMERIC", 
    #       max_attempts: 3, 
    #       validity_period_minutes: 10, 
    #     }, 
    #     notify_code_configuration_name: "SignupOtp", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     notify_code_configuration: {
    #       channel_parameters: {
    #         text: {
    #           inline_template_body: "Your verification code is {{code}}.", 
    #         }, 
    #       }, 
    #       code_configuration_parameters: {
    #         code_length: 6, 
    #         code_type: "NUMERIC", 
    #         max_attempts: 3, 
    #         validity_period_minutes: 10, 
    #       }, 
    #       created_at: Time.parse(1727130000), 
    #       deletion_protection_enabled: false, 
    #       notify_code_configuration_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:notify-code-configuration/ncc-abc12345678901234", 
    #       notify_code_configuration_id: "ncc-abc12345678901234", 
    #       notify_code_configuration_name: "SignupOtp", 
    #       updated_at: Time.parse(1727130000), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notify_code_configuration({
    #     notify_code_configuration_name: "NotifyCodeConfigurationName", # required
    #     code_configuration_parameters: {
    #       code_type: "NUMERIC", # accepts NUMERIC, ALPHA, ALPHANUMERIC
    #       code_length: 1,
    #       validity_period_minutes: 1,
    #       max_attempts: 1,
    #     },
    #     channel_parameters: {
    #       text: {
    #         inline_template_body: "InlineTemplateBody",
    #         destination_country_parameters: {
    #           "DestinationCountryParameterKey" => "DestinationCountryParameterValue",
    #         },
    #       },
    #       voice: {
    #         inline_template_body: "InlineTemplateBody",
    #         language_code: "LanguageCode",
    #         voice_id: "VoiceId",
    #         voice_message_body_text_type: "TEXT", # accepts TEXT, SSML
    #       },
    #       notify: {
    #         notify_template_id: "NotifyTemplateId",
    #         voice_id: "VoiceId",
    #       },
    #       whats_app: {
    #         whats_app_template_name: "WhatsAppTemplateName",
    #         language_code: "LanguageCode",
    #       },
    #     },
    #     deletion_protection_enabled: false,
    #     client_token: "ClientToken",
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
    #   resp.notify_code_configuration.notify_code_configuration_id #=> String
    #   resp.notify_code_configuration.notify_code_configuration_arn #=> String
    #   resp.notify_code_configuration.notify_code_configuration_name #=> String
    #   resp.notify_code_configuration.code_configuration_parameters.code_type #=> String, one of "NUMERIC", "ALPHA", "ALPHANUMERIC"
    #   resp.notify_code_configuration.code_configuration_parameters.code_length #=> Integer
    #   resp.notify_code_configuration.code_configuration_parameters.validity_period_minutes #=> Integer
    #   resp.notify_code_configuration.code_configuration_parameters.max_attempts #=> Integer
    #   resp.notify_code_configuration.channel_parameters.text.inline_template_body #=> String
    #   resp.notify_code_configuration.channel_parameters.text.destination_country_parameters #=> Hash
    #   resp.notify_code_configuration.channel_parameters.text.destination_country_parameters["DestinationCountryParameterKey"] #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.inline_template_body #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.language_code #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.voice_id #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.voice_message_body_text_type #=> String, one of "TEXT", "SSML"
    #   resp.notify_code_configuration.channel_parameters.notify.notify_template_id #=> String
    #   resp.notify_code_configuration.channel_parameters.notify.voice_id #=> String
    #   resp.notify_code_configuration.channel_parameters.whats_app.whats_app_template_name #=> String
    #   resp.notify_code_configuration.channel_parameters.whats_app.language_code #=> String
    #   resp.notify_code_configuration.deletion_protection_enabled #=> Boolean
    #   resp.notify_code_configuration.created_at #=> Time
    #   resp.notify_code_configuration.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateNotifyCodeConfiguration AWS API Documentation
    #
    # @overload create_notify_code_configuration(params = {})
    # @param [Hash] params ({})
    def create_notify_code_configuration(params = {}, options = {})
      req = build_request(:create_notify_code_configuration, params)
      req.send_request(options)
    end

    # Creates one or more registrations in the DRAFT state and prefills
    # their fields from the attributes of a brand profile. This operation
    # runs asynchronously. Use the GetJob operation to track its progress.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :registration_types
    #   The registration types to create, for example
    #   US\_TOLL\_FREE\_REGISTRATION or SENDER\_ID.
    #
    # @option params [Boolean] :smart_match
    #   Specifies whether to use semantic field mapping between brand profile
    #   attributes and registration fields. The default is true. When false,
    #   the service maps fields using a fixed set of standard field types.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token, the
    #   AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateRegistrationsFromBrandProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegistrationsFromBrandProfileOutput#results #results} => Array&lt;Types::JobResult&gt;
    #
    #
    # @example Example: Create draft registrations from a brand profile
    #
    #   resp = client.create_registrations_from_brand_profile({
    #     brand_profile_id: "bp-abc12345678901234", 
    #     registration_types: [
    #       "US_TOLL_FREE_REGISTRATION", 
    #     ], 
    #     smart_match: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     results: [
    #       {
    #         job_id: "job-abc12345678901234", 
    #         resource_identifier: "US_TOLL_FREE_REGISTRATION", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_registrations_from_brand_profile({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     registration_types: ["RegistrationType"], # required
    #     smart_match: false,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].job_id #=> String
    #   resp.results[0].resource_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/CreateRegistrationsFromBrandProfile AWS API Documentation
    #
    # @overload create_registrations_from_brand_profile(params = {})
    # @param [Hash] params ({})
    def create_registrations_from_brand_profile(params = {}, options = {})
      req = build_request(:create_registrations_from_brand_profile, params)
      req.send_request(options)
    end

    # Deletes a brand profile. This operation also deletes the attributes of
    # the profile and any associated media. The request fails if deletion
    # protection is enabled for the profile.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @return [Types::DeleteBrandProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBrandProfileOutput#brand_profile_id #brand_profile_id} => String
    #   * {Types::DeleteBrandProfileOutput#brand_profile_arn #brand_profile_arn} => String
    #
    #
    # @example Example: Delete a brand profile
    #
    #   resp = client.delete_brand_profile({
    #     brand_profile_id: "bp-abc12345678901234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     brand_profile_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234", 
    #     brand_profile_id: "bp-abc12345678901234", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_brand_profile({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.brand_profile_id #=> String
    #   resp.brand_profile_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/DeleteBrandProfile AWS API Documentation
    #
    # @overload delete_brand_profile(params = {})
    # @param [Hash] params ({})
    def delete_brand_profile(params = {}, options = {})
      req = build_request(:delete_brand_profile, params)
      req.send_request(options)
    end

    # Deletes a brand profile attribute. If the attribute stores media, this
    # operation also deletes the associated media.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @option params [required, String] :attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #
    # @return [Types::DeleteBrandProfileAttributeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBrandProfileAttributeOutput#brand_profile_id #brand_profile_id} => String
    #   * {Types::DeleteBrandProfileAttributeOutput#attribute_name #attribute_name} => String
    #
    #
    # @example Example: Delete a brand profile attribute
    #
    #   resp = client.delete_brand_profile_attribute({
    #     attribute_name: "SupportEmail", 
    #     brand_profile_id: "bp-abc12345678901234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attribute_name: "SupportEmail", 
    #     brand_profile_id: "bp-abc12345678901234", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_brand_profile_attribute({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     attribute_name: "BrandProfileAttributeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.brand_profile_id #=> String
    #   resp.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/DeleteBrandProfileAttribute AWS API Documentation
    #
    # @overload delete_brand_profile_attribute(params = {})
    # @param [Hash] params ({})
    def delete_brand_profile_attribute(params = {}, options = {})
      req = build_request(:delete_brand_profile_attribute, params)
      req.send_request(options)
    end

    # Deletes a notify code configuration. Verifications that are already in
    # progress are not affected, because they capture the policy at the time
    # that the passcode was sent.
    #
    # @option params [required, String] :notify_code_configuration_id
    #   The unique identifier of the notify code configuration. You can
    #   specify either the bare ID or the full Amazon Resource Name (ARN).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a notify code configuration
    #
    #   resp = client.delete_notify_code_configuration({
    #     notify_code_configuration_id: "ncc-abc12345678901234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notify_code_configuration({
    #     notify_code_configuration_id: "NotifyCodeConfigurationIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/DeleteNotifyCodeConfiguration AWS API Documentation
    #
    # @overload delete_notify_code_configuration(params = {})
    # @param [Hash] params ({})
    def delete_notify_code_configuration(params = {}, options = {})
      req = build_request(:delete_notify_code_configuration, params)
      req.send_request(options)
    end

    # Retrieves the metadata for a brand profile, including its name,
    # status, deletion protection setting, and timestamps. To retrieve the
    # attributes of the profile, use the ListBrandProfileAttributes
    # operation.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @return [Types::GetBrandProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBrandProfileOutput#brand_profile_id #brand_profile_id} => String
    #   * {Types::GetBrandProfileOutput#brand_profile_arn #brand_profile_arn} => String
    #   * {Types::GetBrandProfileOutput#brand_profile_name #brand_profile_name} => String
    #   * {Types::GetBrandProfileOutput#status #status} => String
    #   * {Types::GetBrandProfileOutput#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #   * {Types::GetBrandProfileOutput#created_at #created_at} => Time
    #   * {Types::GetBrandProfileOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Get a brand profile
    #
    #   resp = client.get_brand_profile({
    #     brand_profile_id: "bp-abc12345678901234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     brand_profile_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234", 
    #     brand_profile_id: "bp-abc12345678901234", 
    #     brand_profile_name: "AcmeCorp", 
    #     created_at: Time.parse(1727130000), 
    #     deletion_protection_enabled: true, 
    #     status: "ACTIVE", 
    #     updated_at: Time.parse(1727130000), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_brand_profile({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.brand_profile_id #=> String
    #   resp.brand_profile_arn #=> String
    #   resp.brand_profile_name #=> String
    #   resp.status #=> String, one of "ACTIVE", "BLOCKED", "PAUSED", "CANCELLED", "FAILED"
    #   resp.deletion_protection_enabled #=> Boolean
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * brand_profile_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/GetBrandProfile AWS API Documentation
    #
    # @overload get_brand_profile(params = {})
    # @param [Hash] params ({})
    def get_brand_profile(params = {}, options = {})
      req = build_request(:get_brand_profile, params)
      req.send_request(options)
    end

    # Retrieves a single brand profile attribute.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @option params [required, String] :attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #
    # @return [Types::GetBrandProfileAttributeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBrandProfileAttributeOutput#attribute_name #attribute_name} => String
    #   * {Types::GetBrandProfileAttributeOutput#attribute_type #attribute_type} => String
    #   * {Types::GetBrandProfileAttributeOutput#attribute_value #attribute_value} => String
    #   * {Types::GetBrandProfileAttributeOutput#description #description} => String
    #   * {Types::GetBrandProfileAttributeOutput#category #category} => String
    #   * {Types::GetBrandProfileAttributeOutput#media_content_type #media_content_type} => String
    #   * {Types::GetBrandProfileAttributeOutput#media_size_bytes #media_size_bytes} => Integer
    #   * {Types::GetBrandProfileAttributeOutput#media_download_url #media_download_url} => String
    #   * {Types::GetBrandProfileAttributeOutput#created_at #created_at} => Time
    #   * {Types::GetBrandProfileAttributeOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Get a brand profile attribute
    #
    #   resp = client.get_brand_profile_attribute({
    #     attribute_name: "SupportEmail", 
    #     brand_profile_id: "bp-abc12345678901234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attribute_name: "SupportEmail", 
    #     attribute_type: "TEXT", 
    #     attribute_value: "support@example.com", 
    #     category: "CONTACT", 
    #     created_at: Time.parse(1727130000), 
    #     updated_at: Time.parse(1727130000), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_brand_profile_attribute({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     attribute_name: "BrandProfileAttributeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attribute_name #=> String
    #   resp.attribute_type #=> String, one of "TEXT", "IMAGE", "DOCUMENT"
    #   resp.attribute_value #=> String
    #   resp.description #=> String
    #   resp.category #=> String
    #   resp.media_content_type #=> String
    #   resp.media_size_bytes #=> Integer
    #   resp.media_download_url #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/GetBrandProfileAttribute AWS API Documentation
    #
    # @overload get_brand_profile_attribute(params = {})
    # @param [Hash] params ({})
    def get_brand_profile_attribute(params = {}, options = {})
      req = build_request(:get_brand_profile_attribute, params)
      req.send_request(options)
    end

    # Retrieves the current state of an asynchronous job, including its
    # status and any resources that it created or updated.
    #
    # @option params [required, String] :job_id
    #   The unique identifier of the asynchronous job. Use the GetJob
    #   operation to check the status of the job and to retrieve its results.
    #
    # @return [Types::Job] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Job#job_id #job_id} => String
    #   * {Types::Job#status #status} => String
    #   * {Types::Job#operation_type #operation_type} => String
    #   * {Types::Job#created_at #created_at} => Time
    #   * {Types::Job#updated_at #updated_at} => Time
    #   * {Types::Job#brand_profile_id #brand_profile_id} => String
    #   * {Types::Job#error_code #error_code} => String
    #   * {Types::Job#error_message #error_message} => String
    #   * {Types::Job#resources #resources} => Array&lt;Types::JobResource&gt;
    #
    #
    # @example Example: Get an async job
    #
    #   resp = client.get_job({
    #     job_id: "job-abc12345678901234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     brand_profile_id: "bp-abc12345678901234", 
    #     created_at: Time.parse(1727130000), 
    #     job_id: "job-abc12345678901234", 
    #     operation_type: "CreateRegistrationsFromBrandProfile", 
    #     resources: [
    #       {
    #         resource_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:registration/reg-abc12345678901234", 
    #         resource_id: "reg-abc12345678901234", 
    #         resource_type: "REGISTRATION", 
    #       }, 
    #     ], 
    #     status: "SUCCESS", 
    #     updated_at: Time.parse(1727130060), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.status #=> String, one of "SUCCESS", "PROCESSING", "FAILED"
    #   resp.operation_type #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.brand_profile_id #=> String
    #   resp.error_code #=> String
    #   resp.error_message #=> String
    #   resp.resources #=> Array
    #   resp.resources[0].resource_type #=> String, one of "REGISTRATION", "BRAND_PROFILE"
    #   resp.resources[0].resource_id #=> String
    #   resp.resources[0].resource_arn #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * job_success
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
      req.send_request(options)
    end

    # Retrieves a notify code configuration.
    #
    # @option params [required, String] :notify_code_configuration_id
    #   The unique identifier of the notify code configuration. You can
    #   specify either the bare ID or the full Amazon Resource Name (ARN).
    #
    # @return [Types::GetNotifyCodeConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNotifyCodeConfigurationOutput#notify_code_configuration #notify_code_configuration} => Types::NotifyCodeConfiguration
    #
    #
    # @example Example: Get a notify code configuration
    #
    #   resp = client.get_notify_code_configuration({
    #     notify_code_configuration_id: "ncc-abc12345678901234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     notify_code_configuration: {
    #       channel_parameters: {
    #         text: {
    #           inline_template_body: "Your verification code is {{code}}.", 
    #         }, 
    #       }, 
    #       code_configuration_parameters: {
    #         code_length: 6, 
    #         code_type: "NUMERIC", 
    #         max_attempts: 3, 
    #         validity_period_minutes: 10, 
    #       }, 
    #       created_at: Time.parse(1727130000), 
    #       deletion_protection_enabled: false, 
    #       notify_code_configuration_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:notify-code-configuration/ncc-abc12345678901234", 
    #       notify_code_configuration_id: "ncc-abc12345678901234", 
    #       notify_code_configuration_name: "SignupOtp", 
    #       updated_at: Time.parse(1727130000), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_notify_code_configuration({
    #     notify_code_configuration_id: "NotifyCodeConfigurationIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notify_code_configuration.notify_code_configuration_id #=> String
    #   resp.notify_code_configuration.notify_code_configuration_arn #=> String
    #   resp.notify_code_configuration.notify_code_configuration_name #=> String
    #   resp.notify_code_configuration.code_configuration_parameters.code_type #=> String, one of "NUMERIC", "ALPHA", "ALPHANUMERIC"
    #   resp.notify_code_configuration.code_configuration_parameters.code_length #=> Integer
    #   resp.notify_code_configuration.code_configuration_parameters.validity_period_minutes #=> Integer
    #   resp.notify_code_configuration.code_configuration_parameters.max_attempts #=> Integer
    #   resp.notify_code_configuration.channel_parameters.text.inline_template_body #=> String
    #   resp.notify_code_configuration.channel_parameters.text.destination_country_parameters #=> Hash
    #   resp.notify_code_configuration.channel_parameters.text.destination_country_parameters["DestinationCountryParameterKey"] #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.inline_template_body #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.language_code #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.voice_id #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.voice_message_body_text_type #=> String, one of "TEXT", "SSML"
    #   resp.notify_code_configuration.channel_parameters.notify.notify_template_id #=> String
    #   resp.notify_code_configuration.channel_parameters.notify.voice_id #=> String
    #   resp.notify_code_configuration.channel_parameters.whats_app.whats_app_template_name #=> String
    #   resp.notify_code_configuration.channel_parameters.whats_app.language_code #=> String
    #   resp.notify_code_configuration.deletion_protection_enabled #=> Boolean
    #   resp.notify_code_configuration.created_at #=> Time
    #   resp.notify_code_configuration.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/GetNotifyCodeConfiguration AWS API Documentation
    #
    # @overload get_notify_code_configuration(params = {})
    # @param [Hash] params ({})
    def get_notify_code_configuration(params = {}, options = {})
      req = build_request(:get_notify_code_configuration, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of the attributes for a brand profile.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results. This value is returned
    #   when more results are available, and is null when there are no more
    #   results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListBrandProfileAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBrandProfileAttributesOutput#brand_profile_attributes #brand_profile_attributes} => Array&lt;Types::BrandProfileAttributeSummary&gt;
    #   * {Types::ListBrandProfileAttributesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List brand profile attributes
    #
    #   resp = client.list_brand_profile_attributes({
    #     brand_profile_id: "bp-abc12345678901234", 
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     brand_profile_attributes: [
    #       {
    #         attribute_name: "SupportEmail", 
    #         attribute_type: "TEXT", 
    #         category: "CONTACT", 
    #         created_at: Time.parse(1727130000), 
    #         updated_at: Time.parse(1727130000), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_brand_profile_attributes({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.brand_profile_attributes #=> Array
    #   resp.brand_profile_attributes[0].attribute_name #=> String
    #   resp.brand_profile_attributes[0].attribute_type #=> String, one of "TEXT", "IMAGE", "DOCUMENT"
    #   resp.brand_profile_attributes[0].description #=> String
    #   resp.brand_profile_attributes[0].category #=> String
    #   resp.brand_profile_attributes[0].created_at #=> Time
    #   resp.brand_profile_attributes[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListBrandProfileAttributes AWS API Documentation
    #
    # @overload list_brand_profile_attributes(params = {})
    # @param [Hash] params ({})
    def list_brand_profile_attributes(params = {}, options = {})
      req = build_request(:list_brand_profile_attributes, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of the brand profiles in your account. Use
    # the nextToken parameter to retrieve additional results.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results. This value is returned
    #   when more results are available, and is null when there are no more
    #   results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListBrandProfilesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBrandProfilesOutput#brand_profiles #brand_profiles} => Array&lt;Types::BrandProfileInfo&gt;
    #   * {Types::ListBrandProfilesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List brand profiles
    #
    #   resp = client.list_brand_profiles({
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     brand_profiles: [
    #       {
    #         brand_profile_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234", 
    #         brand_profile_id: "bp-abc12345678901234", 
    #         brand_profile_name: "AcmeCorp", 
    #         created_at: Time.parse(1727130000), 
    #         deletion_protection_enabled: true, 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse(1727130000), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_brand_profiles({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.brand_profiles #=> Array
    #   resp.brand_profiles[0].brand_profile_id #=> String
    #   resp.brand_profiles[0].brand_profile_arn #=> String
    #   resp.brand_profiles[0].brand_profile_name #=> String
    #   resp.brand_profiles[0].status #=> String, one of "ACTIVE", "BLOCKED", "PAUSED", "CANCELLED", "FAILED"
    #   resp.brand_profiles[0].deletion_protection_enabled #=> Boolean
    #   resp.brand_profiles[0].created_at #=> Time
    #   resp.brand_profiles[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListBrandProfiles AWS API Documentation
    #
    # @overload list_brand_profiles(params = {})
    # @param [Hash] params ({})
    def list_brand_profiles(params = {}, options = {})
      req = build_request(:list_brand_profiles, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of the asynchronous jobs in your account.
    # You can filter the results by status, brand profile, or operation
    # type.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results. This value is returned
    #   when more results are available, and is null when there are no more
    #   results to return.
    #
    # @option params [String] :status
    #   Filters the results to jobs that have the specified status.
    #
    # @option params [String] :brand_profile_id
    #   Filters the results to jobs for the specified brand profile.
    #
    # @option params [String] :operation_type
    #   Filters the results to jobs of the specified operation type.
    #
    # @return [Types::ListJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsOutput#jobs #jobs} => Array&lt;Types::JobSummary&gt;
    #   * {Types::ListJobsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List async jobs
    #
    #   resp = client.list_jobs({
    #     max_results: 10, 
    #     status: "SUCCESS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     jobs: [
    #       {
    #         brand_profile_id: "bp-abc12345678901234", 
    #         created_at: Time.parse(1727130000), 
    #         job_id: "job-abc12345678901234", 
    #         operation_type: "CreateRegistrationsFromBrandProfile", 
    #         status: "SUCCESS", 
    #         updated_at: Time.parse(1727130060), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "SUCCESS", # accepts SUCCESS, PROCESSING, FAILED
    #     brand_profile_id: "BrandProfileIdOrArn",
    #     operation_type: "JobOperationType",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].status #=> String, one of "SUCCESS", "PROCESSING", "FAILED"
    #   resp.jobs[0].operation_type #=> String
    #   resp.jobs[0].created_at #=> Time
    #   resp.jobs[0].updated_at #=> Time
    #   resp.jobs[0].brand_profile_id #=> String
    #   resp.jobs[0].error_code #=> String
    #   resp.jobs[0].error_message #=> String
    #   resp.jobs[0].resources #=> Array
    #   resp.jobs[0].resources[0].resource_type #=> String, one of "REGISTRATION", "BRAND_PROFILE"
    #   resp.jobs[0].resources[0].resource_id #=> String
    #   resp.jobs[0].resources[0].resource_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of the notify code configurations in your
    # account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results. This value is returned
    #   when more results are available, and is null when there are no more
    #   results to return.
    #
    # @return [Types::ListNotifyCodeConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotifyCodeConfigurationsOutput#notify_code_configurations #notify_code_configurations} => Array&lt;Types::NotifyCodeConfiguration&gt;
    #   * {Types::ListNotifyCodeConfigurationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List notify code configurations
    #
    #   resp = client.list_notify_code_configurations({
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     notify_code_configurations: [
    #       {
    #         channel_parameters: {
    #           text: {
    #             inline_template_body: "Your verification code is {{code}}.", 
    #           }, 
    #         }, 
    #         code_configuration_parameters: {
    #           code_length: 6, 
    #           code_type: "NUMERIC", 
    #           max_attempts: 3, 
    #           validity_period_minutes: 10, 
    #         }, 
    #         created_at: Time.parse(1727130000), 
    #         deletion_protection_enabled: false, 
    #         notify_code_configuration_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:notify-code-configuration/ncc-abc12345678901234", 
    #         notify_code_configuration_id: "ncc-abc12345678901234", 
    #         notify_code_configuration_name: "SignupOtp", 
    #         updated_at: Time.parse(1727130000), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notify_code_configurations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.notify_code_configurations #=> Array
    #   resp.notify_code_configurations[0].notify_code_configuration_id #=> String
    #   resp.notify_code_configurations[0].notify_code_configuration_arn #=> String
    #   resp.notify_code_configurations[0].notify_code_configuration_name #=> String
    #   resp.notify_code_configurations[0].code_configuration_parameters.code_type #=> String, one of "NUMERIC", "ALPHA", "ALPHANUMERIC"
    #   resp.notify_code_configurations[0].code_configuration_parameters.code_length #=> Integer
    #   resp.notify_code_configurations[0].code_configuration_parameters.validity_period_minutes #=> Integer
    #   resp.notify_code_configurations[0].code_configuration_parameters.max_attempts #=> Integer
    #   resp.notify_code_configurations[0].channel_parameters.text.inline_template_body #=> String
    #   resp.notify_code_configurations[0].channel_parameters.text.destination_country_parameters #=> Hash
    #   resp.notify_code_configurations[0].channel_parameters.text.destination_country_parameters["DestinationCountryParameterKey"] #=> String
    #   resp.notify_code_configurations[0].channel_parameters.voice.inline_template_body #=> String
    #   resp.notify_code_configurations[0].channel_parameters.voice.language_code #=> String
    #   resp.notify_code_configurations[0].channel_parameters.voice.voice_id #=> String
    #   resp.notify_code_configurations[0].channel_parameters.voice.voice_message_body_text_type #=> String, one of "TEXT", "SSML"
    #   resp.notify_code_configurations[0].channel_parameters.notify.notify_template_id #=> String
    #   resp.notify_code_configurations[0].channel_parameters.notify.voice_id #=> String
    #   resp.notify_code_configurations[0].channel_parameters.whats_app.whats_app_template_name #=> String
    #   resp.notify_code_configurations[0].channel_parameters.whats_app.language_code #=> String
    #   resp.notify_code_configurations[0].deletion_protection_enabled #=> Boolean
    #   resp.notify_code_configurations[0].created_at #=> Time
    #   resp.notify_code_configurations[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListNotifyCodeConfigurations AWS API Documentation
    #
    # @overload list_notify_code_configurations(params = {})
    # @param [Hash] params ({})
    def list_notify_code_configurations(params = {}, options = {})
      req = build_request(:list_notify_code_configurations, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of the registrations that were created from
    # a brand profile through the synchronization operations.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results. This value is returned
    #   when more results are available, and is null when there are no more
    #   results to return.
    #
    # @return [Types::ListRegistrationsFromBrandProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRegistrationsFromBrandProfileOutput#registration_associations #registration_associations} => Array&lt;Types::RegistrationAssociationSummary&gt;
    #   * {Types::ListRegistrationsFromBrandProfileOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List registrations created from a brand profile
    #
    #   resp = client.list_registrations_from_brand_profile({
    #     brand_profile_id: "bp-abc12345678901234", 
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     registration_associations: [
    #       {
    #         created_at: Time.parse(1727130000), 
    #         registration_id: "reg-abc12345678901234", 
    #         registration_type: "US_TOLL_FREE_REGISTRATION", 
    #         smart_match_used: true, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_registrations_from_brand_profile({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_associations #=> Array
    #   resp.registration_associations[0].registration_id #=> String
    #   resp.registration_associations[0].registration_type #=> String
    #   resp.registration_associations[0].created_at #=> Time
    #   resp.registration_associations[0].smart_match_used #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListRegistrationsFromBrandProfile AWS API Documentation
    #
    # @overload list_registrations_from_brand_profile(params = {})
    # @param [Hash] params ({})
    def list_registrations_from_brand_profile(params = {}, options = {})
      req = build_request(:list_registrations_from_brand_profile, params)
      req.send_request(options)
    end

    # Retrieves the tags that are associated with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: List tags on a resource
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         key: "Environment", 
    #         value: "Production", 
    #       }, 
    #     ], 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Generates a one-time passcode and delivers it to a recipient over the
    # requested channel. The passcode policy is captured from the referenced
    # notify code configuration at the time of the request, so later updates
    # to the configuration do not affect verifications that are already in
    # progress.
    #
    # @option params [required, String] :channel
    #   The channel used to deliver the one-time passcode to the recipient.
    #
    # @option params [required, String] :destination_identity
    #   The recipient identifier. For the TEXT and VOICE channels, specify an
    #   E.164 phone number. For the WhatsApp channel, specify a WhatsApp
    #   address.
    #
    # @option params [required, String] :origination_identity
    #   The identity used to send the message, such as a phone number, sender
    #   ID, or pool that is owned by your account.
    #
    # @option params [String] :notify_code_configuration
    #   The identifier or Amazon Resource Name (ARN) of the notify code
    #   configuration that supplies the passcode policy and template defaults.
    #   When you do not specify a configuration, you must supply the template
    #   in the request.
    #
    # @option params [Types::ChannelParameters] :override_channel_parameters
    #   The channel-specific parameters used to render and deliver the
    #   one-time passcode for this request. The route that is derived from the
    #   channel and the origination identity selects the matching channel.
    #   When you do not specify channel parameters, the service uses the
    #   parameters from the referenced notify code configuration.
    #
    # @option params [Types::CodeConfigurationParameters] :override_code_configuration_parameters
    #   The per-send overrides for the passcode policy parameters, including
    #   the code type, length, validity period, and maximum number of
    #   attempts. These values override the values from the referenced notify
    #   code configuration. When you do not specify a value, the value from
    #   the configuration is used, and if neither is set, the service default
    #   applies.
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set used to control how delivery events
    #   for the message are handled.
    #
    # @option params [Hash<String,String>] :context
    #   A map of custom key and value pairs that are propagated to the
    #   delivery events for this verification.
    #
    # @option params [String] :reference_id
    #   A caller-supplied reference identifier that binds a send request to a
    #   later validate request. Specify the same value in both requests.
    #
    # @return [Types::SendNotifyCodeVerificationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendNotifyCodeVerificationOutput#verification_id #verification_id} => String
    #   * {Types::SendNotifyCodeVerificationOutput#message_id #message_id} => String
    #
    #
    # @example Example: Send a one-time passcode over SMS
    #
    #   resp = client.send_notify_code_verification({
    #     channel: "TEXT", 
    #     destination_identity: "+14255550100", 
    #     notify_code_configuration: "ncc-abc12345678901234", 
    #     origination_identity: "arn:aws:sms-voice:us-east-1:123456789012:phone-number/pn-abc123", 
    #     reference_id: "signup-flow-42", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message_id: "msg-abc12345678901234", 
    #     verification_id: "ver-abc12345678901234", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_notify_code_verification({
    #     channel: "TEXT", # required, accepts TEXT, VOICE, WHATSAPP
    #     destination_identity: "DestinationIdentity", # required
    #     origination_identity: "OriginationIdentity", # required
    #     notify_code_configuration: "NotifyCodeConfigurationIdOrArn",
    #     override_channel_parameters: {
    #       text: {
    #         inline_template_body: "InlineTemplateBody",
    #         destination_country_parameters: {
    #           "DestinationCountryParameterKey" => "DestinationCountryParameterValue",
    #         },
    #       },
    #       voice: {
    #         inline_template_body: "InlineTemplateBody",
    #         language_code: "LanguageCode",
    #         voice_id: "VoiceId",
    #         voice_message_body_text_type: "TEXT", # accepts TEXT, SSML
    #       },
    #       notify: {
    #         notify_template_id: "NotifyTemplateId",
    #         voice_id: "VoiceId",
    #       },
    #       whats_app: {
    #         whats_app_template_name: "WhatsAppTemplateName",
    #         language_code: "LanguageCode",
    #       },
    #     },
    #     override_code_configuration_parameters: {
    #       code_type: "NUMERIC", # accepts NUMERIC, ALPHA, ALPHANUMERIC
    #       code_length: 1,
    #       validity_period_minutes: 1,
    #       max_attempts: 1,
    #     },
    #     configuration_set_name: "ConfigurationSetName",
    #     context: {
    #       "ContextKey" => "ContextValue",
    #     },
    #     reference_id: "ReferenceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.verification_id #=> String
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/SendNotifyCodeVerification AWS API Documentation
    #
    # @overload send_notify_code_verification(params = {})
    # @param [Hash] params ({})
    def send_notify_code_verification(params = {}, options = {})
      req = build_request(:send_notify_code_verification, params)
      req.send_request(options)
    end

    # Adds or overwrites the tags on a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Tag a resource
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234", 
    #     tags: [
    #       {
    #         key: "Environment", 
    #         value: "Production", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Remove tags from a resource
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234", 
    #     tag_keys: [
    #       "Environment", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the name or the deletion protection setting of a brand
    # profile. To change the information that is stored in the profile, use
    # the brand profile attribute operations.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @option params [String] :brand_profile_name
    #   The name of the brand profile. The name can contain alphanumeric
    #   characters, underscores, hyphens, and spaces.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #
    # @return [Types::UpdateBrandProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrandProfileOutput#brand_profile_id #brand_profile_id} => String
    #   * {Types::UpdateBrandProfileOutput#brand_profile_arn #brand_profile_arn} => String
    #   * {Types::UpdateBrandProfileOutput#brand_profile_name #brand_profile_name} => String
    #   * {Types::UpdateBrandProfileOutput#status #status} => String
    #   * {Types::UpdateBrandProfileOutput#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #   * {Types::UpdateBrandProfileOutput#created_at #created_at} => Time
    #   * {Types::UpdateBrandProfileOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Update a brand profile name
    #
    #   resp = client.update_brand_profile({
    #     brand_profile_id: "bp-abc12345678901234", 
    #     brand_profile_name: "AcmeCorpUpdated", 
    #     deletion_protection_enabled: false, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     brand_profile_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:brand-profile/bp-abc12345678901234", 
    #     brand_profile_id: "bp-abc12345678901234", 
    #     brand_profile_name: "AcmeCorpUpdated", 
    #     created_at: Time.parse(1727130000), 
    #     deletion_protection_enabled: false, 
    #     status: "ACTIVE", 
    #     updated_at: Time.parse(1727216400), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_brand_profile({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     brand_profile_name: "BrandProfileName",
    #     deletion_protection_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.brand_profile_id #=> String
    #   resp.brand_profile_arn #=> String
    #   resp.brand_profile_name #=> String
    #   resp.status #=> String, one of "ACTIVE", "BLOCKED", "PAUSED", "CANCELLED", "FAILED"
    #   resp.deletion_protection_enabled #=> Boolean
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateBrandProfile AWS API Documentation
    #
    # @overload update_brand_profile(params = {})
    # @param [Hash] params ({})
    def update_brand_profile(params = {}, options = {})
      req = build_request(:update_brand_profile, params)
      req.send_request(options)
    end

    # Updates the value, description, or category of an existing brand
    # profile attribute.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @option params [required, String] :attribute_name
    #   The name of the brand profile attribute. The name is unique within a
    #   brand profile.
    #
    # @option params [String] :attribute_value
    #   The text value of the attribute. This value applies to attributes of
    #   type TEXT.
    #
    # @option params [String, StringIO, File] :attachment_body
    #   The binary content for an attribute of type IMAGE or DOCUMENT. The
    #   content is base64-encoded when it is sent over the wire.
    #
    # @option params [String] :description
    #   A description of the attribute.
    #
    # @option params [String] :category
    #   The category of the attribute.
    #
    # @return [Types::UpdateBrandProfileAttributeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrandProfileAttributeOutput#attribute_name #attribute_name} => String
    #   * {Types::UpdateBrandProfileAttributeOutput#attribute_type #attribute_type} => String
    #   * {Types::UpdateBrandProfileAttributeOutput#attribute_value #attribute_value} => String
    #   * {Types::UpdateBrandProfileAttributeOutput#description #description} => String
    #   * {Types::UpdateBrandProfileAttributeOutput#category #category} => String
    #   * {Types::UpdateBrandProfileAttributeOutput#media_content_type #media_content_type} => String
    #   * {Types::UpdateBrandProfileAttributeOutput#media_size_bytes #media_size_bytes} => Integer
    #   * {Types::UpdateBrandProfileAttributeOutput#created_at #created_at} => Time
    #   * {Types::UpdateBrandProfileAttributeOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Update a brand profile attribute value
    #
    #   resp = client.update_brand_profile_attribute({
    #     attribute_name: "SupportEmail", 
    #     attribute_value: "help@example.com", 
    #     brand_profile_id: "bp-abc12345678901234", 
    #     category: "CONTACT", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attribute_name: "SupportEmail", 
    #     attribute_type: "TEXT", 
    #     attribute_value: "help@example.com", 
    #     category: "CONTACT", 
    #     created_at: Time.parse(1727130000), 
    #     updated_at: Time.parse(1727216400), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_brand_profile_attribute({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     attribute_name: "BrandProfileAttributeName", # required
    #     attribute_value: "BrandProfileAttributeValue",
    #     attachment_body: "data",
    #     description: "BrandProfileAttributeDescription",
    #     category: "BrandProfileAttributeCategory",
    #   })
    #
    # @example Response structure
    #
    #   resp.attribute_name #=> String
    #   resp.attribute_type #=> String, one of "TEXT", "IMAGE", "DOCUMENT"
    #   resp.attribute_value #=> String
    #   resp.description #=> String
    #   resp.category #=> String
    #   resp.media_content_type #=> String
    #   resp.media_size_bytes #=> Integer
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateBrandProfileAttribute AWS API Documentation
    #
    # @overload update_brand_profile_attribute(params = {})
    # @param [Hash] params ({})
    def update_brand_profile_attribute(params = {}, options = {})
      req = build_request(:update_brand_profile_attribute, params)
      req.send_request(options)
    end

    # Imports or refreshes the attributes of an existing brand profile from
    # an existing registration. This operation runs asynchronously. Use the
    # GetJob operation to track its progress.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @option params [required, String] :registration_id
    #   The identifier or Amazon Resource Name (ARN) of the registration to
    #   import attributes from.
    #
    # @option params [Boolean] :smart_match
    #   Specifies whether to use semantic field mapping between brand profile
    #   attributes and registration fields. The default is true. When false,
    #   the service maps fields using a fixed set of standard field types.
    #
    # @option params [String] :on_attribute_conflict
    #   Specifies how the service resolves an attribute that already exists.
    #   REPLACE overwrites the existing value with the incoming value.
    #   PRESERVE keeps the existing value.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token, the
    #   AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateBrandProfileFromRegistrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrandProfileFromRegistrationOutput#results #results} => Array&lt;Types::JobResult&gt;
    #
    #
    # @example Example: Update a brand profile from a registration
    #
    #   resp = client.update_brand_profile_from_registration({
    #     brand_profile_id: "bp-abc12345678901234", 
    #     on_attribute_conflict: "REPLACE", 
    #     registration_id: "reg-abc12345678901234", 
    #     smart_match: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     results: [
    #       {
    #         job_id: "job-abc12345678901234", 
    #         resource_identifier: "reg-abc12345678901234", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_brand_profile_from_registration({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     registration_id: "RegistrationIdOrArn", # required
    #     smart_match: false,
    #     on_attribute_conflict: "REPLACE", # accepts REPLACE, PRESERVE
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].job_id #=> String
    #   resp.results[0].resource_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateBrandProfileFromRegistration AWS API Documentation
    #
    # @overload update_brand_profile_from_registration(params = {})
    # @param [Hash] params ({})
    def update_brand_profile_from_registration(params = {}, options = {})
      req = build_request(:update_brand_profile_from_registration, params)
      req.send_request(options)
    end

    # Updates the mutable fields of a notify code configuration. Only the
    # fields that you supply are changed. For the template and language
    # fields, supplying an empty value clears the currently stored value.
    #
    # @option params [required, String] :notify_code_configuration_id
    #   The unique identifier of the notify code configuration. You can
    #   specify either the bare ID or the full Amazon Resource Name (ARN).
    #
    # @option params [String] :notify_code_configuration_name
    #   The name of the notify code configuration.
    #
    # @option params [Types::UpdateCodeConfigurationParameters] :code_configuration_parameters
    #   The updated passcode policy parameters, including the code type,
    #   length, validity period, and maximum number of attempts. When you omit
    #   a member, its current value is preserved.
    #
    # @option params [Types::UpdateChannelParameters] :channel_parameters
    #   The updated channel-specific parameters used to render and deliver the
    #   one-time passcode. This is a loose, nested update: when you omit a
    #   channel, that channel's parameters remain unchanged. Within a
    #   supplied channel, an empty string on a string member, or an empty map
    #   on the destination-country parameters, clears the currently stored
    #   value, and absent members preserve the current value.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   Specifies whether deletion protection is enabled. When enabled, the
    #   resource cannot be deleted until deletion protection is turned off.
    #
    # @return [Types::UpdateNotifyCodeConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNotifyCodeConfigurationOutput#notify_code_configuration #notify_code_configuration} => Types::NotifyCodeConfiguration
    #
    #
    # @example Example: Update a notify code configuration
    #
    #   resp = client.update_notify_code_configuration({
    #     code_configuration_parameters: {
    #       code_length: 8, 
    #       validity_period_minutes: 15, 
    #     }, 
    #     notify_code_configuration_id: "ncc-abc12345678901234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     notify_code_configuration: {
    #       channel_parameters: {
    #         text: {
    #           inline_template_body: "Your verification code is {{code}}.", 
    #         }, 
    #       }, 
    #       code_configuration_parameters: {
    #         code_length: 8, 
    #         code_type: "NUMERIC", 
    #         max_attempts: 3, 
    #         validity_period_minutes: 15, 
    #       }, 
    #       created_at: Time.parse(1727130000), 
    #       deletion_protection_enabled: false, 
    #       notify_code_configuration_arn: "arn:aws:end-user-messaging:us-east-1:123456789012:notify-code-configuration/ncc-abc12345678901234", 
    #       notify_code_configuration_id: "ncc-abc12345678901234", 
    #       notify_code_configuration_name: "SignupOtp", 
    #       updated_at: Time.parse(1727216400), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notify_code_configuration({
    #     notify_code_configuration_id: "NotifyCodeConfigurationIdOrArn", # required
    #     notify_code_configuration_name: "NotifyCodeConfigurationName",
    #     code_configuration_parameters: {
    #       code_type: "NUMERIC", # accepts NUMERIC, ALPHA, ALPHANUMERIC
    #       code_length: 1,
    #       validity_period_minutes: 1,
    #       max_attempts: 1,
    #     },
    #     channel_parameters: {
    #       text: {
    #         inline_template_body: "UpdateInlineTemplateBody",
    #         destination_country_parameters: {
    #           "DestinationCountryParameterKey" => "DestinationCountryParameterValue",
    #         },
    #       },
    #       voice: {
    #         inline_template_body: "UpdateInlineTemplateBody",
    #         language_code: "UpdateLanguageCode",
    #         voice_id: "UpdateVoiceId",
    #         voice_message_body_text_type: "TEXT", # accepts TEXT, SSML
    #       },
    #       notify: {
    #         notify_template_id: "UpdateNotifyTemplateId",
    #         voice_id: "UpdateVoiceId",
    #       },
    #       whats_app: {
    #         whats_app_template_name: "UpdateWhatsAppTemplateName",
    #         language_code: "UpdateLanguageCode",
    #       },
    #     },
    #     deletion_protection_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.notify_code_configuration.notify_code_configuration_id #=> String
    #   resp.notify_code_configuration.notify_code_configuration_arn #=> String
    #   resp.notify_code_configuration.notify_code_configuration_name #=> String
    #   resp.notify_code_configuration.code_configuration_parameters.code_type #=> String, one of "NUMERIC", "ALPHA", "ALPHANUMERIC"
    #   resp.notify_code_configuration.code_configuration_parameters.code_length #=> Integer
    #   resp.notify_code_configuration.code_configuration_parameters.validity_period_minutes #=> Integer
    #   resp.notify_code_configuration.code_configuration_parameters.max_attempts #=> Integer
    #   resp.notify_code_configuration.channel_parameters.text.inline_template_body #=> String
    #   resp.notify_code_configuration.channel_parameters.text.destination_country_parameters #=> Hash
    #   resp.notify_code_configuration.channel_parameters.text.destination_country_parameters["DestinationCountryParameterKey"] #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.inline_template_body #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.language_code #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.voice_id #=> String
    #   resp.notify_code_configuration.channel_parameters.voice.voice_message_body_text_type #=> String, one of "TEXT", "SSML"
    #   resp.notify_code_configuration.channel_parameters.notify.notify_template_id #=> String
    #   resp.notify_code_configuration.channel_parameters.notify.voice_id #=> String
    #   resp.notify_code_configuration.channel_parameters.whats_app.whats_app_template_name #=> String
    #   resp.notify_code_configuration.channel_parameters.whats_app.language_code #=> String
    #   resp.notify_code_configuration.deletion_protection_enabled #=> Boolean
    #   resp.notify_code_configuration.created_at #=> Time
    #   resp.notify_code_configuration.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateNotifyCodeConfiguration AWS API Documentation
    #
    # @overload update_notify_code_configuration(params = {})
    # @param [Hash] params ({})
    def update_notify_code_configuration(params = {}, options = {})
      req = build_request(:update_notify_code_configuration, params)
      req.send_request(options)
    end

    # Repushes the attributes of a brand profile into existing DRAFT
    # registrations. This operation runs asynchronously. Use the GetJob
    # operation to track its progress.
    #
    # @option params [required, String] :brand_profile_id
    #   The unique identifier of the brand profile. You can specify either the
    #   bare ID or the full Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :registration_ids
    #   The identifiers of the registrations.
    #
    # @option params [Boolean] :smart_match
    #   Specifies whether to use semantic field mapping between brand profile
    #   attributes and registration fields. The default is true. When false,
    #   the service maps fields using a fixed set of standard field types.
    #
    # @option params [String] :on_attribute_conflict
    #   Specifies how the service resolves an attribute that already exists.
    #   REPLACE overwrites the existing value with the incoming value.
    #   PRESERVE keeps the existing value.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you do not specify a client token, the
    #   AWS SDK automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateRegistrationsFromBrandProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRegistrationsFromBrandProfileOutput#results #results} => Array&lt;Types::JobResult&gt;
    #
    #
    # @example Example: Update registrations from a brand profile
    #
    #   resp = client.update_registrations_from_brand_profile({
    #     brand_profile_id: "bp-abc12345678901234", 
    #     on_attribute_conflict: "PRESERVE", 
    #     registration_ids: [
    #       "reg-abc12345678901234", 
    #     ], 
    #     smart_match: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     results: [
    #       {
    #         job_id: "job-abc12345678901234", 
    #         resource_identifier: "reg-abc12345678901234", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_registrations_from_brand_profile({
    #     brand_profile_id: "BrandProfileIdOrArn", # required
    #     registration_ids: ["RegistrationIdOrArn"], # required
    #     smart_match: false,
    #     on_attribute_conflict: "REPLACE", # accepts REPLACE, PRESERVE
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].job_id #=> String
    #   resp.results[0].resource_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/UpdateRegistrationsFromBrandProfile AWS API Documentation
    #
    # @overload update_registrations_from_brand_profile(params = {})
    # @param [Hash] params ({})
    def update_registrations_from_brand_profile(params = {}, options = {})
      req = build_request(:update_registrations_from_brand_profile, params)
      req.send_request(options)
    end

    # Validates a one-time passcode that a recipient submitted. Validation
    # succeeds when the passcode matches, the validity period has not
    # elapsed, and the maximum number of attempts has not been exceeded.
    #
    # @option params [required, String] :destination_identity
    #   The recipient identifier. For the TEXT and VOICE channels, specify an
    #   E.164 phone number. For the WhatsApp channel, specify a WhatsApp
    #   address.
    #
    # @option params [String] :reference_id
    #   The caller-supplied reference identifier used to locate the
    #   verification. This value must match the value that you supplied to the
    #   SendNotifyCodeVerification operation.
    #
    # @option params [required, String] :code
    #   The one-time passcode that the recipient submitted for validation.
    #
    # @return [Types::ValidateNotifyCodeVerificationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateNotifyCodeVerificationOutput#status #status} => String
    #
    #
    # @example Example: Validate a submitted one-time passcode
    #
    #   resp = client.validate_notify_code_verification({
    #     code: "123456", 
    #     destination_identity: "+14255550100", 
    #     reference_id: "signup-flow-42", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     status: "VALID", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_notify_code_verification({
    #     destination_identity: "DestinationIdentity", # required
    #     reference_id: "ReferenceId",
    #     code: "VerificationCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "VALID", "INVALID"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/endusermessaging-2026-09-21/ValidateNotifyCodeVerification AWS API Documentation
    #
    # @overload validate_notify_code_verification(params = {})
    # @param [Hash] params ({})
    def validate_notify_code_verification(params = {}, options = {})
      req = build_request(:validate_notify_code_verification, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::EndUserMessaging')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-endusermessaging'
      context[:gem_version] = '1.0.0'
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
    # | waiter_name          | params                     | :delay   | :max_attempts |
    # | -------------------- | -------------------------- | -------- | ------------- |
    # | brand_profile_active | {Client#get_brand_profile} | 30       | 5             |
    # | job_success          | {Client#get_job}           | 30       | 5             |
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
        brand_profile_active: Waiters::BrandProfileActive,
        job_success: Waiters::JobSuccess
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
