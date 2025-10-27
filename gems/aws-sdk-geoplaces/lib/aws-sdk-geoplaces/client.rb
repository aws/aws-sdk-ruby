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

module Aws::GeoPlaces
  # An API client for GeoPlaces.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GeoPlaces::Client.new(
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

    @identifier = :geoplaces

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
    add_plugin(Aws::GeoPlaces::Plugins::Endpoints)

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
    #   @option options [Aws::GeoPlaces::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::GeoPlaces::EndpointParameters`.
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

    # `Autocomplete` completes potential places and addresses as the user
    # types, based on the partial input. The API enhances the efficiency and
    # accuracy of address by completing query based on a few entered
    # keystrokes. It helps you by completing partial queries with valid
    # address completion. Also, the API supports the filtering of results
    # based on geographic location, country, or specific place types, and
    # can be tailored using optional parameters like language and political
    # views.
    #
    # @option params [required, String] :query_text
    #   The free-form text query to match addresses against. This is usually a
    #   partially typed address from an end user in an address box or form.
    #
    #   <note markdown="1"> The fields `QueryText`, and `QueryID` are mutually exclusive.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of results returned in a single call.
    #
    # @option params [Array<Float>] :bias_position
    #   The position in longitude and latitude that the results should be
    #   close to. Typically, place results returned are ranked higher the
    #   closer they are to this position. Stored in `[lng, lat]` and in the
    #   WSG84 format.
    #
    #   <note markdown="1"> The fields `BiasPosition`, `FilterBoundingBox`, and `FilterCircle` are
    #   mutually exclusive.
    #
    #    </note>
    #
    # @option params [Types::AutocompleteFilter] :filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must possess in order to be returned as a result.
    #
    # @option params [String] :postal_code_mode
    #   The `PostalCodeMode` affects how postal code results are returned. If
    #   a postal code spans multiple localities and this value is empty,
    #   partial district or locality information may be returned under a
    #   single postal code result entry. If it's populated with the value
    #   `EnumerateSpannedLocalities`, all cities in that postal code are
    #   returned.
    #
    # @option params [Array<String>] :additional_features
    #   A list of optional additional parameters that can be requested for
    #   each result.
    #
    # @option params [String] :language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #
    # @option params [String] :political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #
    #   The following political views are currently supported:
    #
    #   * `ARG`: Argentina's view on the Southern Patagonian Ice Field and
    #     Tierra Del Fuego, including the Falkland Islands, South Georgia, and
    #     South Sandwich Islands
    #
    #   * `EGY`: Egypt's view on Bir Tawil
    #
    #   * `IND`: India's view on Gilgit-Baltistan
    #
    #   * `KEN`: Kenya's view on the Ilemi Triangle
    #
    #   * `MAR`: Morocco's view on Western Sahara
    #
    #   * `RUS`: Russia's view on Crimea
    #
    #   * `SDN`: Sudan's view on the Halaib Triangle
    #
    #   * `SRB`: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands
    #
    #   * `SUR`: Suriname's view on the Courantyne Headwaters and Lawa
    #     Headwaters
    #
    #   * `SYR`: Syria's view on the Golan Heights
    #
    #   * `TUR`: Turkey's view on Cyprus and Northern Cyprus
    #
    #   * `TZA`: Tanzania's view on Lake Malawi
    #
    #   * `URY`: Uruguay's view on Rincon de Artigas
    #
    #   * `VNM`: Vietnam's view on the Paracel Islands and Spratly Islands
    #
    # @option params [String] :intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @return [Types::AutocompleteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AutocompleteResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::AutocompleteResponse#result_items #result_items} => Array&lt;Types::AutocompleteResultItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.autocomplete({
    #     query_text: "AutocompleteRequestQueryTextString", # required
    #     max_results: 1,
    #     bias_position: [1.0],
    #     filter: {
    #       bounding_box: [1.0],
    #       circle: {
    #         center: [1.0], # required
    #         radius: 1, # required
    #       },
    #       include_countries: ["CountryCode"],
    #       include_place_types: ["Locality"], # accepts Locality, PostalCode
    #     },
    #     postal_code_mode: "MergeAllSpannedLocalities", # accepts MergeAllSpannedLocalities, EnumerateSpannedLocalities
    #     additional_features: ["Core"], # accepts Core
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "SingleUse", # accepts SingleUse
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.pricing_bucket #=> String
    #   resp.result_items #=> Array
    #   resp.result_items[0].place_id #=> String
    #   resp.result_items[0].place_type #=> String, one of "Country", "Region", "SubRegion", "Locality", "District", "SubDistrict", "PostalCode", "Block", "SubBlock", "Intersection", "Street", "PointOfInterest", "PointAddress", "InterpolatedAddress", "SecondaryAddress"
    #   resp.result_items[0].title #=> String
    #   resp.result_items[0].address.label #=> String
    #   resp.result_items[0].address.country.code_2 #=> String
    #   resp.result_items[0].address.country.code_3 #=> String
    #   resp.result_items[0].address.country.name #=> String
    #   resp.result_items[0].address.region.code #=> String
    #   resp.result_items[0].address.region.name #=> String
    #   resp.result_items[0].address.sub_region.code #=> String
    #   resp.result_items[0].address.sub_region.name #=> String
    #   resp.result_items[0].address.locality #=> String
    #   resp.result_items[0].address.district #=> String
    #   resp.result_items[0].address.sub_district #=> String
    #   resp.result_items[0].address.postal_code #=> String
    #   resp.result_items[0].address.block #=> String
    #   resp.result_items[0].address.sub_block #=> String
    #   resp.result_items[0].address.intersection #=> Array
    #   resp.result_items[0].address.intersection[0] #=> String
    #   resp.result_items[0].address.street #=> String
    #   resp.result_items[0].address.street_components #=> Array
    #   resp.result_items[0].address.street_components[0].base_name #=> String
    #   resp.result_items[0].address.street_components[0].type #=> String
    #   resp.result_items[0].address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.result_items[0].address.street_components[0].type_separator #=> String
    #   resp.result_items[0].address.street_components[0].prefix #=> String
    #   resp.result_items[0].address.street_components[0].suffix #=> String
    #   resp.result_items[0].address.street_components[0].direction #=> String
    #   resp.result_items[0].address.street_components[0].language #=> String
    #   resp.result_items[0].address.address_number #=> String
    #   resp.result_items[0].address.building #=> String
    #   resp.result_items[0].address.secondary_address_components #=> Array
    #   resp.result_items[0].address.secondary_address_components[0].number #=> String
    #   resp.result_items[0].distance #=> Integer
    #   resp.result_items[0].language #=> String
    #   resp.result_items[0].political_view #=> String
    #   resp.result_items[0].highlights.title #=> Array
    #   resp.result_items[0].highlights.title[0].start_index #=> Integer
    #   resp.result_items[0].highlights.title[0].end_index #=> Integer
    #   resp.result_items[0].highlights.title[0].value #=> String
    #   resp.result_items[0].highlights.address.label #=> Array
    #   resp.result_items[0].highlights.address.label[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.label[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.label[0].value #=> String
    #   resp.result_items[0].highlights.address.country.code #=> Array
    #   resp.result_items[0].highlights.address.country.code[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.country.code[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.country.code[0].value #=> String
    #   resp.result_items[0].highlights.address.country.name #=> Array
    #   resp.result_items[0].highlights.address.country.name[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.country.name[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.country.name[0].value #=> String
    #   resp.result_items[0].highlights.address.region.code #=> Array
    #   resp.result_items[0].highlights.address.region.code[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.region.code[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.region.code[0].value #=> String
    #   resp.result_items[0].highlights.address.region.name #=> Array
    #   resp.result_items[0].highlights.address.region.name[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.region.name[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.region.name[0].value #=> String
    #   resp.result_items[0].highlights.address.sub_region.code #=> Array
    #   resp.result_items[0].highlights.address.sub_region.code[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.sub_region.code[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.sub_region.code[0].value #=> String
    #   resp.result_items[0].highlights.address.sub_region.name #=> Array
    #   resp.result_items[0].highlights.address.sub_region.name[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.sub_region.name[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.sub_region.name[0].value #=> String
    #   resp.result_items[0].highlights.address.locality #=> Array
    #   resp.result_items[0].highlights.address.locality[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.locality[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.locality[0].value #=> String
    #   resp.result_items[0].highlights.address.district #=> Array
    #   resp.result_items[0].highlights.address.district[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.district[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.district[0].value #=> String
    #   resp.result_items[0].highlights.address.sub_district #=> Array
    #   resp.result_items[0].highlights.address.sub_district[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.sub_district[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.sub_district[0].value #=> String
    #   resp.result_items[0].highlights.address.street #=> Array
    #   resp.result_items[0].highlights.address.street[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.street[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.street[0].value #=> String
    #   resp.result_items[0].highlights.address.block #=> Array
    #   resp.result_items[0].highlights.address.block[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.block[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.block[0].value #=> String
    #   resp.result_items[0].highlights.address.sub_block #=> Array
    #   resp.result_items[0].highlights.address.sub_block[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.sub_block[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.sub_block[0].value #=> String
    #   resp.result_items[0].highlights.address.intersection #=> Array
    #   resp.result_items[0].highlights.address.intersection[0] #=> Array
    #   resp.result_items[0].highlights.address.intersection[0][0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.intersection[0][0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.intersection[0][0].value #=> String
    #   resp.result_items[0].highlights.address.postal_code #=> Array
    #   resp.result_items[0].highlights.address.postal_code[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.postal_code[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.postal_code[0].value #=> String
    #   resp.result_items[0].highlights.address.address_number #=> Array
    #   resp.result_items[0].highlights.address.address_number[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.address_number[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.address_number[0].value #=> String
    #   resp.result_items[0].highlights.address.building #=> Array
    #   resp.result_items[0].highlights.address.building[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.building[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.building[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/Autocomplete AWS API Documentation
    #
    # @overload autocomplete(params = {})
    # @param [Hash] params ({})
    def autocomplete(params = {}, options = {})
      req = build_request(:autocomplete, params)
      req.send_request(options)
    end

    # `Geocode` converts a textual address or place into geographic
    # coordinates. You can obtain geographic coordinates, address component,
    # and other related information. It supports flexible queries, including
    # free-form text or structured queries with components like street
    # names, postal codes, and regions. The Geocode API can also provide
    # additional features such as time zone information and the inclusion of
    # political views.
    #
    # @option params [String] :query_text
    #   The free-form text query to match addresses against. This is usually a
    #   partially typed address from an end user in an address box or form.
    #
    #   <note markdown="1"> The fields `QueryText`, and `QueryID` are mutually exclusive.
    #
    #    </note>
    #
    # @option params [Types::GeocodeQueryComponents] :query_components
    #   A structured free text query allows you to search for places by the
    #   name or text representation of specific properties of the place.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of results returned in a single call.
    #
    # @option params [Array<Float>] :bias_position
    #   The position, in longitude and latitude, that the results should be
    #   close to. Typically, place results returned are ranked higher the
    #   closer they are to this position. Stored in `[lng, lat]` and in the
    #   WSG84 format.
    #
    #   <note markdown="1"> The fields `BiasPosition`, `FilterBoundingBox`, and `FilterCircle` are
    #   mutually exclusive.
    #
    #    </note>
    #
    # @option params [Types::GeocodeFilter] :filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must possess in order to be returned as a result.
    #
    # @option params [Array<String>] :additional_features
    #   A list of optional additional parameters, such as time zone, that can
    #   be requested for each result.
    #
    # @option params [String] :language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #
    # @option params [String] :political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #
    # @option params [String] :intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #
    #   <note markdown="1"> Storing the response of an Geocode query is required to comply with
    #   service terms, but charged at a higher cost per request. Please review
    #   the [user agreement][1] and [service pricing structure][2] to
    #   determine the correct setting for your use case.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/sla/
    #   [2]: https://aws.amazon.com/location/pricing/
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @return [Types::GeocodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GeocodeResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::GeocodeResponse#result_items #result_items} => Array&lt;Types::GeocodeResultItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.geocode({
    #     query_text: "GeocodeRequestQueryTextString",
    #     query_components: {
    #       country: "GeocodeQueryComponentsCountryString",
    #       region: "GeocodeQueryComponentsRegionString",
    #       sub_region: "GeocodeQueryComponentsSubRegionString",
    #       locality: "GeocodeQueryComponentsLocalityString",
    #       district: "GeocodeQueryComponentsDistrictString",
    #       street: "GeocodeQueryComponentsStreetString",
    #       address_number: "GeocodeQueryComponentsAddressNumberString",
    #       postal_code: "GeocodeQueryComponentsPostalCodeString",
    #     },
    #     max_results: 1,
    #     bias_position: [1.0],
    #     filter: {
    #       include_countries: ["CountryCode"],
    #       include_place_types: ["Locality"], # accepts Locality, PostalCode, Intersection, Street, PointAddress, InterpolatedAddress
    #     },
    #     additional_features: ["TimeZone"], # accepts TimeZone, Access, SecondaryAddresses, Intersections
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "SingleUse", # accepts SingleUse, Storage
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.pricing_bucket #=> String
    #   resp.result_items #=> Array
    #   resp.result_items[0].place_id #=> String
    #   resp.result_items[0].place_type #=> String, one of "Country", "Region", "SubRegion", "Locality", "District", "SubDistrict", "PostalCode", "Block", "SubBlock", "Intersection", "Street", "PointOfInterest", "PointAddress", "InterpolatedAddress", "SecondaryAddress"
    #   resp.result_items[0].title #=> String
    #   resp.result_items[0].address.label #=> String
    #   resp.result_items[0].address.country.code_2 #=> String
    #   resp.result_items[0].address.country.code_3 #=> String
    #   resp.result_items[0].address.country.name #=> String
    #   resp.result_items[0].address.region.code #=> String
    #   resp.result_items[0].address.region.name #=> String
    #   resp.result_items[0].address.sub_region.code #=> String
    #   resp.result_items[0].address.sub_region.name #=> String
    #   resp.result_items[0].address.locality #=> String
    #   resp.result_items[0].address.district #=> String
    #   resp.result_items[0].address.sub_district #=> String
    #   resp.result_items[0].address.postal_code #=> String
    #   resp.result_items[0].address.block #=> String
    #   resp.result_items[0].address.sub_block #=> String
    #   resp.result_items[0].address.intersection #=> Array
    #   resp.result_items[0].address.intersection[0] #=> String
    #   resp.result_items[0].address.street #=> String
    #   resp.result_items[0].address.street_components #=> Array
    #   resp.result_items[0].address.street_components[0].base_name #=> String
    #   resp.result_items[0].address.street_components[0].type #=> String
    #   resp.result_items[0].address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.result_items[0].address.street_components[0].type_separator #=> String
    #   resp.result_items[0].address.street_components[0].prefix #=> String
    #   resp.result_items[0].address.street_components[0].suffix #=> String
    #   resp.result_items[0].address.street_components[0].direction #=> String
    #   resp.result_items[0].address.street_components[0].language #=> String
    #   resp.result_items[0].address.address_number #=> String
    #   resp.result_items[0].address.building #=> String
    #   resp.result_items[0].address.secondary_address_components #=> Array
    #   resp.result_items[0].address.secondary_address_components[0].number #=> String
    #   resp.result_items[0].address_number_corrected #=> Boolean
    #   resp.result_items[0].postal_code_details #=> Array
    #   resp.result_items[0].postal_code_details[0].postal_code #=> String
    #   resp.result_items[0].postal_code_details[0].postal_authority #=> String, one of "Usps"
    #   resp.result_items[0].postal_code_details[0].postal_code_type #=> String, one of "UspsZip", "UspsZipPlus4"
    #   resp.result_items[0].postal_code_details[0].usps_zip.zip_classification_code #=> String, one of "Military", "PostOfficeBoxes", "Unique"
    #   resp.result_items[0].postal_code_details[0].usps_zip_plus_4.record_type_code #=> String, one of "Firm", "General", "HighRise", "PostOfficeBox", "Rural", "Street"
    #   resp.result_items[0].position #=> Array
    #   resp.result_items[0].position[0] #=> Float
    #   resp.result_items[0].distance #=> Integer
    #   resp.result_items[0].map_view #=> Array
    #   resp.result_items[0].map_view[0] #=> Float
    #   resp.result_items[0].categories #=> Array
    #   resp.result_items[0].categories[0].id #=> String
    #   resp.result_items[0].categories[0].name #=> String
    #   resp.result_items[0].categories[0].localized_name #=> String
    #   resp.result_items[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].food_types #=> Array
    #   resp.result_items[0].food_types[0].localized_name #=> String
    #   resp.result_items[0].food_types[0].id #=> String
    #   resp.result_items[0].food_types[0].primary #=> Boolean
    #   resp.result_items[0].access_points #=> Array
    #   resp.result_items[0].access_points[0].position #=> Array
    #   resp.result_items[0].access_points[0].position[0] #=> Float
    #   resp.result_items[0].time_zone.name #=> String
    #   resp.result_items[0].time_zone.offset #=> String
    #   resp.result_items[0].time_zone.offset_seconds #=> Integer
    #   resp.result_items[0].political_view #=> String
    #   resp.result_items[0].match_scores.overall #=> Float
    #   resp.result_items[0].match_scores.components.title #=> Float
    #   resp.result_items[0].match_scores.components.address.country #=> Float
    #   resp.result_items[0].match_scores.components.address.region #=> Float
    #   resp.result_items[0].match_scores.components.address.sub_region #=> Float
    #   resp.result_items[0].match_scores.components.address.locality #=> Float
    #   resp.result_items[0].match_scores.components.address.district #=> Float
    #   resp.result_items[0].match_scores.components.address.sub_district #=> Float
    #   resp.result_items[0].match_scores.components.address.postal_code #=> Float
    #   resp.result_items[0].match_scores.components.address.block #=> Float
    #   resp.result_items[0].match_scores.components.address.sub_block #=> Float
    #   resp.result_items[0].match_scores.components.address.intersection #=> Array
    #   resp.result_items[0].match_scores.components.address.intersection[0] #=> Float
    #   resp.result_items[0].match_scores.components.address.address_number #=> Float
    #   resp.result_items[0].match_scores.components.address.building #=> Float
    #   resp.result_items[0].match_scores.components.address.secondary_address_components #=> Array
    #   resp.result_items[0].match_scores.components.address.secondary_address_components[0].number #=> Float
    #   resp.result_items[0].parsed_query.title #=> Array
    #   resp.result_items[0].parsed_query.title[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.title[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.title[0].value #=> String
    #   resp.result_items[0].parsed_query.title[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.country #=> Array
    #   resp.result_items[0].parsed_query.address.country[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.country[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.country[0].value #=> String
    #   resp.result_items[0].parsed_query.address.country[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.region #=> Array
    #   resp.result_items[0].parsed_query.address.region[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.region[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.region[0].value #=> String
    #   resp.result_items[0].parsed_query.address.region[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.sub_region #=> Array
    #   resp.result_items[0].parsed_query.address.sub_region[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.sub_region[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.sub_region[0].value #=> String
    #   resp.result_items[0].parsed_query.address.sub_region[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.locality #=> Array
    #   resp.result_items[0].parsed_query.address.locality[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.locality[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.locality[0].value #=> String
    #   resp.result_items[0].parsed_query.address.locality[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.district #=> Array
    #   resp.result_items[0].parsed_query.address.district[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.district[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.district[0].value #=> String
    #   resp.result_items[0].parsed_query.address.district[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.sub_district #=> Array
    #   resp.result_items[0].parsed_query.address.sub_district[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.sub_district[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.sub_district[0].value #=> String
    #   resp.result_items[0].parsed_query.address.sub_district[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.postal_code #=> Array
    #   resp.result_items[0].parsed_query.address.postal_code[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.postal_code[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.postal_code[0].value #=> String
    #   resp.result_items[0].parsed_query.address.postal_code[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.block #=> Array
    #   resp.result_items[0].parsed_query.address.block[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.block[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.block[0].value #=> String
    #   resp.result_items[0].parsed_query.address.block[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.sub_block #=> Array
    #   resp.result_items[0].parsed_query.address.sub_block[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.sub_block[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.sub_block[0].value #=> String
    #   resp.result_items[0].parsed_query.address.sub_block[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.street #=> Array
    #   resp.result_items[0].parsed_query.address.street[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.street[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.street[0].value #=> String
    #   resp.result_items[0].parsed_query.address.street[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.address_number #=> Array
    #   resp.result_items[0].parsed_query.address.address_number[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.address_number[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.address_number[0].value #=> String
    #   resp.result_items[0].parsed_query.address.address_number[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.building #=> Array
    #   resp.result_items[0].parsed_query.address.building[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.building[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.building[0].value #=> String
    #   resp.result_items[0].parsed_query.address.building[0].query_component #=> String
    #   resp.result_items[0].parsed_query.address.secondary_address_components #=> Array
    #   resp.result_items[0].parsed_query.address.secondary_address_components[0].start_index #=> Integer
    #   resp.result_items[0].parsed_query.address.secondary_address_components[0].end_index #=> Integer
    #   resp.result_items[0].parsed_query.address.secondary_address_components[0].value #=> String
    #   resp.result_items[0].parsed_query.address.secondary_address_components[0].number #=> String
    #   resp.result_items[0].parsed_query.address.secondary_address_components[0].designator #=> String
    #   resp.result_items[0].intersections #=> Array
    #   resp.result_items[0].intersections[0].place_id #=> String
    #   resp.result_items[0].intersections[0].title #=> String
    #   resp.result_items[0].intersections[0].address.label #=> String
    #   resp.result_items[0].intersections[0].address.country.code_2 #=> String
    #   resp.result_items[0].intersections[0].address.country.code_3 #=> String
    #   resp.result_items[0].intersections[0].address.country.name #=> String
    #   resp.result_items[0].intersections[0].address.region.code #=> String
    #   resp.result_items[0].intersections[0].address.region.name #=> String
    #   resp.result_items[0].intersections[0].address.sub_region.code #=> String
    #   resp.result_items[0].intersections[0].address.sub_region.name #=> String
    #   resp.result_items[0].intersections[0].address.locality #=> String
    #   resp.result_items[0].intersections[0].address.district #=> String
    #   resp.result_items[0].intersections[0].address.sub_district #=> String
    #   resp.result_items[0].intersections[0].address.postal_code #=> String
    #   resp.result_items[0].intersections[0].address.block #=> String
    #   resp.result_items[0].intersections[0].address.sub_block #=> String
    #   resp.result_items[0].intersections[0].address.intersection #=> Array
    #   resp.result_items[0].intersections[0].address.intersection[0] #=> String
    #   resp.result_items[0].intersections[0].address.street #=> String
    #   resp.result_items[0].intersections[0].address.street_components #=> Array
    #   resp.result_items[0].intersections[0].address.street_components[0].base_name #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].type #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.result_items[0].intersections[0].address.street_components[0].type_separator #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].prefix #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].suffix #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].direction #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].language #=> String
    #   resp.result_items[0].intersections[0].address.address_number #=> String
    #   resp.result_items[0].intersections[0].address.building #=> String
    #   resp.result_items[0].intersections[0].address.secondary_address_components #=> Array
    #   resp.result_items[0].intersections[0].address.secondary_address_components[0].number #=> String
    #   resp.result_items[0].intersections[0].position #=> Array
    #   resp.result_items[0].intersections[0].position[0] #=> Float
    #   resp.result_items[0].intersections[0].distance #=> Integer
    #   resp.result_items[0].intersections[0].route_distance #=> Integer
    #   resp.result_items[0].intersections[0].map_view #=> Array
    #   resp.result_items[0].intersections[0].map_view[0] #=> Float
    #   resp.result_items[0].intersections[0].access_points #=> Array
    #   resp.result_items[0].intersections[0].access_points[0].position #=> Array
    #   resp.result_items[0].intersections[0].access_points[0].position[0] #=> Float
    #   resp.result_items[0].main_address.place_id #=> String
    #   resp.result_items[0].main_address.place_type #=> String, one of "Country", "Region", "SubRegion", "Locality", "District", "SubDistrict", "PostalCode", "Block", "SubBlock", "Intersection", "Street", "PointOfInterest", "PointAddress", "InterpolatedAddress", "SecondaryAddress"
    #   resp.result_items[0].main_address.title #=> String
    #   resp.result_items[0].main_address.address.label #=> String
    #   resp.result_items[0].main_address.address.country.code_2 #=> String
    #   resp.result_items[0].main_address.address.country.code_3 #=> String
    #   resp.result_items[0].main_address.address.country.name #=> String
    #   resp.result_items[0].main_address.address.region.code #=> String
    #   resp.result_items[0].main_address.address.region.name #=> String
    #   resp.result_items[0].main_address.address.sub_region.code #=> String
    #   resp.result_items[0].main_address.address.sub_region.name #=> String
    #   resp.result_items[0].main_address.address.locality #=> String
    #   resp.result_items[0].main_address.address.district #=> String
    #   resp.result_items[0].main_address.address.sub_district #=> String
    #   resp.result_items[0].main_address.address.postal_code #=> String
    #   resp.result_items[0].main_address.address.block #=> String
    #   resp.result_items[0].main_address.address.sub_block #=> String
    #   resp.result_items[0].main_address.address.intersection #=> Array
    #   resp.result_items[0].main_address.address.intersection[0] #=> String
    #   resp.result_items[0].main_address.address.street #=> String
    #   resp.result_items[0].main_address.address.street_components #=> Array
    #   resp.result_items[0].main_address.address.street_components[0].base_name #=> String
    #   resp.result_items[0].main_address.address.street_components[0].type #=> String
    #   resp.result_items[0].main_address.address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.result_items[0].main_address.address.street_components[0].type_separator #=> String
    #   resp.result_items[0].main_address.address.street_components[0].prefix #=> String
    #   resp.result_items[0].main_address.address.street_components[0].suffix #=> String
    #   resp.result_items[0].main_address.address.street_components[0].direction #=> String
    #   resp.result_items[0].main_address.address.street_components[0].language #=> String
    #   resp.result_items[0].main_address.address.address_number #=> String
    #   resp.result_items[0].main_address.address.building #=> String
    #   resp.result_items[0].main_address.address.secondary_address_components #=> Array
    #   resp.result_items[0].main_address.address.secondary_address_components[0].number #=> String
    #   resp.result_items[0].main_address.position #=> Array
    #   resp.result_items[0].main_address.position[0] #=> Float
    #   resp.result_items[0].main_address.access_points #=> Array
    #   resp.result_items[0].main_address.access_points[0].position #=> Array
    #   resp.result_items[0].main_address.access_points[0].position[0] #=> Float
    #   resp.result_items[0].secondary_addresses #=> Array
    #   resp.result_items[0].secondary_addresses[0].place_id #=> String
    #   resp.result_items[0].secondary_addresses[0].place_type #=> String, one of "Country", "Region", "SubRegion", "Locality", "District", "SubDistrict", "PostalCode", "Block", "SubBlock", "Intersection", "Street", "PointOfInterest", "PointAddress", "InterpolatedAddress", "SecondaryAddress"
    #   resp.result_items[0].secondary_addresses[0].title #=> String
    #   resp.result_items[0].secondary_addresses[0].address.label #=> String
    #   resp.result_items[0].secondary_addresses[0].address.country.code_2 #=> String
    #   resp.result_items[0].secondary_addresses[0].address.country.code_3 #=> String
    #   resp.result_items[0].secondary_addresses[0].address.country.name #=> String
    #   resp.result_items[0].secondary_addresses[0].address.region.code #=> String
    #   resp.result_items[0].secondary_addresses[0].address.region.name #=> String
    #   resp.result_items[0].secondary_addresses[0].address.sub_region.code #=> String
    #   resp.result_items[0].secondary_addresses[0].address.sub_region.name #=> String
    #   resp.result_items[0].secondary_addresses[0].address.locality #=> String
    #   resp.result_items[0].secondary_addresses[0].address.district #=> String
    #   resp.result_items[0].secondary_addresses[0].address.sub_district #=> String
    #   resp.result_items[0].secondary_addresses[0].address.postal_code #=> String
    #   resp.result_items[0].secondary_addresses[0].address.block #=> String
    #   resp.result_items[0].secondary_addresses[0].address.sub_block #=> String
    #   resp.result_items[0].secondary_addresses[0].address.intersection #=> Array
    #   resp.result_items[0].secondary_addresses[0].address.intersection[0] #=> String
    #   resp.result_items[0].secondary_addresses[0].address.street #=> String
    #   resp.result_items[0].secondary_addresses[0].address.street_components #=> Array
    #   resp.result_items[0].secondary_addresses[0].address.street_components[0].base_name #=> String
    #   resp.result_items[0].secondary_addresses[0].address.street_components[0].type #=> String
    #   resp.result_items[0].secondary_addresses[0].address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.result_items[0].secondary_addresses[0].address.street_components[0].type_separator #=> String
    #   resp.result_items[0].secondary_addresses[0].address.street_components[0].prefix #=> String
    #   resp.result_items[0].secondary_addresses[0].address.street_components[0].suffix #=> String
    #   resp.result_items[0].secondary_addresses[0].address.street_components[0].direction #=> String
    #   resp.result_items[0].secondary_addresses[0].address.street_components[0].language #=> String
    #   resp.result_items[0].secondary_addresses[0].address.address_number #=> String
    #   resp.result_items[0].secondary_addresses[0].address.building #=> String
    #   resp.result_items[0].secondary_addresses[0].address.secondary_address_components #=> Array
    #   resp.result_items[0].secondary_addresses[0].address.secondary_address_components[0].number #=> String
    #   resp.result_items[0].secondary_addresses[0].position #=> Array
    #   resp.result_items[0].secondary_addresses[0].position[0] #=> Float
    #   resp.result_items[0].secondary_addresses[0].access_points #=> Array
    #   resp.result_items[0].secondary_addresses[0].access_points[0].position #=> Array
    #   resp.result_items[0].secondary_addresses[0].access_points[0].position[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/Geocode AWS API Documentation
    #
    # @overload geocode(params = {})
    # @param [Hash] params ({})
    def geocode(params = {}, options = {})
      req = build_request(:geocode, params)
      req.send_request(options)
    end

    # `GetPlace` finds a place by its unique ID. A `PlaceId` is returned by
    # other place operations.
    #
    # @option params [required, String] :place_id
    #   The `PlaceId` of the place you wish to receive the information for.
    #
    # @option params [Array<String>] :additional_features
    #   A list of optional additional parameters such as time zone that can be
    #   requested for each result.
    #
    # @option params [String] :language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #
    # @option params [String] :political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #
    # @option params [String] :intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #
    #   <note markdown="1"> Storing the response of an GetPlace query is required to comply with
    #   service terms, but charged at a higher cost per request. Please review
    #   the [user agreement][1] and [service pricing structure][2] to
    #   determine the correct setting for your use case.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/sla/
    #   [2]: https://aws.amazon.com/location/pricing/
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @return [Types::GetPlaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlaceResponse#place_id #place_id} => String
    #   * {Types::GetPlaceResponse#place_type #place_type} => String
    #   * {Types::GetPlaceResponse#title #title} => String
    #   * {Types::GetPlaceResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::GetPlaceResponse#address #address} => Types::Address
    #   * {Types::GetPlaceResponse#address_number_corrected #address_number_corrected} => Boolean
    #   * {Types::GetPlaceResponse#postal_code_details #postal_code_details} => Array&lt;Types::PostalCodeDetails&gt;
    #   * {Types::GetPlaceResponse#position #position} => Array&lt;Float&gt;
    #   * {Types::GetPlaceResponse#map_view #map_view} => Array&lt;Float&gt;
    #   * {Types::GetPlaceResponse#categories #categories} => Array&lt;Types::Category&gt;
    #   * {Types::GetPlaceResponse#food_types #food_types} => Array&lt;Types::FoodType&gt;
    #   * {Types::GetPlaceResponse#business_chains #business_chains} => Array&lt;Types::BusinessChain&gt;
    #   * {Types::GetPlaceResponse#contacts #contacts} => Types::Contacts
    #   * {Types::GetPlaceResponse#opening_hours #opening_hours} => Array&lt;Types::OpeningHours&gt;
    #   * {Types::GetPlaceResponse#access_points #access_points} => Array&lt;Types::AccessPoint&gt;
    #   * {Types::GetPlaceResponse#access_restrictions #access_restrictions} => Array&lt;Types::AccessRestriction&gt;
    #   * {Types::GetPlaceResponse#time_zone #time_zone} => Types::TimeZone
    #   * {Types::GetPlaceResponse#political_view #political_view} => String
    #   * {Types::GetPlaceResponse#phonemes #phonemes} => Types::PhonemeDetails
    #   * {Types::GetPlaceResponse#main_address #main_address} => Types::RelatedPlace
    #   * {Types::GetPlaceResponse#secondary_addresses #secondary_addresses} => Array&lt;Types::RelatedPlace&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_place({
    #     place_id: "GetPlaceRequestPlaceIdString", # required
    #     additional_features: ["TimeZone"], # accepts TimeZone, Phonemes, Access, Contact, SecondaryAddresses
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "SingleUse", # accepts SingleUse, Storage
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.place_id #=> String
    #   resp.place_type #=> String, one of "Country", "Region", "SubRegion", "Locality", "District", "SubDistrict", "PostalCode", "Block", "SubBlock", "Intersection", "Street", "PointOfInterest", "PointAddress", "InterpolatedAddress", "SecondaryAddress"
    #   resp.title #=> String
    #   resp.pricing_bucket #=> String
    #   resp.address.label #=> String
    #   resp.address.country.code_2 #=> String
    #   resp.address.country.code_3 #=> String
    #   resp.address.country.name #=> String
    #   resp.address.region.code #=> String
    #   resp.address.region.name #=> String
    #   resp.address.sub_region.code #=> String
    #   resp.address.sub_region.name #=> String
    #   resp.address.locality #=> String
    #   resp.address.district #=> String
    #   resp.address.sub_district #=> String
    #   resp.address.postal_code #=> String
    #   resp.address.block #=> String
    #   resp.address.sub_block #=> String
    #   resp.address.intersection #=> Array
    #   resp.address.intersection[0] #=> String
    #   resp.address.street #=> String
    #   resp.address.street_components #=> Array
    #   resp.address.street_components[0].base_name #=> String
    #   resp.address.street_components[0].type #=> String
    #   resp.address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.address.street_components[0].type_separator #=> String
    #   resp.address.street_components[0].prefix #=> String
    #   resp.address.street_components[0].suffix #=> String
    #   resp.address.street_components[0].direction #=> String
    #   resp.address.street_components[0].language #=> String
    #   resp.address.address_number #=> String
    #   resp.address.building #=> String
    #   resp.address.secondary_address_components #=> Array
    #   resp.address.secondary_address_components[0].number #=> String
    #   resp.address_number_corrected #=> Boolean
    #   resp.postal_code_details #=> Array
    #   resp.postal_code_details[0].postal_code #=> String
    #   resp.postal_code_details[0].postal_authority #=> String, one of "Usps"
    #   resp.postal_code_details[0].postal_code_type #=> String, one of "UspsZip", "UspsZipPlus4"
    #   resp.postal_code_details[0].usps_zip.zip_classification_code #=> String, one of "Military", "PostOfficeBoxes", "Unique"
    #   resp.postal_code_details[0].usps_zip_plus_4.record_type_code #=> String, one of "Firm", "General", "HighRise", "PostOfficeBox", "Rural", "Street"
    #   resp.position #=> Array
    #   resp.position[0] #=> Float
    #   resp.map_view #=> Array
    #   resp.map_view[0] #=> Float
    #   resp.categories #=> Array
    #   resp.categories[0].id #=> String
    #   resp.categories[0].name #=> String
    #   resp.categories[0].localized_name #=> String
    #   resp.categories[0].primary #=> Boolean
    #   resp.food_types #=> Array
    #   resp.food_types[0].localized_name #=> String
    #   resp.food_types[0].id #=> String
    #   resp.food_types[0].primary #=> Boolean
    #   resp.business_chains #=> Array
    #   resp.business_chains[0].name #=> String
    #   resp.business_chains[0].id #=> String
    #   resp.contacts.phones #=> Array
    #   resp.contacts.phones[0].label #=> String
    #   resp.contacts.phones[0].value #=> String
    #   resp.contacts.phones[0].categories #=> Array
    #   resp.contacts.phones[0].categories[0].id #=> String
    #   resp.contacts.phones[0].categories[0].name #=> String
    #   resp.contacts.phones[0].categories[0].localized_name #=> String
    #   resp.contacts.phones[0].categories[0].primary #=> Boolean
    #   resp.contacts.faxes #=> Array
    #   resp.contacts.faxes[0].label #=> String
    #   resp.contacts.faxes[0].value #=> String
    #   resp.contacts.faxes[0].categories #=> Array
    #   resp.contacts.faxes[0].categories[0].id #=> String
    #   resp.contacts.faxes[0].categories[0].name #=> String
    #   resp.contacts.faxes[0].categories[0].localized_name #=> String
    #   resp.contacts.faxes[0].categories[0].primary #=> Boolean
    #   resp.contacts.websites #=> Array
    #   resp.contacts.websites[0].label #=> String
    #   resp.contacts.websites[0].value #=> String
    #   resp.contacts.websites[0].categories #=> Array
    #   resp.contacts.websites[0].categories[0].id #=> String
    #   resp.contacts.websites[0].categories[0].name #=> String
    #   resp.contacts.websites[0].categories[0].localized_name #=> String
    #   resp.contacts.websites[0].categories[0].primary #=> Boolean
    #   resp.contacts.emails #=> Array
    #   resp.contacts.emails[0].label #=> String
    #   resp.contacts.emails[0].value #=> String
    #   resp.contacts.emails[0].categories #=> Array
    #   resp.contacts.emails[0].categories[0].id #=> String
    #   resp.contacts.emails[0].categories[0].name #=> String
    #   resp.contacts.emails[0].categories[0].localized_name #=> String
    #   resp.contacts.emails[0].categories[0].primary #=> Boolean
    #   resp.opening_hours #=> Array
    #   resp.opening_hours[0].display #=> Array
    #   resp.opening_hours[0].display[0] #=> String
    #   resp.opening_hours[0].open_now #=> Boolean
    #   resp.opening_hours[0].components #=> Array
    #   resp.opening_hours[0].components[0].open_time #=> String
    #   resp.opening_hours[0].components[0].open_duration #=> String
    #   resp.opening_hours[0].components[0].recurrence #=> String
    #   resp.opening_hours[0].categories #=> Array
    #   resp.opening_hours[0].categories[0].id #=> String
    #   resp.opening_hours[0].categories[0].name #=> String
    #   resp.opening_hours[0].categories[0].localized_name #=> String
    #   resp.opening_hours[0].categories[0].primary #=> Boolean
    #   resp.access_points #=> Array
    #   resp.access_points[0].position #=> Array
    #   resp.access_points[0].position[0] #=> Float
    #   resp.access_restrictions #=> Array
    #   resp.access_restrictions[0].restricted #=> Boolean
    #   resp.access_restrictions[0].categories #=> Array
    #   resp.access_restrictions[0].categories[0].id #=> String
    #   resp.access_restrictions[0].categories[0].name #=> String
    #   resp.access_restrictions[0].categories[0].localized_name #=> String
    #   resp.access_restrictions[0].categories[0].primary #=> Boolean
    #   resp.time_zone.name #=> String
    #   resp.time_zone.offset #=> String
    #   resp.time_zone.offset_seconds #=> Integer
    #   resp.political_view #=> String
    #   resp.phonemes.title #=> Array
    #   resp.phonemes.title[0].value #=> String
    #   resp.phonemes.title[0].language #=> String
    #   resp.phonemes.title[0].preferred #=> Boolean
    #   resp.phonemes.address.country #=> Array
    #   resp.phonemes.address.country[0].value #=> String
    #   resp.phonemes.address.country[0].language #=> String
    #   resp.phonemes.address.country[0].preferred #=> Boolean
    #   resp.phonemes.address.region #=> Array
    #   resp.phonemes.address.region[0].value #=> String
    #   resp.phonemes.address.region[0].language #=> String
    #   resp.phonemes.address.region[0].preferred #=> Boolean
    #   resp.phonemes.address.sub_region #=> Array
    #   resp.phonemes.address.sub_region[0].value #=> String
    #   resp.phonemes.address.sub_region[0].language #=> String
    #   resp.phonemes.address.sub_region[0].preferred #=> Boolean
    #   resp.phonemes.address.locality #=> Array
    #   resp.phonemes.address.locality[0].value #=> String
    #   resp.phonemes.address.locality[0].language #=> String
    #   resp.phonemes.address.locality[0].preferred #=> Boolean
    #   resp.phonemes.address.district #=> Array
    #   resp.phonemes.address.district[0].value #=> String
    #   resp.phonemes.address.district[0].language #=> String
    #   resp.phonemes.address.district[0].preferred #=> Boolean
    #   resp.phonemes.address.sub_district #=> Array
    #   resp.phonemes.address.sub_district[0].value #=> String
    #   resp.phonemes.address.sub_district[0].language #=> String
    #   resp.phonemes.address.sub_district[0].preferred #=> Boolean
    #   resp.phonemes.address.block #=> Array
    #   resp.phonemes.address.block[0].value #=> String
    #   resp.phonemes.address.block[0].language #=> String
    #   resp.phonemes.address.block[0].preferred #=> Boolean
    #   resp.phonemes.address.sub_block #=> Array
    #   resp.phonemes.address.sub_block[0].value #=> String
    #   resp.phonemes.address.sub_block[0].language #=> String
    #   resp.phonemes.address.sub_block[0].preferred #=> Boolean
    #   resp.phonemes.address.street #=> Array
    #   resp.phonemes.address.street[0].value #=> String
    #   resp.phonemes.address.street[0].language #=> String
    #   resp.phonemes.address.street[0].preferred #=> Boolean
    #   resp.main_address.place_id #=> String
    #   resp.main_address.place_type #=> String, one of "Country", "Region", "SubRegion", "Locality", "District", "SubDistrict", "PostalCode", "Block", "SubBlock", "Intersection", "Street", "PointOfInterest", "PointAddress", "InterpolatedAddress", "SecondaryAddress"
    #   resp.main_address.title #=> String
    #   resp.main_address.address.label #=> String
    #   resp.main_address.address.country.code_2 #=> String
    #   resp.main_address.address.country.code_3 #=> String
    #   resp.main_address.address.country.name #=> String
    #   resp.main_address.address.region.code #=> String
    #   resp.main_address.address.region.name #=> String
    #   resp.main_address.address.sub_region.code #=> String
    #   resp.main_address.address.sub_region.name #=> String
    #   resp.main_address.address.locality #=> String
    #   resp.main_address.address.district #=> String
    #   resp.main_address.address.sub_district #=> String
    #   resp.main_address.address.postal_code #=> String
    #   resp.main_address.address.block #=> String
    #   resp.main_address.address.sub_block #=> String
    #   resp.main_address.address.intersection #=> Array
    #   resp.main_address.address.intersection[0] #=> String
    #   resp.main_address.address.street #=> String
    #   resp.main_address.address.street_components #=> Array
    #   resp.main_address.address.street_components[0].base_name #=> String
    #   resp.main_address.address.street_components[0].type #=> String
    #   resp.main_address.address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.main_address.address.street_components[0].type_separator #=> String
    #   resp.main_address.address.street_components[0].prefix #=> String
    #   resp.main_address.address.street_components[0].suffix #=> String
    #   resp.main_address.address.street_components[0].direction #=> String
    #   resp.main_address.address.street_components[0].language #=> String
    #   resp.main_address.address.address_number #=> String
    #   resp.main_address.address.building #=> String
    #   resp.main_address.address.secondary_address_components #=> Array
    #   resp.main_address.address.secondary_address_components[0].number #=> String
    #   resp.main_address.position #=> Array
    #   resp.main_address.position[0] #=> Float
    #   resp.main_address.access_points #=> Array
    #   resp.main_address.access_points[0].position #=> Array
    #   resp.main_address.access_points[0].position[0] #=> Float
    #   resp.secondary_addresses #=> Array
    #   resp.secondary_addresses[0].place_id #=> String
    #   resp.secondary_addresses[0].place_type #=> String, one of "Country", "Region", "SubRegion", "Locality", "District", "SubDistrict", "PostalCode", "Block", "SubBlock", "Intersection", "Street", "PointOfInterest", "PointAddress", "InterpolatedAddress", "SecondaryAddress"
    #   resp.secondary_addresses[0].title #=> String
    #   resp.secondary_addresses[0].address.label #=> String
    #   resp.secondary_addresses[0].address.country.code_2 #=> String
    #   resp.secondary_addresses[0].address.country.code_3 #=> String
    #   resp.secondary_addresses[0].address.country.name #=> String
    #   resp.secondary_addresses[0].address.region.code #=> String
    #   resp.secondary_addresses[0].address.region.name #=> String
    #   resp.secondary_addresses[0].address.sub_region.code #=> String
    #   resp.secondary_addresses[0].address.sub_region.name #=> String
    #   resp.secondary_addresses[0].address.locality #=> String
    #   resp.secondary_addresses[0].address.district #=> String
    #   resp.secondary_addresses[0].address.sub_district #=> String
    #   resp.secondary_addresses[0].address.postal_code #=> String
    #   resp.secondary_addresses[0].address.block #=> String
    #   resp.secondary_addresses[0].address.sub_block #=> String
    #   resp.secondary_addresses[0].address.intersection #=> Array
    #   resp.secondary_addresses[0].address.intersection[0] #=> String
    #   resp.secondary_addresses[0].address.street #=> String
    #   resp.secondary_addresses[0].address.street_components #=> Array
    #   resp.secondary_addresses[0].address.street_components[0].base_name #=> String
    #   resp.secondary_addresses[0].address.street_components[0].type #=> String
    #   resp.secondary_addresses[0].address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.secondary_addresses[0].address.street_components[0].type_separator #=> String
    #   resp.secondary_addresses[0].address.street_components[0].prefix #=> String
    #   resp.secondary_addresses[0].address.street_components[0].suffix #=> String
    #   resp.secondary_addresses[0].address.street_components[0].direction #=> String
    #   resp.secondary_addresses[0].address.street_components[0].language #=> String
    #   resp.secondary_addresses[0].address.address_number #=> String
    #   resp.secondary_addresses[0].address.building #=> String
    #   resp.secondary_addresses[0].address.secondary_address_components #=> Array
    #   resp.secondary_addresses[0].address.secondary_address_components[0].number #=> String
    #   resp.secondary_addresses[0].position #=> Array
    #   resp.secondary_addresses[0].position[0] #=> Float
    #   resp.secondary_addresses[0].access_points #=> Array
    #   resp.secondary_addresses[0].access_points[0].position #=> Array
    #   resp.secondary_addresses[0].access_points[0].position[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/GetPlace AWS API Documentation
    #
    # @overload get_place(params = {})
    # @param [Hash] params ({})
    def get_place(params = {}, options = {})
      req = build_request(:get_place, params)
      req.send_request(options)
    end

    # `ReverseGeocode` converts geographic coordinates into a human-readable
    # address or place. You can obtain address component, and other related
    # information such as place type, category, street information. The
    # Reverse Geocode API supports filtering to on place type so that you
    # can refine result based on your need. Also, The Reverse Geocode API
    # can also provide additional features such as time zone information and
    # the inclusion of political views.
    #
    # @option params [required, Array<Float>] :query_position
    #   The position, in `[lng, lat]` for which you are querying nearby
    #   results for. Results closer to the position will be ranked higher then
    #   results further away from the position
    #
    # @option params [Integer] :query_radius
    #   The maximum distance in meters from the QueryPosition from which a
    #   result will be returned.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of results returned in a single call.
    #
    # @option params [Types::ReverseGeocodeFilter] :filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must possess in order to be returned as a result.
    #
    # @option params [Array<String>] :additional_features
    #   A list of optional additional parameters, such as time zone that can
    #   be requested for each result.
    #
    # @option params [String] :language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #
    # @option params [String] :political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #
    # @option params [String] :intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #
    #   <note markdown="1"> Storing the response of an ReverseGeocode query is required to comply
    #   with service terms, but charged at a higher cost per request. Please
    #   review the [user agreement][1] and [service pricing structure][2] to
    #   determine the correct setting for your use case.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/sla/
    #   [2]: https://aws.amazon.com/location/pricing/
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @return [Types::ReverseGeocodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReverseGeocodeResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::ReverseGeocodeResponse#result_items #result_items} => Array&lt;Types::ReverseGeocodeResultItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reverse_geocode({
    #     query_position: [1.0], # required
    #     query_radius: 1,
    #     max_results: 1,
    #     filter: {
    #       include_place_types: ["Locality"], # accepts Locality, Intersection, Street, PointAddress, InterpolatedAddress
    #     },
    #     additional_features: ["TimeZone"], # accepts TimeZone, Access, Intersections
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "SingleUse", # accepts SingleUse, Storage
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.pricing_bucket #=> String
    #   resp.result_items #=> Array
    #   resp.result_items[0].place_id #=> String
    #   resp.result_items[0].place_type #=> String, one of "Country", "Region", "SubRegion", "Locality", "District", "SubDistrict", "PostalCode", "Block", "SubBlock", "Intersection", "Street", "PointOfInterest", "PointAddress", "InterpolatedAddress", "SecondaryAddress"
    #   resp.result_items[0].title #=> String
    #   resp.result_items[0].address.label #=> String
    #   resp.result_items[0].address.country.code_2 #=> String
    #   resp.result_items[0].address.country.code_3 #=> String
    #   resp.result_items[0].address.country.name #=> String
    #   resp.result_items[0].address.region.code #=> String
    #   resp.result_items[0].address.region.name #=> String
    #   resp.result_items[0].address.sub_region.code #=> String
    #   resp.result_items[0].address.sub_region.name #=> String
    #   resp.result_items[0].address.locality #=> String
    #   resp.result_items[0].address.district #=> String
    #   resp.result_items[0].address.sub_district #=> String
    #   resp.result_items[0].address.postal_code #=> String
    #   resp.result_items[0].address.block #=> String
    #   resp.result_items[0].address.sub_block #=> String
    #   resp.result_items[0].address.intersection #=> Array
    #   resp.result_items[0].address.intersection[0] #=> String
    #   resp.result_items[0].address.street #=> String
    #   resp.result_items[0].address.street_components #=> Array
    #   resp.result_items[0].address.street_components[0].base_name #=> String
    #   resp.result_items[0].address.street_components[0].type #=> String
    #   resp.result_items[0].address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.result_items[0].address.street_components[0].type_separator #=> String
    #   resp.result_items[0].address.street_components[0].prefix #=> String
    #   resp.result_items[0].address.street_components[0].suffix #=> String
    #   resp.result_items[0].address.street_components[0].direction #=> String
    #   resp.result_items[0].address.street_components[0].language #=> String
    #   resp.result_items[0].address.address_number #=> String
    #   resp.result_items[0].address.building #=> String
    #   resp.result_items[0].address.secondary_address_components #=> Array
    #   resp.result_items[0].address.secondary_address_components[0].number #=> String
    #   resp.result_items[0].address_number_corrected #=> Boolean
    #   resp.result_items[0].postal_code_details #=> Array
    #   resp.result_items[0].postal_code_details[0].postal_code #=> String
    #   resp.result_items[0].postal_code_details[0].postal_authority #=> String, one of "Usps"
    #   resp.result_items[0].postal_code_details[0].postal_code_type #=> String, one of "UspsZip", "UspsZipPlus4"
    #   resp.result_items[0].postal_code_details[0].usps_zip.zip_classification_code #=> String, one of "Military", "PostOfficeBoxes", "Unique"
    #   resp.result_items[0].postal_code_details[0].usps_zip_plus_4.record_type_code #=> String, one of "Firm", "General", "HighRise", "PostOfficeBox", "Rural", "Street"
    #   resp.result_items[0].position #=> Array
    #   resp.result_items[0].position[0] #=> Float
    #   resp.result_items[0].distance #=> Integer
    #   resp.result_items[0].map_view #=> Array
    #   resp.result_items[0].map_view[0] #=> Float
    #   resp.result_items[0].categories #=> Array
    #   resp.result_items[0].categories[0].id #=> String
    #   resp.result_items[0].categories[0].name #=> String
    #   resp.result_items[0].categories[0].localized_name #=> String
    #   resp.result_items[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].food_types #=> Array
    #   resp.result_items[0].food_types[0].localized_name #=> String
    #   resp.result_items[0].food_types[0].id #=> String
    #   resp.result_items[0].food_types[0].primary #=> Boolean
    #   resp.result_items[0].access_points #=> Array
    #   resp.result_items[0].access_points[0].position #=> Array
    #   resp.result_items[0].access_points[0].position[0] #=> Float
    #   resp.result_items[0].time_zone.name #=> String
    #   resp.result_items[0].time_zone.offset #=> String
    #   resp.result_items[0].time_zone.offset_seconds #=> Integer
    #   resp.result_items[0].political_view #=> String
    #   resp.result_items[0].intersections #=> Array
    #   resp.result_items[0].intersections[0].place_id #=> String
    #   resp.result_items[0].intersections[0].title #=> String
    #   resp.result_items[0].intersections[0].address.label #=> String
    #   resp.result_items[0].intersections[0].address.country.code_2 #=> String
    #   resp.result_items[0].intersections[0].address.country.code_3 #=> String
    #   resp.result_items[0].intersections[0].address.country.name #=> String
    #   resp.result_items[0].intersections[0].address.region.code #=> String
    #   resp.result_items[0].intersections[0].address.region.name #=> String
    #   resp.result_items[0].intersections[0].address.sub_region.code #=> String
    #   resp.result_items[0].intersections[0].address.sub_region.name #=> String
    #   resp.result_items[0].intersections[0].address.locality #=> String
    #   resp.result_items[0].intersections[0].address.district #=> String
    #   resp.result_items[0].intersections[0].address.sub_district #=> String
    #   resp.result_items[0].intersections[0].address.postal_code #=> String
    #   resp.result_items[0].intersections[0].address.block #=> String
    #   resp.result_items[0].intersections[0].address.sub_block #=> String
    #   resp.result_items[0].intersections[0].address.intersection #=> Array
    #   resp.result_items[0].intersections[0].address.intersection[0] #=> String
    #   resp.result_items[0].intersections[0].address.street #=> String
    #   resp.result_items[0].intersections[0].address.street_components #=> Array
    #   resp.result_items[0].intersections[0].address.street_components[0].base_name #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].type #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.result_items[0].intersections[0].address.street_components[0].type_separator #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].prefix #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].suffix #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].direction #=> String
    #   resp.result_items[0].intersections[0].address.street_components[0].language #=> String
    #   resp.result_items[0].intersections[0].address.address_number #=> String
    #   resp.result_items[0].intersections[0].address.building #=> String
    #   resp.result_items[0].intersections[0].address.secondary_address_components #=> Array
    #   resp.result_items[0].intersections[0].address.secondary_address_components[0].number #=> String
    #   resp.result_items[0].intersections[0].position #=> Array
    #   resp.result_items[0].intersections[0].position[0] #=> Float
    #   resp.result_items[0].intersections[0].distance #=> Integer
    #   resp.result_items[0].intersections[0].route_distance #=> Integer
    #   resp.result_items[0].intersections[0].map_view #=> Array
    #   resp.result_items[0].intersections[0].map_view[0] #=> Float
    #   resp.result_items[0].intersections[0].access_points #=> Array
    #   resp.result_items[0].intersections[0].access_points[0].position #=> Array
    #   resp.result_items[0].intersections[0].access_points[0].position[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/ReverseGeocode AWS API Documentation
    #
    # @overload reverse_geocode(params = {})
    # @param [Hash] params ({})
    def reverse_geocode(params = {}, options = {})
      req = build_request(:reverse_geocode, params)
      req.send_request(options)
    end

    # `SearchNearby` queries for points of interest within a radius from a
    # central coordinates, returning place results with optional filters
    # such as categories, business chains, food types and more. The API
    # returns details such as a place name, address, phone, category, food
    # type, contact, opening hours. Also, the API can return phonemes, time
    # zones and more based on requested parameters.
    #
    # @option params [required, Array<Float>] :query_position
    #   The position, in `[lng, lat]` for which you are querying nearby
    #   results for. Results closer to the position will be ranked higher then
    #   results further away from the position
    #
    # @option params [Integer] :query_radius
    #   The maximum distance in meters from the QueryPosition from which a
    #   result will be returned.
    #
    #   <note markdown="1"> The fields `QueryText`, and `QueryID` are mutually exclusive.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of results returned in a single call.
    #
    # @option params [Types::SearchNearbyFilter] :filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must possess in order to be returned as a result.
    #
    # @option params [Array<String>] :additional_features
    #   A list of optional additional parameters, such as time zone, that can
    #   be requested for each result.
    #
    # @option params [String] :language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #
    # @option params [String] :political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #
    # @option params [String] :intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #
    #   <note markdown="1"> Storing the response of an SearchNearby query is required to comply
    #   with service terms, but charged at a higher cost per request. Please
    #   review the [user agreement][1] and [service pricing structure][2] to
    #   determine the correct setting for your use case.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/sla/
    #   [2]: https://aws.amazon.com/location/pricing/
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @return [Types::SearchNearbyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchNearbyResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::SearchNearbyResponse#result_items #result_items} => Array&lt;Types::SearchNearbyResultItem&gt;
    #   * {Types::SearchNearbyResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_nearby({
    #     query_position: [1.0], # required
    #     query_radius: 1,
    #     max_results: 1,
    #     filter: {
    #       bounding_box: [1.0],
    #       include_countries: ["CountryCode"],
    #       include_categories: ["FilterCategoryListMemberString"],
    #       exclude_categories: ["FilterCategoryListMemberString"],
    #       include_business_chains: ["FilterBusinessChainListMemberString"],
    #       exclude_business_chains: ["FilterBusinessChainListMemberString"],
    #       include_food_types: ["FilterFoodTypeListMemberString"],
    #       exclude_food_types: ["FilterFoodTypeListMemberString"],
    #     },
    #     additional_features: ["TimeZone"], # accepts TimeZone, Phonemes, Access, Contact
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "SingleUse", # accepts SingleUse, Storage
    #     next_token: "Token",
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.pricing_bucket #=> String
    #   resp.result_items #=> Array
    #   resp.result_items[0].place_id #=> String
    #   resp.result_items[0].place_type #=> String, one of "Country", "Region", "SubRegion", "Locality", "District", "SubDistrict", "PostalCode", "Block", "SubBlock", "Intersection", "Street", "PointOfInterest", "PointAddress", "InterpolatedAddress", "SecondaryAddress"
    #   resp.result_items[0].title #=> String
    #   resp.result_items[0].address.label #=> String
    #   resp.result_items[0].address.country.code_2 #=> String
    #   resp.result_items[0].address.country.code_3 #=> String
    #   resp.result_items[0].address.country.name #=> String
    #   resp.result_items[0].address.region.code #=> String
    #   resp.result_items[0].address.region.name #=> String
    #   resp.result_items[0].address.sub_region.code #=> String
    #   resp.result_items[0].address.sub_region.name #=> String
    #   resp.result_items[0].address.locality #=> String
    #   resp.result_items[0].address.district #=> String
    #   resp.result_items[0].address.sub_district #=> String
    #   resp.result_items[0].address.postal_code #=> String
    #   resp.result_items[0].address.block #=> String
    #   resp.result_items[0].address.sub_block #=> String
    #   resp.result_items[0].address.intersection #=> Array
    #   resp.result_items[0].address.intersection[0] #=> String
    #   resp.result_items[0].address.street #=> String
    #   resp.result_items[0].address.street_components #=> Array
    #   resp.result_items[0].address.street_components[0].base_name #=> String
    #   resp.result_items[0].address.street_components[0].type #=> String
    #   resp.result_items[0].address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.result_items[0].address.street_components[0].type_separator #=> String
    #   resp.result_items[0].address.street_components[0].prefix #=> String
    #   resp.result_items[0].address.street_components[0].suffix #=> String
    #   resp.result_items[0].address.street_components[0].direction #=> String
    #   resp.result_items[0].address.street_components[0].language #=> String
    #   resp.result_items[0].address.address_number #=> String
    #   resp.result_items[0].address.building #=> String
    #   resp.result_items[0].address.secondary_address_components #=> Array
    #   resp.result_items[0].address.secondary_address_components[0].number #=> String
    #   resp.result_items[0].address_number_corrected #=> Boolean
    #   resp.result_items[0].position #=> Array
    #   resp.result_items[0].position[0] #=> Float
    #   resp.result_items[0].distance #=> Integer
    #   resp.result_items[0].map_view #=> Array
    #   resp.result_items[0].map_view[0] #=> Float
    #   resp.result_items[0].categories #=> Array
    #   resp.result_items[0].categories[0].id #=> String
    #   resp.result_items[0].categories[0].name #=> String
    #   resp.result_items[0].categories[0].localized_name #=> String
    #   resp.result_items[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].food_types #=> Array
    #   resp.result_items[0].food_types[0].localized_name #=> String
    #   resp.result_items[0].food_types[0].id #=> String
    #   resp.result_items[0].food_types[0].primary #=> Boolean
    #   resp.result_items[0].business_chains #=> Array
    #   resp.result_items[0].business_chains[0].name #=> String
    #   resp.result_items[0].business_chains[0].id #=> String
    #   resp.result_items[0].contacts.phones #=> Array
    #   resp.result_items[0].contacts.phones[0].label #=> String
    #   resp.result_items[0].contacts.phones[0].value #=> String
    #   resp.result_items[0].contacts.phones[0].categories #=> Array
    #   resp.result_items[0].contacts.phones[0].categories[0].id #=> String
    #   resp.result_items[0].contacts.phones[0].categories[0].name #=> String
    #   resp.result_items[0].contacts.phones[0].categories[0].localized_name #=> String
    #   resp.result_items[0].contacts.phones[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].contacts.faxes #=> Array
    #   resp.result_items[0].contacts.faxes[0].label #=> String
    #   resp.result_items[0].contacts.faxes[0].value #=> String
    #   resp.result_items[0].contacts.faxes[0].categories #=> Array
    #   resp.result_items[0].contacts.faxes[0].categories[0].id #=> String
    #   resp.result_items[0].contacts.faxes[0].categories[0].name #=> String
    #   resp.result_items[0].contacts.faxes[0].categories[0].localized_name #=> String
    #   resp.result_items[0].contacts.faxes[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].contacts.websites #=> Array
    #   resp.result_items[0].contacts.websites[0].label #=> String
    #   resp.result_items[0].contacts.websites[0].value #=> String
    #   resp.result_items[0].contacts.websites[0].categories #=> Array
    #   resp.result_items[0].contacts.websites[0].categories[0].id #=> String
    #   resp.result_items[0].contacts.websites[0].categories[0].name #=> String
    #   resp.result_items[0].contacts.websites[0].categories[0].localized_name #=> String
    #   resp.result_items[0].contacts.websites[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].contacts.emails #=> Array
    #   resp.result_items[0].contacts.emails[0].label #=> String
    #   resp.result_items[0].contacts.emails[0].value #=> String
    #   resp.result_items[0].contacts.emails[0].categories #=> Array
    #   resp.result_items[0].contacts.emails[0].categories[0].id #=> String
    #   resp.result_items[0].contacts.emails[0].categories[0].name #=> String
    #   resp.result_items[0].contacts.emails[0].categories[0].localized_name #=> String
    #   resp.result_items[0].contacts.emails[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].opening_hours #=> Array
    #   resp.result_items[0].opening_hours[0].display #=> Array
    #   resp.result_items[0].opening_hours[0].display[0] #=> String
    #   resp.result_items[0].opening_hours[0].open_now #=> Boolean
    #   resp.result_items[0].opening_hours[0].components #=> Array
    #   resp.result_items[0].opening_hours[0].components[0].open_time #=> String
    #   resp.result_items[0].opening_hours[0].components[0].open_duration #=> String
    #   resp.result_items[0].opening_hours[0].components[0].recurrence #=> String
    #   resp.result_items[0].opening_hours[0].categories #=> Array
    #   resp.result_items[0].opening_hours[0].categories[0].id #=> String
    #   resp.result_items[0].opening_hours[0].categories[0].name #=> String
    #   resp.result_items[0].opening_hours[0].categories[0].localized_name #=> String
    #   resp.result_items[0].opening_hours[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].access_points #=> Array
    #   resp.result_items[0].access_points[0].position #=> Array
    #   resp.result_items[0].access_points[0].position[0] #=> Float
    #   resp.result_items[0].access_restrictions #=> Array
    #   resp.result_items[0].access_restrictions[0].restricted #=> Boolean
    #   resp.result_items[0].access_restrictions[0].categories #=> Array
    #   resp.result_items[0].access_restrictions[0].categories[0].id #=> String
    #   resp.result_items[0].access_restrictions[0].categories[0].name #=> String
    #   resp.result_items[0].access_restrictions[0].categories[0].localized_name #=> String
    #   resp.result_items[0].access_restrictions[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].time_zone.name #=> String
    #   resp.result_items[0].time_zone.offset #=> String
    #   resp.result_items[0].time_zone.offset_seconds #=> Integer
    #   resp.result_items[0].political_view #=> String
    #   resp.result_items[0].phonemes.title #=> Array
    #   resp.result_items[0].phonemes.title[0].value #=> String
    #   resp.result_items[0].phonemes.title[0].language #=> String
    #   resp.result_items[0].phonemes.title[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.country #=> Array
    #   resp.result_items[0].phonemes.address.country[0].value #=> String
    #   resp.result_items[0].phonemes.address.country[0].language #=> String
    #   resp.result_items[0].phonemes.address.country[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.region #=> Array
    #   resp.result_items[0].phonemes.address.region[0].value #=> String
    #   resp.result_items[0].phonemes.address.region[0].language #=> String
    #   resp.result_items[0].phonemes.address.region[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.sub_region #=> Array
    #   resp.result_items[0].phonemes.address.sub_region[0].value #=> String
    #   resp.result_items[0].phonemes.address.sub_region[0].language #=> String
    #   resp.result_items[0].phonemes.address.sub_region[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.locality #=> Array
    #   resp.result_items[0].phonemes.address.locality[0].value #=> String
    #   resp.result_items[0].phonemes.address.locality[0].language #=> String
    #   resp.result_items[0].phonemes.address.locality[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.district #=> Array
    #   resp.result_items[0].phonemes.address.district[0].value #=> String
    #   resp.result_items[0].phonemes.address.district[0].language #=> String
    #   resp.result_items[0].phonemes.address.district[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.sub_district #=> Array
    #   resp.result_items[0].phonemes.address.sub_district[0].value #=> String
    #   resp.result_items[0].phonemes.address.sub_district[0].language #=> String
    #   resp.result_items[0].phonemes.address.sub_district[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.block #=> Array
    #   resp.result_items[0].phonemes.address.block[0].value #=> String
    #   resp.result_items[0].phonemes.address.block[0].language #=> String
    #   resp.result_items[0].phonemes.address.block[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.sub_block #=> Array
    #   resp.result_items[0].phonemes.address.sub_block[0].value #=> String
    #   resp.result_items[0].phonemes.address.sub_block[0].language #=> String
    #   resp.result_items[0].phonemes.address.sub_block[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.street #=> Array
    #   resp.result_items[0].phonemes.address.street[0].value #=> String
    #   resp.result_items[0].phonemes.address.street[0].language #=> String
    #   resp.result_items[0].phonemes.address.street[0].preferred #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SearchNearby AWS API Documentation
    #
    # @overload search_nearby(params = {})
    # @param [Hash] params ({})
    def search_nearby(params = {}, options = {})
      req = build_request(:search_nearby, params)
      req.send_request(options)
    end

    # `SearchText` searches for geocode and place information. You can then
    # complete a follow-up query suggested from the `Suggest` API via a
    # query id.
    #
    # @option params [String] :query_text
    #   The free-form text query to match addresses against. This is usually a
    #   partially typed address from an end user in an address box or form.
    #
    #   <note markdown="1"> The fields `QueryText`, and `QueryID` are mutually exclusive.
    #
    #    </note>
    #
    # @option params [String] :query_id
    #   The query Id returned by the suggest API. If passed in the request,
    #   the SearchText API will preform a SearchText query with the improved
    #   query terms for the original query made to the suggest API.
    #
    #   <note markdown="1"> The fields `QueryText`, and `QueryID` are mutually exclusive.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of results returned in a single call.
    #
    # @option params [Array<Float>] :bias_position
    #   The position, in longitude and latitude, that the results should be
    #   close to. Typically, place results returned are ranked higher the
    #   closer they are to this position. Stored in `[lng, lat]` and in the
    #   WSG84 format.
    #
    #   <note markdown="1"> The fields `BiasPosition`, `FilterBoundingBox`, and `FilterCircle` are
    #   mutually exclusive.
    #
    #    </note>
    #
    # @option params [Types::SearchTextFilter] :filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must possess in order to be returned as a result.
    #
    # @option params [Array<String>] :additional_features
    #   A list of optional additional parameters, such as time zone, that can
    #   be requested for each result.
    #
    # @option params [String] :language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #
    # @option params [String] :political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #
    # @option params [String] :intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #
    #   <note markdown="1"> Storing the response of an SearchText query is required to comply with
    #   service terms, but charged at a higher cost per request. Please review
    #   the [user agreement][1] and [service pricing structure][2] to
    #   determine the correct setting for your use case.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/sla/
    #   [2]: https://aws.amazon.com/location/pricing/
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @return [Types::SearchTextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchTextResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::SearchTextResponse#result_items #result_items} => Array&lt;Types::SearchTextResultItem&gt;
    #   * {Types::SearchTextResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_text({
    #     query_text: "SearchTextRequestQueryTextString",
    #     query_id: "SearchTextRequestQueryIdString",
    #     max_results: 1,
    #     bias_position: [1.0],
    #     filter: {
    #       bounding_box: [1.0],
    #       circle: {
    #         center: [1.0], # required
    #         radius: 1, # required
    #       },
    #       include_countries: ["CountryCode"],
    #     },
    #     additional_features: ["TimeZone"], # accepts TimeZone, Phonemes, Access, Contact
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "SingleUse", # accepts SingleUse, Storage
    #     next_token: "Token",
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.pricing_bucket #=> String
    #   resp.result_items #=> Array
    #   resp.result_items[0].place_id #=> String
    #   resp.result_items[0].place_type #=> String, one of "Country", "Region", "SubRegion", "Locality", "District", "SubDistrict", "PostalCode", "Block", "SubBlock", "Intersection", "Street", "PointOfInterest", "PointAddress", "InterpolatedAddress", "SecondaryAddress"
    #   resp.result_items[0].title #=> String
    #   resp.result_items[0].address.label #=> String
    #   resp.result_items[0].address.country.code_2 #=> String
    #   resp.result_items[0].address.country.code_3 #=> String
    #   resp.result_items[0].address.country.name #=> String
    #   resp.result_items[0].address.region.code #=> String
    #   resp.result_items[0].address.region.name #=> String
    #   resp.result_items[0].address.sub_region.code #=> String
    #   resp.result_items[0].address.sub_region.name #=> String
    #   resp.result_items[0].address.locality #=> String
    #   resp.result_items[0].address.district #=> String
    #   resp.result_items[0].address.sub_district #=> String
    #   resp.result_items[0].address.postal_code #=> String
    #   resp.result_items[0].address.block #=> String
    #   resp.result_items[0].address.sub_block #=> String
    #   resp.result_items[0].address.intersection #=> Array
    #   resp.result_items[0].address.intersection[0] #=> String
    #   resp.result_items[0].address.street #=> String
    #   resp.result_items[0].address.street_components #=> Array
    #   resp.result_items[0].address.street_components[0].base_name #=> String
    #   resp.result_items[0].address.street_components[0].type #=> String
    #   resp.result_items[0].address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.result_items[0].address.street_components[0].type_separator #=> String
    #   resp.result_items[0].address.street_components[0].prefix #=> String
    #   resp.result_items[0].address.street_components[0].suffix #=> String
    #   resp.result_items[0].address.street_components[0].direction #=> String
    #   resp.result_items[0].address.street_components[0].language #=> String
    #   resp.result_items[0].address.address_number #=> String
    #   resp.result_items[0].address.building #=> String
    #   resp.result_items[0].address.secondary_address_components #=> Array
    #   resp.result_items[0].address.secondary_address_components[0].number #=> String
    #   resp.result_items[0].address_number_corrected #=> Boolean
    #   resp.result_items[0].position #=> Array
    #   resp.result_items[0].position[0] #=> Float
    #   resp.result_items[0].distance #=> Integer
    #   resp.result_items[0].map_view #=> Array
    #   resp.result_items[0].map_view[0] #=> Float
    #   resp.result_items[0].categories #=> Array
    #   resp.result_items[0].categories[0].id #=> String
    #   resp.result_items[0].categories[0].name #=> String
    #   resp.result_items[0].categories[0].localized_name #=> String
    #   resp.result_items[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].food_types #=> Array
    #   resp.result_items[0].food_types[0].localized_name #=> String
    #   resp.result_items[0].food_types[0].id #=> String
    #   resp.result_items[0].food_types[0].primary #=> Boolean
    #   resp.result_items[0].business_chains #=> Array
    #   resp.result_items[0].business_chains[0].name #=> String
    #   resp.result_items[0].business_chains[0].id #=> String
    #   resp.result_items[0].contacts.phones #=> Array
    #   resp.result_items[0].contacts.phones[0].label #=> String
    #   resp.result_items[0].contacts.phones[0].value #=> String
    #   resp.result_items[0].contacts.phones[0].categories #=> Array
    #   resp.result_items[0].contacts.phones[0].categories[0].id #=> String
    #   resp.result_items[0].contacts.phones[0].categories[0].name #=> String
    #   resp.result_items[0].contacts.phones[0].categories[0].localized_name #=> String
    #   resp.result_items[0].contacts.phones[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].contacts.faxes #=> Array
    #   resp.result_items[0].contacts.faxes[0].label #=> String
    #   resp.result_items[0].contacts.faxes[0].value #=> String
    #   resp.result_items[0].contacts.faxes[0].categories #=> Array
    #   resp.result_items[0].contacts.faxes[0].categories[0].id #=> String
    #   resp.result_items[0].contacts.faxes[0].categories[0].name #=> String
    #   resp.result_items[0].contacts.faxes[0].categories[0].localized_name #=> String
    #   resp.result_items[0].contacts.faxes[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].contacts.websites #=> Array
    #   resp.result_items[0].contacts.websites[0].label #=> String
    #   resp.result_items[0].contacts.websites[0].value #=> String
    #   resp.result_items[0].contacts.websites[0].categories #=> Array
    #   resp.result_items[0].contacts.websites[0].categories[0].id #=> String
    #   resp.result_items[0].contacts.websites[0].categories[0].name #=> String
    #   resp.result_items[0].contacts.websites[0].categories[0].localized_name #=> String
    #   resp.result_items[0].contacts.websites[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].contacts.emails #=> Array
    #   resp.result_items[0].contacts.emails[0].label #=> String
    #   resp.result_items[0].contacts.emails[0].value #=> String
    #   resp.result_items[0].contacts.emails[0].categories #=> Array
    #   resp.result_items[0].contacts.emails[0].categories[0].id #=> String
    #   resp.result_items[0].contacts.emails[0].categories[0].name #=> String
    #   resp.result_items[0].contacts.emails[0].categories[0].localized_name #=> String
    #   resp.result_items[0].contacts.emails[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].opening_hours #=> Array
    #   resp.result_items[0].opening_hours[0].display #=> Array
    #   resp.result_items[0].opening_hours[0].display[0] #=> String
    #   resp.result_items[0].opening_hours[0].open_now #=> Boolean
    #   resp.result_items[0].opening_hours[0].components #=> Array
    #   resp.result_items[0].opening_hours[0].components[0].open_time #=> String
    #   resp.result_items[0].opening_hours[0].components[0].open_duration #=> String
    #   resp.result_items[0].opening_hours[0].components[0].recurrence #=> String
    #   resp.result_items[0].opening_hours[0].categories #=> Array
    #   resp.result_items[0].opening_hours[0].categories[0].id #=> String
    #   resp.result_items[0].opening_hours[0].categories[0].name #=> String
    #   resp.result_items[0].opening_hours[0].categories[0].localized_name #=> String
    #   resp.result_items[0].opening_hours[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].access_points #=> Array
    #   resp.result_items[0].access_points[0].position #=> Array
    #   resp.result_items[0].access_points[0].position[0] #=> Float
    #   resp.result_items[0].access_restrictions #=> Array
    #   resp.result_items[0].access_restrictions[0].restricted #=> Boolean
    #   resp.result_items[0].access_restrictions[0].categories #=> Array
    #   resp.result_items[0].access_restrictions[0].categories[0].id #=> String
    #   resp.result_items[0].access_restrictions[0].categories[0].name #=> String
    #   resp.result_items[0].access_restrictions[0].categories[0].localized_name #=> String
    #   resp.result_items[0].access_restrictions[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].time_zone.name #=> String
    #   resp.result_items[0].time_zone.offset #=> String
    #   resp.result_items[0].time_zone.offset_seconds #=> Integer
    #   resp.result_items[0].political_view #=> String
    #   resp.result_items[0].phonemes.title #=> Array
    #   resp.result_items[0].phonemes.title[0].value #=> String
    #   resp.result_items[0].phonemes.title[0].language #=> String
    #   resp.result_items[0].phonemes.title[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.country #=> Array
    #   resp.result_items[0].phonemes.address.country[0].value #=> String
    #   resp.result_items[0].phonemes.address.country[0].language #=> String
    #   resp.result_items[0].phonemes.address.country[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.region #=> Array
    #   resp.result_items[0].phonemes.address.region[0].value #=> String
    #   resp.result_items[0].phonemes.address.region[0].language #=> String
    #   resp.result_items[0].phonemes.address.region[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.sub_region #=> Array
    #   resp.result_items[0].phonemes.address.sub_region[0].value #=> String
    #   resp.result_items[0].phonemes.address.sub_region[0].language #=> String
    #   resp.result_items[0].phonemes.address.sub_region[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.locality #=> Array
    #   resp.result_items[0].phonemes.address.locality[0].value #=> String
    #   resp.result_items[0].phonemes.address.locality[0].language #=> String
    #   resp.result_items[0].phonemes.address.locality[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.district #=> Array
    #   resp.result_items[0].phonemes.address.district[0].value #=> String
    #   resp.result_items[0].phonemes.address.district[0].language #=> String
    #   resp.result_items[0].phonemes.address.district[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.sub_district #=> Array
    #   resp.result_items[0].phonemes.address.sub_district[0].value #=> String
    #   resp.result_items[0].phonemes.address.sub_district[0].language #=> String
    #   resp.result_items[0].phonemes.address.sub_district[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.block #=> Array
    #   resp.result_items[0].phonemes.address.block[0].value #=> String
    #   resp.result_items[0].phonemes.address.block[0].language #=> String
    #   resp.result_items[0].phonemes.address.block[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.sub_block #=> Array
    #   resp.result_items[0].phonemes.address.sub_block[0].value #=> String
    #   resp.result_items[0].phonemes.address.sub_block[0].language #=> String
    #   resp.result_items[0].phonemes.address.sub_block[0].preferred #=> Boolean
    #   resp.result_items[0].phonemes.address.street #=> Array
    #   resp.result_items[0].phonemes.address.street[0].value #=> String
    #   resp.result_items[0].phonemes.address.street[0].language #=> String
    #   resp.result_items[0].phonemes.address.street[0].preferred #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/SearchText AWS API Documentation
    #
    # @overload search_text(params = {})
    # @param [Hash] params ({})
    def search_text(params = {}, options = {})
      req = build_request(:search_text, params)
      req.send_request(options)
    end

    # `Suggest` provides intelligent predictions or recommendations based on
    # the user's input or context, such as relevant places, points of
    # interest, query terms or search category. It is designed to help users
    # find places or point of interests candidates or identify a follow on
    # query based on incomplete or misspelled queries. It returns a list of
    # possible matches or refinements that can be used to formulate a more
    # accurate query. Users can select the most appropriate suggestion and
    # use it for further searching. The API provides options for filtering
    # results by location and other attributes, and allows for additional
    # features like phonemes and timezones. The response includes refined
    # query terms and detailed place information.
    #
    # @option params [required, String] :query_text
    #   The free-form text query to match addresses against. This is usually a
    #   partially typed address from an end user in an address box or form.
    #
    #   <note markdown="1"> The fields `QueryText`, and `QueryID` are mutually exclusive.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of results returned in a single call.
    #
    # @option params [Integer] :max_query_refinements
    #   Maximum number of query terms to be returned for use with a search
    #   text query.
    #
    # @option params [Array<Float>] :bias_position
    #   The position, in longitude and latitude, that the results should be
    #   close to. Typically, place results returned are ranked higher the
    #   closer they are to this position. Stored in `[lng, lat]` and in the
    #   WSG84 format.
    #
    #   <note markdown="1"> The fields `BiasPosition`, `FilterBoundingBox`, and `FilterCircle` are
    #   mutually exclusive.
    #
    #    </note>
    #
    # @option params [Types::SuggestFilter] :filter
    #   A structure which contains a set of inclusion/exclusion properties
    #   that results must possess in order to be returned as a result.
    #
    # @option params [Array<String>] :additional_features
    #   A list of optional additional parameters, such as time zone, that can
    #   be requested for each result.
    #
    # @option params [String] :language
    #   A list of [BCP 47][1] compliant language codes for the results to be
    #   rendered in. If there is no data for the result in the requested
    #   language, data will be returned in the default language for the entry.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/IETF_language_tag
    #
    # @option params [String] :political_view
    #   The alpha-2 or alpha-3 character code for the political view of a
    #   country. The political view applies to the results of the request to
    #   represent unresolved territorial claims through the point of view of
    #   the specified country.
    #
    # @option params [String] :intended_use
    #   Indicates if the results will be stored. Defaults to `SingleUse`, if
    #   left empty.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @return [Types::SuggestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SuggestResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::SuggestResponse#result_items #result_items} => Array&lt;Types::SuggestResultItem&gt;
    #   * {Types::SuggestResponse#query_refinements #query_refinements} => Array&lt;Types::QueryRefinement&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suggest({
    #     query_text: "SuggestRequestQueryTextString", # required
    #     max_results: 1,
    #     max_query_refinements: 1,
    #     bias_position: [1.0],
    #     filter: {
    #       bounding_box: [1.0],
    #       circle: {
    #         center: [1.0], # required
    #         radius: 1, # required
    #       },
    #       include_countries: ["CountryCode"],
    #     },
    #     additional_features: ["Core"], # accepts Core, TimeZone, Phonemes, Access
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "SingleUse", # accepts SingleUse
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.pricing_bucket #=> String
    #   resp.result_items #=> Array
    #   resp.result_items[0].title #=> String
    #   resp.result_items[0].suggest_result_item_type #=> String, one of "Place", "Query"
    #   resp.result_items[0].place.place_id #=> String
    #   resp.result_items[0].place.place_type #=> String, one of "Country", "Region", "SubRegion", "Locality", "District", "SubDistrict", "PostalCode", "Block", "SubBlock", "Intersection", "Street", "PointOfInterest", "PointAddress", "InterpolatedAddress", "SecondaryAddress"
    #   resp.result_items[0].place.address.label #=> String
    #   resp.result_items[0].place.address.country.code_2 #=> String
    #   resp.result_items[0].place.address.country.code_3 #=> String
    #   resp.result_items[0].place.address.country.name #=> String
    #   resp.result_items[0].place.address.region.code #=> String
    #   resp.result_items[0].place.address.region.name #=> String
    #   resp.result_items[0].place.address.sub_region.code #=> String
    #   resp.result_items[0].place.address.sub_region.name #=> String
    #   resp.result_items[0].place.address.locality #=> String
    #   resp.result_items[0].place.address.district #=> String
    #   resp.result_items[0].place.address.sub_district #=> String
    #   resp.result_items[0].place.address.postal_code #=> String
    #   resp.result_items[0].place.address.block #=> String
    #   resp.result_items[0].place.address.sub_block #=> String
    #   resp.result_items[0].place.address.intersection #=> Array
    #   resp.result_items[0].place.address.intersection[0] #=> String
    #   resp.result_items[0].place.address.street #=> String
    #   resp.result_items[0].place.address.street_components #=> Array
    #   resp.result_items[0].place.address.street_components[0].base_name #=> String
    #   resp.result_items[0].place.address.street_components[0].type #=> String
    #   resp.result_items[0].place.address.street_components[0].type_placement #=> String, one of "BeforeBaseName", "AfterBaseName"
    #   resp.result_items[0].place.address.street_components[0].type_separator #=> String
    #   resp.result_items[0].place.address.street_components[0].prefix #=> String
    #   resp.result_items[0].place.address.street_components[0].suffix #=> String
    #   resp.result_items[0].place.address.street_components[0].direction #=> String
    #   resp.result_items[0].place.address.street_components[0].language #=> String
    #   resp.result_items[0].place.address.address_number #=> String
    #   resp.result_items[0].place.address.building #=> String
    #   resp.result_items[0].place.address.secondary_address_components #=> Array
    #   resp.result_items[0].place.address.secondary_address_components[0].number #=> String
    #   resp.result_items[0].place.position #=> Array
    #   resp.result_items[0].place.position[0] #=> Float
    #   resp.result_items[0].place.distance #=> Integer
    #   resp.result_items[0].place.map_view #=> Array
    #   resp.result_items[0].place.map_view[0] #=> Float
    #   resp.result_items[0].place.categories #=> Array
    #   resp.result_items[0].place.categories[0].id #=> String
    #   resp.result_items[0].place.categories[0].name #=> String
    #   resp.result_items[0].place.categories[0].localized_name #=> String
    #   resp.result_items[0].place.categories[0].primary #=> Boolean
    #   resp.result_items[0].place.food_types #=> Array
    #   resp.result_items[0].place.food_types[0].localized_name #=> String
    #   resp.result_items[0].place.food_types[0].id #=> String
    #   resp.result_items[0].place.food_types[0].primary #=> Boolean
    #   resp.result_items[0].place.business_chains #=> Array
    #   resp.result_items[0].place.business_chains[0].name #=> String
    #   resp.result_items[0].place.business_chains[0].id #=> String
    #   resp.result_items[0].place.access_points #=> Array
    #   resp.result_items[0].place.access_points[0].position #=> Array
    #   resp.result_items[0].place.access_points[0].position[0] #=> Float
    #   resp.result_items[0].place.access_restrictions #=> Array
    #   resp.result_items[0].place.access_restrictions[0].restricted #=> Boolean
    #   resp.result_items[0].place.access_restrictions[0].categories #=> Array
    #   resp.result_items[0].place.access_restrictions[0].categories[0].id #=> String
    #   resp.result_items[0].place.access_restrictions[0].categories[0].name #=> String
    #   resp.result_items[0].place.access_restrictions[0].categories[0].localized_name #=> String
    #   resp.result_items[0].place.access_restrictions[0].categories[0].primary #=> Boolean
    #   resp.result_items[0].place.time_zone.name #=> String
    #   resp.result_items[0].place.time_zone.offset #=> String
    #   resp.result_items[0].place.time_zone.offset_seconds #=> Integer
    #   resp.result_items[0].place.political_view #=> String
    #   resp.result_items[0].place.phonemes.title #=> Array
    #   resp.result_items[0].place.phonemes.title[0].value #=> String
    #   resp.result_items[0].place.phonemes.title[0].language #=> String
    #   resp.result_items[0].place.phonemes.title[0].preferred #=> Boolean
    #   resp.result_items[0].place.phonemes.address.country #=> Array
    #   resp.result_items[0].place.phonemes.address.country[0].value #=> String
    #   resp.result_items[0].place.phonemes.address.country[0].language #=> String
    #   resp.result_items[0].place.phonemes.address.country[0].preferred #=> Boolean
    #   resp.result_items[0].place.phonemes.address.region #=> Array
    #   resp.result_items[0].place.phonemes.address.region[0].value #=> String
    #   resp.result_items[0].place.phonemes.address.region[0].language #=> String
    #   resp.result_items[0].place.phonemes.address.region[0].preferred #=> Boolean
    #   resp.result_items[0].place.phonemes.address.sub_region #=> Array
    #   resp.result_items[0].place.phonemes.address.sub_region[0].value #=> String
    #   resp.result_items[0].place.phonemes.address.sub_region[0].language #=> String
    #   resp.result_items[0].place.phonemes.address.sub_region[0].preferred #=> Boolean
    #   resp.result_items[0].place.phonemes.address.locality #=> Array
    #   resp.result_items[0].place.phonemes.address.locality[0].value #=> String
    #   resp.result_items[0].place.phonemes.address.locality[0].language #=> String
    #   resp.result_items[0].place.phonemes.address.locality[0].preferred #=> Boolean
    #   resp.result_items[0].place.phonemes.address.district #=> Array
    #   resp.result_items[0].place.phonemes.address.district[0].value #=> String
    #   resp.result_items[0].place.phonemes.address.district[0].language #=> String
    #   resp.result_items[0].place.phonemes.address.district[0].preferred #=> Boolean
    #   resp.result_items[0].place.phonemes.address.sub_district #=> Array
    #   resp.result_items[0].place.phonemes.address.sub_district[0].value #=> String
    #   resp.result_items[0].place.phonemes.address.sub_district[0].language #=> String
    #   resp.result_items[0].place.phonemes.address.sub_district[0].preferred #=> Boolean
    #   resp.result_items[0].place.phonemes.address.block #=> Array
    #   resp.result_items[0].place.phonemes.address.block[0].value #=> String
    #   resp.result_items[0].place.phonemes.address.block[0].language #=> String
    #   resp.result_items[0].place.phonemes.address.block[0].preferred #=> Boolean
    #   resp.result_items[0].place.phonemes.address.sub_block #=> Array
    #   resp.result_items[0].place.phonemes.address.sub_block[0].value #=> String
    #   resp.result_items[0].place.phonemes.address.sub_block[0].language #=> String
    #   resp.result_items[0].place.phonemes.address.sub_block[0].preferred #=> Boolean
    #   resp.result_items[0].place.phonemes.address.street #=> Array
    #   resp.result_items[0].place.phonemes.address.street[0].value #=> String
    #   resp.result_items[0].place.phonemes.address.street[0].language #=> String
    #   resp.result_items[0].place.phonemes.address.street[0].preferred #=> Boolean
    #   resp.result_items[0].query.query_id #=> String
    #   resp.result_items[0].query.query_type #=> String, one of "Category", "BusinessChain"
    #   resp.result_items[0].highlights.title #=> Array
    #   resp.result_items[0].highlights.title[0].start_index #=> Integer
    #   resp.result_items[0].highlights.title[0].end_index #=> Integer
    #   resp.result_items[0].highlights.title[0].value #=> String
    #   resp.result_items[0].highlights.address.label #=> Array
    #   resp.result_items[0].highlights.address.label[0].start_index #=> Integer
    #   resp.result_items[0].highlights.address.label[0].end_index #=> Integer
    #   resp.result_items[0].highlights.address.label[0].value #=> String
    #   resp.query_refinements #=> Array
    #   resp.query_refinements[0].refined_term #=> String
    #   resp.query_refinements[0].original_term #=> String
    #   resp.query_refinements[0].start_index #=> Integer
    #   resp.query_refinements[0].end_index #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-places-2020-11-19/Suggest AWS API Documentation
    #
    # @overload suggest(params = {})
    # @param [Hash] params ({})
    def suggest(params = {}, options = {})
      req = build_request(:suggest, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::GeoPlaces')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-geoplaces'
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
