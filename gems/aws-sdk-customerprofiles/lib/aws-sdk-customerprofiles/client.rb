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

module Aws::CustomerProfiles
  # An API client for CustomerProfiles.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CustomerProfiles::Client.new(
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

    @identifier = :customerprofiles

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
    add_plugin(Aws::CustomerProfiles::Plugins::Endpoints)

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
    #   @option options [Aws::CustomerProfiles::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CustomerProfiles::EndpointParameters`.
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

    # Associates a new key value with a specific profile, such as a Contact
    # Record ContactId.
    #
    # A profile object can have a single unique key and any number of
    # additional keys that can be used to identify the profile that it
    # belongs to.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [required, String] :key_name
    #   A searchable identifier of a customer profile. The predefined keys you
    #   can use include: \_account, \_profileId, \_assetId, \_caseId,
    #   \_orderId, \_fullName, \_phone, \_email, \_ctrContactId,
    #   \_marketoLeadId, \_salesforceAccountId, \_salesforceContactId,
    #   \_salesforceAssetId, \_zendeskUserId, \_zendeskExternalId,
    #   \_zendeskTicketId, \_serviceNowSystemId, \_serviceNowIncidentId,
    #   \_segmentUserId, \_shopifyCustomerId, \_shopifyOrderId.
    #
    # @option params [required, Array<String>] :values
    #   A list of key values.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::AddProfileKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddProfileKeyResponse#key_name #key_name} => String
    #   * {Types::AddProfileKeyResponse#values #values} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_profile_key({
    #     profile_id: "uuid", # required
    #     key_name: "name", # required
    #     values: ["string1To255"], # required
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_name #=> String
    #   resp.values #=> Array
    #   resp.values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AddProfileKey AWS API Documentation
    #
    # @overload add_profile_key(params = {})
    # @param [Hash] params ({})
    def add_profile_key(params = {}, options = {})
      req = build_request(:add_profile_key, params)
      req.send_request(options)
    end

    # Fetch the possible attribute values given the attribute name.
    #
    # @option params [required, String] :calculated_attribute_name
    #   The unique name of the calculated attribute.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, Array<String>] :profile_ids
    #   List of unique identifiers for customer profiles to retrieve.
    #
    # @option params [Types::ConditionOverrides] :condition_overrides
    #   Overrides the condition block within the original calculated attribute
    #   definition.
    #
    # @return [Types::BatchGetCalculatedAttributeForProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCalculatedAttributeForProfileResponse#errors #errors} => Array&lt;Types::BatchGetCalculatedAttributeForProfileError&gt;
    #   * {Types::BatchGetCalculatedAttributeForProfileResponse#calculated_attribute_values #calculated_attribute_values} => Array&lt;Types::CalculatedAttributeValue&gt;
    #   * {Types::BatchGetCalculatedAttributeForProfileResponse#condition_overrides #condition_overrides} => Types::ConditionOverrides
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_calculated_attribute_for_profile({
    #     calculated_attribute_name: "typeName", # required
    #     domain_name: "name", # required
    #     profile_ids: ["uuid"], # required
    #     condition_overrides: {
    #       range: {
    #         start: 1, # required
    #         end: 1,
    #         unit: "DAYS", # required, accepts DAYS
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #   resp.errors[0].profile_id #=> String
    #   resp.calculated_attribute_values #=> Array
    #   resp.calculated_attribute_values[0].calculated_attribute_name #=> String
    #   resp.calculated_attribute_values[0].display_name #=> String
    #   resp.calculated_attribute_values[0].is_data_partial #=> String
    #   resp.calculated_attribute_values[0].profile_id #=> String
    #   resp.calculated_attribute_values[0].value #=> String
    #   resp.calculated_attribute_values[0].last_object_timestamp #=> Time
    #   resp.condition_overrides.range.start #=> Integer
    #   resp.condition_overrides.range.end #=> Integer
    #   resp.condition_overrides.range.unit #=> String, one of "DAYS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/BatchGetCalculatedAttributeForProfile AWS API Documentation
    #
    # @overload batch_get_calculated_attribute_for_profile(params = {})
    # @param [Hash] params ({})
    def batch_get_calculated_attribute_for_profile(params = {}, options = {})
      req = build_request(:batch_get_calculated_attribute_for_profile, params)
      req.send_request(options)
    end

    # Get a batch of profiles.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, Array<String>] :profile_ids
    #   List of unique identifiers for customer profiles to retrieve.
    #
    # @return [Types::BatchGetProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetProfileResponse#errors #errors} => Array&lt;Types::BatchGetProfileError&gt;
    #   * {Types::BatchGetProfileResponse#profiles #profiles} => Array&lt;Types::Profile&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_profile({
    #     domain_name: "name", # required
    #     profile_ids: ["uuid"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #   resp.errors[0].profile_id #=> String
    #   resp.profiles #=> Array
    #   resp.profiles[0].profile_id #=> String
    #   resp.profiles[0].account_number #=> String
    #   resp.profiles[0].additional_information #=> String
    #   resp.profiles[0].party_type #=> String, one of "INDIVIDUAL", "BUSINESS", "OTHER"
    #   resp.profiles[0].business_name #=> String
    #   resp.profiles[0].first_name #=> String
    #   resp.profiles[0].middle_name #=> String
    #   resp.profiles[0].last_name #=> String
    #   resp.profiles[0].birth_date #=> String
    #   resp.profiles[0].gender #=> String, one of "MALE", "FEMALE", "UNSPECIFIED"
    #   resp.profiles[0].phone_number #=> String
    #   resp.profiles[0].mobile_phone_number #=> String
    #   resp.profiles[0].home_phone_number #=> String
    #   resp.profiles[0].business_phone_number #=> String
    #   resp.profiles[0].email_address #=> String
    #   resp.profiles[0].personal_email_address #=> String
    #   resp.profiles[0].business_email_address #=> String
    #   resp.profiles[0].address.address_1 #=> String
    #   resp.profiles[0].address.address_2 #=> String
    #   resp.profiles[0].address.address_3 #=> String
    #   resp.profiles[0].address.address_4 #=> String
    #   resp.profiles[0].address.city #=> String
    #   resp.profiles[0].address.county #=> String
    #   resp.profiles[0].address.state #=> String
    #   resp.profiles[0].address.province #=> String
    #   resp.profiles[0].address.country #=> String
    #   resp.profiles[0].address.postal_code #=> String
    #   resp.profiles[0].shipping_address.address_1 #=> String
    #   resp.profiles[0].shipping_address.address_2 #=> String
    #   resp.profiles[0].shipping_address.address_3 #=> String
    #   resp.profiles[0].shipping_address.address_4 #=> String
    #   resp.profiles[0].shipping_address.city #=> String
    #   resp.profiles[0].shipping_address.county #=> String
    #   resp.profiles[0].shipping_address.state #=> String
    #   resp.profiles[0].shipping_address.province #=> String
    #   resp.profiles[0].shipping_address.country #=> String
    #   resp.profiles[0].shipping_address.postal_code #=> String
    #   resp.profiles[0].mailing_address.address_1 #=> String
    #   resp.profiles[0].mailing_address.address_2 #=> String
    #   resp.profiles[0].mailing_address.address_3 #=> String
    #   resp.profiles[0].mailing_address.address_4 #=> String
    #   resp.profiles[0].mailing_address.city #=> String
    #   resp.profiles[0].mailing_address.county #=> String
    #   resp.profiles[0].mailing_address.state #=> String
    #   resp.profiles[0].mailing_address.province #=> String
    #   resp.profiles[0].mailing_address.country #=> String
    #   resp.profiles[0].mailing_address.postal_code #=> String
    #   resp.profiles[0].billing_address.address_1 #=> String
    #   resp.profiles[0].billing_address.address_2 #=> String
    #   resp.profiles[0].billing_address.address_3 #=> String
    #   resp.profiles[0].billing_address.address_4 #=> String
    #   resp.profiles[0].billing_address.city #=> String
    #   resp.profiles[0].billing_address.county #=> String
    #   resp.profiles[0].billing_address.state #=> String
    #   resp.profiles[0].billing_address.province #=> String
    #   resp.profiles[0].billing_address.country #=> String
    #   resp.profiles[0].billing_address.postal_code #=> String
    #   resp.profiles[0].attributes #=> Hash
    #   resp.profiles[0].attributes["string1To255"] #=> String
    #   resp.profiles[0].found_by_items #=> Array
    #   resp.profiles[0].found_by_items[0].key_name #=> String
    #   resp.profiles[0].found_by_items[0].values #=> Array
    #   resp.profiles[0].found_by_items[0].values[0] #=> String
    #   resp.profiles[0].party_type_string #=> String
    #   resp.profiles[0].gender_string #=> String
    #   resp.profiles[0].profile_type #=> String, one of "ACCOUNT_PROFILE", "PROFILE"
    #   resp.profiles[0].engagement_preferences.phone #=> Array
    #   resp.profiles[0].engagement_preferences.phone[0].key_name #=> String
    #   resp.profiles[0].engagement_preferences.phone[0].key_value #=> String
    #   resp.profiles[0].engagement_preferences.phone[0].profile_id #=> String
    #   resp.profiles[0].engagement_preferences.phone[0].contact_type #=> String, one of "PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"
    #   resp.profiles[0].engagement_preferences.email #=> Array
    #   resp.profiles[0].engagement_preferences.email[0].key_name #=> String
    #   resp.profiles[0].engagement_preferences.email[0].key_value #=> String
    #   resp.profiles[0].engagement_preferences.email[0].profile_id #=> String
    #   resp.profiles[0].engagement_preferences.email[0].contact_type #=> String, one of "PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/BatchGetProfile AWS API Documentation
    #
    # @overload batch_get_profile(params = {})
    # @param [Hash] params ({})
    def batch_get_profile(params = {}, options = {})
      req = build_request(:batch_get_profile, params)
      req.send_request(options)
    end

    # Creates a new calculated attribute definition. After creation, new
    # object data ingested into Customer Profiles will be included in the
    # calculated attribute, which can be retrieved for a profile using the
    # [GetCalculatedAttributeForProfile][1] API. Defining a calculated
    # attribute makes it available for all profiles within a domain. Each
    # calculated attribute can only reference one `ObjectType` and at most,
    # two fields from that `ObjectType`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetCalculatedAttributeForProfile.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :calculated_attribute_name
    #   The unique name of the calculated attribute.
    #
    # @option params [String] :display_name
    #   The display name of the calculated attribute.
    #
    # @option params [String] :description
    #   The description of the calculated attribute.
    #
    # @option params [required, Types::AttributeDetails] :attribute_details
    #   Mathematical expression and a list of attribute items specified in
    #   that expression.
    #
    # @option params [Types::Conditions] :conditions
    #   The conditions including range, object count, and threshold for the
    #   calculated attribute.
    #
    # @option params [Types::Filter] :filter
    #   Defines how to filter incoming objects to include part of the
    #   Calculated Attribute.
    #
    # @option params [required, String] :statistic
    #   The aggregation operation to perform for the calculated attribute.
    #
    # @option params [Boolean] :use_historical_data
    #   Whether historical data ingested before the Calculated Attribute was
    #   created should be included in calculations.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateCalculatedAttributeDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#calculated_attribute_name #calculated_attribute_name} => String
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#display_name #display_name} => String
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#description #description} => String
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#attribute_details #attribute_details} => Types::AttributeDetails
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#conditions #conditions} => Types::Conditions
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#filter #data.filter} => Types::Filter (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#statistic #statistic} => String
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#created_at #created_at} => Time
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#use_historical_data #use_historical_data} => Boolean
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#status #status} => String
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#readiness #readiness} => Types::Readiness
    #   * {Types::CreateCalculatedAttributeDefinitionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_calculated_attribute_definition({
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #     display_name: "displayName",
    #     description: "sensitiveText",
    #     attribute_details: { # required
    #       attributes: [ # required
    #         {
    #           name: "attributeName", # required
    #         },
    #       ],
    #       expression: "string1To255", # required
    #     },
    #     conditions: {
    #       range: {
    #         value: 1,
    #         unit: "DAYS", # accepts DAYS
    #         value_range: {
    #           start: 1, # required
    #           end: 1, # required
    #         },
    #         timestamp_source: "string1To255",
    #         timestamp_format: "string1To255",
    #       },
    #       object_count: 1,
    #       threshold: {
    #         value: "string1To255", # required
    #         operator: "EQUAL_TO", # required, accepts EQUAL_TO, GREATER_THAN, LESS_THAN, NOT_EQUAL_TO
    #       },
    #     },
    #     filter: {
    #       include: "ALL", # required, accepts ALL, ANY, NONE
    #       groups: [ # required
    #         {
    #           type: "ALL", # required, accepts ALL, ANY, NONE
    #           dimensions: [ # required
    #             {
    #               attributes: { # required
    #                 "attributeName" => {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH, BEFORE, AFTER, BETWEEN, NOT_BETWEEN, ON, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, EQUAL
    #                   values: ["string1To255"], # required
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #     statistic: "FIRST_OCCURRENCE", # required, accepts FIRST_OCCURRENCE, LAST_OCCURRENCE, COUNT, SUM, MINIMUM, MAXIMUM, AVERAGE, MAX_OCCURRENCE
    #     use_historical_data: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.calculated_attribute_name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.attribute_details.attributes #=> Array
    #   resp.attribute_details.attributes[0].name #=> String
    #   resp.attribute_details.expression #=> String
    #   resp.conditions.range.value #=> Integer
    #   resp.conditions.range.unit #=> String, one of "DAYS"
    #   resp.conditions.range.value_range.start #=> Integer
    #   resp.conditions.range.value_range.end #=> Integer
    #   resp.conditions.range.timestamp_source #=> String
    #   resp.conditions.range.timestamp_format #=> String
    #   resp.conditions.object_count #=> Integer
    #   resp.conditions.threshold.value #=> String
    #   resp.conditions.threshold.operator #=> String, one of "EQUAL_TO", "GREATER_THAN", "LESS_THAN", "NOT_EQUAL_TO"
    #   resp.data.filter.include #=> String, one of "ALL", "ANY", "NONE"
    #   resp.data.filter.groups #=> Array
    #   resp.data.filter.groups[0].type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.data.filter.groups[0].dimensions #=> Array
    #   resp.data.filter.groups[0].dimensions[0].attributes #=> Hash
    #   resp.data.filter.groups[0].dimensions[0].attributes["attributeName"].dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"
    #   resp.data.filter.groups[0].dimensions[0].attributes["attributeName"].values #=> Array
    #   resp.data.filter.groups[0].dimensions[0].attributes["attributeName"].values[0] #=> String
    #   resp.statistic #=> String, one of "FIRST_OCCURRENCE", "LAST_OCCURRENCE", "COUNT", "SUM", "MINIMUM", "MAXIMUM", "AVERAGE", "MAX_OCCURRENCE"
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.use_historical_data #=> Boolean
    #   resp.status #=> String, one of "PREPARING", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.readiness.progress_percentage #=> Integer
    #   resp.readiness.message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateCalculatedAttributeDefinition AWS API Documentation
    #
    # @overload create_calculated_attribute_definition(params = {})
    # @param [Hash] params ({})
    def create_calculated_attribute_definition(params = {}, options = {})
      req = build_request(:create_calculated_attribute_definition, params)
      req.send_request(options)
    end

    # Creates a domain, which is a container for all customer data, such as
    # customer profile attributes, object types, profile keys, and
    # encryption keys. You can create multiple domains, and each domain can
    # have multiple third-party integrations.
    #
    # Each Amazon Connect instance can be associated with only one domain.
    # Multiple Amazon Connect instances can be associated with one domain.
    #
    # Use this API or [UpdateDomain][1] to enable [identity resolution][2]:
    # set `Matching` to true.
    #
    # To prevent cross-service impersonation when you call this API, see
    # [Cross-service confused deputy prevention][3] for sample policies that
    # you should apply.
    #
    # <note markdown="1"> It is not possible to associate a Customer Profiles domain with an
    # Amazon Connect Instance directly from the API. If you would like to
    # create a domain and associate a Customer Profiles domain, use the
    # Amazon Connect admin website. For more information, see [Enable
    # Customer Profiles][4].
    #
    #  Each Amazon Connect instance can be associated with only one domain.
    # Multiple Amazon Connect instances can be associated with one domain.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html
    # [2]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html
    # [4]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-customer-profiles.html#enable-customer-profiles-step1
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, Integer] :default_expiration_days
    #   The default number of days until the data within the domain expires.
    #
    # @option params [String] :default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used when
    #   no specific type of encryption key is specified. It is used to encrypt
    #   all data before it is placed in permanent or semi-permanent storage.
    #
    # @option params [String] :dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   You must set up a policy on the DeadLetterQueue for the SendMessage
    #   operation to enable Amazon Connect Customer Profiles to send messages
    #   to the DeadLetterQueue.
    #
    # @option params [Types::MatchingRequest] :matching
    #   The process of matching duplicate profiles. If `Matching` = `true`,
    #   Amazon Connect Customer Profiles starts a weekly batch process called
    #   Identity Resolution Job. If you do not specify a date and time for
    #   Identity Resolution Job to run, by default it runs every Saturday at
    #   12AM UTC to detect duplicate profiles in your domains.
    #
    #   After the Identity Resolution Job completes, use the [GetMatches][1]
    #   API to return and review the results. Or, if you have configured
    #   `ExportingConfig` in the `MatchingRequest`, you can download the
    #   results from S3.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #
    # @option params [Types::RuleBasedMatchingRequest] :rule_based_matching
    #   The process of matching duplicate profiles using the Rule-Based
    #   matching. If `RuleBasedMatching` = true, Amazon Connect Customer
    #   Profiles will start to match and merge your profiles according to your
    #   configuration in the `RuleBasedMatchingRequest`. You can use the
    #   `ListRuleBasedMatches` and `GetSimilarProfiles` API to return and
    #   review the results. Also, if you have configured `ExportingConfig` in
    #   the `RuleBasedMatchingRequest`, you can download the results from S3.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainResponse#domain_name #domain_name} => String
    #   * {Types::CreateDomainResponse#default_expiration_days #default_expiration_days} => Integer
    #   * {Types::CreateDomainResponse#default_encryption_key #default_encryption_key} => String
    #   * {Types::CreateDomainResponse#dead_letter_queue_url #dead_letter_queue_url} => String
    #   * {Types::CreateDomainResponse#matching #matching} => Types::MatchingResponse
    #   * {Types::CreateDomainResponse#rule_based_matching #rule_based_matching} => Types::RuleBasedMatchingResponse
    #   * {Types::CreateDomainResponse#created_at #created_at} => Time
    #   * {Types::CreateDomainResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateDomainResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     domain_name: "name", # required
    #     default_expiration_days: 1, # required
    #     default_encryption_key: "encryptionKey",
    #     dead_letter_queue_url: "sqsQueueUrl",
    #     matching: {
    #       enabled: false, # required
    #       job_schedule: {
    #         day_of_the_week: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         time: "JobScheduleTime", # required
    #       },
    #       auto_merging: {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [ # required
    #             ["string1To255"],
    #           ],
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #           source_name: "string1To255",
    #         },
    #         min_allowed_confidence_score_for_merging: 1.0,
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig",
    #         },
    #       },
    #     },
    #     rule_based_matching: {
    #       enabled: false, # required
    #       matching_rules: [
    #         {
    #           rule: ["string1To255"], # required
    #         },
    #       ],
    #       max_allowed_rule_level_for_merging: 1,
    #       max_allowed_rule_level_for_matching: 1,
    #       attribute_types_selector: {
    #         attribute_matching_model: "ONE_TO_ONE", # required, accepts ONE_TO_ONE, MANY_TO_MANY
    #         address: ["string1To255"],
    #         phone_number: ["string1To255"],
    #         email_address: ["string1To255"],
    #       },
    #       conflict_resolution: {
    #         conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #         source_name: "string1To255",
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig",
    #         },
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.default_expiration_days #=> Integer
    #   resp.default_encryption_key #=> String
    #   resp.dead_letter_queue_url #=> String
    #   resp.matching.enabled #=> Boolean
    #   resp.matching.job_schedule.day_of_the_week #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.matching.job_schedule.time #=> String
    #   resp.matching.auto_merging.enabled #=> Boolean
    #   resp.matching.auto_merging.consolidation.matching_attributes_list #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0] #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.matching.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of "RECENCY", "SOURCE"
    #   resp.matching.auto_merging.conflict_resolution.source_name #=> String
    #   resp.matching.auto_merging.min_allowed_confidence_score_for_merging #=> Float
    #   resp.matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.rule_based_matching.enabled #=> Boolean
    #   resp.rule_based_matching.matching_rules #=> Array
    #   resp.rule_based_matching.matching_rules[0].rule #=> Array
    #   resp.rule_based_matching.matching_rules[0].rule[0] #=> String
    #   resp.rule_based_matching.status #=> String, one of "PENDING", "IN_PROGRESS", "ACTIVE"
    #   resp.rule_based_matching.max_allowed_rule_level_for_merging #=> Integer
    #   resp.rule_based_matching.max_allowed_rule_level_for_matching #=> Integer
    #   resp.rule_based_matching.attribute_types_selector.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.rule_based_matching.attribute_types_selector.address #=> Array
    #   resp.rule_based_matching.attribute_types_selector.address[0] #=> String
    #   resp.rule_based_matching.attribute_types_selector.phone_number #=> Array
    #   resp.rule_based_matching.attribute_types_selector.phone_number[0] #=> String
    #   resp.rule_based_matching.attribute_types_selector.email_address #=> Array
    #   resp.rule_based_matching.attribute_types_selector.email_address[0] #=> String
    #   resp.rule_based_matching.conflict_resolution.conflict_resolving_model #=> String, one of "RECENCY", "SOURCE"
    #   resp.rule_based_matching.conflict_resolution.source_name #=> String
    #   resp.rule_based_matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.rule_based_matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates the layout to view data for a specific domain. This API can
    # only be invoked from the Amazon Connect admin website.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :layout_definition_name
    #   The unique name of the layout.
    #
    # @option params [required, String] :description
    #   The description of the layout
    #
    # @option params [required, String] :display_name
    #   The display name of the layout
    #
    # @option params [Boolean] :is_default
    #   If set to true for a layout, this layout will be used by default to
    #   view data. If set to false, then the layout will not be used by
    #   default, but it can be used to view data by explicitly selecting it in
    #   the console.
    #
    # @option params [required, String] :layout_type
    #   The type of layout that can be used to view data under a Customer
    #   Profiles domain.
    #
    # @option params [required, String] :layout
    #   A customizable layout that can be used to view data under a Customer
    #   Profiles domain.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateDomainLayoutResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainLayoutResponse#layout_definition_name #layout_definition_name} => String
    #   * {Types::CreateDomainLayoutResponse#description #description} => String
    #   * {Types::CreateDomainLayoutResponse#display_name #display_name} => String
    #   * {Types::CreateDomainLayoutResponse#is_default #is_default} => Boolean
    #   * {Types::CreateDomainLayoutResponse#layout_type #layout_type} => String
    #   * {Types::CreateDomainLayoutResponse#layout #layout} => String
    #   * {Types::CreateDomainLayoutResponse#version #version} => String
    #   * {Types::CreateDomainLayoutResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateDomainLayoutResponse#created_at #created_at} => Time
    #   * {Types::CreateDomainLayoutResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_layout({
    #     domain_name: "name", # required
    #     layout_definition_name: "name", # required
    #     description: "sensitiveText", # required
    #     display_name: "displayName", # required
    #     is_default: false,
    #     layout_type: "PROFILE_EXPLORER", # required, accepts PROFILE_EXPLORER
    #     layout: "sensitiveString1To2000000", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.layout_definition_name #=> String
    #   resp.description #=> String
    #   resp.display_name #=> String
    #   resp.is_default #=> Boolean
    #   resp.layout_type #=> String, one of "PROFILE_EXPLORER"
    #   resp.layout #=> String
    #   resp.version #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateDomainLayout AWS API Documentation
    #
    # @overload create_domain_layout(params = {})
    # @param [Hash] params ({})
    def create_domain_layout(params = {}, options = {})
      req = build_request(:create_domain_layout, params)
      req.send_request(options)
    end

    # Creates an event stream, which is a subscription to real-time events,
    # such as when profiles are created and updated through Amazon Connect
    # Customer Profiles.
    #
    # Each event stream can be associated with only one Kinesis Data Stream
    # destination in the same region and Amazon Web Services account as the
    # customer profiles domain
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :uri
    #   The StreamARN of the destination to deliver profile events to. For
    #   example, arn:aws:kinesis:region:account-id:stream/stream-name
    #
    # @option params [required, String] :event_stream_name
    #   The name of the event stream.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateEventStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventStreamResponse#event_stream_arn #event_stream_arn} => String
    #   * {Types::CreateEventStreamResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_stream({
    #     domain_name: "name", # required
    #     uri: "string1To255", # required
    #     event_stream_name: "name", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.event_stream_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateEventStream AWS API Documentation
    #
    # @overload create_event_stream(params = {})
    # @param [Hash] params ({})
    def create_event_stream(params = {}, options = {})
      req = build_request(:create_event_stream, params)
      req.send_request(options)
    end

    # Creates an event trigger, which specifies the rules when to perform
    # action based on customer's ingested data.
    #
    # Each event stream can be associated with only one integration in the
    # same region and AWS account as the event stream.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :event_trigger_name
    #   The unique name of the event trigger.
    #
    # @option params [required, String] :object_type_name
    #   The unique name of the object type.
    #
    # @option params [String] :description
    #   The description of the event trigger.
    #
    # @option params [required, Array<Types::EventTriggerCondition>] :event_trigger_conditions
    #   A list of conditions that determine when an event should trigger the
    #   destination.
    #
    # @option params [String] :segment_filter
    #   The destination is triggered only for profiles that meet the criteria
    #   of a segment definition.
    #
    # @option params [Types::EventTriggerLimits] :event_trigger_limits
    #   Defines limits controlling whether an event triggers the destination,
    #   based on ingestion latency and the number of invocations per profile
    #   over specific time periods.
    #
    # @option params [Hash<String,String>] :tags
    #   An array of key-value pairs to apply to this resource.
    #
    # @return [Types::CreateEventTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventTriggerResponse#event_trigger_name #event_trigger_name} => String
    #   * {Types::CreateEventTriggerResponse#object_type_name #object_type_name} => String
    #   * {Types::CreateEventTriggerResponse#description #description} => String
    #   * {Types::CreateEventTriggerResponse#event_trigger_conditions #event_trigger_conditions} => Array&lt;Types::EventTriggerCondition&gt;
    #   * {Types::CreateEventTriggerResponse#segment_filter #segment_filter} => String
    #   * {Types::CreateEventTriggerResponse#event_trigger_limits #event_trigger_limits} => Types::EventTriggerLimits
    #   * {Types::CreateEventTriggerResponse#created_at #created_at} => Time
    #   * {Types::CreateEventTriggerResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateEventTriggerResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_trigger({
    #     domain_name: "name", # required
    #     event_trigger_name: "name", # required
    #     object_type_name: "typeName", # required
    #     description: "sensitiveText",
    #     event_trigger_conditions: [ # required
    #       {
    #         event_trigger_dimensions: [ # required
    #           {
    #             object_attributes: [ # required
    #               {
    #                 source: "text",
    #                 field_name: "fieldName",
    #                 comparison_operator: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, EQUAL, BEFORE, AFTER, ON, BETWEEN, NOT_BETWEEN
    #                 values: ["string1To255"], # required
    #               },
    #             ],
    #           },
    #         ],
    #         logical_operator: "ANY", # required, accepts ANY, ALL, NONE
    #       },
    #     ],
    #     segment_filter: "name",
    #     event_trigger_limits: {
    #       event_expiration: 1,
    #       periods: [
    #         {
    #           unit: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS
    #           value: 1, # required
    #           max_invocations_per_profile: 1,
    #           unlimited: false,
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
    #   resp.event_trigger_name #=> String
    #   resp.object_type_name #=> String
    #   resp.description #=> String
    #   resp.event_trigger_conditions #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].source #=> String
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].field_name #=> String
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].comparison_operator #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL", "BEFORE", "AFTER", "ON", "BETWEEN", "NOT_BETWEEN"
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].values #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].values[0] #=> String
    #   resp.event_trigger_conditions[0].logical_operator #=> String, one of "ANY", "ALL", "NONE"
    #   resp.segment_filter #=> String
    #   resp.event_trigger_limits.event_expiration #=> Integer
    #   resp.event_trigger_limits.periods #=> Array
    #   resp.event_trigger_limits.periods[0].unit #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS"
    #   resp.event_trigger_limits.periods[0].value #=> Integer
    #   resp.event_trigger_limits.periods[0].max_invocations_per_profile #=> Integer
    #   resp.event_trigger_limits.periods[0].unlimited #=> Boolean
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateEventTrigger AWS API Documentation
    #
    # @overload create_event_trigger(params = {})
    # @param [Hash] params ({})
    def create_event_trigger(params = {}, options = {})
      req = build_request(:create_event_trigger, params)
      req.send_request(options)
    end

    # Creates an integration workflow. An integration workflow is an async
    # process which ingests historic data and sets up an integration for
    # ongoing updates. The supported Amazon AppFlow sources are Salesforce,
    # ServiceNow, and Marketo.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :workflow_type
    #   The type of workflow. The only supported value is
    #   APPFLOW\_INTEGRATION.
    #
    # @option params [required, Types::IntegrationConfig] :integration_config
    #   Configuration data for integration workflow.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Customer Profiles
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateIntegrationWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntegrationWorkflowResponse#workflow_id #workflow_id} => String
    #   * {Types::CreateIntegrationWorkflowResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration_workflow({
    #     domain_name: "name", # required
    #     workflow_type: "APPFLOW_INTEGRATION", # required, accepts APPFLOW_INTEGRATION
    #     integration_config: { # required
    #       appflow_integration: {
    #         flow_definition: { # required
    #           description: "FlowDescription",
    #           flow_name: "FlowName", # required
    #           kms_arn: "KmsArn", # required
    #           source_flow_config: { # required
    #             connector_profile_name: "ConnectorProfileName",
    #             connector_type: "Salesforce", # required, accepts Salesforce, Marketo, Zendesk, Servicenow, S3
    #             incremental_pull_config: {
    #               datetime_type_field_name: "DatetimeTypeFieldName",
    #             },
    #             source_connector_properties: { # required
    #               marketo: {
    #                 object: "Object", # required
    #               },
    #               s3: {
    #                 bucket_name: "BucketName", # required
    #                 bucket_prefix: "BucketPrefix",
    #               },
    #               salesforce: {
    #                 object: "Object", # required
    #                 enable_dynamic_field_update: false,
    #                 include_deleted_records: false,
    #               },
    #               service_now: {
    #                 object: "Object", # required
    #               },
    #               zendesk: {
    #                 object: "Object", # required
    #               },
    #             },
    #           },
    #           tasks: [ # required
    #             {
    #               connector_operator: {
    #                 marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               },
    #               destination_field: "DestinationField",
    #               source_fields: ["stringTo2048"], # required
    #               task_properties: {
    #                 "VALUE" => "Property",
    #               },
    #               task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #             },
    #           ],
    #           trigger_config: { # required
    #             trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #             trigger_properties: {
    #               scheduled: {
    #                 schedule_expression: "ScheduleExpression", # required
    #                 data_pull_mode: "Incremental", # accepts Incremental, Complete
    #                 schedule_start_time: Time.now,
    #                 schedule_end_time: Time.now,
    #                 timezone: "Timezone",
    #                 schedule_offset: 1,
    #                 first_execution_from: Time.now,
    #               },
    #             },
    #           },
    #         },
    #         batches: [
    #           {
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #           },
    #         ],
    #       },
    #     },
    #     object_type_name: "typeName", # required
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_id #=> String
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateIntegrationWorkflow AWS API Documentation
    #
    # @overload create_integration_workflow(params = {})
    # @param [Hash] params ({})
    def create_integration_workflow(params = {}, options = {})
      req = build_request(:create_integration_workflow, params)
      req.send_request(options)
    end

    # Creates a standard profile.
    #
    # A standard profile represents the following attributes for a customer
    # profile in a domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :account_number
    #   An account number that you have assigned to the customer.
    #
    # @option params [String] :additional_information
    #   Any additional information relevant to the customer’s profile.
    #
    # @option params [String] :party_type
    #   The type of profile used to describe the customer.
    #
    # @option params [String] :business_name
    #   The name of the customer’s business.
    #
    # @option params [String] :first_name
    #   The customer’s first name.
    #
    # @option params [String] :middle_name
    #   The customer’s middle name.
    #
    # @option params [String] :last_name
    #   The customer’s last name.
    #
    # @option params [String] :birth_date
    #   The customer’s birth date.
    #
    # @option params [String] :gender
    #   The gender with which the customer identifies.
    #
    # @option params [String] :phone_number
    #   The customer’s phone number, which has not been specified as a mobile,
    #   home, or business number.
    #
    # @option params [String] :mobile_phone_number
    #   The customer’s mobile phone number.
    #
    # @option params [String] :home_phone_number
    #   The customer’s home phone number.
    #
    # @option params [String] :business_phone_number
    #   The customer’s business phone number.
    #
    # @option params [String] :email_address
    #   The customer’s email address, which has not been specified as a
    #   personal or business address.
    #
    # @option params [String] :personal_email_address
    #   The customer’s personal email address.
    #
    # @option params [String] :business_email_address
    #   The customer’s business email address.
    #
    # @option params [Types::Address] :address
    #   A generic address associated with the customer that is not mailing,
    #   shipping, or billing.
    #
    # @option params [Types::Address] :shipping_address
    #   The customer’s shipping address.
    #
    # @option params [Types::Address] :mailing_address
    #   The customer’s mailing address.
    #
    # @option params [Types::Address] :billing_address
    #   The customer’s billing address.
    #
    # @option params [Hash<String,String>] :attributes
    #   A key value pair of attributes of a customer profile.
    #
    # @option params [String] :party_type_string
    #   An alternative to `PartyType` which accepts any string as input.
    #
    # @option params [String] :gender_string
    #   An alternative to `Gender` which accepts any string as input.
    #
    # @option params [String] :profile_type
    #   The type of the profile.
    #
    # @option params [Types::EngagementPreferences] :engagement_preferences
    #   Object that defines the preferred methods of engagement, per channel.
    #
    # @return [Types::CreateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProfileResponse#profile_id #profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile({
    #     domain_name: "name", # required
    #     account_number: "sensitiveString1To255",
    #     additional_information: "sensitiveString1To1000",
    #     party_type: "INDIVIDUAL", # accepts INDIVIDUAL, BUSINESS, OTHER
    #     business_name: "sensitiveString1To255",
    #     first_name: "sensitiveString1To255",
    #     middle_name: "sensitiveString1To255",
    #     last_name: "sensitiveString1To255",
    #     birth_date: "sensitiveString1To255",
    #     gender: "MALE", # accepts MALE, FEMALE, UNSPECIFIED
    #     phone_number: "sensitiveString1To255",
    #     mobile_phone_number: "sensitiveString1To255",
    #     home_phone_number: "sensitiveString1To255",
    #     business_phone_number: "sensitiveString1To255",
    #     email_address: "sensitiveString1To255",
    #     personal_email_address: "sensitiveString1To255",
    #     business_email_address: "sensitiveString1To255",
    #     address: {
    #       address_1: "string1To255",
    #       address_2: "string1To255",
    #       address_3: "string1To255",
    #       address_4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255",
    #     },
    #     shipping_address: {
    #       address_1: "string1To255",
    #       address_2: "string1To255",
    #       address_3: "string1To255",
    #       address_4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255",
    #     },
    #     mailing_address: {
    #       address_1: "string1To255",
    #       address_2: "string1To255",
    #       address_3: "string1To255",
    #       address_4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255",
    #     },
    #     billing_address: {
    #       address_1: "string1To255",
    #       address_2: "string1To255",
    #       address_3: "string1To255",
    #       address_4: "string1To255",
    #       city: "string1To255",
    #       county: "string1To255",
    #       state: "string1To255",
    #       province: "string1To255",
    #       country: "string1To255",
    #       postal_code: "string1To255",
    #     },
    #     attributes: {
    #       "string1To255" => "string1To255",
    #     },
    #     party_type_string: "sensitiveString1To255",
    #     gender_string: "sensitiveString1To255",
    #     profile_type: "ACCOUNT_PROFILE", # accepts ACCOUNT_PROFILE, PROFILE
    #     engagement_preferences: {
    #       phone: [
    #         {
    #           key_name: "name",
    #           key_value: "string1To255",
    #           profile_id: "uuid",
    #           contact_type: "PhoneNumber", # accepts PhoneNumber, MobilePhoneNumber, HomePhoneNumber, BusinessPhoneNumber, EmailAddress, PersonalEmailAddress, BusinessEmailAddress
    #         },
    #       ],
    #       email: [
    #         {
    #           key_name: "name",
    #           key_value: "string1To255",
    #           profile_id: "uuid",
    #           contact_type: "PhoneNumber", # accepts PhoneNumber, MobilePhoneNumber, HomePhoneNumber, BusinessPhoneNumber, EmailAddress, PersonalEmailAddress, BusinessEmailAddress
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateProfile AWS API Documentation
    #
    # @overload create_profile(params = {})
    # @param [Hash] params ({})
    def create_profile(params = {}, options = {})
      req = build_request(:create_profile, params)
      req.send_request(options)
    end

    # Creates a segment definition associated to the given domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :segment_definition_name
    #   The unique name of the segment definition.
    #
    # @option params [required, String] :display_name
    #   The display name of the segment definition.
    #
    # @option params [String] :description
    #   The description of the segment definition.
    #
    # @option params [required, Types::SegmentGroup] :segment_groups
    #   Specifies the base segments and dimensions for a segment definition
    #   along with their respective relationship.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateSegmentDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSegmentDefinitionResponse#segment_definition_name #segment_definition_name} => String
    #   * {Types::CreateSegmentDefinitionResponse#display_name #display_name} => String
    #   * {Types::CreateSegmentDefinitionResponse#description #description} => String
    #   * {Types::CreateSegmentDefinitionResponse#created_at #created_at} => Time
    #   * {Types::CreateSegmentDefinitionResponse#segment_definition_arn #segment_definition_arn} => String
    #   * {Types::CreateSegmentDefinitionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_segment_definition({
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #     display_name: "string1To255", # required
    #     description: "sensitiveText",
    #     segment_groups: { # required
    #       groups: [
    #         {
    #           dimensions: [
    #             {
    #               profile_attributes: {
    #                 account_number: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 additional_information: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To1000"], # required
    #                 },
    #                 first_name: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 last_name: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 middle_name: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 gender_string: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 party_type_string: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 birth_date: {
    #                   dimension_type: "BEFORE", # required, accepts BEFORE, AFTER, BETWEEN, NOT_BETWEEN, ON
    #                   values: ["String"], # required
    #                 },
    #                 phone_number: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 business_name: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 business_phone_number: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 home_phone_number: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 mobile_phone_number: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 email_address: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 personal_email_address: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 business_email_address: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 address: {
    #                   city: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   county: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   postal_code: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   province: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   state: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                 },
    #                 shipping_address: {
    #                   city: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   county: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   postal_code: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   province: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   state: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                 },
    #                 mailing_address: {
    #                   city: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   county: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   postal_code: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   province: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   state: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                 },
    #                 billing_address: {
    #                   city: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   county: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   postal_code: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   province: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   state: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                 },
    #                 attributes: {
    #                   "typeName" => {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH, BEFORE, AFTER, BETWEEN, NOT_BETWEEN, ON, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, EQUAL
    #                     values: ["string1To255"], # required
    #                   },
    #                 },
    #                 profile_type: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["ACCOUNT_PROFILE"], # required, accepts ACCOUNT_PROFILE, PROFILE
    #                 },
    #               },
    #               calculated_attributes: {
    #                 "typeName" => {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH, BEFORE, AFTER, BETWEEN, NOT_BETWEEN, ON, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, EQUAL
    #                   values: ["string1To255"], # required
    #                   condition_overrides: {
    #                     range: {
    #                       start: 1, # required
    #                       end: 1,
    #                       unit: "DAYS", # required, accepts DAYS
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #           ],
    #           source_segments: [
    #             {
    #               segment_definition_name: "name",
    #             },
    #           ],
    #           source_type: "ALL", # accepts ALL, ANY, NONE
    #           type: "ALL", # accepts ALL, ANY, NONE
    #         },
    #       ],
    #       include: "ALL", # accepts ALL, ANY, NONE
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_definition_name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.segment_definition_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateSegmentDefinition AWS API Documentation
    #
    # @overload create_segment_definition(params = {})
    # @param [Hash] params ({})
    def create_segment_definition(params = {}, options = {})
      req = build_request(:create_segment_definition, params)
      req.send_request(options)
    end

    # Creates a segment estimate query.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, Types::SegmentGroupStructure] :segment_query
    #   The segment query for calculating a segment estimate.
    #
    # @return [Types::CreateSegmentEstimateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSegmentEstimateResponse#domain_name #domain_name} => String
    #   * {Types::CreateSegmentEstimateResponse#estimate_id #estimate_id} => String
    #   * {Types::CreateSegmentEstimateResponse#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_segment_estimate({
    #     domain_name: "name", # required
    #     segment_query: { # required
    #       groups: [
    #         {
    #           dimensions: [
    #             {
    #               profile_attributes: {
    #                 account_number: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 additional_information: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To1000"], # required
    #                 },
    #                 first_name: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 last_name: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 middle_name: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 gender_string: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 party_type_string: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 birth_date: {
    #                   dimension_type: "BEFORE", # required, accepts BEFORE, AFTER, BETWEEN, NOT_BETWEEN, ON
    #                   values: ["String"], # required
    #                 },
    #                 phone_number: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 business_name: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 business_phone_number: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 home_phone_number: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 mobile_phone_number: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 email_address: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 personal_email_address: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 business_email_address: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                   values: ["string1To255"], # required
    #                 },
    #                 address: {
    #                   city: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   county: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   postal_code: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   province: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   state: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                 },
    #                 shipping_address: {
    #                   city: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   county: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   postal_code: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   province: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   state: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                 },
    #                 mailing_address: {
    #                   city: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   county: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   postal_code: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   province: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   state: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                 },
    #                 billing_address: {
    #                   city: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   country: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   county: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   postal_code: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   province: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                   state: {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
    #                     values: ["string1To255"], # required
    #                   },
    #                 },
    #                 attributes: {
    #                   "typeName" => {
    #                     dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH, BEFORE, AFTER, BETWEEN, NOT_BETWEEN, ON, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, EQUAL
    #                     values: ["string1To255"], # required
    #                   },
    #                 },
    #                 profile_type: {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE
    #                   values: ["ACCOUNT_PROFILE"], # required, accepts ACCOUNT_PROFILE, PROFILE
    #                 },
    #               },
    #               calculated_attributes: {
    #                 "typeName" => {
    #                   dimension_type: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH, BEFORE, AFTER, BETWEEN, NOT_BETWEEN, ON, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, EQUAL
    #                   values: ["string1To255"], # required
    #                   condition_overrides: {
    #                     range: {
    #                       start: 1, # required
    #                       end: 1,
    #                       unit: "DAYS", # required, accepts DAYS
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #           ],
    #           source_segments: [
    #             {
    #               segment_definition_name: "name",
    #             },
    #           ],
    #           source_type: "ALL", # accepts ALL, ANY, NONE
    #           type: "ALL", # accepts ALL, ANY, NONE
    #         },
    #       ],
    #       include: "ALL", # accepts ALL, ANY, NONE
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.estimate_id #=> String
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateSegmentEstimate AWS API Documentation
    #
    # @overload create_segment_estimate(params = {})
    # @param [Hash] params ({})
    def create_segment_estimate(params = {}, options = {})
      req = build_request(:create_segment_estimate, params)
      req.send_request(options)
    end

    # Triggers a job to export a segment to a specified destination.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :segment_definition_name
    #   The name of the segment definition used in this snapshot request.
    #
    # @option params [required, String] :data_format
    #   The format in which the segment will be exported.
    #
    # @option params [String] :encryption_key
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   exported segment.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that allows Customer
    #   Profiles service principal to assume the role for conducting KMS and
    #   S3 operations.
    #
    # @option params [String] :destination_uri
    #   The destination to which the segment will be exported. This field must
    #   be provided if the request is not submitted from the Amazon Connect
    #   Admin Website.
    #
    # @return [Types::CreateSegmentSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSegmentSnapshotResponse#snapshot_id #snapshot_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_segment_snapshot({
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #     data_format: "CSV", # required, accepts CSV, JSONL, ORC
    #     encryption_key: "encryptionKey",
    #     role_arn: "RoleArn",
    #     destination_uri: "string1To255",
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateSegmentSnapshot AWS API Documentation
    #
    # @overload create_segment_snapshot(params = {})
    # @param [Hash] params ({})
    def create_segment_snapshot(params = {}, options = {})
      req = build_request(:create_segment_snapshot, params)
      req.send_request(options)
    end

    # Creates an Upload job to ingest data for segment imports. The metadata
    # is created for the job with the provided field mapping and unique key.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain. Domain should be exists for the upload
    #   job to be created.
    #
    # @option params [required, String] :display_name
    #   The unique name of the upload job. Could be a file name to identify
    #   the upload job.
    #
    # @option params [required, Hash<String,Types::ObjectTypeField>] :fields
    #   The mapping between CSV Columns and Profile Object attributes. A map
    #   of the name and ObjectType field.
    #
    # @option params [required, String] :unique_key
    #   The unique key columns for de-duping the profiles used to map data to
    #   the profile.
    #
    # @option params [Integer] :data_expiry
    #   The expiry duration for the profiles ingested with the job. If not
    #   provided, the system default of 2 weeks is used.
    #
    # @return [Types::CreateUploadJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUploadJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_upload_job({
    #     domain_name: "name", # required
    #     display_name: "string1To255", # required
    #     fields: { # required
    #       "fieldName" => {
    #         source: "text",
    #         target: "text",
    #         content_type: "STRING", # accepts STRING, NUMBER, PHONE_NUMBER, EMAIL_ADDRESS, NAME
    #       },
    #     },
    #     unique_key: "text", # required
    #     data_expiry: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateUploadJob AWS API Documentation
    #
    # @overload create_upload_job(params = {})
    # @param [Hash] params ({})
    def create_upload_job(params = {}, options = {})
      req = build_request(:create_upload_job, params)
      req.send_request(options)
    end

    # Deletes an existing calculated attribute definition. Note that
    # deleting a default calculated attribute is possible, however once
    # deleted, you will be unable to undo that action and will need to
    # recreate it on your own using the CreateCalculatedAttributeDefinition
    # API if you want it back.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :calculated_attribute_name
    #   The unique name of the calculated attribute.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_calculated_attribute_definition({
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteCalculatedAttributeDefinition AWS API Documentation
    #
    # @overload delete_calculated_attribute_definition(params = {})
    # @param [Hash] params ({})
    def delete_calculated_attribute_definition(params = {}, options = {})
      req = build_request(:delete_calculated_attribute_definition, params)
      req.send_request(options)
    end

    # Deletes a specific domain and all of its customer data, such as
    # customer profile attributes and their related objects.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::DeleteDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Deletes the layout used to view data for a specific domain. This API
    # can only be invoked from the Amazon Connect admin website.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :layout_definition_name
    #   The unique name of the layout.
    #
    # @return [Types::DeleteDomainLayoutResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainLayoutResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_layout({
    #     domain_name: "name", # required
    #     layout_definition_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteDomainLayout AWS API Documentation
    #
    # @overload delete_domain_layout(params = {})
    # @param [Hash] params ({})
    def delete_domain_layout(params = {}, options = {})
      req = build_request(:delete_domain_layout, params)
      req.send_request(options)
    end

    # Disables and deletes the specified event stream.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :event_stream_name
    #   The name of the event stream
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_stream({
    #     domain_name: "name", # required
    #     event_stream_name: "name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteEventStream AWS API Documentation
    #
    # @overload delete_event_stream(params = {})
    # @param [Hash] params ({})
    def delete_event_stream(params = {}, options = {})
      req = build_request(:delete_event_stream, params)
      req.send_request(options)
    end

    # Disable and deletes the Event Trigger.
    #
    # <note markdown="1"> You cannot delete an Event Trigger with an active Integration
    # associated.
    #
    #  </note>
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :event_trigger_name
    #   The unique name of the event trigger.
    #
    # @return [Types::DeleteEventTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEventTriggerResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_trigger({
    #     domain_name: "name", # required
    #     event_trigger_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteEventTrigger AWS API Documentation
    #
    # @overload delete_event_trigger(params = {})
    # @param [Hash] params ({})
    def delete_event_trigger(params = {}, options = {})
      req = build_request(:delete_event_trigger, params)
      req.send_request(options)
    end

    # Removes an integration from a specific domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :uri
    #   The URI of the S3 bucket or any other type of data source.
    #
    # @return [Types::DeleteIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIntegrationResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration({
    #     domain_name: "name", # required
    #     uri: "string1To255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteIntegration AWS API Documentation
    #
    # @overload delete_integration(params = {})
    # @param [Hash] params ({})
    def delete_integration(params = {}, options = {})
      req = build_request(:delete_integration, params)
      req.send_request(options)
    end

    # Deletes the standard customer profile and all data pertaining to the
    # profile.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::DeleteProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProfileResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile({
    #     profile_id: "uuid", # required
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfile AWS API Documentation
    #
    # @overload delete_profile(params = {})
    # @param [Hash] params ({})
    def delete_profile(params = {}, options = {})
      req = build_request(:delete_profile, params)
      req.send_request(options)
    end

    # Removes a searchable key from a customer profile.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [required, String] :key_name
    #   A searchable identifier of a customer profile.
    #
    # @option params [required, Array<String>] :values
    #   A list of key values.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::DeleteProfileKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProfileKeyResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile_key({
    #     profile_id: "uuid", # required
    #     key_name: "name", # required
    #     values: ["string1To255"], # required
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileKey AWS API Documentation
    #
    # @overload delete_profile_key(params = {})
    # @param [Hash] params ({})
    def delete_profile_key(params = {}, options = {})
      req = build_request(:delete_profile_key, params)
      req.send_request(options)
    end

    # Removes an object associated with a profile of a given
    # ProfileObjectType.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [required, String] :profile_object_unique_key
    #   The unique identifier of the profile object generated by the service.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::DeleteProfileObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProfileObjectResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile_object({
    #     profile_id: "uuid", # required
    #     profile_object_unique_key: "string1To255", # required
    #     object_type_name: "typeName", # required
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObject AWS API Documentation
    #
    # @overload delete_profile_object(params = {})
    # @param [Hash] params ({})
    def delete_profile_object(params = {}, options = {})
      req = build_request(:delete_profile_object, params)
      req.send_request(options)
    end

    # Removes a ProfileObjectType from a specific domain as well as removes
    # all the ProfileObjects of that type. It also disables integrations
    # from this specific ProfileObjectType. In addition, it scrubs all of
    # the fields of the standard profile that were populated from this
    # ProfileObjectType.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @return [Types::DeleteProfileObjectTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProfileObjectTypeResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile_object_type({
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObjectType AWS API Documentation
    #
    # @overload delete_profile_object_type(params = {})
    # @param [Hash] params ({})
    def delete_profile_object_type(params = {}, options = {})
      req = build_request(:delete_profile_object_type, params)
      req.send_request(options)
    end

    # Deletes a segment definition from the domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :segment_definition_name
    #   The unique name of the segment definition.
    #
    # @return [Types::DeleteSegmentDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSegmentDefinitionResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_segment_definition({
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteSegmentDefinition AWS API Documentation
    #
    # @overload delete_segment_definition(params = {})
    # @param [Hash] params ({})
    def delete_segment_definition(params = {}, options = {})
      req = build_request(:delete_segment_definition, params)
      req.send_request(options)
    end

    # Deletes the specified workflow and all its corresponding resources.
    # This is an async process.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :workflow_id
    #   Unique identifier for the workflow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow({
    #     domain_name: "name", # required
    #     workflow_id: "string1To255", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteWorkflow AWS API Documentation
    #
    # @overload delete_workflow(params = {})
    # @param [Hash] params ({})
    def delete_workflow(params = {}, options = {})
      req = build_request(:delete_workflow, params)
      req.send_request(options)
    end

    # The process of detecting profile object type mapping by using given
    # objects.
    #
    # @option params [required, Array<String>] :objects
    #   A string that is serialized from a JSON object.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::DetectProfileObjectTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectProfileObjectTypeResponse#detected_profile_object_types #detected_profile_object_types} => Array&lt;Types::DetectedProfileObjectType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_profile_object_type({
    #     objects: ["stringifiedJson"], # required
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.detected_profile_object_types #=> Array
    #   resp.detected_profile_object_types[0].source_last_updated_timestamp_format #=> String
    #   resp.detected_profile_object_types[0].fields #=> Hash
    #   resp.detected_profile_object_types[0].fields["fieldName"].source #=> String
    #   resp.detected_profile_object_types[0].fields["fieldName"].target #=> String
    #   resp.detected_profile_object_types[0].fields["fieldName"].content_type #=> String, one of "STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"
    #   resp.detected_profile_object_types[0].keys #=> Hash
    #   resp.detected_profile_object_types[0].keys["name"] #=> Array
    #   resp.detected_profile_object_types[0].keys["name"][0].standard_identifiers #=> Array
    #   resp.detected_profile_object_types[0].keys["name"][0].standard_identifiers[0] #=> String, one of "PROFILE", "ASSET", "CASE", "ORDER", "COMMUNICATION_RECORD", "AIR_PREFERENCE", "HOTEL_PREFERENCE", "AIR_BOOKING", "AIR_SEGMENT", "HOTEL_RESERVATION", "HOTEL_STAY_REVENUE", "LOYALTY", "LOYALTY_TRANSACTION", "LOYALTY_PROMOTION", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY"
    #   resp.detected_profile_object_types[0].keys["name"][0].field_names #=> Array
    #   resp.detected_profile_object_types[0].keys["name"][0].field_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DetectProfileObjectType AWS API Documentation
    #
    # @overload detect_profile_object_type(params = {})
    # @param [Hash] params ({})
    def detect_profile_object_type(params = {}, options = {})
      req = build_request(:detect_profile_object_type, params)
      req.send_request(options)
    end

    # Tests the auto-merging settings of your Identity Resolution Job
    # without merging your data. It randomly selects a sample of matching
    # groups from the existing matching results, and applies the automerging
    # settings that you provided. You can then view the number of profiles
    # in the sample, the number of matches, and the number of profiles
    # identified to be merged. This enables you to evaluate the accuracy of
    # the attributes in your matching list.
    #
    # You can't view which profiles are matched and would be merged.
    #
    # We strongly recommend you use this API to do a dry run of the
    # automerging process before running the Identity Resolution Job.
    # Include **at least** two matching attributes. If your matching list
    # includes too few attributes (such as only `FirstName` or only
    # `LastName`), there may be a large number of matches. This increases
    # the chances of erroneous merges.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, Types::Consolidation] :consolidation
    #   A list of matching attributes that represent matching criteria.
    #
    # @option params [required, Types::ConflictResolution] :conflict_resolution
    #   How the auto-merging process should resolve conflicts between
    #   different profiles.
    #
    # @option params [Float] :min_allowed_confidence_score_for_merging
    #   Minimum confidence score required for profiles within a matching group
    #   to be merged during the auto-merge process.
    #
    # @return [Types::GetAutoMergingPreviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutoMergingPreviewResponse#domain_name #domain_name} => String
    #   * {Types::GetAutoMergingPreviewResponse#number_of_matches_in_sample #number_of_matches_in_sample} => Integer
    #   * {Types::GetAutoMergingPreviewResponse#number_of_profiles_in_sample #number_of_profiles_in_sample} => Integer
    #   * {Types::GetAutoMergingPreviewResponse#number_of_profiles_will_be_merged #number_of_profiles_will_be_merged} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_auto_merging_preview({
    #     domain_name: "name", # required
    #     consolidation: { # required
    #       matching_attributes_list: [ # required
    #         ["string1To255"],
    #       ],
    #     },
    #     conflict_resolution: { # required
    #       conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #       source_name: "string1To255",
    #     },
    #     min_allowed_confidence_score_for_merging: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.number_of_matches_in_sample #=> Integer
    #   resp.number_of_profiles_in_sample #=> Integer
    #   resp.number_of_profiles_will_be_merged #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetAutoMergingPreview AWS API Documentation
    #
    # @overload get_auto_merging_preview(params = {})
    # @param [Hash] params ({})
    def get_auto_merging_preview(params = {}, options = {})
      req = build_request(:get_auto_merging_preview, params)
      req.send_request(options)
    end

    # Provides more information on a calculated attribute definition for
    # Customer Profiles.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :calculated_attribute_name
    #   The unique name of the calculated attribute.
    #
    # @return [Types::GetCalculatedAttributeDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCalculatedAttributeDefinitionResponse#calculated_attribute_name #calculated_attribute_name} => String
    #   * {Types::GetCalculatedAttributeDefinitionResponse#display_name #display_name} => String
    #   * {Types::GetCalculatedAttributeDefinitionResponse#description #description} => String
    #   * {Types::GetCalculatedAttributeDefinitionResponse#created_at #created_at} => Time
    #   * {Types::GetCalculatedAttributeDefinitionResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetCalculatedAttributeDefinitionResponse#statistic #statistic} => String
    #   * {Types::GetCalculatedAttributeDefinitionResponse#filter #data.filter} => Types::Filter (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::GetCalculatedAttributeDefinitionResponse#conditions #conditions} => Types::Conditions
    #   * {Types::GetCalculatedAttributeDefinitionResponse#attribute_details #attribute_details} => Types::AttributeDetails
    #   * {Types::GetCalculatedAttributeDefinitionResponse#use_historical_data #use_historical_data} => Boolean
    #   * {Types::GetCalculatedAttributeDefinitionResponse#status #status} => String
    #   * {Types::GetCalculatedAttributeDefinitionResponse#readiness #readiness} => Types::Readiness
    #   * {Types::GetCalculatedAttributeDefinitionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_calculated_attribute_definition({
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.calculated_attribute_name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.statistic #=> String, one of "FIRST_OCCURRENCE", "LAST_OCCURRENCE", "COUNT", "SUM", "MINIMUM", "MAXIMUM", "AVERAGE", "MAX_OCCURRENCE"
    #   resp.data.filter.include #=> String, one of "ALL", "ANY", "NONE"
    #   resp.data.filter.groups #=> Array
    #   resp.data.filter.groups[0].type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.data.filter.groups[0].dimensions #=> Array
    #   resp.data.filter.groups[0].dimensions[0].attributes #=> Hash
    #   resp.data.filter.groups[0].dimensions[0].attributes["attributeName"].dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"
    #   resp.data.filter.groups[0].dimensions[0].attributes["attributeName"].values #=> Array
    #   resp.data.filter.groups[0].dimensions[0].attributes["attributeName"].values[0] #=> String
    #   resp.conditions.range.value #=> Integer
    #   resp.conditions.range.unit #=> String, one of "DAYS"
    #   resp.conditions.range.value_range.start #=> Integer
    #   resp.conditions.range.value_range.end #=> Integer
    #   resp.conditions.range.timestamp_source #=> String
    #   resp.conditions.range.timestamp_format #=> String
    #   resp.conditions.object_count #=> Integer
    #   resp.conditions.threshold.value #=> String
    #   resp.conditions.threshold.operator #=> String, one of "EQUAL_TO", "GREATER_THAN", "LESS_THAN", "NOT_EQUAL_TO"
    #   resp.attribute_details.attributes #=> Array
    #   resp.attribute_details.attributes[0].name #=> String
    #   resp.attribute_details.expression #=> String
    #   resp.use_historical_data #=> Boolean
    #   resp.status #=> String, one of "PREPARING", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.readiness.progress_percentage #=> Integer
    #   resp.readiness.message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetCalculatedAttributeDefinition AWS API Documentation
    #
    # @overload get_calculated_attribute_definition(params = {})
    # @param [Hash] params ({})
    def get_calculated_attribute_definition(params = {}, options = {})
      req = build_request(:get_calculated_attribute_definition, params)
      req.send_request(options)
    end

    # Retrieve a calculated attribute for a customer profile.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [required, String] :calculated_attribute_name
    #   The unique name of the calculated attribute.
    #
    # @return [Types::GetCalculatedAttributeForProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCalculatedAttributeForProfileResponse#calculated_attribute_name #calculated_attribute_name} => String
    #   * {Types::GetCalculatedAttributeForProfileResponse#display_name #display_name} => String
    #   * {Types::GetCalculatedAttributeForProfileResponse#is_data_partial #is_data_partial} => String
    #   * {Types::GetCalculatedAttributeForProfileResponse#value #value} => String
    #   * {Types::GetCalculatedAttributeForProfileResponse#last_object_timestamp #last_object_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_calculated_attribute_for_profile({
    #     domain_name: "name", # required
    #     profile_id: "uuid", # required
    #     calculated_attribute_name: "typeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.calculated_attribute_name #=> String
    #   resp.display_name #=> String
    #   resp.is_data_partial #=> String
    #   resp.value #=> String
    #   resp.last_object_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetCalculatedAttributeForProfile AWS API Documentation
    #
    # @overload get_calculated_attribute_for_profile(params = {})
    # @param [Hash] params ({})
    def get_calculated_attribute_for_profile(params = {}, options = {})
      req = build_request(:get_calculated_attribute_for_profile, params)
      req.send_request(options)
    end

    # Returns information about a specific domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::GetDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainResponse#domain_name #domain_name} => String
    #   * {Types::GetDomainResponse#default_expiration_days #default_expiration_days} => Integer
    #   * {Types::GetDomainResponse#default_encryption_key #default_encryption_key} => String
    #   * {Types::GetDomainResponse#dead_letter_queue_url #dead_letter_queue_url} => String
    #   * {Types::GetDomainResponse#stats #stats} => Types::DomainStats
    #   * {Types::GetDomainResponse#matching #matching} => Types::MatchingResponse
    #   * {Types::GetDomainResponse#rule_based_matching #rule_based_matching} => Types::RuleBasedMatchingResponse
    #   * {Types::GetDomainResponse#created_at #created_at} => Time
    #   * {Types::GetDomainResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetDomainResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain({
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.default_expiration_days #=> Integer
    #   resp.default_encryption_key #=> String
    #   resp.dead_letter_queue_url #=> String
    #   resp.stats.profile_count #=> Integer
    #   resp.stats.metering_profile_count #=> Integer
    #   resp.stats.object_count #=> Integer
    #   resp.stats.total_size #=> Integer
    #   resp.matching.enabled #=> Boolean
    #   resp.matching.job_schedule.day_of_the_week #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.matching.job_schedule.time #=> String
    #   resp.matching.auto_merging.enabled #=> Boolean
    #   resp.matching.auto_merging.consolidation.matching_attributes_list #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0] #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.matching.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of "RECENCY", "SOURCE"
    #   resp.matching.auto_merging.conflict_resolution.source_name #=> String
    #   resp.matching.auto_merging.min_allowed_confidence_score_for_merging #=> Float
    #   resp.matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.rule_based_matching.enabled #=> Boolean
    #   resp.rule_based_matching.matching_rules #=> Array
    #   resp.rule_based_matching.matching_rules[0].rule #=> Array
    #   resp.rule_based_matching.matching_rules[0].rule[0] #=> String
    #   resp.rule_based_matching.status #=> String, one of "PENDING", "IN_PROGRESS", "ACTIVE"
    #   resp.rule_based_matching.max_allowed_rule_level_for_merging #=> Integer
    #   resp.rule_based_matching.max_allowed_rule_level_for_matching #=> Integer
    #   resp.rule_based_matching.attribute_types_selector.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.rule_based_matching.attribute_types_selector.address #=> Array
    #   resp.rule_based_matching.attribute_types_selector.address[0] #=> String
    #   resp.rule_based_matching.attribute_types_selector.phone_number #=> Array
    #   resp.rule_based_matching.attribute_types_selector.phone_number[0] #=> String
    #   resp.rule_based_matching.attribute_types_selector.email_address #=> Array
    #   resp.rule_based_matching.attribute_types_selector.email_address[0] #=> String
    #   resp.rule_based_matching.conflict_resolution.conflict_resolving_model #=> String, one of "RECENCY", "SOURCE"
    #   resp.rule_based_matching.conflict_resolution.source_name #=> String
    #   resp.rule_based_matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.rule_based_matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetDomain AWS API Documentation
    #
    # @overload get_domain(params = {})
    # @param [Hash] params ({})
    def get_domain(params = {}, options = {})
      req = build_request(:get_domain, params)
      req.send_request(options)
    end

    # Gets the layout to view data for a specific domain. This API can only
    # be invoked from the Amazon Connect admin website.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :layout_definition_name
    #   The unique name of the layout.
    #
    # @return [Types::GetDomainLayoutResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainLayoutResponse#layout_definition_name #layout_definition_name} => String
    #   * {Types::GetDomainLayoutResponse#description #description} => String
    #   * {Types::GetDomainLayoutResponse#display_name #display_name} => String
    #   * {Types::GetDomainLayoutResponse#is_default #is_default} => Boolean
    #   * {Types::GetDomainLayoutResponse#layout_type #layout_type} => String
    #   * {Types::GetDomainLayoutResponse#layout #layout} => String
    #   * {Types::GetDomainLayoutResponse#version #version} => String
    #   * {Types::GetDomainLayoutResponse#created_at #created_at} => Time
    #   * {Types::GetDomainLayoutResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetDomainLayoutResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_layout({
    #     domain_name: "name", # required
    #     layout_definition_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.layout_definition_name #=> String
    #   resp.description #=> String
    #   resp.display_name #=> String
    #   resp.is_default #=> Boolean
    #   resp.layout_type #=> String, one of "PROFILE_EXPLORER"
    #   resp.layout #=> String
    #   resp.version #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetDomainLayout AWS API Documentation
    #
    # @overload get_domain_layout(params = {})
    # @param [Hash] params ({})
    def get_domain_layout(params = {}, options = {})
      req = build_request(:get_domain_layout, params)
      req.send_request(options)
    end

    # Returns information about the specified event stream in a specific
    # domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :event_stream_name
    #   The name of the event stream provided during create operations.
    #
    # @return [Types::GetEventStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventStreamResponse#domain_name #domain_name} => String
    #   * {Types::GetEventStreamResponse#event_stream_arn #event_stream_arn} => String
    #   * {Types::GetEventStreamResponse#created_at #created_at} => Time
    #   * {Types::GetEventStreamResponse#state #state} => String
    #   * {Types::GetEventStreamResponse#stopped_since #stopped_since} => Time
    #   * {Types::GetEventStreamResponse#destination_details #destination_details} => Types::EventStreamDestinationDetails
    #   * {Types::GetEventStreamResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_stream({
    #     domain_name: "name", # required
    #     event_stream_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.event_stream_arn #=> String
    #   resp.created_at #=> Time
    #   resp.state #=> String, one of "RUNNING", "STOPPED"
    #   resp.stopped_since #=> Time
    #   resp.destination_details.uri #=> String
    #   resp.destination_details.status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.destination_details.unhealthy_since #=> Time
    #   resp.destination_details.message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetEventStream AWS API Documentation
    #
    # @overload get_event_stream(params = {})
    # @param [Hash] params ({})
    def get_event_stream(params = {}, options = {})
      req = build_request(:get_event_stream, params)
      req.send_request(options)
    end

    # Get a specific Event Trigger from the domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :event_trigger_name
    #   The unique name of the event trigger.
    #
    # @return [Types::GetEventTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventTriggerResponse#event_trigger_name #event_trigger_name} => String
    #   * {Types::GetEventTriggerResponse#object_type_name #object_type_name} => String
    #   * {Types::GetEventTriggerResponse#description #description} => String
    #   * {Types::GetEventTriggerResponse#event_trigger_conditions #event_trigger_conditions} => Array&lt;Types::EventTriggerCondition&gt;
    #   * {Types::GetEventTriggerResponse#segment_filter #segment_filter} => String
    #   * {Types::GetEventTriggerResponse#event_trigger_limits #event_trigger_limits} => Types::EventTriggerLimits
    #   * {Types::GetEventTriggerResponse#created_at #created_at} => Time
    #   * {Types::GetEventTriggerResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetEventTriggerResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_trigger({
    #     domain_name: "name", # required
    #     event_trigger_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_trigger_name #=> String
    #   resp.object_type_name #=> String
    #   resp.description #=> String
    #   resp.event_trigger_conditions #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].source #=> String
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].field_name #=> String
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].comparison_operator #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL", "BEFORE", "AFTER", "ON", "BETWEEN", "NOT_BETWEEN"
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].values #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].values[0] #=> String
    #   resp.event_trigger_conditions[0].logical_operator #=> String, one of "ANY", "ALL", "NONE"
    #   resp.segment_filter #=> String
    #   resp.event_trigger_limits.event_expiration #=> Integer
    #   resp.event_trigger_limits.periods #=> Array
    #   resp.event_trigger_limits.periods[0].unit #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS"
    #   resp.event_trigger_limits.periods[0].value #=> Integer
    #   resp.event_trigger_limits.periods[0].max_invocations_per_profile #=> Integer
    #   resp.event_trigger_limits.periods[0].unlimited #=> Boolean
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetEventTrigger AWS API Documentation
    #
    # @overload get_event_trigger(params = {})
    # @param [Hash] params ({})
    def get_event_trigger(params = {}, options = {})
      req = build_request(:get_event_trigger, params)
      req.send_request(options)
    end

    # Returns information about an Identity Resolution Job in a specific
    # domain.
    #
    # Identity Resolution Jobs are set up using the Amazon Connect admin
    # console. For more information, see [Use Identity Resolution to
    # consolidate similar profiles][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/use-identity-resolution.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :job_id
    #   The unique identifier of the Identity Resolution Job.
    #
    # @return [Types::GetIdentityResolutionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityResolutionJobResponse#domain_name #domain_name} => String
    #   * {Types::GetIdentityResolutionJobResponse#job_id #job_id} => String
    #   * {Types::GetIdentityResolutionJobResponse#status #status} => String
    #   * {Types::GetIdentityResolutionJobResponse#message #message} => String
    #   * {Types::GetIdentityResolutionJobResponse#job_start_time #job_start_time} => Time
    #   * {Types::GetIdentityResolutionJobResponse#job_end_time #job_end_time} => Time
    #   * {Types::GetIdentityResolutionJobResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetIdentityResolutionJobResponse#job_expiration_time #job_expiration_time} => Time
    #   * {Types::GetIdentityResolutionJobResponse#auto_merging #auto_merging} => Types::AutoMerging
    #   * {Types::GetIdentityResolutionJobResponse#exporting_location #exporting_location} => Types::ExportingLocation
    #   * {Types::GetIdentityResolutionJobResponse#job_stats #job_stats} => Types::JobStats
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_resolution_job({
    #     domain_name: "name", # required
    #     job_id: "uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.job_id #=> String
    #   resp.status #=> String, one of "PENDING", "PREPROCESSING", "FIND_MATCHING", "MERGING", "COMPLETED", "PARTIAL_SUCCESS", "FAILED"
    #   resp.message #=> String
    #   resp.job_start_time #=> Time
    #   resp.job_end_time #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.job_expiration_time #=> Time
    #   resp.auto_merging.enabled #=> Boolean
    #   resp.auto_merging.consolidation.matching_attributes_list #=> Array
    #   resp.auto_merging.consolidation.matching_attributes_list[0] #=> Array
    #   resp.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of "RECENCY", "SOURCE"
    #   resp.auto_merging.conflict_resolution.source_name #=> String
    #   resp.auto_merging.min_allowed_confidence_score_for_merging #=> Float
    #   resp.exporting_location.s3_exporting.s3_bucket_name #=> String
    #   resp.exporting_location.s3_exporting.s3_key_name #=> String
    #   resp.job_stats.number_of_profiles_reviewed #=> Integer
    #   resp.job_stats.number_of_matches_found #=> Integer
    #   resp.job_stats.number_of_merges_done #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetIdentityResolutionJob AWS API Documentation
    #
    # @overload get_identity_resolution_job(params = {})
    # @param [Hash] params ({})
    def get_identity_resolution_job(params = {}, options = {})
      req = build_request(:get_identity_resolution_job, params)
      req.send_request(options)
    end

    # Returns an integration for a domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :uri
    #   The URI of the S3 bucket or any other type of data source.
    #
    # @return [Types::GetIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntegrationResponse#domain_name #domain_name} => String
    #   * {Types::GetIntegrationResponse#uri #uri} => String
    #   * {Types::GetIntegrationResponse#object_type_name #object_type_name} => String
    #   * {Types::GetIntegrationResponse#created_at #created_at} => Time
    #   * {Types::GetIntegrationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetIntegrationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetIntegrationResponse#object_type_names #object_type_names} => Hash&lt;String,String&gt;
    #   * {Types::GetIntegrationResponse#workflow_id #workflow_id} => String
    #   * {Types::GetIntegrationResponse#is_unstructured #is_unstructured} => Boolean
    #   * {Types::GetIntegrationResponse#role_arn #role_arn} => String
    #   * {Types::GetIntegrationResponse#event_trigger_names #event_trigger_names} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration({
    #     domain_name: "name", # required
    #     uri: "string1To255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.uri #=> String
    #   resp.object_type_name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.object_type_names #=> Hash
    #   resp.object_type_names["string1To255"] #=> String
    #   resp.workflow_id #=> String
    #   resp.is_unstructured #=> Boolean
    #   resp.role_arn #=> String
    #   resp.event_trigger_names #=> Array
    #   resp.event_trigger_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetIntegration AWS API Documentation
    #
    # @overload get_integration(params = {})
    # @param [Hash] params ({})
    def get_integration(params = {}, options = {})
      req = build_request(:get_integration, params)
      req.send_request(options)
    end

    # Before calling this API, use [CreateDomain][1] or [UpdateDomain][2] to
    # enable identity resolution: set `Matching` to true.
    #
    # GetMatches returns potentially matching profiles, based on the results
    # of the latest run of a machine learning process.
    #
    # The process of matching duplicate profiles. If `Matching` = `true`,
    # Amazon Connect Customer Profiles starts a weekly batch process called
    # Identity Resolution Job. If you do not specify a date and time for
    # Identity Resolution Job to run, by default it runs every Saturday at
    # 12AM UTC to detect duplicate profiles in your domains.
    #
    #  After the Identity Resolution Job completes, use the [GetMatches][3]
    # API to return and review the results. Or, if you have configured
    # `ExportingConfig` in the `MatchingRequest`, you can download the
    # results from S3.
    #
    # Amazon Connect uses the following profile attributes to identify
    # matches:
    #
    # * PhoneNumber
    #
    # * HomePhoneNumber
    #
    # * BusinessPhoneNumber
    #
    # * MobilePhoneNumber
    #
    # * EmailAddress
    #
    # * PersonalEmailAddress
    #
    # * BusinessEmailAddress
    #
    # * FullName
    #
    # For example, two or more profiles—with spelling mistakes such as
    # **John Doe** and **Jhn Doe**, or different casing email addresses such
    # as **JOHN\_DOE@ANYCOMPANY.COM** and **johndoe@anycompany.com**, or
    # different phone number formats such as **555-010-0000** and
    # **+1-555-010-0000**—can be detected as belonging to the same customer
    # **John Doe** and merged into a unified profile.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html
    # [2]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html
    # [3]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::GetMatchesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMatchesResponse#next_token #next_token} => String
    #   * {Types::GetMatchesResponse#match_generation_date #match_generation_date} => Time
    #   * {Types::GetMatchesResponse#potential_matches #potential_matches} => Integer
    #   * {Types::GetMatchesResponse#matches #matches} => Array&lt;Types::MatchItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_matches({
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.match_generation_date #=> Time
    #   resp.potential_matches #=> Integer
    #   resp.matches #=> Array
    #   resp.matches[0].match_id #=> String
    #   resp.matches[0].profile_ids #=> Array
    #   resp.matches[0].profile_ids[0] #=> String
    #   resp.matches[0].confidence_score #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetMatches AWS API Documentation
    #
    # @overload get_matches(params = {})
    # @param [Hash] params ({})
    def get_matches(params = {}, options = {})
      req = build_request(:get_matches, params)
      req.send_request(options)
    end

    # Returns a history record for a specific profile, for a specific
    # domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain for which to return a profile history
    #   record.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of the profile for which to return a history
    #   record.
    #
    # @option params [required, String] :id
    #   The unique identifier of the profile history record to return.
    #
    # @return [Types::GetProfileHistoryRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileHistoryRecordResponse#id #id} => String
    #   * {Types::GetProfileHistoryRecordResponse#object_type_name #object_type_name} => String
    #   * {Types::GetProfileHistoryRecordResponse#created_at #created_at} => Time
    #   * {Types::GetProfileHistoryRecordResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetProfileHistoryRecordResponse#action_type #action_type} => String
    #   * {Types::GetProfileHistoryRecordResponse#profile_object_unique_key #profile_object_unique_key} => String
    #   * {Types::GetProfileHistoryRecordResponse#content #content} => String
    #   * {Types::GetProfileHistoryRecordResponse#performed_by #performed_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile_history_record({
    #     domain_name: "name", # required
    #     profile_id: "uuid", # required
    #     id: "uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.object_type_name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.action_type #=> String, one of "ADDED_PROFILE_KEY", "DELETED_PROFILE_KEY", "CREATED", "UPDATED", "INGESTED", "DELETED_BY_CUSTOMER", "EXPIRED", "MERGED", "DELETED_BY_MERGE"
    #   resp.profile_object_unique_key #=> String
    #   resp.content #=> String
    #   resp.performed_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileHistoryRecord AWS API Documentation
    #
    # @overload get_profile_history_record(params = {})
    # @param [Hash] params ({})
    def get_profile_history_record(params = {}, options = {})
      req = build_request(:get_profile_history_record, params)
      req.send_request(options)
    end

    # Returns the object types for a specific domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @return [Types::GetProfileObjectTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileObjectTypeResponse#object_type_name #object_type_name} => String
    #   * {Types::GetProfileObjectTypeResponse#description #description} => String
    #   * {Types::GetProfileObjectTypeResponse#template_id #template_id} => String
    #   * {Types::GetProfileObjectTypeResponse#expiration_days #expiration_days} => Integer
    #   * {Types::GetProfileObjectTypeResponse#encryption_key #encryption_key} => String
    #   * {Types::GetProfileObjectTypeResponse#allow_profile_creation #allow_profile_creation} => Boolean
    #   * {Types::GetProfileObjectTypeResponse#source_last_updated_timestamp_format #source_last_updated_timestamp_format} => String
    #   * {Types::GetProfileObjectTypeResponse#max_available_profile_object_count #max_available_profile_object_count} => Integer
    #   * {Types::GetProfileObjectTypeResponse#max_profile_object_count #max_profile_object_count} => Integer
    #   * {Types::GetProfileObjectTypeResponse#fields #fields} => Hash&lt;String,Types::ObjectTypeField&gt;
    #   * {Types::GetProfileObjectTypeResponse#keys #keys} => Hash&lt;String,Array&lt;Types::ObjectTypeKey&gt;&gt;
    #   * {Types::GetProfileObjectTypeResponse#created_at #created_at} => Time
    #   * {Types::GetProfileObjectTypeResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetProfileObjectTypeResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile_object_type({
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.object_type_name #=> String
    #   resp.description #=> String
    #   resp.template_id #=> String
    #   resp.expiration_days #=> Integer
    #   resp.encryption_key #=> String
    #   resp.allow_profile_creation #=> Boolean
    #   resp.source_last_updated_timestamp_format #=> String
    #   resp.max_available_profile_object_count #=> Integer
    #   resp.max_profile_object_count #=> Integer
    #   resp.fields #=> Hash
    #   resp.fields["fieldName"].source #=> String
    #   resp.fields["fieldName"].target #=> String
    #   resp.fields["fieldName"].content_type #=> String, one of "STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"
    #   resp.keys #=> Hash
    #   resp.keys["name"] #=> Array
    #   resp.keys["name"][0].standard_identifiers #=> Array
    #   resp.keys["name"][0].standard_identifiers[0] #=> String, one of "PROFILE", "ASSET", "CASE", "ORDER", "COMMUNICATION_RECORD", "AIR_PREFERENCE", "HOTEL_PREFERENCE", "AIR_BOOKING", "AIR_SEGMENT", "HOTEL_RESERVATION", "HOTEL_STAY_REVENUE", "LOYALTY", "LOYALTY_TRANSACTION", "LOYALTY_PROMOTION", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY"
    #   resp.keys["name"][0].field_names #=> Array
    #   resp.keys["name"][0].field_names[0] #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectType AWS API Documentation
    #
    # @overload get_profile_object_type(params = {})
    # @param [Hash] params ({})
    def get_profile_object_type(params = {}, options = {})
      req = build_request(:get_profile_object_type, params)
      req.send_request(options)
    end

    # Returns the template information for a specific object type.
    #
    # A template is a predefined ProfileObjectType, such as
    # “Salesforce-Account” or “Salesforce-Contact.” When a user sends a
    # ProfileObject, using the PutProfileObject API, with an ObjectTypeName
    # that matches one of the TemplateIds, it uses the mappings from the
    # template.
    #
    # @option params [required, String] :template_id
    #   A unique identifier for the object template.
    #
    # @return [Types::GetProfileObjectTypeTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileObjectTypeTemplateResponse#template_id #template_id} => String
    #   * {Types::GetProfileObjectTypeTemplateResponse#source_name #source_name} => String
    #   * {Types::GetProfileObjectTypeTemplateResponse#source_object #source_object} => String
    #   * {Types::GetProfileObjectTypeTemplateResponse#allow_profile_creation #allow_profile_creation} => Boolean
    #   * {Types::GetProfileObjectTypeTemplateResponse#source_last_updated_timestamp_format #source_last_updated_timestamp_format} => String
    #   * {Types::GetProfileObjectTypeTemplateResponse#fields #fields} => Hash&lt;String,Types::ObjectTypeField&gt;
    #   * {Types::GetProfileObjectTypeTemplateResponse#keys #keys} => Hash&lt;String,Array&lt;Types::ObjectTypeKey&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile_object_type_template({
    #     template_id: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.source_name #=> String
    #   resp.source_object #=> String
    #   resp.allow_profile_creation #=> Boolean
    #   resp.source_last_updated_timestamp_format #=> String
    #   resp.fields #=> Hash
    #   resp.fields["fieldName"].source #=> String
    #   resp.fields["fieldName"].target #=> String
    #   resp.fields["fieldName"].content_type #=> String, one of "STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"
    #   resp.keys #=> Hash
    #   resp.keys["name"] #=> Array
    #   resp.keys["name"][0].standard_identifiers #=> Array
    #   resp.keys["name"][0].standard_identifiers[0] #=> String, one of "PROFILE", "ASSET", "CASE", "ORDER", "COMMUNICATION_RECORD", "AIR_PREFERENCE", "HOTEL_PREFERENCE", "AIR_BOOKING", "AIR_SEGMENT", "HOTEL_RESERVATION", "HOTEL_STAY_REVENUE", "LOYALTY", "LOYALTY_TRANSACTION", "LOYALTY_PROMOTION", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY"
    #   resp.keys["name"][0].field_names #=> Array
    #   resp.keys["name"][0].field_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectTypeTemplate AWS API Documentation
    #
    # @overload get_profile_object_type_template(params = {})
    # @param [Hash] params ({})
    def get_profile_object_type_template(params = {}, options = {})
      req = build_request(:get_profile_object_type_template, params)
      req.send_request(options)
    end

    # Gets a segment definition from the domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :segment_definition_name
    #   The unique name of the segment definition.
    #
    # @return [Types::GetSegmentDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentDefinitionResponse#segment_definition_name #segment_definition_name} => String
    #   * {Types::GetSegmentDefinitionResponse#display_name #display_name} => String
    #   * {Types::GetSegmentDefinitionResponse#description #description} => String
    #   * {Types::GetSegmentDefinitionResponse#segment_groups #segment_groups} => Types::SegmentGroup
    #   * {Types::GetSegmentDefinitionResponse#segment_definition_arn #segment_definition_arn} => String
    #   * {Types::GetSegmentDefinitionResponse#created_at #created_at} => Time
    #   * {Types::GetSegmentDefinitionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_definition({
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_definition_name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.segment_groups.groups #=> Array
    #   resp.segment_groups.groups[0].dimensions #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.account_number.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.account_number.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.account_number.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.additional_information.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.additional_information.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.additional_information.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.first_name.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.first_name.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.first_name.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.last_name.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.last_name.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.last_name.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.middle_name.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.middle_name.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.middle_name.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.gender_string.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.gender_string.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.gender_string.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.party_type_string.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.party_type_string.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.party_type_string.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.birth_date.dimension_type #=> String, one of "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.birth_date.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.birth_date.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.phone_number.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.phone_number.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.phone_number.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.business_name.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.business_name.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.business_name.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.business_phone_number.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.business_phone_number.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.business_phone_number.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.home_phone_number.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.home_phone_number.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.home_phone_number.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mobile_phone_number.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mobile_phone_number.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mobile_phone_number.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.email_address.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.email_address.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.email_address.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.personal_email_address.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.personal_email_address.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.personal_email_address.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.business_email_address.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.business_email_address.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.business_email_address.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.city.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.city.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.city.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.country.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.country.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.county.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.county.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.county.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.postal_code.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.postal_code.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.postal_code.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.province.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.province.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.province.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.state.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.state.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.address.state.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.city.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.city.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.city.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.country.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.country.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.county.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.county.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.county.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.postal_code.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.postal_code.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.postal_code.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.province.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.province.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.province.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.state.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.state.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.shipping_address.state.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.city.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.city.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.city.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.country.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.country.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.county.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.county.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.county.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.postal_code.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.postal_code.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.postal_code.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.province.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.province.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.province.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.state.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.state.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.mailing_address.state.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.city.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.city.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.city.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.country.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.country.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.county.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.county.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.county.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.postal_code.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.postal_code.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.postal_code.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.province.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.province.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.province.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.state.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.state.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.billing_address.state.values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.attributes #=> Hash
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.attributes["typeName"].dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.attributes["typeName"].values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.attributes["typeName"].values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.profile_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.profile_type.values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].profile_attributes.profile_type.values[0] #=> String, one of "ACCOUNT_PROFILE", "PROFILE"
    #   resp.segment_groups.groups[0].dimensions[0].calculated_attributes #=> Hash
    #   resp.segment_groups.groups[0].dimensions[0].calculated_attributes["typeName"].dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "BEFORE", "AFTER", "BETWEEN", "NOT_BETWEEN", "ON", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL"
    #   resp.segment_groups.groups[0].dimensions[0].calculated_attributes["typeName"].values #=> Array
    #   resp.segment_groups.groups[0].dimensions[0].calculated_attributes["typeName"].values[0] #=> String
    #   resp.segment_groups.groups[0].dimensions[0].calculated_attributes["typeName"].condition_overrides.range.start #=> Integer
    #   resp.segment_groups.groups[0].dimensions[0].calculated_attributes["typeName"].condition_overrides.range.end #=> Integer
    #   resp.segment_groups.groups[0].dimensions[0].calculated_attributes["typeName"].condition_overrides.range.unit #=> String, one of "DAYS"
    #   resp.segment_groups.groups[0].source_segments #=> Array
    #   resp.segment_groups.groups[0].source_segments[0].segment_definition_name #=> String
    #   resp.segment_groups.groups[0].source_type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_groups.groups[0].type #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_groups.include #=> String, one of "ALL", "ANY", "NONE"
    #   resp.segment_definition_arn #=> String
    #   resp.created_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentDefinition AWS API Documentation
    #
    # @overload get_segment_definition(params = {})
    # @param [Hash] params ({})
    def get_segment_definition(params = {}, options = {})
      req = build_request(:get_segment_definition, params)
      req.send_request(options)
    end

    # Gets the result of a segment estimate query.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :estimate_id
    #   The query Id passed by a previous `CreateSegmentEstimate` operation.
    #
    # @return [Types::GetSegmentEstimateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentEstimateResponse#domain_name #domain_name} => String
    #   * {Types::GetSegmentEstimateResponse#estimate_id #estimate_id} => String
    #   * {Types::GetSegmentEstimateResponse#status #status} => String
    #   * {Types::GetSegmentEstimateResponse#estimate #estimate} => String
    #   * {Types::GetSegmentEstimateResponse#message #message} => String
    #   * {Types::GetSegmentEstimateResponse#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_estimate({
    #     domain_name: "name", # required
    #     estimate_id: "string1To255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.estimate_id #=> String
    #   resp.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED"
    #   resp.estimate #=> String
    #   resp.message #=> String
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentEstimate AWS API Documentation
    #
    # @overload get_segment_estimate(params = {})
    # @param [Hash] params ({})
    def get_segment_estimate(params = {}, options = {})
      req = build_request(:get_segment_estimate, params)
      req.send_request(options)
    end

    # Determines if the given profiles are within a segment.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :segment_definition_name
    #   The Id of the wanted segment. Needs to be a valid, and existing
    #   segment Id.
    #
    # @option params [required, Array<String>] :profile_ids
    #   The list of profile IDs to query for.
    #
    # @return [Types::GetSegmentMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentMembershipResponse#segment_definition_name #segment_definition_name} => String
    #   * {Types::GetSegmentMembershipResponse#profiles #profiles} => Array&lt;Types::ProfileQueryResult&gt;
    #   * {Types::GetSegmentMembershipResponse#failures #failures} => Array&lt;Types::ProfileQueryFailures&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_membership({
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #     profile_ids: ["uuid"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_definition_name #=> String
    #   resp.profiles #=> Array
    #   resp.profiles[0].profile_id #=> String
    #   resp.profiles[0].query_result #=> String, one of "PRESENT", "ABSENT"
    #   resp.profiles[0].profile.profile_id #=> String
    #   resp.profiles[0].profile.account_number #=> String
    #   resp.profiles[0].profile.additional_information #=> String
    #   resp.profiles[0].profile.party_type #=> String, one of "INDIVIDUAL", "BUSINESS", "OTHER"
    #   resp.profiles[0].profile.business_name #=> String
    #   resp.profiles[0].profile.first_name #=> String
    #   resp.profiles[0].profile.middle_name #=> String
    #   resp.profiles[0].profile.last_name #=> String
    #   resp.profiles[0].profile.birth_date #=> String
    #   resp.profiles[0].profile.gender #=> String, one of "MALE", "FEMALE", "UNSPECIFIED"
    #   resp.profiles[0].profile.phone_number #=> String
    #   resp.profiles[0].profile.mobile_phone_number #=> String
    #   resp.profiles[0].profile.home_phone_number #=> String
    #   resp.profiles[0].profile.business_phone_number #=> String
    #   resp.profiles[0].profile.email_address #=> String
    #   resp.profiles[0].profile.personal_email_address #=> String
    #   resp.profiles[0].profile.business_email_address #=> String
    #   resp.profiles[0].profile.address.address_1 #=> String
    #   resp.profiles[0].profile.address.address_2 #=> String
    #   resp.profiles[0].profile.address.address_3 #=> String
    #   resp.profiles[0].profile.address.address_4 #=> String
    #   resp.profiles[0].profile.address.city #=> String
    #   resp.profiles[0].profile.address.county #=> String
    #   resp.profiles[0].profile.address.state #=> String
    #   resp.profiles[0].profile.address.province #=> String
    #   resp.profiles[0].profile.address.country #=> String
    #   resp.profiles[0].profile.address.postal_code #=> String
    #   resp.profiles[0].profile.shipping_address.address_1 #=> String
    #   resp.profiles[0].profile.shipping_address.address_2 #=> String
    #   resp.profiles[0].profile.shipping_address.address_3 #=> String
    #   resp.profiles[0].profile.shipping_address.address_4 #=> String
    #   resp.profiles[0].profile.shipping_address.city #=> String
    #   resp.profiles[0].profile.shipping_address.county #=> String
    #   resp.profiles[0].profile.shipping_address.state #=> String
    #   resp.profiles[0].profile.shipping_address.province #=> String
    #   resp.profiles[0].profile.shipping_address.country #=> String
    #   resp.profiles[0].profile.shipping_address.postal_code #=> String
    #   resp.profiles[0].profile.mailing_address.address_1 #=> String
    #   resp.profiles[0].profile.mailing_address.address_2 #=> String
    #   resp.profiles[0].profile.mailing_address.address_3 #=> String
    #   resp.profiles[0].profile.mailing_address.address_4 #=> String
    #   resp.profiles[0].profile.mailing_address.city #=> String
    #   resp.profiles[0].profile.mailing_address.county #=> String
    #   resp.profiles[0].profile.mailing_address.state #=> String
    #   resp.profiles[0].profile.mailing_address.province #=> String
    #   resp.profiles[0].profile.mailing_address.country #=> String
    #   resp.profiles[0].profile.mailing_address.postal_code #=> String
    #   resp.profiles[0].profile.billing_address.address_1 #=> String
    #   resp.profiles[0].profile.billing_address.address_2 #=> String
    #   resp.profiles[0].profile.billing_address.address_3 #=> String
    #   resp.profiles[0].profile.billing_address.address_4 #=> String
    #   resp.profiles[0].profile.billing_address.city #=> String
    #   resp.profiles[0].profile.billing_address.county #=> String
    #   resp.profiles[0].profile.billing_address.state #=> String
    #   resp.profiles[0].profile.billing_address.province #=> String
    #   resp.profiles[0].profile.billing_address.country #=> String
    #   resp.profiles[0].profile.billing_address.postal_code #=> String
    #   resp.profiles[0].profile.attributes #=> Hash
    #   resp.profiles[0].profile.attributes["string1To255"] #=> String
    #   resp.profiles[0].profile.found_by_items #=> Array
    #   resp.profiles[0].profile.found_by_items[0].key_name #=> String
    #   resp.profiles[0].profile.found_by_items[0].values #=> Array
    #   resp.profiles[0].profile.found_by_items[0].values[0] #=> String
    #   resp.profiles[0].profile.party_type_string #=> String
    #   resp.profiles[0].profile.gender_string #=> String
    #   resp.profiles[0].profile.profile_type #=> String, one of "ACCOUNT_PROFILE", "PROFILE"
    #   resp.profiles[0].profile.engagement_preferences.phone #=> Array
    #   resp.profiles[0].profile.engagement_preferences.phone[0].key_name #=> String
    #   resp.profiles[0].profile.engagement_preferences.phone[0].key_value #=> String
    #   resp.profiles[0].profile.engagement_preferences.phone[0].profile_id #=> String
    #   resp.profiles[0].profile.engagement_preferences.phone[0].contact_type #=> String, one of "PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"
    #   resp.profiles[0].profile.engagement_preferences.email #=> Array
    #   resp.profiles[0].profile.engagement_preferences.email[0].key_name #=> String
    #   resp.profiles[0].profile.engagement_preferences.email[0].key_value #=> String
    #   resp.profiles[0].profile.engagement_preferences.email[0].profile_id #=> String
    #   resp.profiles[0].profile.engagement_preferences.email[0].contact_type #=> String, one of "PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"
    #   resp.failures #=> Array
    #   resp.failures[0].profile_id #=> String
    #   resp.failures[0].message #=> String
    #   resp.failures[0].status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentMembership AWS API Documentation
    #
    # @overload get_segment_membership(params = {})
    # @param [Hash] params ({})
    def get_segment_membership(params = {}, options = {})
      req = build_request(:get_segment_membership, params)
      req.send_request(options)
    end

    # Retrieve the latest status of a segment snapshot.
    #
    # @option params [required, String] :domain_name
    #   The unique identifier of the domain.
    #
    # @option params [required, String] :segment_definition_name
    #   The unique name of the segment definition.
    #
    # @option params [required, String] :snapshot_id
    #   The unique identifier of the segment snapshot.
    #
    # @return [Types::GetSegmentSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentSnapshotResponse#snapshot_id #snapshot_id} => String
    #   * {Types::GetSegmentSnapshotResponse#status #status} => String
    #   * {Types::GetSegmentSnapshotResponse#status_message #status_message} => String
    #   * {Types::GetSegmentSnapshotResponse#data_format #data_format} => String
    #   * {Types::GetSegmentSnapshotResponse#encryption_key #encryption_key} => String
    #   * {Types::GetSegmentSnapshotResponse#role_arn #role_arn} => String
    #   * {Types::GetSegmentSnapshotResponse#destination_uri #destination_uri} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_snapshot({
    #     domain_name: "name", # required
    #     segment_definition_name: "name", # required
    #     snapshot_id: "uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_id #=> String
    #   resp.status #=> String, one of "COMPLETED", "IN_PROGRESS", "FAILED"
    #   resp.status_message #=> String
    #   resp.data_format #=> String, one of "CSV", "JSONL", "ORC"
    #   resp.encryption_key #=> String
    #   resp.role_arn #=> String
    #   resp.destination_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentSnapshot AWS API Documentation
    #
    # @overload get_segment_snapshot(params = {})
    # @param [Hash] params ({})
    def get_segment_snapshot(params = {}, options = {})
      req = build_request(:get_segment_snapshot, params)
      req.send_request(options)
    end

    # Returns a set of profiles that belong to the same matching group using
    # the `matchId` or `profileId`. You can also specify the type of
    # matching that you want for finding similar profiles using either
    # `RULE_BASED_MATCHING` or `ML_BASED_MATCHING`.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous `GetSimilarProfiles` API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :match_type
    #   Specify the type of matching to get similar profiles for.
    #
    # @option params [required, String] :search_key
    #   The string indicating the search key to be used.
    #
    # @option params [required, String] :search_value
    #   The string based on `SearchKey` to be searched for similar profiles.
    #
    # @return [Types::GetSimilarProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSimilarProfilesResponse#profile_ids #profile_ids} => Array&lt;String&gt;
    #   * {Types::GetSimilarProfilesResponse#match_id #match_id} => String
    #   * {Types::GetSimilarProfilesResponse#match_type #match_type} => String
    #   * {Types::GetSimilarProfilesResponse#rule_level #rule_level} => Integer
    #   * {Types::GetSimilarProfilesResponse#confidence_score #confidence_score} => Float
    #   * {Types::GetSimilarProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_similar_profiles({
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     match_type: "RULE_BASED_MATCHING", # required, accepts RULE_BASED_MATCHING, ML_BASED_MATCHING
    #     search_key: "string1To255", # required
    #     search_value: "string1To255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_ids #=> Array
    #   resp.profile_ids[0] #=> String
    #   resp.match_id #=> String
    #   resp.match_type #=> String, one of "RULE_BASED_MATCHING", "ML_BASED_MATCHING"
    #   resp.rule_level #=> Integer
    #   resp.confidence_score #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSimilarProfiles AWS API Documentation
    #
    # @overload get_similar_profiles(params = {})
    # @param [Hash] params ({})
    def get_similar_profiles(params = {}, options = {})
      req = build_request(:get_similar_profiles, params)
      req.send_request(options)
    end

    # This API retrieves the details of a specific upload job.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain containing the upload job.
    #
    # @option params [required, String] :job_id
    #   The unique identifier of the upload job to retrieve.
    #
    # @return [Types::GetUploadJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUploadJobResponse#job_id #job_id} => String
    #   * {Types::GetUploadJobResponse#display_name #display_name} => String
    #   * {Types::GetUploadJobResponse#status #status} => String
    #   * {Types::GetUploadJobResponse#status_reason #status_reason} => String
    #   * {Types::GetUploadJobResponse#created_at #created_at} => Time
    #   * {Types::GetUploadJobResponse#completed_at #completed_at} => Time
    #   * {Types::GetUploadJobResponse#fields #fields} => Hash&lt;String,Types::ObjectTypeField&gt;
    #   * {Types::GetUploadJobResponse#unique_key #unique_key} => String
    #   * {Types::GetUploadJobResponse#results_summary #results_summary} => Types::ResultsSummary
    #   * {Types::GetUploadJobResponse#data_expiry #data_expiry} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upload_job({
    #     domain_name: "name", # required
    #     job_id: "uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "CREATED", "IN_PROGRESS", "PARTIALLY_SUCCEEDED", "SUCCEEDED", "FAILED", "STOPPED"
    #   resp.status_reason #=> String, one of "VALIDATION_FAILURE", "INTERNAL_FAILURE"
    #   resp.created_at #=> Time
    #   resp.completed_at #=> Time
    #   resp.fields #=> Hash
    #   resp.fields["fieldName"].source #=> String
    #   resp.fields["fieldName"].target #=> String
    #   resp.fields["fieldName"].content_type #=> String, one of "STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"
    #   resp.unique_key #=> String
    #   resp.results_summary.updated_records #=> Integer
    #   resp.results_summary.created_records #=> Integer
    #   resp.results_summary.failed_records #=> Integer
    #   resp.data_expiry #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetUploadJob AWS API Documentation
    #
    # @overload get_upload_job(params = {})
    # @param [Hash] params ({})
    def get_upload_job(params = {}, options = {})
      req = build_request(:get_upload_job, params)
      req.send_request(options)
    end

    # This API retrieves the pre-signed URL and client token for uploading
    # the file associated with the upload job.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain containing the upload job.
    #
    # @option params [required, String] :job_id
    #   The unique identifier of the upload job to retrieve the upload path
    #   for. This is generated from the CreateUploadJob API.
    #
    # @return [Types::GetUploadJobPathResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUploadJobPathResponse#url #url} => String
    #   * {Types::GetUploadJobPathResponse#client_token #client_token} => String
    #   * {Types::GetUploadJobPathResponse#valid_until #valid_until} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upload_job_path({
    #     domain_name: "name", # required
    #     job_id: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.url #=> String
    #   resp.client_token #=> String
    #   resp.valid_until #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetUploadJobPath AWS API Documentation
    #
    # @overload get_upload_job_path(params = {})
    # @param [Hash] params ({})
    def get_upload_job_path(params = {}, options = {})
      req = build_request(:get_upload_job_path, params)
      req.send_request(options)
    end

    # Get details of specified workflow.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :workflow_id
    #   Unique identifier for the workflow.
    #
    # @return [Types::GetWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowResponse#workflow_id #workflow_id} => String
    #   * {Types::GetWorkflowResponse#workflow_type #workflow_type} => String
    #   * {Types::GetWorkflowResponse#status #status} => String
    #   * {Types::GetWorkflowResponse#error_description #error_description} => String
    #   * {Types::GetWorkflowResponse#start_date #start_date} => Time
    #   * {Types::GetWorkflowResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetWorkflowResponse#attributes #attributes} => Types::WorkflowAttributes
    #   * {Types::GetWorkflowResponse#metrics #metrics} => Types::WorkflowMetrics
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow({
    #     domain_name: "name", # required
    #     workflow_id: "uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_id #=> String
    #   resp.workflow_type #=> String, one of "APPFLOW_INTEGRATION"
    #   resp.status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"
    #   resp.error_description #=> String
    #   resp.start_date #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.attributes.appflow_integration.source_connector_type #=> String, one of "Salesforce", "Marketo", "Zendesk", "Servicenow", "S3"
    #   resp.attributes.appflow_integration.connector_profile_name #=> String
    #   resp.attributes.appflow_integration.role_arn #=> String
    #   resp.metrics.appflow_integration.records_processed #=> Integer
    #   resp.metrics.appflow_integration.steps_completed #=> Integer
    #   resp.metrics.appflow_integration.total_steps #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetWorkflow AWS API Documentation
    #
    # @overload get_workflow(params = {})
    # @param [Hash] params ({})
    def get_workflow(params = {}, options = {})
      req = build_request(:get_workflow, params)
      req.send_request(options)
    end

    # Get granular list of steps in workflow.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :workflow_id
    #   Unique identifier for the workflow.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::GetWorkflowStepsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowStepsResponse#workflow_id #workflow_id} => String
    #   * {Types::GetWorkflowStepsResponse#workflow_type #workflow_type} => String
    #   * {Types::GetWorkflowStepsResponse#items #items} => Array&lt;Types::WorkflowStepItem&gt;
    #   * {Types::GetWorkflowStepsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_steps({
    #     domain_name: "name", # required
    #     workflow_id: "uuid", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_id #=> String
    #   resp.workflow_type #=> String, one of "APPFLOW_INTEGRATION"
    #   resp.items #=> Array
    #   resp.items[0].appflow_integration.flow_name #=> String
    #   resp.items[0].appflow_integration.status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"
    #   resp.items[0].appflow_integration.execution_message #=> String
    #   resp.items[0].appflow_integration.records_processed #=> Integer
    #   resp.items[0].appflow_integration.batch_records_start_time #=> String
    #   resp.items[0].appflow_integration.batch_records_end_time #=> String
    #   resp.items[0].appflow_integration.created_at #=> Time
    #   resp.items[0].appflow_integration.last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetWorkflowSteps AWS API Documentation
    #
    # @overload get_workflow_steps(params = {})
    # @param [Hash] params ({})
    def get_workflow_steps(params = {}, options = {})
      req = build_request(:get_workflow_steps, params)
      req.send_request(options)
    end

    # Lists all of the integrations associated to a specific URI in the AWS
    # account.
    #
    # @option params [required, String] :uri
    #   The URI of the S3 bucket or any other type of data source.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous ListAccountIntegrations API
    #   call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @option params [Boolean] :include_hidden
    #   Boolean to indicate if hidden integration should be returned. Defaults
    #   to `False`.
    #
    # @return [Types::ListAccountIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountIntegrationsResponse#items #items} => Array&lt;Types::ListIntegrationItem&gt;
    #   * {Types::ListAccountIntegrationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_integrations({
    #     uri: "string1To255", # required
    #     next_token: "token",
    #     max_results: 1,
    #     include_hidden: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_name #=> String
    #   resp.items[0].uri #=> String
    #   resp.items[0].object_type_name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].object_type_names #=> Hash
    #   resp.items[0].object_type_names["string1To255"] #=> String
    #   resp.items[0].workflow_id #=> String
    #   resp.items[0].is_unstructured #=> Boolean
    #   resp.items[0].role_arn #=> String
    #   resp.items[0].event_trigger_names #=> Array
    #   resp.items[0].event_trigger_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListAccountIntegrations AWS API Documentation
    #
    # @overload list_account_integrations(params = {})
    # @param [Hash] params ({})
    def list_account_integrations(params = {}, options = {})
      req = build_request(:list_account_integrations, params)
      req.send_request(options)
    end

    # Lists calculated attribute definitions for Customer Profiles
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous call to
    #   ListCalculatedAttributeDefinitions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of calculated attribute definitions returned per
    #   page.
    #
    # @return [Types::ListCalculatedAttributeDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCalculatedAttributeDefinitionsResponse#items #items} => Array&lt;Types::ListCalculatedAttributeDefinitionItem&gt;
    #   * {Types::ListCalculatedAttributeDefinitionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_calculated_attribute_definitions({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].calculated_attribute_name #=> String
    #   resp.items[0].display_name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].use_historical_data #=> Boolean
    #   resp.items[0].status #=> String, one of "PREPARING", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListCalculatedAttributeDefinitions AWS API Documentation
    #
    # @overload list_calculated_attribute_definitions(params = {})
    # @param [Hash] params ({})
    def list_calculated_attribute_definitions(params = {}, options = {})
      req = build_request(:list_calculated_attribute_definitions, params)
      req.send_request(options)
    end

    # Retrieve a list of calculated attributes for a customer profile.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous call to
    #   ListCalculatedAttributesForProfile.
    #
    # @option params [Integer] :max_results
    #   The maximum number of calculated attributes returned per page.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @return [Types::ListCalculatedAttributesForProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCalculatedAttributesForProfileResponse#items #items} => Array&lt;Types::ListCalculatedAttributeForProfileItem&gt;
    #   * {Types::ListCalculatedAttributesForProfileResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_calculated_attributes_for_profile({
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     profile_id: "uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].calculated_attribute_name #=> String
    #   resp.items[0].display_name #=> String
    #   resp.items[0].is_data_partial #=> String
    #   resp.items[0].value #=> String
    #   resp.items[0].last_object_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListCalculatedAttributesForProfile AWS API Documentation
    #
    # @overload list_calculated_attributes_for_profile(params = {})
    # @param [Hash] params ({})
    def list_calculated_attributes_for_profile(params = {}, options = {})
      req = build_request(:list_calculated_attributes_for_profile, params)
      req.send_request(options)
    end

    # Lists the existing layouts that can be used to view data for a
    # specific domain. This API can only be invoked from the Amazon Connect
    # admin website.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListDomainLayoutsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainLayoutsResponse#items #items} => Array&lt;Types::LayoutItem&gt;
    #   * {Types::ListDomainLayoutsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_layouts({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].layout_definition_name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].display_name #=> String
    #   resp.items[0].is_default #=> Boolean
    #   resp.items[0].layout_type #=> String, one of "PROFILE_EXPLORER"
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomainLayouts AWS API Documentation
    #
    # @overload list_domain_layouts(params = {})
    # @param [Hash] params ({})
    def list_domain_layouts(params = {}, options = {})
      req = build_request(:list_domain_layouts, params)
      req.send_request(options)
    end

    # Returns a list of all the domains for an AWS account that have been
    # created.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous ListDomain API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsResponse#items #items} => Array&lt;Types::ListDomainItem&gt;
    #   * {Types::ListDomainsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomains AWS API Documentation
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # Returns a list of all the event streams in a specific domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListEventStreamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventStreamsResponse#items #items} => Array&lt;Types::EventStreamSummary&gt;
    #   * {Types::ListEventStreamsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_streams({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_name #=> String
    #   resp.items[0].event_stream_name #=> String
    #   resp.items[0].event_stream_arn #=> String
    #   resp.items[0].state #=> String, one of "RUNNING", "STOPPED"
    #   resp.items[0].stopped_since #=> Time
    #   resp.items[0].destination_summary.uri #=> String
    #   resp.items[0].destination_summary.status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.items[0].destination_summary.unhealthy_since #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListEventStreams AWS API Documentation
    #
    # @overload list_event_streams(params = {})
    # @param [Hash] params ({})
    def list_event_streams(params = {}, options = {})
      req = build_request(:list_event_streams, params)
      req.send_request(options)
    end

    # List all Event Triggers under a domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   The pagination token to use with ListEventTriggers.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListEventTriggersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventTriggersResponse#items #items} => Array&lt;Types::EventTriggerSummaryItem&gt;
    #   * {Types::ListEventTriggersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_triggers({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].object_type_name #=> String
    #   resp.items[0].event_trigger_name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListEventTriggers AWS API Documentation
    #
    # @overload list_event_triggers(params = {})
    # @param [Hash] params ({})
    def list_event_triggers(params = {}, options = {})
      req = build_request(:list_event_triggers, params)
      req.send_request(options)
    end

    # Lists all of the Identity Resolution Jobs in your domain. The response
    # sorts the list by `JobStartTime`.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListIdentityResolutionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityResolutionJobsResponse#identity_resolution_jobs_list #identity_resolution_jobs_list} => Array&lt;Types::IdentityResolutionJob&gt;
    #   * {Types::ListIdentityResolutionJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_resolution_jobs({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_resolution_jobs_list #=> Array
    #   resp.identity_resolution_jobs_list[0].domain_name #=> String
    #   resp.identity_resolution_jobs_list[0].job_id #=> String
    #   resp.identity_resolution_jobs_list[0].status #=> String, one of "PENDING", "PREPROCESSING", "FIND_MATCHING", "MERGING", "COMPLETED", "PARTIAL_SUCCESS", "FAILED"
    #   resp.identity_resolution_jobs_list[0].job_start_time #=> Time
    #   resp.identity_resolution_jobs_list[0].job_end_time #=> Time
    #   resp.identity_resolution_jobs_list[0].job_stats.number_of_profiles_reviewed #=> Integer
    #   resp.identity_resolution_jobs_list[0].job_stats.number_of_matches_found #=> Integer
    #   resp.identity_resolution_jobs_list[0].job_stats.number_of_merges_done #=> Integer
    #   resp.identity_resolution_jobs_list[0].exporting_location.s3_exporting.s3_bucket_name #=> String
    #   resp.identity_resolution_jobs_list[0].exporting_location.s3_exporting.s3_key_name #=> String
    #   resp.identity_resolution_jobs_list[0].message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIdentityResolutionJobs AWS API Documentation
    #
    # @overload list_identity_resolution_jobs(params = {})
    # @param [Hash] params ({})
    def list_identity_resolution_jobs(params = {}, options = {})
      req = build_request(:list_identity_resolution_jobs, params)
      req.send_request(options)
    end

    # Lists all of the integrations in your domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous ListIntegrations API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @option params [Boolean] :include_hidden
    #   Boolean to indicate if hidden integration should be returned. Defaults
    #   to `False`.
    #
    # @return [Types::ListIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIntegrationsResponse#items #items} => Array&lt;Types::ListIntegrationItem&gt;
    #   * {Types::ListIntegrationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_integrations({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #     include_hidden: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_name #=> String
    #   resp.items[0].uri #=> String
    #   resp.items[0].object_type_name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].object_type_names #=> Hash
    #   resp.items[0].object_type_names["string1To255"] #=> String
    #   resp.items[0].workflow_id #=> String
    #   resp.items[0].is_unstructured #=> Boolean
    #   resp.items[0].role_arn #=> String
    #   resp.items[0].event_trigger_names #=> Array
    #   resp.items[0].event_trigger_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIntegrations AWS API Documentation
    #
    # @overload list_integrations(params = {})
    # @param [Hash] params ({})
    def list_integrations(params = {}, options = {})
      req = build_request(:list_integrations, params)
      req.send_request(options)
    end

    # Fetch the possible attribute values given the attribute name.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @option params [required, String] :domain_name
    #   The unique identifier of the domain.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @return [Types::ListObjectTypeAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListObjectTypeAttributesResponse#items #items} => Array&lt;Types::ListObjectTypeAttributeItem&gt;
    #   * {Types::ListObjectTypeAttributesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_type_attributes({
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].attribute_name #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListObjectTypeAttributes AWS API Documentation
    #
    # @overload list_object_type_attributes(params = {})
    # @param [Hash] params ({})
    def list_object_type_attributes(params = {}, options = {})
      req = build_request(:list_object_type_attributes, params)
      req.send_request(options)
    end

    # Fetch the possible attribute values given the attribute name.
    #
    # @option params [required, String] :domain_name
    #   The unique identifier of the domain.
    #
    # @option params [required, String] :attribute_name
    #   The attribute name.
    #
    # @return [Types::ProfileAttributeValuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProfileAttributeValuesResponse#domain_name #domain_name} => String
    #   * {Types::ProfileAttributeValuesResponse#attribute_name #attribute_name} => String
    #   * {Types::ProfileAttributeValuesResponse#items #items} => Array&lt;Types::AttributeValueItem&gt;
    #   * {Types::ProfileAttributeValuesResponse#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_attribute_values({
    #     domain_name: "name", # required
    #     attribute_name: "string1To255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.attribute_name #=> String
    #   resp.items #=> Array
    #   resp.items[0].value #=> String
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileAttributeValues AWS API Documentation
    #
    # @overload list_profile_attribute_values(params = {})
    # @param [Hash] params ({})
    def list_profile_attribute_values(params = {}, options = {})
      req = build_request(:list_profile_attribute_values, params)
      req.send_request(options)
    end

    # Returns a list of history records for a specific profile, for a
    # specific domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain for which to return profile history
    #   records.
    #
    # @option params [required, String] :profile_id
    #   The identifier of the profile to be taken.
    #
    # @option params [String] :object_type_name
    #   Applies a filter to include profile history records only with the
    #   specified `ObjectTypeName` value in the response.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :action_type
    #   Applies a filter to include profile history records only with the
    #   specified `ActionType` value in the response.
    #
    # @option params [String] :performed_by
    #   Applies a filter to include profile history records only with the
    #   specified `PerformedBy` value in the response. The `PerformedBy` value
    #   can be the Amazon Resource Name (ARN) of the person or service
    #   principal who performed the action.
    #
    # @return [Types::ListProfileHistoryRecordsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfileHistoryRecordsResponse#profile_history_records #profile_history_records} => Array&lt;Types::ProfileHistoryRecord&gt;
    #   * {Types::ListProfileHistoryRecordsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_history_records({
    #     domain_name: "name", # required
    #     profile_id: "uuid", # required
    #     object_type_name: "typeName",
    #     next_token: "token",
    #     max_results: 1,
    #     action_type: "ADDED_PROFILE_KEY", # accepts ADDED_PROFILE_KEY, DELETED_PROFILE_KEY, CREATED, UPDATED, INGESTED, DELETED_BY_CUSTOMER, EXPIRED, MERGED, DELETED_BY_MERGE
    #     performed_by: "string1To255",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_history_records #=> Array
    #   resp.profile_history_records[0].id #=> String
    #   resp.profile_history_records[0].object_type_name #=> String
    #   resp.profile_history_records[0].created_at #=> Time
    #   resp.profile_history_records[0].last_updated_at #=> Time
    #   resp.profile_history_records[0].action_type #=> String, one of "ADDED_PROFILE_KEY", "DELETED_PROFILE_KEY", "CREATED", "UPDATED", "INGESTED", "DELETED_BY_CUSTOMER", "EXPIRED", "MERGED", "DELETED_BY_MERGE"
    #   resp.profile_history_records[0].profile_object_unique_key #=> String
    #   resp.profile_history_records[0].performed_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileHistoryRecords AWS API Documentation
    #
    # @overload list_profile_history_records(params = {})
    # @param [Hash] params ({})
    def list_profile_history_records(params = {}, options = {})
      req = build_request(:list_profile_history_records, params)
      req.send_request(options)
    end

    # Lists all of the template information for object types.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous ListObjectTypeTemplates API
    #   call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListProfileObjectTypeTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfileObjectTypeTemplatesResponse#items #items} => Array&lt;Types::ListProfileObjectTypeTemplateItem&gt;
    #   * {Types::ListProfileObjectTypeTemplatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_object_type_templates({
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].template_id #=> String
    #   resp.items[0].source_name #=> String
    #   resp.items[0].source_object #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypeTemplates AWS API Documentation
    #
    # @overload list_profile_object_type_templates(params = {})
    # @param [Hash] params ({})
    def list_profile_object_type_templates(params = {}, options = {})
      req = build_request(:list_profile_object_type_templates, params)
      req.send_request(options)
    end

    # Lists all of the templates available within the service.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListProfileObjectTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfileObjectTypesResponse#items #items} => Array&lt;Types::ListProfileObjectTypeItem&gt;
    #   * {Types::ListProfileObjectTypesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_object_types({
    #     domain_name: "name", # required
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].object_type_name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].max_profile_object_count #=> Integer
    #   resp.items[0].max_available_profile_object_count #=> Integer
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypes AWS API Documentation
    #
    # @overload list_profile_object_types(params = {})
    # @param [Hash] params ({})
    def list_profile_object_types(params = {}, options = {})
      req = build_request(:list_profile_object_types, params)
      req.send_request(options)
    end

    # Returns a list of objects associated with a profile of a given
    # ProfileObjectType.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous call to ListProfileObjects.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [Types::ObjectFilter] :object_filter
    #   Applies a filter to the response to include profile objects with the
    #   specified index values.
    #
    # @return [Types::ListProfileObjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfileObjectsResponse#items #items} => Array&lt;Types::ListProfileObjectsItem&gt;
    #   * {Types::ListProfileObjectsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_objects({
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #     profile_id: "uuid", # required
    #     object_filter: {
    #       key_name: "name", # required
    #       values: ["string1To255"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].object_type_name #=> String
    #   resp.items[0].profile_object_unique_key #=> String
    #   resp.items[0].object #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjects AWS API Documentation
    #
    # @overload list_profile_objects(params = {})
    # @param [Hash] params ({})
    def list_profile_objects(params = {}, options = {})
      req = build_request(:list_profile_objects, params)
      req.send_request(options)
    end

    # Returns a set of `MatchIds` that belong to the given domain.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous `ListRuleBasedMatches` API
    #   call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of `MatchIds` returned per page.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::ListRuleBasedMatchesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleBasedMatchesResponse#match_ids #match_ids} => Array&lt;String&gt;
    #   * {Types::ListRuleBasedMatchesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_based_matches({
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.match_ids #=> Array
    #   resp.match_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListRuleBasedMatches AWS API Documentation
    #
    # @overload list_rule_based_matches(params = {})
    # @param [Hash] params ({})
    def list_rule_based_matches(params = {}, options = {})
      req = build_request(:list_rule_based_matches, params)
      req.send_request(options)
    end

    # Lists all segment definitions under a domain.
    #
    # @option params [required, String] :domain_name
    #   The unique identifier of the domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous call.
    #
    # @return [Types::ListSegmentDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSegmentDefinitionsResponse#next_token #next_token} => String
    #   * {Types::ListSegmentDefinitionsResponse#items #items} => Array&lt;Types::SegmentDefinitionItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_segment_definitions({
    #     domain_name: "name", # required
    #     max_results: 1,
    #     next_token: "token",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].segment_definition_name #=> String
    #   resp.items[0].display_name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].segment_definition_arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListSegmentDefinitions AWS API Documentation
    #
    # @overload list_segment_definitions(params = {})
    # @param [Hash] params ({})
    def list_segment_definitions(params = {}, options = {})
      req = build_request(:list_segment_definitions, params)
      req.send_request(options)
    end

    # Displays the tags associated with an Amazon Connect Customer Profiles
    # resource. In Connect Customer Profiles, domains, profile object types,
    # and integrations can be tagged.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource for which you want to view tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TagArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # This API retrieves a list of upload jobs for the specified domain.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain to list upload jobs for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of upload jobs to return per page.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous call to retrieve the next page
    #   of results.
    #
    # @return [Types::ListUploadJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUploadJobsResponse#next_token #next_token} => String
    #   * {Types::ListUploadJobsResponse#items #items} => Array&lt;Types::UploadJobItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_upload_jobs({
    #     domain_name: "name", # required
    #     max_results: 1,
    #     next_token: "token",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].job_id #=> String
    #   resp.items[0].display_name #=> String
    #   resp.items[0].status #=> String, one of "CREATED", "IN_PROGRESS", "PARTIALLY_SUCCEEDED", "SUCCEEDED", "FAILED", "STOPPED"
    #   resp.items[0].status_reason #=> String, one of "VALIDATION_FAILURE", "INTERNAL_FAILURE"
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].completed_at #=> Time
    #   resp.items[0].data_expiry #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListUploadJobs AWS API Documentation
    #
    # @overload list_upload_jobs(params = {})
    # @param [Hash] params ({})
    def list_upload_jobs(params = {}, options = {})
      req = build_request(:list_upload_jobs, params)
      req.send_request(options)
    end

    # Query to list all workflows.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :workflow_type
    #   The type of workflow. The only supported value is
    #   APPFLOW\_INTEGRATION.
    #
    # @option params [String] :status
    #   Status of workflow execution.
    #
    # @option params [Time,DateTime,Date,Integer,String] :query_start_date
    #   Retrieve workflows started after timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :query_end_date
    #   Retrieve workflows ended after timestamp.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowsResponse#items #items} => Array&lt;Types::ListWorkflowsItem&gt;
    #   * {Types::ListWorkflowsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows({
    #     domain_name: "name", # required
    #     workflow_type: "APPFLOW_INTEGRATION", # accepts APPFLOW_INTEGRATION
    #     status: "NOT_STARTED", # accepts NOT_STARTED, IN_PROGRESS, COMPLETE, FAILED, SPLIT, RETRY, CANCELLED
    #     query_start_date: Time.now,
    #     query_end_date: Time.now,
    #     next_token: "token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].workflow_type #=> String, one of "APPFLOW_INTEGRATION"
    #   resp.items[0].workflow_id #=> String
    #   resp.items[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"
    #   resp.items[0].status_description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListWorkflows AWS API Documentation
    #
    # @overload list_workflows(params = {})
    # @param [Hash] params ({})
    def list_workflows(params = {}, options = {})
      req = build_request(:list_workflows, params)
      req.send_request(options)
    end

    # Runs an AWS Lambda job that does the following:
    #
    # 1.  All the profileKeys in the `ProfileToBeMerged` will be moved to
    #     the main profile.
    #
    # 2.  All the objects in the `ProfileToBeMerged` will be moved to the
    #     main profile.
    #
    # 3.  All the `ProfileToBeMerged` will be deleted at the end.
    #
    # 4.  All the profileKeys in the `ProfileIdsToBeMerged` will be moved to
    #     the main profile.
    #
    # 5.  Standard fields are merged as follows:
    #
    #     1.  Fields are always "union"-ed if there are no conflicts in
    #         standard fields or attributeKeys.
    #
    #     2.  When there are conflicting fields:
    #
    #         1.  If no `SourceProfileIds` entry is specified, the main
    #             Profile value is always taken.
    #
    #         2.  If a `SourceProfileIds` entry is specified, the specified
    #             profileId is always taken, even if it is a NULL value.
    #
    # You can use MergeProfiles together with [GetMatches][1], which returns
    # potentially matching profiles, or use it with the results of another
    # matching system. After profiles have been merged, they cannot be
    # separated (unmerged).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :main_profile_id
    #   The identifier of the profile to be taken.
    #
    # @option params [required, Array<String>] :profile_ids_to_be_merged
    #   The identifier of the profile to be merged into MainProfileId.
    #
    # @option params [Types::FieldSourceProfileIds] :field_source_profile_ids
    #   The identifiers of the fields in the profile that has the information
    #   you want to apply to the merge. For example, say you want to merge
    #   EmailAddress from Profile1 into MainProfile. This would be the
    #   identifier of the EmailAddress field in Profile1.
    #
    # @return [Types::MergeProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MergeProfilesResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_profiles({
    #     domain_name: "name", # required
    #     main_profile_id: "uuid", # required
    #     profile_ids_to_be_merged: ["uuid"], # required
    #     field_source_profile_ids: {
    #       account_number: "uuid",
    #       additional_information: "uuid",
    #       party_type: "uuid",
    #       business_name: "uuid",
    #       first_name: "uuid",
    #       middle_name: "uuid",
    #       last_name: "uuid",
    #       birth_date: "uuid",
    #       gender: "uuid",
    #       phone_number: "uuid",
    #       mobile_phone_number: "uuid",
    #       home_phone_number: "uuid",
    #       business_phone_number: "uuid",
    #       email_address: "uuid",
    #       personal_email_address: "uuid",
    #       business_email_address: "uuid",
    #       address: "uuid",
    #       shipping_address: "uuid",
    #       mailing_address: "uuid",
    #       billing_address: "uuid",
    #       attributes: {
    #         "string1To255" => "uuid",
    #       },
    #       profile_type: "uuid",
    #       engagement_preferences: "uuid",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/MergeProfiles AWS API Documentation
    #
    # @overload merge_profiles(params = {})
    # @param [Hash] params ({})
    def merge_profiles(params = {}, options = {})
      req = build_request(:merge_profiles, params)
      req.send_request(options)
    end

    # Adds an integration between the service and a third-party service,
    # which includes Amazon AppFlow and Amazon Connect.
    #
    # An integration can belong to only one domain.
    #
    # To add or remove tags on an existing Integration, see [ TagResource
    # ][1]/[ UntagResource][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html
    # [2]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [String] :uri
    #   The URI of the S3 bucket or any other type of data source.
    #
    # @option params [String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @option params [Types::FlowDefinition] :flow_definition
    #   The configuration that controls how Customer Profiles retrieves data
    #   from the source.
    #
    # @option params [Hash<String,String>] :object_type_names
    #   A map in which each key is an event type from an external application
    #   such as Segment or Shopify, and each value is an `ObjectTypeName`
    #   (template) used to ingest the event. It supports the following event
    #   types: `SegmentIdentify`, `ShopifyCreateCustomers`,
    #   `ShopifyUpdateCustomers`, `ShopifyCreateDraftOrders`,
    #   `ShopifyUpdateDraftOrders`, `ShopifyCreateOrders`, and
    #   `ShopifyUpdatedOrders`.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. The Integration uses
    #   this role to make Customer Profiles requests on your behalf.
    #
    # @option params [Array<String>] :event_trigger_names
    #   A list of unique names for active event triggers associated with the
    #   integration.
    #
    # @return [Types::PutIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutIntegrationResponse#domain_name #domain_name} => String
    #   * {Types::PutIntegrationResponse#uri #uri} => String
    #   * {Types::PutIntegrationResponse#object_type_name #object_type_name} => String
    #   * {Types::PutIntegrationResponse#created_at #created_at} => Time
    #   * {Types::PutIntegrationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::PutIntegrationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::PutIntegrationResponse#object_type_names #object_type_names} => Hash&lt;String,String&gt;
    #   * {Types::PutIntegrationResponse#workflow_id #workflow_id} => String
    #   * {Types::PutIntegrationResponse#is_unstructured #is_unstructured} => Boolean
    #   * {Types::PutIntegrationResponse#role_arn #role_arn} => String
    #   * {Types::PutIntegrationResponse#event_trigger_names #event_trigger_names} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_integration({
    #     domain_name: "name", # required
    #     uri: "string1To255",
    #     object_type_name: "typeName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     flow_definition: {
    #       description: "FlowDescription",
    #       flow_name: "FlowName", # required
    #       kms_arn: "KmsArn", # required
    #       source_flow_config: { # required
    #         connector_profile_name: "ConnectorProfileName",
    #         connector_type: "Salesforce", # required, accepts Salesforce, Marketo, Zendesk, Servicenow, S3
    #         incremental_pull_config: {
    #           datetime_type_field_name: "DatetimeTypeFieldName",
    #         },
    #         source_connector_properties: { # required
    #           marketo: {
    #             object: "Object", # required
    #           },
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #           },
    #           salesforce: {
    #             object: "Object", # required
    #             enable_dynamic_field_update: false,
    #             include_deleted_records: false,
    #           },
    #           service_now: {
    #             object: "Object", # required
    #           },
    #           zendesk: {
    #             object: "Object", # required
    #           },
    #         },
    #       },
    #       tasks: [ # required
    #         {
    #           connector_operator: {
    #             marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #             s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #             salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #             service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #             zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           },
    #           destination_field: "DestinationField",
    #           source_fields: ["stringTo2048"], # required
    #           task_properties: {
    #             "VALUE" => "Property",
    #           },
    #           task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #         },
    #       ],
    #       trigger_config: { # required
    #         trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #         trigger_properties: {
    #           scheduled: {
    #             schedule_expression: "ScheduleExpression", # required
    #             data_pull_mode: "Incremental", # accepts Incremental, Complete
    #             schedule_start_time: Time.now,
    #             schedule_end_time: Time.now,
    #             timezone: "Timezone",
    #             schedule_offset: 1,
    #             first_execution_from: Time.now,
    #           },
    #         },
    #       },
    #     },
    #     object_type_names: {
    #       "string1To255" => "typeName",
    #     },
    #     role_arn: "RoleArn",
    #     event_trigger_names: ["name"],
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.uri #=> String
    #   resp.object_type_name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.object_type_names #=> Hash
    #   resp.object_type_names["string1To255"] #=> String
    #   resp.workflow_id #=> String
    #   resp.is_unstructured #=> Boolean
    #   resp.role_arn #=> String
    #   resp.event_trigger_names #=> Array
    #   resp.event_trigger_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutIntegration AWS API Documentation
    #
    # @overload put_integration(params = {})
    # @param [Hash] params ({})
    def put_integration(params = {}, options = {})
      req = build_request(:put_integration, params)
      req.send_request(options)
    end

    # Adds additional objects to customer profiles of a given ObjectType.
    #
    # When adding a specific profile object, like a Contact Record, an
    # inferred profile can get created if it is not mapped to an existing
    # profile. The resulting profile will only have a phone number populated
    # in the standard ProfileObject. Any additional Contact Records with the
    # same phone number will be mapped to the same inferred profile.
    #
    # When a ProfileObject is created and if a ProfileObjectType already
    # exists for the ProfileObject, it will provide data to a standard
    # profile depending on the ProfileObjectType definition.
    #
    # PutProfileObject needs an ObjectType, which can be created using
    # PutProfileObjectType.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [required, String] :object
    #   A string that is serialized from a JSON object.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @return [Types::PutProfileObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutProfileObjectResponse#profile_object_unique_key #profile_object_unique_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_profile_object({
    #     object_type_name: "typeName", # required
    #     object: "stringifiedJson", # required
    #     domain_name: "name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_object_unique_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObject AWS API Documentation
    #
    # @overload put_profile_object(params = {})
    # @param [Hash] params ({})
    def put_profile_object(params = {}, options = {})
      req = build_request(:put_profile_object, params)
      req.send_request(options)
    end

    # Defines a ProfileObjectType.
    #
    # To add or remove tags on an existing ObjectType, see [
    # TagResource][1]/[UntagResource][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html
    # [2]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :object_type_name
    #   The name of the profile object type.
    #
    # @option params [required, String] :description
    #   Description of the profile object type.
    #
    # @option params [String] :template_id
    #   A unique identifier for the object template. For some attributes in
    #   the request, the service will use the default value from the object
    #   template when TemplateId is present. If these attributes are present
    #   in the request, the service may return a `BadRequestException`. These
    #   attributes include: AllowProfileCreation,
    #   SourceLastUpdatedTimestampFormat, Fields, and Keys. For example, if
    #   AllowProfileCreation is set to true when TemplateId is set, the
    #   service may return a `BadRequestException`.
    #
    # @option params [Integer] :expiration_days
    #   The number of days until the data in the object expires.
    #
    # @option params [String] :encryption_key
    #   The customer-provided key to encrypt the profile object that will be
    #   created in this profile object type.
    #
    # @option params [Boolean] :allow_profile_creation
    #   Indicates whether a profile should be created when data is received if
    #   one doesn’t exist for an object of this type. The default is `FALSE`.
    #   If the AllowProfileCreation flag is set to `FALSE`, then the service
    #   tries to fetch a standard profile and associate this object with the
    #   profile. If it is set to `TRUE`, and if no match is found, then the
    #   service creates a new standard profile.
    #
    # @option params [String] :source_last_updated_timestamp_format
    #   The format of your `sourceLastUpdatedTimestamp` that was previously
    #   set up.
    #
    # @option params [Integer] :max_profile_object_count
    #   The amount of profile object max count assigned to the object type
    #
    # @option params [Hash<String,Types::ObjectTypeField>] :fields
    #   A map of the name and ObjectType field.
    #
    # @option params [Hash<String,Array>] :keys
    #   A list of unique keys that can be used to map data to the profile.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::PutProfileObjectTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutProfileObjectTypeResponse#object_type_name #object_type_name} => String
    #   * {Types::PutProfileObjectTypeResponse#description #description} => String
    #   * {Types::PutProfileObjectTypeResponse#template_id #template_id} => String
    #   * {Types::PutProfileObjectTypeResponse#expiration_days #expiration_days} => Integer
    #   * {Types::PutProfileObjectTypeResponse#encryption_key #encryption_key} => String
    #   * {Types::PutProfileObjectTypeResponse#allow_profile_creation #allow_profile_creation} => Boolean
    #   * {Types::PutProfileObjectTypeResponse#source_last_updated_timestamp_format #source_last_updated_timestamp_format} => String
    #   * {Types::PutProfileObjectTypeResponse#max_profile_object_count #max_profile_object_count} => Integer
    #   * {Types::PutProfileObjectTypeResponse#max_available_profile_object_count #max_available_profile_object_count} => Integer
    #   * {Types::PutProfileObjectTypeResponse#fields #fields} => Hash&lt;String,Types::ObjectTypeField&gt;
    #   * {Types::PutProfileObjectTypeResponse#keys #keys} => Hash&lt;String,Array&lt;Types::ObjectTypeKey&gt;&gt;
    #   * {Types::PutProfileObjectTypeResponse#created_at #created_at} => Time
    #   * {Types::PutProfileObjectTypeResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::PutProfileObjectTypeResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_profile_object_type({
    #     domain_name: "name", # required
    #     object_type_name: "typeName", # required
    #     description: "sensitiveText", # required
    #     template_id: "name",
    #     expiration_days: 1,
    #     encryption_key: "encryptionKey",
    #     allow_profile_creation: false,
    #     source_last_updated_timestamp_format: "string1To255",
    #     max_profile_object_count: 1,
    #     fields: {
    #       "fieldName" => {
    #         source: "text",
    #         target: "text",
    #         content_type: "STRING", # accepts STRING, NUMBER, PHONE_NUMBER, EMAIL_ADDRESS, NAME
    #       },
    #     },
    #     keys: {
    #       "name" => [
    #         {
    #           standard_identifiers: ["PROFILE"], # accepts PROFILE, ASSET, CASE, ORDER, COMMUNICATION_RECORD, AIR_PREFERENCE, HOTEL_PREFERENCE, AIR_BOOKING, AIR_SEGMENT, HOTEL_RESERVATION, HOTEL_STAY_REVENUE, LOYALTY, LOYALTY_TRANSACTION, LOYALTY_PROMOTION, UNIQUE, SECONDARY, LOOKUP_ONLY, NEW_ONLY
    #           field_names: ["name"],
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
    #   resp.object_type_name #=> String
    #   resp.description #=> String
    #   resp.template_id #=> String
    #   resp.expiration_days #=> Integer
    #   resp.encryption_key #=> String
    #   resp.allow_profile_creation #=> Boolean
    #   resp.source_last_updated_timestamp_format #=> String
    #   resp.max_profile_object_count #=> Integer
    #   resp.max_available_profile_object_count #=> Integer
    #   resp.fields #=> Hash
    #   resp.fields["fieldName"].source #=> String
    #   resp.fields["fieldName"].target #=> String
    #   resp.fields["fieldName"].content_type #=> String, one of "STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"
    #   resp.keys #=> Hash
    #   resp.keys["name"] #=> Array
    #   resp.keys["name"][0].standard_identifiers #=> Array
    #   resp.keys["name"][0].standard_identifiers[0] #=> String, one of "PROFILE", "ASSET", "CASE", "ORDER", "COMMUNICATION_RECORD", "AIR_PREFERENCE", "HOTEL_PREFERENCE", "AIR_BOOKING", "AIR_SEGMENT", "HOTEL_RESERVATION", "HOTEL_STAY_REVENUE", "LOYALTY", "LOYALTY_TRANSACTION", "LOYALTY_PROMOTION", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY"
    #   resp.keys["name"][0].field_names #=> Array
    #   resp.keys["name"][0].field_names[0] #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObjectType AWS API Documentation
    #
    # @overload put_profile_object_type(params = {})
    # @param [Hash] params ({})
    def put_profile_object_type(params = {}, options = {})
      req = build_request(:put_profile_object_type, params)
      req.send_request(options)
    end

    # Searches for profiles within a specific domain using one or more
    # predefined search keys (e.g., \_fullName, \_phone, \_email, \_account,
    # etc.) and/or custom-defined search keys. A search key is a data type
    # pair that consists of a `KeyName` and `Values` list.
    #
    # This operation supports searching for profiles with a minimum of 1
    # key-value(s) pair and up to 5 key-value(s) pairs using either `AND` or
    # `OR` logic.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous SearchProfiles API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    #   The default is 20 if this parameter is not included in the request.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :key_name
    #   A searchable identifier of a customer profile. The predefined keys you
    #   can use to search include: \_account, \_profileId, \_assetId,
    #   \_caseId, \_orderId, \_fullName, \_phone, \_email, \_ctrContactId,
    #   \_marketoLeadId, \_salesforceAccountId, \_salesforceContactId,
    #   \_salesforceAssetId, \_zendeskUserId, \_zendeskExternalId,
    #   \_zendeskTicketId, \_serviceNowSystemId, \_serviceNowIncidentId,
    #   \_segmentUserId, \_shopifyCustomerId, \_shopifyOrderId.
    #
    # @option params [required, Array<String>] :values
    #   A list of key values.
    #
    # @option params [Array<Types::AdditionalSearchKey>] :additional_search_keys
    #   A list of `AdditionalSearchKey` objects that are each searchable
    #   identifiers of a profile. Each `AdditionalSearchKey` object contains a
    #   `KeyName` and a list of `Values` associated with that specific key
    #   (i.e., a key-value(s) pair). These additional search keys will be used
    #   in conjunction with the `LogicalOperator` and the required `KeyName`
    #   and `Values` parameters to search for profiles that satisfy the search
    #   criteria.
    #
    # @option params [String] :logical_operator
    #   Relationship between all specified search keys that will be used to
    #   search for profiles. This includes the required `KeyName` and `Values`
    #   parameters as well as any key-value(s) pairs specified in the
    #   `AdditionalSearchKeys` list.
    #
    #   This parameter influences which profiles will be returned in the
    #   response in the following manner:
    #
    #   * `AND` - The response only includes profiles that match all of the
    #     search keys.
    #
    #   * `OR` - The response includes profiles that match at least one of the
    #     search keys.
    #
    #   The `OR` relationship is the default behavior if this parameter is not
    #   included in the request.
    #
    # @return [Types::SearchProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchProfilesResponse#items #items} => Array&lt;Types::Profile&gt;
    #   * {Types::SearchProfilesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_profiles({
    #     next_token: "token",
    #     max_results: 1,
    #     domain_name: "name", # required
    #     key_name: "name", # required
    #     values: ["string1To255"], # required
    #     additional_search_keys: [
    #       {
    #         key_name: "name", # required
    #         values: ["string1To255"], # required
    #       },
    #     ],
    #     logical_operator: "AND", # accepts AND, OR
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].profile_id #=> String
    #   resp.items[0].account_number #=> String
    #   resp.items[0].additional_information #=> String
    #   resp.items[0].party_type #=> String, one of "INDIVIDUAL", "BUSINESS", "OTHER"
    #   resp.items[0].business_name #=> String
    #   resp.items[0].first_name #=> String
    #   resp.items[0].middle_name #=> String
    #   resp.items[0].last_name #=> String
    #   resp.items[0].birth_date #=> String
    #   resp.items[0].gender #=> String, one of "MALE", "FEMALE", "UNSPECIFIED"
    #   resp.items[0].phone_number #=> String
    #   resp.items[0].mobile_phone_number #=> String
    #   resp.items[0].home_phone_number #=> String
    #   resp.items[0].business_phone_number #=> String
    #   resp.items[0].email_address #=> String
    #   resp.items[0].personal_email_address #=> String
    #   resp.items[0].business_email_address #=> String
    #   resp.items[0].address.address_1 #=> String
    #   resp.items[0].address.address_2 #=> String
    #   resp.items[0].address.address_3 #=> String
    #   resp.items[0].address.address_4 #=> String
    #   resp.items[0].address.city #=> String
    #   resp.items[0].address.county #=> String
    #   resp.items[0].address.state #=> String
    #   resp.items[0].address.province #=> String
    #   resp.items[0].address.country #=> String
    #   resp.items[0].address.postal_code #=> String
    #   resp.items[0].shipping_address.address_1 #=> String
    #   resp.items[0].shipping_address.address_2 #=> String
    #   resp.items[0].shipping_address.address_3 #=> String
    #   resp.items[0].shipping_address.address_4 #=> String
    #   resp.items[0].shipping_address.city #=> String
    #   resp.items[0].shipping_address.county #=> String
    #   resp.items[0].shipping_address.state #=> String
    #   resp.items[0].shipping_address.province #=> String
    #   resp.items[0].shipping_address.country #=> String
    #   resp.items[0].shipping_address.postal_code #=> String
    #   resp.items[0].mailing_address.address_1 #=> String
    #   resp.items[0].mailing_address.address_2 #=> String
    #   resp.items[0].mailing_address.address_3 #=> String
    #   resp.items[0].mailing_address.address_4 #=> String
    #   resp.items[0].mailing_address.city #=> String
    #   resp.items[0].mailing_address.county #=> String
    #   resp.items[0].mailing_address.state #=> String
    #   resp.items[0].mailing_address.province #=> String
    #   resp.items[0].mailing_address.country #=> String
    #   resp.items[0].mailing_address.postal_code #=> String
    #   resp.items[0].billing_address.address_1 #=> String
    #   resp.items[0].billing_address.address_2 #=> String
    #   resp.items[0].billing_address.address_3 #=> String
    #   resp.items[0].billing_address.address_4 #=> String
    #   resp.items[0].billing_address.city #=> String
    #   resp.items[0].billing_address.county #=> String
    #   resp.items[0].billing_address.state #=> String
    #   resp.items[0].billing_address.province #=> String
    #   resp.items[0].billing_address.country #=> String
    #   resp.items[0].billing_address.postal_code #=> String
    #   resp.items[0].attributes #=> Hash
    #   resp.items[0].attributes["string1To255"] #=> String
    #   resp.items[0].found_by_items #=> Array
    #   resp.items[0].found_by_items[0].key_name #=> String
    #   resp.items[0].found_by_items[0].values #=> Array
    #   resp.items[0].found_by_items[0].values[0] #=> String
    #   resp.items[0].party_type_string #=> String
    #   resp.items[0].gender_string #=> String
    #   resp.items[0].profile_type #=> String, one of "ACCOUNT_PROFILE", "PROFILE"
    #   resp.items[0].engagement_preferences.phone #=> Array
    #   resp.items[0].engagement_preferences.phone[0].key_name #=> String
    #   resp.items[0].engagement_preferences.phone[0].key_value #=> String
    #   resp.items[0].engagement_preferences.phone[0].profile_id #=> String
    #   resp.items[0].engagement_preferences.phone[0].contact_type #=> String, one of "PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"
    #   resp.items[0].engagement_preferences.email #=> Array
    #   resp.items[0].engagement_preferences.email[0].key_name #=> String
    #   resp.items[0].engagement_preferences.email[0].key_value #=> String
    #   resp.items[0].engagement_preferences.email[0].profile_id #=> String
    #   resp.items[0].engagement_preferences.email[0].contact_type #=> String, one of "PhoneNumber", "MobilePhoneNumber", "HomePhoneNumber", "BusinessPhoneNumber", "EmailAddress", "PersonalEmailAddress", "BusinessEmailAddress"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SearchProfiles AWS API Documentation
    #
    # @overload search_profiles(params = {})
    # @param [Hash] params ({})
    def search_profiles(params = {}, options = {})
      req = build_request(:search_profiles, params)
      req.send_request(options)
    end

    # This API starts the processing of an upload job to ingest profile
    # data.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain containing the upload job to start.
    #
    # @option params [required, String] :job_id
    #   The unique identifier of the upload job to start.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_upload_job({
    #     domain_name: "name", # required
    #     job_id: "name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/StartUploadJob AWS API Documentation
    #
    # @overload start_upload_job(params = {})
    # @param [Hash] params ({})
    def start_upload_job(params = {}, options = {})
      req = build_request(:start_upload_job, params)
      req.send_request(options)
    end

    # This API stops the processing of an upload job.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain containing the upload job to stop.
    #
    # @option params [required, String] :job_id
    #   The unique identifier of the upload job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_upload_job({
    #     domain_name: "name", # required
    #     job_id: "name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/StopUploadJob AWS API Documentation
    #
    # @overload stop_upload_job(params = {})
    # @param [Hash] params ({})
    def stop_upload_job(params = {}, options = {})
      req = build_request(:stop_upload_job, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified Amazon
    # Connect Customer Profiles resource. Tags can help you organize and
    # categorize your resources. You can also use them to scope user
    # permissions by granting a user permission to access or change only
    # resources with certain tag values. In Connect Customer Profiles,
    # domains, profile object types, and integrations can be tagged.
    #
    # Tags don't have any semantic meaning to AWS and are interpreted
    # strictly as strings of characters.
    #
    # You can use the TagResource action with a resource that already has
    # tags. If you specify a new tag key, this tag is appended to the list
    # of tags associated with the resource. If you specify a tag key that is
    # already associated with the resource, the new tag value that you
    # specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you're adding tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TagArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified Amazon Connect Customer
    # Profiles resource. In Connect Customer Profiles, domains, profile
    # object types, and integrations can be tagged.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource from which you are removing tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TagArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing calculated attribute definition. When updating the
    # Conditions, note that increasing the date range of a calculated
    # attribute will not trigger inclusion of historical data greater than
    # the current date range.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :calculated_attribute_name
    #   The unique name of the calculated attribute.
    #
    # @option params [String] :display_name
    #   The display name of the calculated attribute.
    #
    # @option params [String] :description
    #   The description of the calculated attribute.
    #
    # @option params [Types::Conditions] :conditions
    #   The conditions including range, object count, and threshold for the
    #   calculated attribute.
    #
    # @return [Types::UpdateCalculatedAttributeDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#calculated_attribute_name #calculated_attribute_name} => String
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#display_name #display_name} => String
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#description #description} => String
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#created_at #created_at} => Time
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#statistic #statistic} => String
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#conditions #conditions} => Types::Conditions
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#attribute_details #attribute_details} => Types::AttributeDetails
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#use_historical_data #use_historical_data} => Boolean
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#status #status} => String
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#readiness #readiness} => Types::Readiness
    #   * {Types::UpdateCalculatedAttributeDefinitionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_calculated_attribute_definition({
    #     domain_name: "name", # required
    #     calculated_attribute_name: "typeName", # required
    #     display_name: "displayName",
    #     description: "sensitiveText",
    #     conditions: {
    #       range: {
    #         value: 1,
    #         unit: "DAYS", # accepts DAYS
    #         value_range: {
    #           start: 1, # required
    #           end: 1, # required
    #         },
    #         timestamp_source: "string1To255",
    #         timestamp_format: "string1To255",
    #       },
    #       object_count: 1,
    #       threshold: {
    #         value: "string1To255", # required
    #         operator: "EQUAL_TO", # required, accepts EQUAL_TO, GREATER_THAN, LESS_THAN, NOT_EQUAL_TO
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.calculated_attribute_name #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.statistic #=> String, one of "FIRST_OCCURRENCE", "LAST_OCCURRENCE", "COUNT", "SUM", "MINIMUM", "MAXIMUM", "AVERAGE", "MAX_OCCURRENCE"
    #   resp.conditions.range.value #=> Integer
    #   resp.conditions.range.unit #=> String, one of "DAYS"
    #   resp.conditions.range.value_range.start #=> Integer
    #   resp.conditions.range.value_range.end #=> Integer
    #   resp.conditions.range.timestamp_source #=> String
    #   resp.conditions.range.timestamp_format #=> String
    #   resp.conditions.object_count #=> Integer
    #   resp.conditions.threshold.value #=> String
    #   resp.conditions.threshold.operator #=> String, one of "EQUAL_TO", "GREATER_THAN", "LESS_THAN", "NOT_EQUAL_TO"
    #   resp.attribute_details.attributes #=> Array
    #   resp.attribute_details.attributes[0].name #=> String
    #   resp.attribute_details.expression #=> String
    #   resp.use_historical_data #=> Boolean
    #   resp.status #=> String, one of "PREPARING", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.readiness.progress_percentage #=> Integer
    #   resp.readiness.message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateCalculatedAttributeDefinition AWS API Documentation
    #
    # @overload update_calculated_attribute_definition(params = {})
    # @param [Hash] params ({})
    def update_calculated_attribute_definition(params = {}, options = {})
      req = build_request(:update_calculated_attribute_definition, params)
      req.send_request(options)
    end

    # Updates the properties of a domain, including creating or selecting a
    # dead letter queue or an encryption key.
    #
    # After a domain is created, the name can’t be changed.
    #
    # Use this API or [CreateDomain][1] to enable [identity resolution][2]:
    # set `Matching` to true.
    #
    # To prevent cross-service impersonation when you call this API, see
    # [Cross-service confused deputy prevention][3] for sample policies that
    # you should apply.
    #
    # To add or remove tags on an existing Domain, see
    # [TagResource][4]/[UntagResource][5].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html
    # [2]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html
    # [4]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html
    # [5]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [Integer] :default_expiration_days
    #   The default number of days until the data within the domain expires.
    #
    # @option params [String] :default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used when
    #   no specific type of encryption key is specified. It is used to encrypt
    #   all data before it is placed in permanent or semi-permanent storage.
    #   If specified as an empty string, it will clear any existing value.
    #
    # @option params [String] :dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   If specified as an empty string, it will clear any existing value. You
    #   must set up a policy on the DeadLetterQueue for the SendMessage
    #   operation to enable Amazon Connect Customer Profiles to send messages
    #   to the DeadLetterQueue.
    #
    # @option params [Types::MatchingRequest] :matching
    #   The process of matching duplicate profiles. If `Matching` = `true`,
    #   Amazon Connect Customer Profiles starts a weekly batch process called
    #   Identity Resolution Job. If you do not specify a date and time for
    #   Identity Resolution Job to run, by default it runs every Saturday at
    #   12AM UTC to detect duplicate profiles in your domains.
    #
    #   After the Identity Resolution Job completes, use the [GetMatches][1]
    #   API to return and review the results. Or, if you have configured
    #   `ExportingConfig` in the `MatchingRequest`, you can download the
    #   results from S3.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #
    # @option params [Types::RuleBasedMatchingRequest] :rule_based_matching
    #   The process of matching duplicate profiles using the rule-Based
    #   matching. If `RuleBasedMatching` = true, Amazon Connect Customer
    #   Profiles will start to match and merge your profiles according to your
    #   configuration in the `RuleBasedMatchingRequest`. You can use the
    #   `ListRuleBasedMatches` and `GetSimilarProfiles` API to return and
    #   review the results. Also, if you have configured `ExportingConfig` in
    #   the `RuleBasedMatchingRequest`, you can download the results from S3.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::UpdateDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainResponse#domain_name #domain_name} => String
    #   * {Types::UpdateDomainResponse#default_expiration_days #default_expiration_days} => Integer
    #   * {Types::UpdateDomainResponse#default_encryption_key #default_encryption_key} => String
    #   * {Types::UpdateDomainResponse#dead_letter_queue_url #dead_letter_queue_url} => String
    #   * {Types::UpdateDomainResponse#matching #matching} => Types::MatchingResponse
    #   * {Types::UpdateDomainResponse#rule_based_matching #rule_based_matching} => Types::RuleBasedMatchingResponse
    #   * {Types::UpdateDomainResponse#created_at #created_at} => Time
    #   * {Types::UpdateDomainResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateDomainResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain({
    #     domain_name: "name", # required
    #     default_expiration_days: 1,
    #     default_encryption_key: "encryptionKey",
    #     dead_letter_queue_url: "sqsQueueUrl",
    #     matching: {
    #       enabled: false, # required
    #       job_schedule: {
    #         day_of_the_week: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         time: "JobScheduleTime", # required
    #       },
    #       auto_merging: {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [ # required
    #             ["string1To255"],
    #           ],
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #           source_name: "string1To255",
    #         },
    #         min_allowed_confidence_score_for_merging: 1.0,
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig",
    #         },
    #       },
    #     },
    #     rule_based_matching: {
    #       enabled: false, # required
    #       matching_rules: [
    #         {
    #           rule: ["string1To255"], # required
    #         },
    #       ],
    #       max_allowed_rule_level_for_merging: 1,
    #       max_allowed_rule_level_for_matching: 1,
    #       attribute_types_selector: {
    #         attribute_matching_model: "ONE_TO_ONE", # required, accepts ONE_TO_ONE, MANY_TO_MANY
    #         address: ["string1To255"],
    #         phone_number: ["string1To255"],
    #         email_address: ["string1To255"],
    #       },
    #       conflict_resolution: {
    #         conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #         source_name: "string1To255",
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig",
    #         },
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.default_expiration_days #=> Integer
    #   resp.default_encryption_key #=> String
    #   resp.dead_letter_queue_url #=> String
    #   resp.matching.enabled #=> Boolean
    #   resp.matching.job_schedule.day_of_the_week #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.matching.job_schedule.time #=> String
    #   resp.matching.auto_merging.enabled #=> Boolean
    #   resp.matching.auto_merging.consolidation.matching_attributes_list #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0] #=> Array
    #   resp.matching.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.matching.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of "RECENCY", "SOURCE"
    #   resp.matching.auto_merging.conflict_resolution.source_name #=> String
    #   resp.matching.auto_merging.min_allowed_confidence_score_for_merging #=> Float
    #   resp.matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.rule_based_matching.enabled #=> Boolean
    #   resp.rule_based_matching.matching_rules #=> Array
    #   resp.rule_based_matching.matching_rules[0].rule #=> Array
    #   resp.rule_based_matching.matching_rules[0].rule[0] #=> String
    #   resp.rule_based_matching.status #=> String, one of "PENDING", "IN_PROGRESS", "ACTIVE"
    #   resp.rule_based_matching.max_allowed_rule_level_for_merging #=> Integer
    #   resp.rule_based_matching.max_allowed_rule_level_for_matching #=> Integer
    #   resp.rule_based_matching.attribute_types_selector.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.rule_based_matching.attribute_types_selector.address #=> Array
    #   resp.rule_based_matching.attribute_types_selector.address[0] #=> String
    #   resp.rule_based_matching.attribute_types_selector.phone_number #=> Array
    #   resp.rule_based_matching.attribute_types_selector.phone_number[0] #=> String
    #   resp.rule_based_matching.attribute_types_selector.email_address #=> Array
    #   resp.rule_based_matching.attribute_types_selector.email_address[0] #=> String
    #   resp.rule_based_matching.conflict_resolution.conflict_resolving_model #=> String, one of "RECENCY", "SOURCE"
    #   resp.rule_based_matching.conflict_resolution.source_name #=> String
    #   resp.rule_based_matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.rule_based_matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateDomain AWS API Documentation
    #
    # @overload update_domain(params = {})
    # @param [Hash] params ({})
    def update_domain(params = {}, options = {})
      req = build_request(:update_domain, params)
      req.send_request(options)
    end

    # Updates the layout used to view data for a specific domain. This API
    # can only be invoked from the Amazon Connect admin website.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :layout_definition_name
    #   The unique name of the layout.
    #
    # @option params [String] :description
    #   The description of the layout
    #
    # @option params [String] :display_name
    #   The display name of the layout
    #
    # @option params [Boolean] :is_default
    #   If set to true for a layout, this layout will be used by default to
    #   view data. If set to false, then the layout will not be used by
    #   default, but it can be used to view data by explicitly selecting it in
    #   the console.
    #
    # @option params [String] :layout_type
    #   The type of layout that can be used to view data under a Customer
    #   Profiles domain.
    #
    # @option params [String] :layout
    #   A customizable layout that can be used to view data under a Customer
    #   Profiles domain.
    #
    # @return [Types::UpdateDomainLayoutResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainLayoutResponse#layout_definition_name #layout_definition_name} => String
    #   * {Types::UpdateDomainLayoutResponse#description #description} => String
    #   * {Types::UpdateDomainLayoutResponse#display_name #display_name} => String
    #   * {Types::UpdateDomainLayoutResponse#is_default #is_default} => Boolean
    #   * {Types::UpdateDomainLayoutResponse#layout_type #layout_type} => String
    #   * {Types::UpdateDomainLayoutResponse#layout #layout} => String
    #   * {Types::UpdateDomainLayoutResponse#version #version} => String
    #   * {Types::UpdateDomainLayoutResponse#created_at #created_at} => Time
    #   * {Types::UpdateDomainLayoutResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateDomainLayoutResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_layout({
    #     domain_name: "name", # required
    #     layout_definition_name: "name", # required
    #     description: "sensitiveText",
    #     display_name: "displayName",
    #     is_default: false,
    #     layout_type: "PROFILE_EXPLORER", # accepts PROFILE_EXPLORER
    #     layout: "sensitiveString1To2000000",
    #   })
    #
    # @example Response structure
    #
    #   resp.layout_definition_name #=> String
    #   resp.description #=> String
    #   resp.display_name #=> String
    #   resp.is_default #=> Boolean
    #   resp.layout_type #=> String, one of "PROFILE_EXPLORER"
    #   resp.layout #=> String
    #   resp.version #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateDomainLayout AWS API Documentation
    #
    # @overload update_domain_layout(params = {})
    # @param [Hash] params ({})
    def update_domain_layout(params = {}, options = {})
      req = build_request(:update_domain_layout, params)
      req.send_request(options)
    end

    # Update the properties of an Event Trigger.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :event_trigger_name
    #   The unique name of the event trigger.
    #
    # @option params [String] :object_type_name
    #   The unique name of the object type.
    #
    # @option params [String] :description
    #   The description of the event trigger.
    #
    # @option params [Array<Types::EventTriggerCondition>] :event_trigger_conditions
    #   A list of conditions that determine when an event should trigger the
    #   destination.
    #
    # @option params [String] :segment_filter
    #   The destination is triggered only for profiles that meet the criteria
    #   of a segment definition.
    #
    # @option params [Types::EventTriggerLimits] :event_trigger_limits
    #   Defines limits controlling whether an event triggers the destination,
    #   based on ingestion latency and the number of invocations per profile
    #   over specific time periods.
    #
    # @return [Types::UpdateEventTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEventTriggerResponse#event_trigger_name #event_trigger_name} => String
    #   * {Types::UpdateEventTriggerResponse#object_type_name #object_type_name} => String
    #   * {Types::UpdateEventTriggerResponse#description #description} => String
    #   * {Types::UpdateEventTriggerResponse#event_trigger_conditions #event_trigger_conditions} => Array&lt;Types::EventTriggerCondition&gt;
    #   * {Types::UpdateEventTriggerResponse#segment_filter #segment_filter} => String
    #   * {Types::UpdateEventTriggerResponse#event_trigger_limits #event_trigger_limits} => Types::EventTriggerLimits
    #   * {Types::UpdateEventTriggerResponse#created_at #created_at} => Time
    #   * {Types::UpdateEventTriggerResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateEventTriggerResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_trigger({
    #     domain_name: "name", # required
    #     event_trigger_name: "name", # required
    #     object_type_name: "typeName",
    #     description: "sensitiveText",
    #     event_trigger_conditions: [
    #       {
    #         event_trigger_dimensions: [ # required
    #           {
    #             object_attributes: [ # required
    #               {
    #                 source: "text",
    #                 field_name: "fieldName",
    #                 comparison_operator: "INCLUSIVE", # required, accepts INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, EQUAL, BEFORE, AFTER, ON, BETWEEN, NOT_BETWEEN
    #                 values: ["string1To255"], # required
    #               },
    #             ],
    #           },
    #         ],
    #         logical_operator: "ANY", # required, accepts ANY, ALL, NONE
    #       },
    #     ],
    #     segment_filter: "name",
    #     event_trigger_limits: {
    #       event_expiration: 1,
    #       periods: [
    #         {
    #           unit: "HOURS", # required, accepts HOURS, DAYS, WEEKS, MONTHS
    #           value: 1, # required
    #           max_invocations_per_profile: 1,
    #           unlimited: false,
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.event_trigger_name #=> String
    #   resp.object_type_name #=> String
    #   resp.description #=> String
    #   resp.event_trigger_conditions #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].source #=> String
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].field_name #=> String
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].comparison_operator #=> String, one of "INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEGINS_WITH", "ENDS_WITH", "GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "EQUAL", "BEFORE", "AFTER", "ON", "BETWEEN", "NOT_BETWEEN"
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].values #=> Array
    #   resp.event_trigger_conditions[0].event_trigger_dimensions[0].object_attributes[0].values[0] #=> String
    #   resp.event_trigger_conditions[0].logical_operator #=> String, one of "ANY", "ALL", "NONE"
    #   resp.segment_filter #=> String
    #   resp.event_trigger_limits.event_expiration #=> Integer
    #   resp.event_trigger_limits.periods #=> Array
    #   resp.event_trigger_limits.periods[0].unit #=> String, one of "HOURS", "DAYS", "WEEKS", "MONTHS"
    #   resp.event_trigger_limits.periods[0].value #=> Integer
    #   resp.event_trigger_limits.periods[0].max_invocations_per_profile #=> Integer
    #   resp.event_trigger_limits.periods[0].unlimited #=> Boolean
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateEventTrigger AWS API Documentation
    #
    # @overload update_event_trigger(params = {})
    # @param [Hash] params ({})
    def update_event_trigger(params = {}, options = {})
      req = build_request(:update_event_trigger, params)
      req.send_request(options)
    end

    # Updates the properties of a profile. The ProfileId is required for
    # updating a customer profile.
    #
    # When calling the UpdateProfile API, specifying an empty string value
    # means that any existing value will be removed. Not specifying a string
    # value means that any value already there will be kept.
    #
    # @option params [required, String] :domain_name
    #   The unique name of the domain.
    #
    # @option params [required, String] :profile_id
    #   The unique identifier of a customer profile.
    #
    # @option params [String] :additional_information
    #   Any additional information relevant to the customer’s profile.
    #
    # @option params [String] :account_number
    #   An account number that you have assigned to the customer.
    #
    # @option params [String] :party_type
    #   The type of profile used to describe the customer.
    #
    # @option params [String] :business_name
    #   The name of the customer’s business.
    #
    # @option params [String] :first_name
    #   The customer’s first name.
    #
    # @option params [String] :middle_name
    #   The customer’s middle name.
    #
    # @option params [String] :last_name
    #   The customer’s last name.
    #
    # @option params [String] :birth_date
    #   The customer’s birth date.
    #
    # @option params [String] :gender
    #   The gender with which the customer identifies.
    #
    # @option params [String] :phone_number
    #   The customer’s phone number, which has not been specified as a mobile,
    #   home, or business number.
    #
    # @option params [String] :mobile_phone_number
    #   The customer’s mobile phone number.
    #
    # @option params [String] :home_phone_number
    #   The customer’s home phone number.
    #
    # @option params [String] :business_phone_number
    #   The customer’s business phone number.
    #
    # @option params [String] :email_address
    #   The customer’s email address, which has not been specified as a
    #   personal or business address.
    #
    # @option params [String] :personal_email_address
    #   The customer’s personal email address.
    #
    # @option params [String] :business_email_address
    #   The customer’s business email address.
    #
    # @option params [Types::UpdateAddress] :address
    #   A generic address associated with the customer that is not mailing,
    #   shipping, or billing.
    #
    # @option params [Types::UpdateAddress] :shipping_address
    #   The customer’s shipping address.
    #
    # @option params [Types::UpdateAddress] :mailing_address
    #   The customer’s mailing address.
    #
    # @option params [Types::UpdateAddress] :billing_address
    #   The customer’s billing address.
    #
    # @option params [Hash<String,String>] :attributes
    #   A key value pair of attributes of a customer profile.
    #
    # @option params [String] :party_type_string
    #   An alternative to `PartyType` which accepts any string as input.
    #
    # @option params [String] :gender_string
    #   An alternative to `Gender` which accepts any string as input.
    #
    # @option params [String] :profile_type
    #   Determines the type of the profile.
    #
    # @option params [Types::EngagementPreferences] :engagement_preferences
    #   Object that defines users preferred methods of engagement.
    #
    # @return [Types::UpdateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProfileResponse#profile_id #profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile({
    #     domain_name: "name", # required
    #     profile_id: "uuid", # required
    #     additional_information: "sensitiveString0To1000",
    #     account_number: "sensitiveString0To255",
    #     party_type: "INDIVIDUAL", # accepts INDIVIDUAL, BUSINESS, OTHER
    #     business_name: "sensitiveString0To255",
    #     first_name: "sensitiveString0To255",
    #     middle_name: "sensitiveString0To255",
    #     last_name: "sensitiveString0To255",
    #     birth_date: "sensitiveString0To255",
    #     gender: "MALE", # accepts MALE, FEMALE, UNSPECIFIED
    #     phone_number: "sensitiveString0To255",
    #     mobile_phone_number: "sensitiveString0To255",
    #     home_phone_number: "sensitiveString0To255",
    #     business_phone_number: "sensitiveString0To255",
    #     email_address: "sensitiveString0To255",
    #     personal_email_address: "sensitiveString0To255",
    #     business_email_address: "sensitiveString0To255",
    #     address: {
    #       address_1: "string0To255",
    #       address_2: "string0To255",
    #       address_3: "string0To255",
    #       address_4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255",
    #     },
    #     shipping_address: {
    #       address_1: "string0To255",
    #       address_2: "string0To255",
    #       address_3: "string0To255",
    #       address_4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255",
    #     },
    #     mailing_address: {
    #       address_1: "string0To255",
    #       address_2: "string0To255",
    #       address_3: "string0To255",
    #       address_4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255",
    #     },
    #     billing_address: {
    #       address_1: "string0To255",
    #       address_2: "string0To255",
    #       address_3: "string0To255",
    #       address_4: "string0To255",
    #       city: "string0To255",
    #       county: "string0To255",
    #       state: "string0To255",
    #       province: "string0To255",
    #       country: "string0To255",
    #       postal_code: "string0To255",
    #     },
    #     attributes: {
    #       "string1To255" => "string0To255",
    #     },
    #     party_type_string: "sensitiveString0To255",
    #     gender_string: "sensitiveString0To255",
    #     profile_type: "ACCOUNT_PROFILE", # accepts ACCOUNT_PROFILE, PROFILE
    #     engagement_preferences: {
    #       phone: [
    #         {
    #           key_name: "name",
    #           key_value: "string1To255",
    #           profile_id: "uuid",
    #           contact_type: "PhoneNumber", # accepts PhoneNumber, MobilePhoneNumber, HomePhoneNumber, BusinessPhoneNumber, EmailAddress, PersonalEmailAddress, BusinessEmailAddress
    #         },
    #       ],
    #       email: [
    #         {
    #           key_name: "name",
    #           key_value: "string1To255",
    #           profile_id: "uuid",
    #           contact_type: "PhoneNumber", # accepts PhoneNumber, MobilePhoneNumber, HomePhoneNumber, BusinessPhoneNumber, EmailAddress, PersonalEmailAddress, BusinessEmailAddress
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateProfile AWS API Documentation
    #
    # @overload update_profile(params = {})
    # @param [Hash] params ({})
    def update_profile(params = {}, options = {})
      req = build_request(:update_profile, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CustomerProfiles')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-customerprofiles'
      context[:gem_version] = '1.73.0'
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
