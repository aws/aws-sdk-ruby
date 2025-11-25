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

module Aws::LocationService
  # An API client for LocationService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LocationService::Client.new(
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

    @identifier = :locationservice

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
    add_plugin(Aws::LocationService::Plugins::Endpoints)

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
    #   @option options [Aws::LocationService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::LocationService::EndpointParameters`.
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

    # Creates an association between a geofence collection and a tracker
    # resource. This allows the tracker resource to communicate location
    # data to the linked geofence collection.
    #
    # You can associate up to five geofence collections to each tracker
    # resource.
    #
    # <note markdown="1"> Currently not supported — Cross-account configurations, such as
    # creating associations between a tracker resource in one account and a
    # geofence collection in another account.
    #
    #  </note>
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource to be associated with a geofence
    #   collection.
    #
    # @option params [required, String] :consumer_arn
    #   The Amazon Resource Name (ARN) for the geofence collection to be
    #   associated to tracker resource. Used when you need to specify a
    #   resource across all Amazon Web Services.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer`
    #
    #   ^
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_tracker_consumer({
    #     tracker_name: "ResourceName", # required
    #     consumer_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/AssociateTrackerConsumer AWS API Documentation
    #
    # @overload associate_tracker_consumer(params = {})
    # @param [Hash] params ({})
    def associate_tracker_consumer(params = {}, options = {})
      req = build_request(:associate_tracker_consumer, params)
      req.send_request(options)
    end

    # Deletes the position history of one or more devices from a tracker
    # resource.
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource to delete the device position history
    #   from.
    #
    # @option params [required, Array<String>] :device_ids
    #   Devices whose position history you want to delete.
    #
    #   * For example, for two devices: `“DeviceIds” : [DeviceId1,DeviceId2]`
    #
    #   ^
    #
    # @return [Types::BatchDeleteDevicePositionHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteDevicePositionHistoryResponse#errors #errors} => Array&lt;Types::BatchDeleteDevicePositionHistoryError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_device_position_history({
    #     tracker_name: "ResourceName", # required
    #     device_ids: ["Id"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].device_id #=> String
    #   resp.errors[0].error.code #=> String, one of "AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"
    #   resp.errors[0].error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchDeleteDevicePositionHistory AWS API Documentation
    #
    # @overload batch_delete_device_position_history(params = {})
    # @param [Hash] params ({})
    def batch_delete_device_position_history(params = {}, options = {})
      req = build_request(:batch_delete_device_position_history, params)
      req.send_request(options)
    end

    # Deletes a batch of geofences from a geofence collection.
    #
    # <note markdown="1"> This operation deletes the resource permanently.
    #
    #  </note>
    #
    # @option params [required, String] :collection_name
    #   The geofence collection storing the geofences to be deleted.
    #
    # @option params [required, Array<String>] :geofence_ids
    #   The batch of geofences to be deleted.
    #
    # @return [Types::BatchDeleteGeofenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteGeofenceResponse#errors #errors} => Array&lt;Types::BatchDeleteGeofenceError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_geofence({
    #     collection_name: "ResourceName", # required
    #     geofence_ids: ["Id"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].geofence_id #=> String
    #   resp.errors[0].error.code #=> String, one of "AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"
    #   resp.errors[0].error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchDeleteGeofence AWS API Documentation
    #
    # @overload batch_delete_geofence(params = {})
    # @param [Hash] params ({})
    def batch_delete_geofence(params = {}, options = {})
      req = build_request(:batch_delete_geofence, params)
      req.send_request(options)
    end

    # Evaluates device positions against the geofence geometries from a
    # given geofence collection.
    #
    # This operation always returns an empty response because geofences are
    # asynchronously evaluated. The evaluation determines if the device has
    # entered or exited a geofenced area, and then publishes one of the
    # following events to Amazon EventBridge:
    #
    # * `ENTER` if Amazon Location determines that the tracked device has
    #   entered a geofenced area.
    #
    # * `EXIT` if Amazon Location determines that the tracked device has
    #   exited a geofenced area.
    #
    # <note markdown="1"> The last geofence that a device was observed within is tracked for 30
    # days after the most recent device position update.
    #
    #  </note>
    #
    # <note markdown="1"> Geofence evaluation uses the given device position. It does not
    # account for the optional `Accuracy` of a `DevicePositionUpdate`.
    #
    #  </note>
    #
    # <note markdown="1"> The `DeviceID` is used as a string to represent the device. You do not
    # need to have a `Tracker` associated with the `DeviceID`.
    #
    #  </note>
    #
    # @option params [required, String] :collection_name
    #   The geofence collection used in evaluating the position of devices
    #   against its geofences.
    #
    # @option params [required, Array<Types::DevicePositionUpdate>] :device_position_updates
    #   Contains device details for each device to be evaluated against the
    #   given geofence collection.
    #
    # @return [Types::BatchEvaluateGeofencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchEvaluateGeofencesResponse#errors #errors} => Array&lt;Types::BatchEvaluateGeofencesError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_evaluate_geofences({
    #     collection_name: "ResourceName", # required
    #     device_position_updates: [ # required
    #       {
    #         device_id: "Id", # required
    #         sample_time: Time.now, # required
    #         position: [1.0], # required
    #         accuracy: {
    #           horizontal: 1.0, # required
    #         },
    #         position_properties: {
    #           "PositionPropertyMapKeyString" => "PositionPropertyMapValueString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].device_id #=> String
    #   resp.errors[0].sample_time #=> Time
    #   resp.errors[0].error.code #=> String, one of "AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"
    #   resp.errors[0].error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchEvaluateGeofences AWS API Documentation
    #
    # @overload batch_evaluate_geofences(params = {})
    # @param [Hash] params ({})
    def batch_evaluate_geofences(params = {}, options = {})
      req = build_request(:batch_evaluate_geofences, params)
      req.send_request(options)
    end

    # Lists the latest device positions for requested devices.
    #
    # @option params [required, String] :tracker_name
    #   The tracker resource retrieving the device position.
    #
    # @option params [required, Array<String>] :device_ids
    #   Devices whose position you want to retrieve.
    #
    #   * For example, for two devices:
    #     `device-ids=DeviceId1&device-ids=DeviceId2`
    #
    #   ^
    #
    # @return [Types::BatchGetDevicePositionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetDevicePositionResponse#errors #errors} => Array&lt;Types::BatchGetDevicePositionError&gt;
    #   * {Types::BatchGetDevicePositionResponse#device_positions #device_positions} => Array&lt;Types::DevicePosition&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_device_position({
    #     tracker_name: "BatchGetDevicePositionRequestTrackerNameString", # required
    #     device_ids: ["Id"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].device_id #=> String
    #   resp.errors[0].error.code #=> String, one of "AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"
    #   resp.errors[0].error.message #=> String
    #   resp.device_positions #=> Array
    #   resp.device_positions[0].device_id #=> String
    #   resp.device_positions[0].sample_time #=> Time
    #   resp.device_positions[0].received_time #=> Time
    #   resp.device_positions[0].position #=> Array
    #   resp.device_positions[0].position[0] #=> Float
    #   resp.device_positions[0].accuracy.horizontal #=> Float
    #   resp.device_positions[0].position_properties #=> Hash
    #   resp.device_positions[0].position_properties["PositionPropertyMapKeyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchGetDevicePosition AWS API Documentation
    #
    # @overload batch_get_device_position(params = {})
    # @param [Hash] params ({})
    def batch_get_device_position(params = {}, options = {})
      req = build_request(:batch_get_device_position, params)
      req.send_request(options)
    end

    # A batch request for storing geofence geometries into a given geofence
    # collection, or updates the geometry of an existing geofence if a
    # geofence ID is included in the request.
    #
    # @option params [required, String] :collection_name
    #   The geofence collection storing the geofences.
    #
    # @option params [required, Array<Types::BatchPutGeofenceRequestEntry>] :entries
    #   The batch of geofences to be stored in a geofence collection.
    #
    # @return [Types::BatchPutGeofenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutGeofenceResponse#successes #successes} => Array&lt;Types::BatchPutGeofenceSuccess&gt;
    #   * {Types::BatchPutGeofenceResponse#errors #errors} => Array&lt;Types::BatchPutGeofenceError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_geofence({
    #     collection_name: "ResourceName", # required
    #     entries: [ # required
    #       {
    #         geofence_id: "Id", # required
    #         geometry: { # required
    #           polygon: [
    #             [
    #               [1.0],
    #             ],
    #           ],
    #           circle: {
    #             center: [1.0], # required
    #             radius: 1.0, # required
    #           },
    #           geobuf: "data",
    #           multi_polygon: [
    #             [
    #               [
    #                 [1.0],
    #               ],
    #             ],
    #           ],
    #         },
    #         geofence_properties: {
    #           "PropertyMapKeyString" => "PropertyMapValueString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successes #=> Array
    #   resp.successes[0].geofence_id #=> String
    #   resp.successes[0].create_time #=> Time
    #   resp.successes[0].update_time #=> Time
    #   resp.errors #=> Array
    #   resp.errors[0].geofence_id #=> String
    #   resp.errors[0].error.code #=> String, one of "AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"
    #   resp.errors[0].error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchPutGeofence AWS API Documentation
    #
    # @overload batch_put_geofence(params = {})
    # @param [Hash] params ({})
    def batch_put_geofence(params = {}, options = {})
      req = build_request(:batch_put_geofence, params)
      req.send_request(options)
    end

    # Uploads position update data for one or more devices to a tracker
    # resource (up to 10 devices per batch). Amazon Location uses the data
    # when it reports the last known device position and position history.
    # Amazon Location retains location data for 30 days.
    #
    # <note markdown="1"> Position updates are handled based on the `PositionFiltering` property
    # of the tracker. When `PositionFiltering` is set to `TimeBased`,
    # updates are evaluated against linked geofence collections, and
    # location data is stored at a maximum of one position per 30 second
    # interval. If your update frequency is more often than every 30
    # seconds, only one update per 30 seconds is stored for each unique
    # device ID.
    #
    #  When `PositionFiltering` is set to `DistanceBased` filtering, location
    # data is stored and evaluated against linked geofence collections only
    # if the device has moved more than 30 m (98.4 ft).
    #
    #  When `PositionFiltering` is set to `AccuracyBased` filtering, location
    # data is stored and evaluated against linked geofence collections only
    # if the device has moved more than the measured accuracy. For example,
    # if two consecutive updates from a device have a horizontal accuracy of
    # 5 m and 10 m, the second update is neither stored or evaluated if the
    # device has moved less than 15 m. If `PositionFiltering` is set to
    # `AccuracyBased` filtering, Amazon Location uses the default value `{
    # "Horizontal": 0}` when accuracy is not provided on a
    # `DevicePositionUpdate`.
    #
    #  </note>
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource to update.
    #
    # @option params [required, Array<Types::DevicePositionUpdate>] :updates
    #   Contains the position update details for each device, up to 10
    #   devices.
    #
    # @return [Types::BatchUpdateDevicePositionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateDevicePositionResponse#errors #errors} => Array&lt;Types::BatchUpdateDevicePositionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_device_position({
    #     tracker_name: "ResourceName", # required
    #     updates: [ # required
    #       {
    #         device_id: "Id", # required
    #         sample_time: Time.now, # required
    #         position: [1.0], # required
    #         accuracy: {
    #           horizontal: 1.0, # required
    #         },
    #         position_properties: {
    #           "PositionPropertyMapKeyString" => "PositionPropertyMapValueString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].device_id #=> String
    #   resp.errors[0].sample_time #=> Time
    #   resp.errors[0].error.code #=> String, one of "AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"
    #   resp.errors[0].error.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchUpdateDevicePosition AWS API Documentation
    #
    # @overload batch_update_device_position(params = {})
    # @param [Hash] params ({})
    def batch_update_device_position(params = {}, options = {})
      req = build_request(:batch_update_device_position, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to [ `CalculateRoutes`
    # ](/location/latest/APIReference/API_CalculateRoutes.html) or [
    # `CalculateIsolines`
    # ](/location/latest/APIReference/API_CalculateIsolines.html) unless you
    # require Grab data.
    #
    #  * `CalculateRoute` is part of a previous Amazon Location Service
    #   Routes API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The version 2 `CalculateRoutes` operation gives better results for
    #   point-to-point routing, while the version 2 `CalculateIsolines`
    #   operation adds support for calculating service areas and travel time
    #   envelopes.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Routes API version 2 is found under
    #   `geo-routes` or `geo_routes`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Routes API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    #  [Calculates a route][1] given the following required parameters:
    # `DeparturePosition` and `DestinationPosition`. Requires that you first
    # [create a route calculator resource][2].
    #
    #  By default, a request that doesn't specify a departure time uses the
    # best time of day to travel with the best traffic conditions when
    # calculating the route.
    #
    #  Additional options include:
    #
    #  * [Specifying a departure time][3] using either `DepartureTime` or
    #   `DepartNow`. This calculates a route based on predictive traffic
    #   data at the given time.
    #
    #   <note markdown="1"> You can't specify both `DepartureTime` and
    # `DepartNow` in a single
    #   request. Specifying both parameters returns a validation error.
    #
    #    </note>
    #
    # * [Specifying a travel mode][4] using TravelMode sets the
    #   transportation mode used to calculate the routes. This also lets you
    #   specify additional route preferences in `CarModeOptions` if
    #   traveling by `Car`, or `TruckModeOptions` if traveling by `Truck`.
    #
    #   <note markdown="1"> If you specify `walking` for the travel mode and
    # your data provider
    #   is Esri, the start and destination must be within 40km.
    #
    #    </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/previous/developerguide/calculate-route.html
    # [2]: https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html
    # [3]: https://docs.aws.amazon.com/location/previous/developerguide/departure-time.html
    # [4]: https://docs.aws.amazon.com/location/previous/developerguide/travel-mode.html
    #
    # @option params [required, String] :calculator_name
    #   The name of the route calculator resource that you want to use to
    #   calculate the route.
    #
    # @option params [required, Array<Float>] :departure_position
    #   The start position for the route. Defined in [World Geodetic System
    #   (WGS 84)][1] format: `[longitude, latitude]`.
    #
    #   * For example, `[-123.115, 49.285]`
    #
    #   ^
    #
    #   <note markdown="1"> If you specify a departure that's not located on a road, Amazon
    #   Location [moves the position to the nearest road][2]. If Esri is the
    #   provider for your route calculator, specifying a route that is longer
    #   than 400 km returns a `400 RoutesValidationException` error.
    #
    #    </note>
    #
    #   Valid Values: `[-180 to 180,-90 to 90]`
    #
    #
    #
    #   [1]: https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84
    #   [2]: https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html
    #
    # @option params [required, Array<Float>] :destination_position
    #   The finish position for the route. Defined in [World Geodetic System
    #   (WGS 84)][1] format: `[longitude, latitude]`.
    #
    #   * For example, `[-122.339, 47.615]`
    #
    #   ^
    #
    #   <note markdown="1"> If you specify a destination that's not located on a road, Amazon
    #   Location [moves the position to the nearest road][2].
    #
    #    </note>
    #
    #   Valid Values: `[-180 to 180,-90 to 90]`
    #
    #
    #
    #   [1]: https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84
    #   [2]: https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html
    #
    # @option params [Array<Array>] :waypoint_positions
    #   Specifies an ordered list of up to 23 intermediate positions to
    #   include along a route between the departure position and destination
    #   position.
    #
    #   * For example, from the `DeparturePosition` `[-123.115, 49.285]`, the
    #     route follows the order that the waypoint positions are given
    #     `[[-122.757, 49.0021],[-122.349, 47.620]]`
    #
    #   ^
    #
    #   <note markdown="1"> If you specify a waypoint position that's not located on a road,
    #   Amazon Location [moves the position to the nearest road][1].
    #
    #    Specifying more than 23 waypoints returns a `400 ValidationException`
    #   error.
    #
    #    If Esri is the provider for your route calculator, specifying a route
    #   that is longer than 400 km returns a `400 RoutesValidationException`
    #   error.
    #
    #    </note>
    #
    #   Valid Values: `[-180 to 180,-90 to 90]`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html
    #
    # @option params [String] :travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility. You can choose
    #   `Car`, `Truck`, `Walking`, `Bicycle` or `Motorcycle` as options for
    #   the `TravelMode`.
    #
    #   <note markdown="1"> `Bicycle` and `Motorcycle` are only valid when using Grab as a data
    #   provider, and only within Southeast Asia.
    #
    #    `Truck` is not available for Grab.
    #
    #    For more details on the using Grab for routing, including areas of
    #   coverage, see [GrabMaps][1] in the *Amazon Location Service Developer
    #   Guide*.
    #
    #    </note>
    #
    #   The `TravelMode` you specify also determines how you specify route
    #   preferences:
    #
    #   * If traveling by `Car` use the `CarModeOptions` parameter.
    #
    #   * If traveling by `Truck` use the `TruckModeOptions` parameter.
    #
    #   Default Value: `Car`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/grab.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :departure_time
    #   Specifies the desired time of departure. Uses the given time to
    #   calculate the route. Otherwise, the best time of day to travel with
    #   the best traffic conditions is used to calculate the route.
    #
    #   * In [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`. For example,
    #     `2020–07-2T12:15:20.000Z+01:00`
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #
    # @option params [Boolean] :depart_now
    #   Sets the time of departure as the current time. Uses the current time
    #   to calculate a route. Otherwise, the best time of day to travel with
    #   the best traffic conditions is used to calculate the route.
    #
    #   Default Value: `false`
    #
    #   Valid Values: `false` \| `true`
    #
    # @option params [String] :distance_unit
    #   Set the unit system to specify the distance.
    #
    #   Default Value: `Kilometers`
    #
    # @option params [Boolean] :include_leg_geometry
    #   Set to include the geometry details in the result for each path
    #   between a pair of positions.
    #
    #   Default Value: `false`
    #
    #   Valid Values: `false` \| `true`
    #
    # @option params [Types::CalculateRouteCarModeOptions] :car_mode_options
    #   Specifies route preferences when traveling by `Car`, such as avoiding
    #   routes that use ferries or tolls.
    #
    #   Requirements: `TravelMode` must be specified as `Car`.
    #
    # @option params [Types::CalculateRouteTruckModeOptions] :truck_mode_options
    #   Specifies route preferences when traveling by `Truck`, such as
    #   avoiding routes that use ferries or tolls, and truck specifications to
    #   consider when choosing an optimal road.
    #
    #   Requirements: `TravelMode` must be specified as `Truck`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :arrival_time
    #   Specifies the desired time of arrival. Uses the given time to
    #   calculate the route. Otherwise, the best time of day to travel with
    #   the best traffic conditions is used to calculate the route.
    #
    #   <note markdown="1"> ArrivalTime is not supported Esri.
    #
    #    </note>
    #
    # @option params [String] :optimize_for
    #   Specifies the distance to optimize for when calculating a route.
    #
    # @option params [String] :key
    #   The optional [API key][1] to authorize the request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html
    #
    # @return [Types::CalculateRouteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CalculateRouteResponse#legs #legs} => Array&lt;Types::Leg&gt;
    #   * {Types::CalculateRouteResponse#summary #summary} => Types::CalculateRouteSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.calculate_route({
    #     calculator_name: "ResourceName", # required
    #     departure_position: [1.0], # required
    #     destination_position: [1.0], # required
    #     waypoint_positions: [
    #       [1.0],
    #     ],
    #     travel_mode: "Car", # accepts Car, Truck, Walking, Bicycle, Motorcycle
    #     departure_time: Time.now,
    #     depart_now: false,
    #     distance_unit: "Kilometers", # accepts Kilometers, Miles
    #     include_leg_geometry: false,
    #     car_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false,
    #     },
    #     truck_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false,
    #       dimensions: {
    #         length: 1.0,
    #         height: 1.0,
    #         width: 1.0,
    #         unit: "Meters", # accepts Meters, Feet
    #       },
    #       weight: {
    #         total: 1.0,
    #         unit: "Kilograms", # accepts Kilograms, Pounds
    #       },
    #     },
    #     arrival_time: Time.now,
    #     optimize_for: "FastestRoute", # accepts FastestRoute, ShortestRoute
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.legs #=> Array
    #   resp.legs[0].start_position #=> Array
    #   resp.legs[0].start_position[0] #=> Float
    #   resp.legs[0].end_position #=> Array
    #   resp.legs[0].end_position[0] #=> Float
    #   resp.legs[0].distance #=> Float
    #   resp.legs[0].duration_seconds #=> Float
    #   resp.legs[0].geometry.line_string #=> Array
    #   resp.legs[0].geometry.line_string[0] #=> Array
    #   resp.legs[0].geometry.line_string[0][0] #=> Float
    #   resp.legs[0].steps #=> Array
    #   resp.legs[0].steps[0].start_position #=> Array
    #   resp.legs[0].steps[0].start_position[0] #=> Float
    #   resp.legs[0].steps[0].end_position #=> Array
    #   resp.legs[0].steps[0].end_position[0] #=> Float
    #   resp.legs[0].steps[0].distance #=> Float
    #   resp.legs[0].steps[0].duration_seconds #=> Float
    #   resp.legs[0].steps[0].geometry_offset #=> Integer
    #   resp.summary.route_b_box #=> Array
    #   resp.summary.route_b_box[0] #=> Float
    #   resp.summary.data_source #=> String
    #   resp.summary.distance #=> Float
    #   resp.summary.duration_seconds #=> Float
    #   resp.summary.distance_unit #=> String, one of "Kilometers", "Miles"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CalculateRoute AWS API Documentation
    #
    # @overload calculate_route(params = {})
    # @param [Hash] params ({})
    def calculate_route(params = {}, options = {})
      req = build_request(:calculate_route, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the [V2 `CalculateRouteMatrix`
    # ](/location/latest/APIReference/API_CalculateRouteMatrix.html) unless
    # you require Grab data.
    #
    #  * This version of `CalculateRouteMatrix` is part of a previous Amazon
    #   Location Service Routes API (version 1) which has been superseded by
    #   a more intuitive, powerful, and complete API (version 2).
    #
    # * The version 2 `CalculateRouteMatrix` operation gives better results
    #   for matrix routing calculations.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Routes API version 2 is found under
    #   `geo-routes` or `geo_routes`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Routes API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Routes V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/routes.html).
    #
    #  [ Calculates a route matrix][1] given the following required
    # parameters: `DeparturePositions` and `DestinationPositions`.
    # `CalculateRouteMatrix` calculates routes and returns the travel time
    # and travel distance from each departure position to each destination
    # position in the request. For example, given departure positions A and
    # B, and destination positions X and Y, `CalculateRouteMatrix` will
    # return time and distance for routes from A to X, A to Y, B to X, and B
    # to Y (in that order). The number of results returned (and routes
    # calculated) will be the number of `DeparturePositions` times the
    # number of `DestinationPositions`.
    #
    #  <note markdown="1"> Your account is charged for each route
    # calculated, not the number of
    # requests.
    #
    #  </note>
    #
    #  Requires that you first [create a route calculator resource][2].
    #
    #  By default, a request that doesn't specify a departure time uses the
    # best time of day to travel with the best traffic conditions when
    # calculating routes.
    #
    #  Additional options include:
    #
    #  * [ Specifying a departure time][3] using either `DepartureTime` or
    #   `DepartNow`. This calculates routes based on predictive traffic data
    #   at the given time.
    #
    #   <note markdown="1"> You can't specify both `DepartureTime` and
    # `DepartNow` in a single
    #   request. Specifying both parameters returns a validation error.
    #
    #    </note>
    #
    # * [Specifying a travel mode][4] using TravelMode sets the
    #   transportation mode used to calculate the routes. This also lets you
    #   specify additional route preferences in `CarModeOptions` if
    #   traveling by `Car`, or `TruckModeOptions` if traveling by `Truck`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/previous/developerguide/calculate-route-matrix.html
    # [2]: https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html
    # [3]: https://docs.aws.amazon.com/location/previous/developerguide/departure-time.html
    # [4]: https://docs.aws.amazon.com/location/previous/developerguide/travel-mode.html
    #
    # @option params [required, String] :calculator_name
    #   The name of the route calculator resource that you want to use to
    #   calculate the route matrix.
    #
    # @option params [required, Array<Array>] :departure_positions
    #   The list of departure (origin) positions for the route matrix. An
    #   array of points, each of which is itself a 2-value array defined in
    #   [WGS 84][1] format: `[longitude, latitude]`. For example, `[-123.115,
    #   49.285]`.
    #
    #   Depending on the data provider selected in the route calculator
    #   resource there may be additional restrictions on the inputs you can
    #   choose. See [ Position restrictions][2] in the *Amazon Location
    #   Service Developer Guide*.
    #
    #   <note markdown="1"> For route calculators that use Esri as the data provider, if you
    #   specify a departure that's not located on a road, Amazon Location [
    #   moves the position to the nearest road][3]. The snapped value is
    #   available in the result in `SnappedDeparturePositions`.
    #
    #    </note>
    #
    #   Valid Values: `[-180 to 180,-90 to 90]`
    #
    #
    #
    #   [1]: https://earth-info.nga.mil/GandG/wgs84/index.html
    #   [2]: https://docs.aws.amazon.com/location/previous/developerguide/calculate-route-matrix.html#matrix-routing-position-limits
    #   [3]: https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html
    #
    # @option params [required, Array<Array>] :destination_positions
    #   The list of destination positions for the route matrix. An array of
    #   points, each of which is itself a 2-value array defined in [WGS 84][1]
    #   format: `[longitude, latitude]`. For example, `[-122.339, 47.615]`
    #
    #   Depending on the data provider selected in the route calculator
    #   resource there may be additional restrictions on the inputs you can
    #   choose. See [ Position restrictions][2] in the *Amazon Location
    #   Service Developer Guide*.
    #
    #   <note markdown="1"> For route calculators that use Esri as the data provider, if you
    #   specify a destination that's not located on a road, Amazon Location [
    #   moves the position to the nearest road][3]. The snapped value is
    #   available in the result in `SnappedDestinationPositions`.
    #
    #    </note>
    #
    #   Valid Values: `[-180 to 180,-90 to 90]`
    #
    #
    #
    #   [1]: https://earth-info.nga.mil/GandG/wgs84/index.html
    #   [2]: https://docs.aws.amazon.com/location/previous/developerguide/calculate-route-matrix.html#matrix-routing-position-limits
    #   [3]: https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html
    #
    # @option params [String] :travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   The `TravelMode` you specify also determines how you specify route
    #   preferences:
    #
    #   * If traveling by `Car` use the `CarModeOptions` parameter.
    #
    #   * If traveling by `Truck` use the `TruckModeOptions` parameter.
    #
    #   <note markdown="1"> `Bicycle` or `Motorcycle` are only valid when using `Grab` as a data
    #   provider, and only within Southeast Asia.
    #
    #    `Truck` is not available for Grab.
    #
    #    For more information about using Grab as a data provider, see
    #   [GrabMaps][1] in the *Amazon Location Service Developer Guide*.
    #
    #    </note>
    #
    #   Default Value: `Car`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/grab.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :departure_time
    #   Specifies the desired time of departure. Uses the given time to
    #   calculate the route matrix. You can't set both `DepartureTime` and
    #   `DepartNow`. If neither is set, the best time of day to travel with
    #   the best traffic conditions is used to calculate the route matrix.
    #
    #   <note markdown="1"> Setting a departure time in the past returns a `400
    #   ValidationException` error.
    #
    #    </note>
    #
    #   * In [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`. For example,
    #     `2020–07-2T12:15:20.000Z+01:00`
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #
    # @option params [Boolean] :depart_now
    #   Sets the time of departure as the current time. Uses the current time
    #   to calculate the route matrix. You can't set both `DepartureTime` and
    #   `DepartNow`. If neither is set, the best time of day to travel with
    #   the best traffic conditions is used to calculate the route matrix.
    #
    #   Default Value: `false`
    #
    #   Valid Values: `false` \| `true`
    #
    # @option params [String] :distance_unit
    #   Set the unit system to specify the distance.
    #
    #   Default Value: `Kilometers`
    #
    # @option params [Types::CalculateRouteCarModeOptions] :car_mode_options
    #   Specifies route preferences when traveling by `Car`, such as avoiding
    #   routes that use ferries or tolls.
    #
    #   Requirements: `TravelMode` must be specified as `Car`.
    #
    # @option params [Types::CalculateRouteTruckModeOptions] :truck_mode_options
    #   Specifies route preferences when traveling by `Truck`, such as
    #   avoiding routes that use ferries or tolls, and truck specifications to
    #   consider when choosing an optimal road.
    #
    #   Requirements: `TravelMode` must be specified as `Truck`.
    #
    # @option params [String] :key
    #   The optional [API key][1] to authorize the request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html
    #
    # @return [Types::CalculateRouteMatrixResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CalculateRouteMatrixResponse#route_matrix #route_matrix} => Array&lt;Array&lt;Types::RouteMatrixEntry&gt;&gt;
    #   * {Types::CalculateRouteMatrixResponse#snapped_departure_positions #snapped_departure_positions} => Array&lt;Array&lt;Float&gt;&gt;
    #   * {Types::CalculateRouteMatrixResponse#snapped_destination_positions #snapped_destination_positions} => Array&lt;Array&lt;Float&gt;&gt;
    #   * {Types::CalculateRouteMatrixResponse#summary #summary} => Types::CalculateRouteMatrixSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.calculate_route_matrix({
    #     calculator_name: "ResourceName", # required
    #     departure_positions: [ # required
    #       [1.0],
    #     ],
    #     destination_positions: [ # required
    #       [1.0],
    #     ],
    #     travel_mode: "Car", # accepts Car, Truck, Walking, Bicycle, Motorcycle
    #     departure_time: Time.now,
    #     depart_now: false,
    #     distance_unit: "Kilometers", # accepts Kilometers, Miles
    #     car_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false,
    #     },
    #     truck_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false,
    #       dimensions: {
    #         length: 1.0,
    #         height: 1.0,
    #         width: 1.0,
    #         unit: "Meters", # accepts Meters, Feet
    #       },
    #       weight: {
    #         total: 1.0,
    #         unit: "Kilograms", # accepts Kilograms, Pounds
    #       },
    #     },
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.route_matrix #=> Array
    #   resp.route_matrix[0] #=> Array
    #   resp.route_matrix[0][0].distance #=> Float
    #   resp.route_matrix[0][0].duration_seconds #=> Float
    #   resp.route_matrix[0][0].error.code #=> String, one of "RouteNotFound", "RouteTooLong", "PositionsNotFound", "DestinationPositionNotFound", "DeparturePositionNotFound", "OtherValidationError"
    #   resp.route_matrix[0][0].error.message #=> String
    #   resp.snapped_departure_positions #=> Array
    #   resp.snapped_departure_positions[0] #=> Array
    #   resp.snapped_departure_positions[0][0] #=> Float
    #   resp.snapped_destination_positions #=> Array
    #   resp.snapped_destination_positions[0] #=> Array
    #   resp.snapped_destination_positions[0][0] #=> Float
    #   resp.summary.data_source #=> String
    #   resp.summary.route_count #=> Integer
    #   resp.summary.error_count #=> Integer
    #   resp.summary.distance_unit #=> String, one of "Kilometers", "Miles"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CalculateRouteMatrix AWS API Documentation
    #
    # @overload calculate_route_matrix(params = {})
    # @param [Hash] params ({})
    def calculate_route_matrix(params = {}, options = {})
      req = build_request(:calculate_route_matrix, params)
      req.send_request(options)
    end

    # Creates a geofence collection, which manages and stores geofences.
    #
    # @option params [required, String] :collection_name
    #   A custom name for the geofence collection.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-),
    #     periods (.), and underscores (\_).
    #
    #   * Must be a unique geofence collection name.
    #
    #   * No spaces allowed. For example, `ExampleGeofenceCollection`.
    #
    # @option params [String] :pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #
    # @option params [String] :pricing_plan_data_source
    #   This parameter is no longer used.
    #
    # @option params [String] :description
    #   An optional description for the geofence collection.
    #
    # @option params [Hash<String,String>] :tags
    #   Applies one or more tags to the geofence collection. A tag is a
    #   key-value pair helps manage, identify, search, and filter your
    #   resources by labelling them.
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource
    #
    #   * Each resource tag must be unique with a maximum of one value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #
    # @option params [String] :kms_key_id
    #   A key identifier for an [Amazon Web Services KMS customer managed
    #   key][1]. Enter a key ID, key ARN, alias name, or alias ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html
    #
    # @return [Types::CreateGeofenceCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGeofenceCollectionResponse#collection_name #collection_name} => String
    #   * {Types::CreateGeofenceCollectionResponse#collection_arn #collection_arn} => String
    #   * {Types::CreateGeofenceCollectionResponse#create_time #create_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_geofence_collection({
    #     collection_name: "ResourceName", # required
    #     pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     pricing_plan_data_source: "String",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     kms_key_id: "KmsKeyId",
    #   })
    #
    # @example Response structure
    #
    #   resp.collection_name #=> String
    #   resp.collection_arn #=> String
    #   resp.create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateGeofenceCollection AWS API Documentation
    #
    # @overload create_geofence_collection(params = {})
    # @param [Hash] params ({})
    def create_geofence_collection(params = {}, options = {})
      req = build_request(:create_geofence_collection, params)
      req.send_request(options)
    end

    # Creates an API key resource in your Amazon Web Services account, which
    # lets you grant actions for Amazon Location resources to the API key
    # bearer.
    #
    # For more information, see [Use API keys to authenticate][1] in the
    # *Amazon Location Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html
    #
    # @option params [required, String] :key_name
    #   A custom name for the API key resource.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-),
    #     periods (.), and underscores (\_).
    #
    #   * Must be a unique API key name.
    #
    #   * No spaces allowed. For example, `ExampleAPIKey`.
    #
    # @option params [required, Types::ApiKeyRestrictions] :restrictions
    #   The API key restrictions for the API key resource.
    #
    # @option params [String] :description
    #   An optional description for the API key resource.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expire_time
    #   The optional timestamp for when the API key resource will expire in [
    #   ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`. One of `NoExpiry` or
    #   `ExpireTime` must be set.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #
    # @option params [Boolean] :no_expiry
    #   Optionally set to `true` to set no expiration time for the API key.
    #   One of `NoExpiry` or `ExpireTime` must be set.
    #
    # @option params [Hash<String,String>] :tags
    #   Applies one or more tags to the map resource. A tag is a key-value
    #   pair that helps manage, identify, search, and filter your resources by
    #   labelling them.
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource
    #
    #   * Each resource tag must be unique with a maximum of one value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #
    # @return [Types::CreateKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeyResponse#key #key} => String
    #   * {Types::CreateKeyResponse#key_arn #key_arn} => String
    #   * {Types::CreateKeyResponse#key_name #key_name} => String
    #   * {Types::CreateKeyResponse#create_time #create_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key({
    #     key_name: "ResourceName", # required
    #     restrictions: { # required
    #       allow_actions: ["ApiKeyAction"], # required
    #       allow_resources: ["GeoArnV2"], # required
    #       allow_referers: ["RefererPattern"],
    #       allow_android_apps: [
    #         {
    #           package: "AndroidPackageName", # required
    #           certificate_fingerprint: "Sha1CertificateFingerprint", # required
    #         },
    #       ],
    #       allow_apple_apps: [
    #         {
    #           bundle_id: "AppleBundleId", # required
    #         },
    #       ],
    #     },
    #     description: "ResourceDescription",
    #     expire_time: Time.now,
    #     no_expiry: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.key #=> String
    #   resp.key_arn #=> String
    #   resp.key_name #=> String
    #   resp.create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateKey AWS API Documentation
    #
    # @overload create_key(params = {})
    # @param [Hash] params ({})
    def create_key(params = {}, options = {})
      req = build_request(:create_key, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend upgrading to the Maps API V2 unless you require
    # `Grab` data.
    #
    #  * `CreateMap` is part of a previous Amazon Location Service Maps API
    #   (version 1) which has been superseded by a more intuitive, powerful,
    #   and complete API (version 2).
    #
    # * The Maps API version 2 has a simplified interface that can be used
    #   without creating or managing map resources.
    #
    # * If you are using an AWS SDK or the AWS CLI, note that the Maps API
    #   version 2 is found under `geo-maps` or `geo_maps`, not under
    #   `location`.
    #
    # * Since `Grab` is not yet fully supported in Maps API version 2, we
    #   recommend you continue using API version 1 when using `Grab`.
    #
    # * Start your version 2 API journey with the [Maps V2 API Reference][1]
    #   or the [Developer Guide][2].
    #
    #  Creates a map resource in your Amazon Web Services account, which
    # provides map tiles of different styles sourced from global location
    # data providers.
    #
    #  <note markdown="1"> If your application is tracking or routing assets
    # you use in your
    # business, such as delivery vehicles or employees, you must not use
    # Esri as your geolocation provider. See section 82 of the [Amazon Web
    # Services service terms][3] for more details.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html
    # [2]: https://docs.aws.amazon.com/location/latest/developerguide/maps.html
    # [3]: http://aws.amazon.com/service-terms
    #
    # @option params [required, String] :map_name
    #   The name for the map resource.
    #
    #   Requirements:
    #
    #   * Must contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens
    #     (-), periods (.), and underscores (\_).
    #
    #   * Must be a unique map resource name.
    #
    #   * No spaces allowed. For example, `ExampleMap`.
    #
    # @option params [required, Types::MapConfiguration] :configuration
    #   Specifies the `MapConfiguration`, including the map style, for the map
    #   resource that you create. The map style defines the look of maps and
    #   the data provider for your map resource.
    #
    # @option params [String] :pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #
    # @option params [String] :description
    #   An optional description for the map resource.
    #
    # @option params [Hash<String,String>] :tags
    #   Applies one or more tags to the map resource. A tag is a key-value
    #   pair helps manage, identify, search, and filter your resources by
    #   labelling them.
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource
    #
    #   * Each resource tag must be unique with a maximum of one value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #
    # @return [Types::CreateMapResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMapResponse#map_name #map_name} => String
    #   * {Types::CreateMapResponse#map_arn #map_arn} => String
    #   * {Types::CreateMapResponse#create_time #create_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_map({
    #     map_name: "ResourceName", # required
    #     configuration: { # required
    #       style: "MapStyle", # required
    #       political_view: "CountryCode3",
    #       custom_layers: ["CustomLayer"],
    #     },
    #     pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.map_name #=> String
    #   resp.map_arn #=> String
    #   resp.create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateMap AWS API Documentation
    #
    # @overload create_map(params = {})
    # @param [Hash] params ({})
    def create_map(params = {}, options = {})
      req = build_request(:create_map, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the Places API V2 unless you
    # require Grab data.
    #
    #  * `CreatePlaceIndex` is part of a previous Amazon Location Service
    #   Places API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The Places API version 2 has a simplified interface that can be used
    #   without creating or managing place index resources.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Places API version 2 is found under
    #   `geo-places` or `geo_places`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Places API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Places V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/places.html).
    #
    #  Creates a place index resource in your Amazon Web Services account.
    # Use a place index resource to geocode addresses and other text queries
    # by using the `SearchPlaceIndexForText` operation, and reverse geocode
    # coordinates by using the `SearchPlaceIndexForPosition` operation, and
    # enable autosuggestions by using the `SearchPlaceIndexForSuggestions`
    # operation.
    #
    #  <note markdown="1"> If your application is tracking or routing assets
    # you use in your
    # business, such as delivery vehicles or employees, you must not use
    # Esri as your geolocation provider. See section 82 of the [Amazon Web
    # Services service terms][1] for more details.
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/service-terms
    #
    # @option params [required, String] :index_name
    #   The name of the place index resource.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-),
    #     periods (.), and underscores (\_).
    #
    #   * Must be a unique place index resource name.
    #
    #   * No spaces allowed. For example, `ExamplePlaceIndex`.
    #
    # @option params [required, String] :data_source
    #   Specifies the geospatial data provider for the new place index.
    #
    #   <note markdown="1"> This field is case-sensitive. Enter the valid values as shown. For
    #   example, entering `HERE` returns an error.
    #
    #    </note>
    #
    #   Valid values include:
    #
    #   * `Esri` – For additional information about [Esri][1]'s coverage in
    #     your region of interest, see [Esri details on geocoding
    #     coverage][2].
    #
    #   * `Grab` – Grab provides place index functionality for Southeast Asia.
    #     For additional information about [GrabMaps][3]' coverage, see
    #     [GrabMaps countries and areas covered][4].
    #
    #   * `Here` – For additional information about [HERE Technologies][5]'
    #     coverage in your region of interest, see [HERE details on goecoding
    #     coverage][6].
    #
    #     If you specify HERE Technologies (`Here`) as the data provider, you
    #     may not [store results][7] for locations in Japan. For more
    #     information, see the [Amazon Web Services service terms][8] for
    #     Amazon Location Service.
    #
    #   For additional information , see [Data providers][9] on the *Amazon
    #   Location Service developer guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/esri.html
    #   [2]: https://developers.arcgis.com/rest/geocode/api-reference/geocode-coverage.htm
    #   [3]: https://docs.aws.amazon.com/location/previous/developerguide/grab.html
    #   [4]: https://docs.aws.amazon.com/location/previous/developerguide/grab.html#grab-coverage-area
    #   [5]: https://docs.aws.amazon.com/location/previous/developerguide/HERE.html
    #   [6]: https://developer.here.com/documentation/geocoder/dev_guide/topics/coverage-geocoder.html
    #   [7]: https://docs.aws.amazon.com/location-places/latest/APIReference/API_DataSourceConfiguration.html
    #   [8]: http://aws.amazon.com/service-terms/
    #   [9]: https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html
    #
    # @option params [String] :pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #
    # @option params [String] :description
    #   The optional description for the place index resource.
    #
    # @option params [Types::DataSourceConfiguration] :data_source_configuration
    #   Specifies the data storage option requesting Places.
    #
    # @option params [Hash<String,String>] :tags
    #   Applies one or more tags to the place index resource. A tag is a
    #   key-value pair that helps you manage, identify, search, and filter
    #   your resources.
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource.
    #
    #   * Each tag key must be unique and must have exactly one associated
    #     value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8.
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #
    # @return [Types::CreatePlaceIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePlaceIndexResponse#index_name #index_name} => String
    #   * {Types::CreatePlaceIndexResponse#index_arn #index_arn} => String
    #   * {Types::CreatePlaceIndexResponse#create_time #create_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_place_index({
    #     index_name: "ResourceName", # required
    #     data_source: "String", # required
    #     pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     description: "ResourceDescription",
    #     data_source_configuration: {
    #       intended_use: "SingleUse", # accepts SingleUse, Storage
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.index_name #=> String
    #   resp.index_arn #=> String
    #   resp.create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreatePlaceIndex AWS API Documentation
    #
    # @overload create_place_index(params = {})
    # @param [Hash] params ({})
    def create_place_index(params = {}, options = {})
      req = build_request(:create_place_index, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the Routes API V2 unless you
    # require Grab data.
    #
    #  * `CreateRouteCalculator` is part of a previous Amazon Location
    #   Service Routes API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The Routes API version 2 has a simplified interface that can be used
    #   without creating or managing route calculator resources.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Routes API version 2 is found under
    #   `geo-routes` or `geo_routes`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Routes API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Routes V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/routes.html).
    #
    #  Creates a route calculator resource in your Amazon Web Services
    # account.
    #
    #  You can send requests to a route calculator resource to estimate
    # travel time, distance, and get directions. A route calculator sources
    # traffic and road network data from your chosen data provider.
    #
    #  <note markdown="1"> If your application is tracking or routing assets
    # you use in your
    # business, such as delivery vehicles or employees, you must not use
    # Esri as your geolocation provider. See section 82 of the [Amazon Web
    # Services service terms][1] for more details.
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/service-terms
    #
    # @option params [required, String] :calculator_name
    #   The name of the route calculator resource.
    #
    #   Requirements:
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9) , hyphens (-),
    #     periods (.), and underscores (\_).
    #
    #   * Must be a unique Route calculator resource name.
    #
    #   * No spaces allowed. For example, `ExampleRouteCalculator`.
    #
    # @option params [required, String] :data_source
    #   Specifies the data provider of traffic and road network data.
    #
    #   <note markdown="1"> This field is case-sensitive. Enter the valid values as shown. For
    #   example, entering `HERE` returns an error.
    #
    #    </note>
    #
    #   Valid values include:
    #
    #   * `Esri` – For additional information about [Esri][1]'s coverage in
    #     your region of interest, see [Esri details on street networks and
    #     traffic coverage][2].
    #
    #     Route calculators that use Esri as a data source only calculate
    #     routes that are shorter than 400 km.
    #
    #   * `Grab` – Grab provides routing functionality for Southeast Asia. For
    #     additional information about [GrabMaps][3]' coverage, see [GrabMaps
    #     countries and areas covered][4].
    #
    #   * `Here` – For additional information about [HERE Technologies][5]'
    #     coverage in your region of interest, see [HERE car routing
    #     coverage][6] and [HERE truck routing coverage][7].
    #
    #   For additional information , see [Data providers][8] on the *Amazon
    #   Location Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/esri.html
    #   [2]: https://doc.arcgis.com/en/arcgis-online/reference/network-coverage.htm
    #   [3]: https://docs.aws.amazon.com/location/previous/developerguide/grab.html
    #   [4]: https://docs.aws.amazon.com/location/previous/developerguide/grab.html#grab-coverage-area
    #   [5]: https://docs.aws.amazon.com/location/previous/developerguide/HERE.html
    #   [6]: https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/car-routing.html
    #   [7]: https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/truck-routing.html
    #   [8]: https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html
    #
    # @option params [String] :pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #
    # @option params [String] :description
    #   The optional description for the route calculator resource.
    #
    # @option params [Hash<String,String>] :tags
    #   Applies one or more tags to the route calculator resource. A tag is a
    #   key-value pair helps manage, identify, search, and filter your
    #   resources by labelling them.
    #
    #   * For example: \{ `"tag1" : "value1"`, `"tag2" : "value2"`}
    #
    #   ^
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource
    #
    #   * Each resource tag must be unique with a maximum of one value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #
    # @return [Types::CreateRouteCalculatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRouteCalculatorResponse#calculator_name #calculator_name} => String
    #   * {Types::CreateRouteCalculatorResponse#calculator_arn #calculator_arn} => String
    #   * {Types::CreateRouteCalculatorResponse#create_time #create_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route_calculator({
    #     calculator_name: "ResourceName", # required
    #     data_source: "String", # required
    #     pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.calculator_name #=> String
    #   resp.calculator_arn #=> String
    #   resp.create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateRouteCalculator AWS API Documentation
    #
    # @overload create_route_calculator(params = {})
    # @param [Hash] params ({})
    def create_route_calculator(params = {}, options = {})
      req = build_request(:create_route_calculator, params)
      req.send_request(options)
    end

    # Creates a tracker resource in your Amazon Web Services account, which
    # lets you retrieve current and historical location of devices.
    #
    # @option params [required, String] :tracker_name
    #   The name for the tracker resource.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-),
    #     periods (.), and underscores (\_).
    #
    #   * Must be a unique tracker resource name.
    #
    #   * No spaces allowed. For example, `ExampleTracker`.
    #
    # @option params [String] :pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #
    # @option params [String] :kms_key_id
    #   A key identifier for an [Amazon Web Services KMS customer managed
    #   key][1]. Enter a key ID, key ARN, alias name, or alias ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html
    #
    # @option params [String] :pricing_plan_data_source
    #   This parameter is no longer used.
    #
    # @option params [String] :description
    #   An optional description for the tracker resource.
    #
    # @option params [Hash<String,String>] :tags
    #   Applies one or more tags to the tracker resource. A tag is a key-value
    #   pair helps manage, identify, search, and filter your resources by
    #   labelling them.
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource
    #
    #   * Each resource tag must be unique with a maximum of one value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #
    # @option params [String] :position_filtering
    #   Specifies the position filtering for the tracker resource.
    #
    #   Valid values:
    #
    #   * `TimeBased` - Location updates are evaluated against linked geofence
    #     collections, but not every location update is stored. If your update
    #     frequency is more often than 30 seconds, only one update per 30
    #     seconds is stored for each unique device ID.
    #
    #   * `DistanceBased` - If the device has moved less than 30 m (98.4 ft),
    #     location updates are ignored. Location updates within this area are
    #     neither evaluated against linked geofence collections, nor stored.
    #     This helps control costs by reducing the number of geofence
    #     evaluations and historical device positions to paginate through.
    #     Distance-based filtering can also reduce the effects of GPS noise
    #     when displaying device trajectories on a map.
    #
    #   * `AccuracyBased` - If the device has moved less than the measured
    #     accuracy, location updates are ignored. For example, if two
    #     consecutive updates from a device have a horizontal accuracy of 5 m
    #     and 10 m, the second update is ignored if the device has moved less
    #     than 15 m. Ignored location updates are neither evaluated against
    #     linked geofence collections, nor stored. This can reduce the effects
    #     of GPS noise when displaying device trajectories on a map, and can
    #     help control your costs by reducing the number of geofence
    #     evaluations.
    #
    #   This field is optional. If not specified, the default value is
    #   `TimeBased`.
    #
    # @option params [Boolean] :event_bridge_enabled
    #   Whether to enable position `UPDATE` events from this tracker to be
    #   sent to EventBridge.
    #
    #   <note markdown="1"> You do not need enable this feature to get `ENTER` and `EXIT` events
    #   for geofences with this tracker. Those events are always sent to
    #   EventBridge.
    #
    #    </note>
    #
    # @option params [Boolean] :kms_key_enable_geospatial_queries
    #   Enables `GeospatialQueries` for a tracker that uses a [Amazon Web
    #   Services KMS customer managed key][1].
    #
    #   This parameter is only used if you are using a KMS customer managed
    #   key.
    #
    #   <note markdown="1"> If you wish to encrypt your data using your own KMS customer managed
    #   key, then the Bounding Polygon Queries feature will be disabled by
    #   default. This is because by using this feature, a representation of
    #   your device positions will not be encrypted using the your KMS managed
    #   key. The exact device position, however; is still encrypted using your
    #   managed key.
    #
    #    You can choose to opt-in to the Bounding Polygon Quseries feature.
    #   This is done by setting the `KmsKeyEnableGeospatialQueries` parameter
    #   to true when creating or updating a Tracker.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html
    #
    # @return [Types::CreateTrackerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrackerResponse#tracker_name #tracker_name} => String
    #   * {Types::CreateTrackerResponse#tracker_arn #tracker_arn} => String
    #   * {Types::CreateTrackerResponse#create_time #create_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tracker({
    #     tracker_name: "ResourceName", # required
    #     pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     kms_key_id: "KmsKeyId",
    #     pricing_plan_data_source: "String",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     position_filtering: "TimeBased", # accepts TimeBased, DistanceBased, AccuracyBased
    #     event_bridge_enabled: false,
    #     kms_key_enable_geospatial_queries: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.tracker_name #=> String
    #   resp.tracker_arn #=> String
    #   resp.create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateTracker AWS API Documentation
    #
    # @overload create_tracker(params = {})
    # @param [Hash] params ({})
    def create_tracker(params = {}, options = {})
      req = build_request(:create_tracker, params)
      req.send_request(options)
    end

    # Deletes a geofence collection from your Amazon Web Services account.
    #
    # <note markdown="1"> This operation deletes the resource permanently. If the geofence
    # collection is the target of a tracker resource, the devices will no
    # longer be monitored.
    #
    #  </note>
    #
    # @option params [required, String] :collection_name
    #   The name of the geofence collection to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_geofence_collection({
    #     collection_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteGeofenceCollection AWS API Documentation
    #
    # @overload delete_geofence_collection(params = {})
    # @param [Hash] params ({})
    def delete_geofence_collection(params = {}, options = {})
      req = build_request(:delete_geofence_collection, params)
      req.send_request(options)
    end

    # Deletes the specified API key. The API key must have been deactivated
    # more than 90 days previously.
    #
    # For more information, see [Use API keys to authenticate][1] in the
    # *Amazon Location Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html
    #
    # @option params [required, String] :key_name
    #   The name of the API key to delete.
    #
    # @option params [Boolean] :force_delete
    #   ForceDelete bypasses an API key's expiry conditions and deletes the
    #   key. Set the parameter `true` to delete the key or to `false` to not
    #   preemptively delete the API key.
    #
    #   Valid values: `true`, or `false`.
    #
    #   Required: No
    #
    #   <note markdown="1"> This action is irreversible. Only use ForceDelete if you are certain
    #   the key is no longer in use.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_key({
    #     key_name: "ResourceName", # required
    #     force_delete: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteKey AWS API Documentation
    #
    # @overload delete_key(params = {})
    # @param [Hash] params ({})
    def delete_key(params = {}, options = {})
      req = build_request(:delete_key, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend upgrading to the Maps API V2 unless you require
    # `Grab` data.
    #
    #  * `DeleteMap` is part of a previous Amazon Location Service Maps API
    #   (version 1) which has been superseded by a more intuitive, powerful,
    #   and complete API (version 2).
    #
    # * The Maps API version 2 has a simplified interface that can be used
    #   without creating or managing map resources.
    #
    # * If you are using an AWS SDK or the AWS CLI, note that the Maps API
    #   version 2 is found under `geo-maps` or `geo_maps`, not under
    #   `location`.
    #
    # * Since `Grab` is not yet fully supported in Maps API version 2, we
    #   recommend you continue using API version 1 when using `Grab`.
    #
    # * Start your version 2 API journey with the [Maps V2 API Reference][1]
    #   or the [Developer Guide][2].
    #
    #  Deletes a map resource from your Amazon Web Services account.
    #
    #  <note markdown="1"> This operation deletes the resource permanently.
    # If the map is being
    # used in an application, the map may not render.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html
    # [2]: https://docs.aws.amazon.com/location/latest/developerguide/maps.html
    #
    # @option params [required, String] :map_name
    #   The name of the map resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_map({
    #     map_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteMap AWS API Documentation
    #
    # @overload delete_map(params = {})
    # @param [Hash] params ({})
    def delete_map(params = {}, options = {})
      req = build_request(:delete_map, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the Places API V2 unless you
    # require Grab data.
    #
    #  * `DeletePlaceIndex` is part of a previous Amazon Location Service
    #   Places API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The Places API version 2 has a simplified interface that can be used
    #   without creating or managing place index resources.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Places API version 2 is found under
    #   `geo-places` or `geo_places`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Places API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Places V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/places.html).
    #
    #  Deletes a place index resource from your Amazon Web Services account.
    #
    #  <note markdown="1"> This operation deletes the resource permanently.
    #
    #  </note>
    #
    # @option params [required, String] :index_name
    #   The name of the place index resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_place_index({
    #     index_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeletePlaceIndex AWS API Documentation
    #
    # @overload delete_place_index(params = {})
    # @param [Hash] params ({})
    def delete_place_index(params = {}, options = {})
      req = build_request(:delete_place_index, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the Routes API V2 unless you
    # require Grab data.
    #
    #  * `DeleteRouteCalculator` is part of a previous Amazon Location
    #   Service Routes API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The Routes API version 2 has a simplified interface that can be used
    #   without creating or managing route calculator resources.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Routes API version 2 is found under
    #   `geo-routes` or `geo_routes`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Routes API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Routes V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/routes.html).
    #
    #  Deletes a route calculator resource from your Amazon Web Services
    # account.
    #
    #  <note markdown="1"> This operation deletes the resource permanently.
    #
    #  </note>
    #
    # @option params [required, String] :calculator_name
    #   The name of the route calculator resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route_calculator({
    #     calculator_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteRouteCalculator AWS API Documentation
    #
    # @overload delete_route_calculator(params = {})
    # @param [Hash] params ({})
    def delete_route_calculator(params = {}, options = {})
      req = build_request(:delete_route_calculator, params)
      req.send_request(options)
    end

    # Deletes a tracker resource from your Amazon Web Services account.
    #
    # <note markdown="1"> This operation deletes the resource permanently. If the tracker
    # resource is in use, you may encounter an error. Make sure that the
    # target resource isn't a dependency for your applications.
    #
    #  </note>
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tracker({
    #     tracker_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteTracker AWS API Documentation
    #
    # @overload delete_tracker(params = {})
    # @param [Hash] params ({})
    def delete_tracker(params = {}, options = {})
      req = build_request(:delete_tracker, params)
      req.send_request(options)
    end

    # Retrieves the geofence collection details.
    #
    # @option params [required, String] :collection_name
    #   The name of the geofence collection.
    #
    # @return [Types::DescribeGeofenceCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGeofenceCollectionResponse#collection_name #collection_name} => String
    #   * {Types::DescribeGeofenceCollectionResponse#collection_arn #collection_arn} => String
    #   * {Types::DescribeGeofenceCollectionResponse#description #description} => String
    #   * {Types::DescribeGeofenceCollectionResponse#pricing_plan #pricing_plan} => String
    #   * {Types::DescribeGeofenceCollectionResponse#pricing_plan_data_source #pricing_plan_data_source} => String
    #   * {Types::DescribeGeofenceCollectionResponse#kms_key_id #kms_key_id} => String
    #   * {Types::DescribeGeofenceCollectionResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeGeofenceCollectionResponse#create_time #create_time} => Time
    #   * {Types::DescribeGeofenceCollectionResponse#update_time #update_time} => Time
    #   * {Types::DescribeGeofenceCollectionResponse#geofence_count #geofence_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_geofence_collection({
    #     collection_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.collection_name #=> String
    #   resp.collection_arn #=> String
    #   resp.description #=> String
    #   resp.pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.pricing_plan_data_source #=> String
    #   resp.kms_key_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.geofence_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeGeofenceCollection AWS API Documentation
    #
    # @overload describe_geofence_collection(params = {})
    # @param [Hash] params ({})
    def describe_geofence_collection(params = {}, options = {})
      req = build_request(:describe_geofence_collection, params)
      req.send_request(options)
    end

    # Retrieves the API key resource details.
    #
    # For more information, see [Use API keys to authenticate][1] in the
    # *Amazon Location Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html
    #
    # @option params [required, String] :key_name
    #   The name of the API key resource.
    #
    # @return [Types::DescribeKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeKeyResponse#key #key} => String
    #   * {Types::DescribeKeyResponse#key_arn #key_arn} => String
    #   * {Types::DescribeKeyResponse#key_name #key_name} => String
    #   * {Types::DescribeKeyResponse#restrictions #restrictions} => Types::ApiKeyRestrictions
    #   * {Types::DescribeKeyResponse#create_time #create_time} => Time
    #   * {Types::DescribeKeyResponse#expire_time #expire_time} => Time
    #   * {Types::DescribeKeyResponse#update_time #update_time} => Time
    #   * {Types::DescribeKeyResponse#description #description} => String
    #   * {Types::DescribeKeyResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_key({
    #     key_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key #=> String
    #   resp.key_arn #=> String
    #   resp.key_name #=> String
    #   resp.restrictions.allow_actions #=> Array
    #   resp.restrictions.allow_actions[0] #=> String
    #   resp.restrictions.allow_resources #=> Array
    #   resp.restrictions.allow_resources[0] #=> String
    #   resp.restrictions.allow_referers #=> Array
    #   resp.restrictions.allow_referers[0] #=> String
    #   resp.restrictions.allow_android_apps #=> Array
    #   resp.restrictions.allow_android_apps[0].package #=> String
    #   resp.restrictions.allow_android_apps[0].certificate_fingerprint #=> String
    #   resp.restrictions.allow_apple_apps #=> Array
    #   resp.restrictions.allow_apple_apps[0].bundle_id #=> String
    #   resp.create_time #=> Time
    #   resp.expire_time #=> Time
    #   resp.update_time #=> Time
    #   resp.description #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeKey AWS API Documentation
    #
    # @overload describe_key(params = {})
    # @param [Hash] params ({})
    def describe_key(params = {}, options = {})
      req = build_request(:describe_key, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend upgrading to the Maps API V2 unless you require
    # `Grab` data.
    #
    #  * `DescribeMap` is part of a previous Amazon Location Service Maps
    # API
    #   (version 1) which has been superseded by a more intuitive, powerful,
    #   and complete API (version 2).
    #
    # * The Maps API version 2 has a simplified interface that can be used
    #   without creating or managing map resources.
    #
    # * If you are using an AWS SDK or the AWS CLI, note that the Maps API
    #   version 2 is found under `geo-maps` or `geo_maps`, not under
    #   `location`.
    #
    # * Since `Grab` is not yet fully supported in Maps API version 2, we
    #   recommend you continue using API version 1 when using `Grab`.
    #
    # * Start your version 2 API journey with the [Maps V2 API Reference][1]
    #   or the [Developer Guide][2].
    #
    #  Retrieves the map resource details.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html
    # [2]: https://docs.aws.amazon.com/location/latest/developerguide/maps.html
    #
    # @option params [required, String] :map_name
    #   The name of the map resource.
    #
    # @return [Types::DescribeMapResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMapResponse#map_name #map_name} => String
    #   * {Types::DescribeMapResponse#map_arn #map_arn} => String
    #   * {Types::DescribeMapResponse#pricing_plan #pricing_plan} => String
    #   * {Types::DescribeMapResponse#data_source #data_source} => String
    #   * {Types::DescribeMapResponse#configuration #configuration} => Types::MapConfiguration
    #   * {Types::DescribeMapResponse#description #description} => String
    #   * {Types::DescribeMapResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeMapResponse#create_time #create_time} => Time
    #   * {Types::DescribeMapResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_map({
    #     map_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.map_name #=> String
    #   resp.map_arn #=> String
    #   resp.pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.data_source #=> String
    #   resp.configuration.style #=> String
    #   resp.configuration.political_view #=> String
    #   resp.configuration.custom_layers #=> Array
    #   resp.configuration.custom_layers[0] #=> String
    #   resp.description #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeMap AWS API Documentation
    #
    # @overload describe_map(params = {})
    # @param [Hash] params ({})
    def describe_map(params = {}, options = {})
      req = build_request(:describe_map, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the Places API V2 unless you
    # require Grab data.
    #
    #  * `DescribePlaceIndex` is part of a previous Amazon Location Service
    #   Places API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The Places API version 2 has a simplified interface that can be used
    #   without creating or managing place index resources.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Places API version 2 is found under
    #   `geo-places` or `geo_places`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Places API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Places V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/places.html).
    #
    #  Retrieves the place index resource details.
    #
    # @option params [required, String] :index_name
    #   The name of the place index resource.
    #
    # @return [Types::DescribePlaceIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePlaceIndexResponse#index_name #index_name} => String
    #   * {Types::DescribePlaceIndexResponse#index_arn #index_arn} => String
    #   * {Types::DescribePlaceIndexResponse#pricing_plan #pricing_plan} => String
    #   * {Types::DescribePlaceIndexResponse#description #description} => String
    #   * {Types::DescribePlaceIndexResponse#create_time #create_time} => Time
    #   * {Types::DescribePlaceIndexResponse#update_time #update_time} => Time
    #   * {Types::DescribePlaceIndexResponse#data_source #data_source} => String
    #   * {Types::DescribePlaceIndexResponse#data_source_configuration #data_source_configuration} => Types::DataSourceConfiguration
    #   * {Types::DescribePlaceIndexResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_place_index({
    #     index_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.index_name #=> String
    #   resp.index_arn #=> String
    #   resp.pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.description #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.data_source #=> String
    #   resp.data_source_configuration.intended_use #=> String, one of "SingleUse", "Storage"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribePlaceIndex AWS API Documentation
    #
    # @overload describe_place_index(params = {})
    # @param [Hash] params ({})
    def describe_place_index(params = {}, options = {})
      req = build_request(:describe_place_index, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the Routes API V2 unless you
    # require Grab data.
    #
    #  * `DescribeRouteCalculator` is part of a previous Amazon Location
    #   Service Routes API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The Routes API version 2 has a simplified interface that can be used
    #   without creating or managing route calculator resources.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Routes API version 2 is found under
    #   `geo-routes` or `geo_routes`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Routes API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Routes V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/routes.html).
    #
    #  Retrieves the route calculator resource details.
    #
    # @option params [required, String] :calculator_name
    #   The name of the route calculator resource.
    #
    # @return [Types::DescribeRouteCalculatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRouteCalculatorResponse#calculator_name #calculator_name} => String
    #   * {Types::DescribeRouteCalculatorResponse#calculator_arn #calculator_arn} => String
    #   * {Types::DescribeRouteCalculatorResponse#pricing_plan #pricing_plan} => String
    #   * {Types::DescribeRouteCalculatorResponse#description #description} => String
    #   * {Types::DescribeRouteCalculatorResponse#create_time #create_time} => Time
    #   * {Types::DescribeRouteCalculatorResponse#update_time #update_time} => Time
    #   * {Types::DescribeRouteCalculatorResponse#data_source #data_source} => String
    #   * {Types::DescribeRouteCalculatorResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_route_calculator({
    #     calculator_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.calculator_name #=> String
    #   resp.calculator_arn #=> String
    #   resp.pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.description #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.data_source #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeRouteCalculator AWS API Documentation
    #
    # @overload describe_route_calculator(params = {})
    # @param [Hash] params ({})
    def describe_route_calculator(params = {}, options = {})
      req = build_request(:describe_route_calculator, params)
      req.send_request(options)
    end

    # Retrieves the tracker resource details.
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource.
    #
    # @return [Types::DescribeTrackerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrackerResponse#tracker_name #tracker_name} => String
    #   * {Types::DescribeTrackerResponse#tracker_arn #tracker_arn} => String
    #   * {Types::DescribeTrackerResponse#description #description} => String
    #   * {Types::DescribeTrackerResponse#pricing_plan #pricing_plan} => String
    #   * {Types::DescribeTrackerResponse#pricing_plan_data_source #pricing_plan_data_source} => String
    #   * {Types::DescribeTrackerResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeTrackerResponse#create_time #create_time} => Time
    #   * {Types::DescribeTrackerResponse#update_time #update_time} => Time
    #   * {Types::DescribeTrackerResponse#kms_key_id #kms_key_id} => String
    #   * {Types::DescribeTrackerResponse#position_filtering #position_filtering} => String
    #   * {Types::DescribeTrackerResponse#event_bridge_enabled #event_bridge_enabled} => Boolean
    #   * {Types::DescribeTrackerResponse#kms_key_enable_geospatial_queries #kms_key_enable_geospatial_queries} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tracker({
    #     tracker_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tracker_name #=> String
    #   resp.tracker_arn #=> String
    #   resp.description #=> String
    #   resp.pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.pricing_plan_data_source #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.kms_key_id #=> String
    #   resp.position_filtering #=> String, one of "TimeBased", "DistanceBased", "AccuracyBased"
    #   resp.event_bridge_enabled #=> Boolean
    #   resp.kms_key_enable_geospatial_queries #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeTracker AWS API Documentation
    #
    # @overload describe_tracker(params = {})
    # @param [Hash] params ({})
    def describe_tracker(params = {}, options = {})
      req = build_request(:describe_tracker, params)
      req.send_request(options)
    end

    # Removes the association between a tracker resource and a geofence
    # collection.
    #
    # <note markdown="1"> Once you unlink a tracker resource from a geofence collection, the
    # tracker positions will no longer be automatically evaluated against
    # geofences.
    #
    #  </note>
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource to be dissociated from the consumer.
    #
    # @option params [required, String] :consumer_arn
    #   The Amazon Resource Name (ARN) for the geofence collection to be
    #   disassociated from the tracker resource. Used when you need to specify
    #   a resource across all Amazon Web Services.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer`
    #
    #   ^
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_tracker_consumer({
    #     tracker_name: "ResourceName", # required
    #     consumer_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DisassociateTrackerConsumer AWS API Documentation
    #
    # @overload disassociate_tracker_consumer(params = {})
    # @param [Hash] params ({})
    def disassociate_tracker_consumer(params = {}, options = {})
      req = build_request(:disassociate_tracker_consumer, params)
      req.send_request(options)
    end

    # This action forecasts future geofence events that are likely to occur
    # within a specified time horizon if a device continues moving at its
    # current speed. Each forecasted event is associated with a geofence
    # from a provided geofence collection. A forecast event can have one of
    # the following states:
    #
    # `ENTER`: The device position is outside the referenced geofence, but
    # the device may cross into the geofence during the forecasting time
    # horizon if it maintains its current speed.
    #
    # `EXIT`: The device position is inside the referenced geofence, but the
    # device may leave the geofence during the forecasted time horizon if
    # the device maintains it's current speed.
    #
    # `IDLE`:The device is inside the geofence, and it will remain inside
    # the geofence through the end of the time horizon if the device
    # maintains it's current speed.
    #
    # <note markdown="1"> Heading direction is not considered in the current version. The API
    # takes a conservative approach and includes events that can occur for
    # any heading.
    #
    #  </note>
    #
    # @option params [required, String] :collection_name
    #   The name of the geofence collection.
    #
    # @option params [required, Types::ForecastGeofenceEventsDeviceState] :device_state
    #   Represents the device's state, including its current position and
    #   speed. When speed is omitted, this API performs a *containment check*.
    #   The *containment check* operation returns `IDLE` events for geofences
    #   where the device is currently inside of, but no other events.
    #
    # @option params [Float] :time_horizon_minutes
    #   The forward-looking time window for forecasting, specified in minutes.
    #   The API only returns events that are predicted to occur within this
    #   time horizon. When no value is specified, this API performs a
    #   *containment check*. The *containment check* operation returns `IDLE`
    #   events for geofences where the device is currently inside of, but no
    #   other events.
    #
    # @option params [String] :distance_unit
    #   The distance unit used for the `NearestDistance` property returned in
    #   a forecasted event. The measurement system must match for
    #   `DistanceUnit` and `SpeedUnit`; if `Kilometers` is specified for
    #   `DistanceUnit`, then `SpeedUnit` must be `KilometersPerHour`.
    #
    #   Default Value: `Kilometers`
    #
    # @option params [String] :speed_unit
    #   The speed unit for the device captured by the device state. The
    #   measurement system must match for `DistanceUnit` and `SpeedUnit`; if
    #   `Kilometers` is specified for `DistanceUnit`, then `SpeedUnit` must be
    #   `KilometersPerHour`.
    #
    #   Default Value: `KilometersPerHour`.
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `20`
    #
    # @return [Types::ForecastGeofenceEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ForecastGeofenceEventsResponse#forecasted_events #forecasted_events} => Array&lt;Types::ForecastedEvent&gt;
    #   * {Types::ForecastGeofenceEventsResponse#next_token #next_token} => String
    #   * {Types::ForecastGeofenceEventsResponse#distance_unit #distance_unit} => String
    #   * {Types::ForecastGeofenceEventsResponse#speed_unit #speed_unit} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.forecast_geofence_events({
    #     collection_name: "ResourceName", # required
    #     device_state: { # required
    #       position: [1.0], # required
    #       speed: 1.0,
    #     },
    #     time_horizon_minutes: 1.0,
    #     distance_unit: "Kilometers", # accepts Kilometers, Miles
    #     speed_unit: "KilometersPerHour", # accepts KilometersPerHour, MilesPerHour
    #     next_token: "LargeToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.forecasted_events #=> Array
    #   resp.forecasted_events[0].event_id #=> String
    #   resp.forecasted_events[0].geofence_id #=> String
    #   resp.forecasted_events[0].is_device_in_geofence #=> Boolean
    #   resp.forecasted_events[0].nearest_distance #=> Float
    #   resp.forecasted_events[0].event_type #=> String, one of "ENTER", "EXIT", "IDLE"
    #   resp.forecasted_events[0].forecasted_breach_time #=> Time
    #   resp.forecasted_events[0].geofence_properties #=> Hash
    #   resp.forecasted_events[0].geofence_properties["PropertyMapKeyString"] #=> String
    #   resp.next_token #=> String
    #   resp.distance_unit #=> String, one of "Kilometers", "Miles"
    #   resp.speed_unit #=> String, one of "KilometersPerHour", "MilesPerHour"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ForecastGeofenceEvents AWS API Documentation
    #
    # @overload forecast_geofence_events(params = {})
    # @param [Hash] params ({})
    def forecast_geofence_events(params = {}, options = {})
      req = build_request(:forecast_geofence_events, params)
      req.send_request(options)
    end

    # Retrieves a device's most recent position according to its sample
    # time.
    #
    # <note markdown="1"> Device positions are deleted after 30 days.
    #
    #  </note>
    #
    # @option params [required, String] :tracker_name
    #   The tracker resource receiving the position update.
    #
    # @option params [required, String] :device_id
    #   The device whose position you want to retrieve.
    #
    # @return [Types::GetDevicePositionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevicePositionResponse#device_id #device_id} => String
    #   * {Types::GetDevicePositionResponse#sample_time #sample_time} => Time
    #   * {Types::GetDevicePositionResponse#received_time #received_time} => Time
    #   * {Types::GetDevicePositionResponse#position #position} => Array&lt;Float&gt;
    #   * {Types::GetDevicePositionResponse#accuracy #accuracy} => Types::PositionalAccuracy
    #   * {Types::GetDevicePositionResponse#position_properties #position_properties} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_position({
    #     tracker_name: "ResourceName", # required
    #     device_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_id #=> String
    #   resp.sample_time #=> Time
    #   resp.received_time #=> Time
    #   resp.position #=> Array
    #   resp.position[0] #=> Float
    #   resp.accuracy.horizontal #=> Float
    #   resp.position_properties #=> Hash
    #   resp.position_properties["PositionPropertyMapKeyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetDevicePosition AWS API Documentation
    #
    # @overload get_device_position(params = {})
    # @param [Hash] params ({})
    def get_device_position(params = {}, options = {})
      req = build_request(:get_device_position, params)
      req.send_request(options)
    end

    # Retrieves the device position history from a tracker resource within a
    # specified range of time.
    #
    # <note markdown="1"> Device positions are deleted after 30 days.
    #
    #  </note>
    #
    # @option params [required, String] :tracker_name
    #   The tracker resource receiving the request for the device position
    #   history.
    #
    # @option params [required, String] :device_id
    #   The device whose position history you want to retrieve.
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time_inclusive
    #   Specify the start time for the position history in [ ISO 8601][1]
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`. By default, the value will be 24
    #   hours prior to the time that the request is made.
    #
    #   Requirement:
    #
    #   * The time specified for `StartTimeInclusive` must be before
    #     `EndTimeExclusive`.
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time_exclusive
    #   Specify the end time for the position history in [ ISO 8601][1]
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`. By default, the value will be the
    #   time that the request is made.
    #
    #   Requirement:
    #
    #   * The time specified for `EndTimeExclusive` must be after the time for
    #     `StartTimeInclusive`.
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of device positions returned in a
    #   single call.
    #
    #   Default value: `100`
    #
    # @return [Types::GetDevicePositionHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevicePositionHistoryResponse#device_positions #device_positions} => Array&lt;Types::DevicePosition&gt;
    #   * {Types::GetDevicePositionHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_position_history({
    #     tracker_name: "ResourceName", # required
    #     device_id: "Id", # required
    #     next_token: "Token",
    #     start_time_inclusive: Time.now,
    #     end_time_exclusive: Time.now,
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.device_positions #=> Array
    #   resp.device_positions[0].device_id #=> String
    #   resp.device_positions[0].sample_time #=> Time
    #   resp.device_positions[0].received_time #=> Time
    #   resp.device_positions[0].position #=> Array
    #   resp.device_positions[0].position[0] #=> Float
    #   resp.device_positions[0].accuracy.horizontal #=> Float
    #   resp.device_positions[0].position_properties #=> Hash
    #   resp.device_positions[0].position_properties["PositionPropertyMapKeyString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetDevicePositionHistory AWS API Documentation
    #
    # @overload get_device_position_history(params = {})
    # @param [Hash] params ({})
    def get_device_position_history(params = {}, options = {})
      req = build_request(:get_device_position_history, params)
      req.send_request(options)
    end

    # Retrieves the geofence details from a geofence collection.
    #
    # <note markdown="1"> The returned geometry will always match the geometry format used when
    # the geofence was created.
    #
    #  </note>
    #
    # @option params [required, String] :collection_name
    #   The geofence collection storing the target geofence.
    #
    # @option params [required, String] :geofence_id
    #   The geofence you're retrieving details for.
    #
    # @return [Types::GetGeofenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGeofenceResponse#geofence_id #geofence_id} => String
    #   * {Types::GetGeofenceResponse#geometry #geometry} => Types::GeofenceGeometry
    #   * {Types::GetGeofenceResponse#status #status} => String
    #   * {Types::GetGeofenceResponse#create_time #create_time} => Time
    #   * {Types::GetGeofenceResponse#update_time #update_time} => Time
    #   * {Types::GetGeofenceResponse#geofence_properties #geofence_properties} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_geofence({
    #     collection_name: "ResourceName", # required
    #     geofence_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.geofence_id #=> String
    #   resp.geometry.polygon #=> Array
    #   resp.geometry.polygon[0] #=> Array
    #   resp.geometry.polygon[0][0] #=> Array
    #   resp.geometry.polygon[0][0][0] #=> Float
    #   resp.geometry.circle.center #=> Array
    #   resp.geometry.circle.center[0] #=> Float
    #   resp.geometry.circle.radius #=> Float
    #   resp.geometry.geobuf #=> String
    #   resp.geometry.multi_polygon #=> Array
    #   resp.geometry.multi_polygon[0] #=> Array
    #   resp.geometry.multi_polygon[0][0] #=> Array
    #   resp.geometry.multi_polygon[0][0][0] #=> Array
    #   resp.geometry.multi_polygon[0][0][0][0] #=> Float
    #   resp.status #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.geofence_properties #=> Hash
    #   resp.geofence_properties["PropertyMapKeyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetGeofence AWS API Documentation
    #
    # @overload get_geofence(params = {})
    # @param [Hash] params ({})
    def get_geofence(params = {}, options = {})
      req = build_request(:get_geofence, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend upgrading to [ `GetGlyphs` ][1] unless you
    # require `Grab` data.
    #
    #  * `GetMapGlyphs` is part of a previous Amazon Location Service Maps
    #   API (version 1) which has been superseded by a more intuitive,
    #   powerful, and complete API (version 2).
    #
    # * The version 2 `GetGlyphs` operation gives a better user experience
    #   and is compatible with the remainder of the V2 Maps API.
    #
    # * If you are using an AWS SDK or the AWS CLI, note that the Maps API
    #   version 2 is found under `geo-maps` or `geo_maps`, not under
    #   `location`.
    #
    # * Since `Grab` is not yet fully supported in Maps API version 2, we
    #   recommend you continue using API version 1 when using `Grab`.
    #
    # * Start your version 2 API journey with the [Maps V2 API Reference][2]
    #   or the [Developer Guide][3].
    #
    #  Retrieves glyphs used to display labels on a map.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/APIReference/API_geomaps_GetGlyphs.html
    # [2]: https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html
    # [3]: https://docs.aws.amazon.com/location/latest/developerguide/maps.html
    #
    # @option params [required, String] :map_name
    #   The map resource associated with the glyph ﬁle.
    #
    # @option params [required, String] :font_stack
    #   A comma-separated list of fonts to load glyphs from in order of
    #   preference. For example, `Noto Sans Regular, Arial Unicode`.
    #
    #   Valid font stacks for [Esri][1] styles:
    #
    #   * VectorEsriDarkGrayCanvas – `Ubuntu Medium Italic` \| `Ubuntu Medium`
    #     \| `Ubuntu Italic` \| `Ubuntu Regular` \| `Ubuntu Bold`
    #
    #   * VectorEsriLightGrayCanvas – `Ubuntu Italic` \| `Ubuntu Regular` \|
    #     `Ubuntu Light` \| `Ubuntu Bold`
    #
    #   * VectorEsriTopographic – `Noto Sans Italic` \| `Noto Sans Regular` \|
    #     `Noto Sans Bold` \| `Noto Serif Regular` \| `Roboto Condensed Light
    #     Italic`
    #
    #   * VectorEsriStreets – `Arial Regular` \| `Arial Italic` \| `Arial
    #     Bold`
    #
    #   * VectorEsriNavigation – `Arial Regular` \| `Arial Italic` \| `Arial
    #     Bold`
    #
    #   Valid font stacks for [HERE Technologies][2] styles:
    #
    #   * VectorHereContrast – `Fira GO Regular` \| `Fira GO Bold`
    #
    #   * VectorHereExplore, VectorHereExploreTruck,
    #     HybridHereExploreSatellite – `Fira GO Italic` \| `Fira GO Map` \|
    #     `Fira GO Map Bold` \| `Noto Sans CJK JP Bold` \| `Noto Sans CJK JP
    #     Light` \| `Noto Sans CJK JP Regular`
    #
    #   Valid font stacks for [GrabMaps][3] styles:
    #
    #   * VectorGrabStandardLight, VectorGrabStandardDark – `Noto Sans
    #     Regular` \| `Noto Sans Medium` \| `Noto Sans Bold`
    #
    #   ^
    #
    #   Valid font stacks for [Open Data][4] styles:
    #
    #   * VectorOpenDataStandardLight, VectorOpenDataStandardDark,
    #     VectorOpenDataVisualizationLight, VectorOpenDataVisualizationDark –
    #     `Amazon Ember Regular,Noto Sans Regular` \| `Amazon Ember Bold,Noto
    #     Sans Bold` \| `Amazon Ember Medium,Noto Sans Medium` \| `Amazon
    #     Ember Regular Italic,Noto Sans Italic` \| `Amazon Ember Condensed RC
    #     Regular,Noto Sans Regular` \| `Amazon Ember Condensed RC Bold,Noto
    #     Sans Bold` \| `Amazon Ember Regular,Noto Sans Regular,Noto Sans
    #     Arabic Regular` \| `Amazon Ember Condensed RC Bold,Noto Sans
    #     Bold,Noto Sans Arabic Condensed Bold` \| `Amazon Ember Bold,Noto
    #     Sans Bold,Noto Sans Arabic Bold` \| `Amazon Ember Regular
    #     Italic,Noto Sans Italic,Noto Sans Arabic Regular` \| `Amazon Ember
    #     Condensed RC Regular,Noto Sans Regular,Noto Sans Arabic Condensed
    #     Regular` \| `Amazon Ember Medium,Noto Sans Medium,Noto Sans Arabic
    #     Medium`
    #
    #   ^
    #
    #   <note markdown="1"> The fonts used by the Open Data map styles are combined fonts that use
    #   `Amazon Ember` for most glyphs but `Noto Sans` for glyphs unsupported
    #   by `Amazon Ember`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/esri.html
    #   [2]: https://docs.aws.amazon.com/location/previous/developerguide/HERE.html
    #   [3]: https://docs.aws.amazon.com/location/previous/developerguide/grab.html
    #   [4]: https://docs.aws.amazon.com/location/previous/developerguide/open-data.html
    #
    # @option params [required, String] :font_unicode_range
    #   A Unicode range of characters to download glyphs for. Each response
    #   will contain 256 characters. For example, 0–255 includes all
    #   characters from range `U+0000` to `00FF`. Must be aligned to multiples
    #   of 256.
    #
    # @option params [String] :key
    #   The optional [API key][1] to authorize the request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html
    #
    # @return [Types::GetMapGlyphsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMapGlyphsResponse#blob #blob} => IO
    #   * {Types::GetMapGlyphsResponse#content_type #content_type} => String
    #   * {Types::GetMapGlyphsResponse#cache_control #cache_control} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_glyphs({
    #     map_name: "ResourceName", # required
    #     font_stack: "String", # required
    #     font_unicode_range: "GetMapGlyphsRequestFontUnicodeRangeString", # required
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #   resp.cache_control #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapGlyphs AWS API Documentation
    #
    # @overload get_map_glyphs(params = {})
    # @param [Hash] params ({})
    def get_map_glyphs(params = {}, options = {}, &block)
      req = build_request(:get_map_glyphs, params)
      req.send_request(options, &block)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend upgrading to [ `GetSprites` ][1] unless you
    # require `Grab` data.
    #
    #  * `GetMapSprites` is part of a previous Amazon Location Service Maps
    #   API (version 1) which has been superseded by a more intuitive,
    #   powerful, and complete API (version 2).
    #
    # * The version 2 `GetSprites` operation gives a better user experience
    #   and is compatible with the remainder of the V2 Maps API.
    #
    # * If you are using an AWS SDK or the AWS CLI, note that the Maps API
    #   version 2 is found under `geo-maps` or `geo_maps`, not under
    #   `location`.
    #
    # * Since `Grab` is not yet fully supported in Maps API version 2, we
    #   recommend you continue using API version 1 when using `Grab`.
    #
    # * Start your version 2 API journey with the [Maps V2 API Reference][2]
    #   or the [Developer Guide][3].
    #
    #  Retrieves the sprite sheet corresponding to a map resource. The
    # sprite
    # sheet is a PNG image paired with a JSON document describing the
    # offsets of individual icons that will be displayed on a rendered map.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/APIReference/API_geomaps_GetSprites.html
    # [2]: https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html
    # [3]: https://docs.aws.amazon.com/location/latest/developerguide/maps.html
    #
    # @option params [required, String] :map_name
    #   The map resource associated with the sprite ﬁle.
    #
    # @option params [required, String] :file_name
    #   The name of the sprite ﬁle. Use the following ﬁle names for the sprite
    #   sheet:
    #
    #   * `sprites.png`
    #
    #   * `sprites@2x.png` for high pixel density displays
    #
    #   For the JSON document containing image offsets. Use the following ﬁle
    #   names:
    #
    #   * `sprites.json`
    #
    #   * `sprites@2x.json` for high pixel density displays
    #
    # @option params [String] :key
    #   The optional [API key][1] to authorize the request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html
    #
    # @return [Types::GetMapSpritesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMapSpritesResponse#blob #blob} => IO
    #   * {Types::GetMapSpritesResponse#content_type #content_type} => String
    #   * {Types::GetMapSpritesResponse#cache_control #cache_control} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_sprites({
    #     map_name: "ResourceName", # required
    #     file_name: "GetMapSpritesRequestFileNameString", # required
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #   resp.cache_control #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapSprites AWS API Documentation
    #
    # @overload get_map_sprites(params = {})
    # @param [Hash] params ({})
    def get_map_sprites(params = {}, options = {}, &block)
      req = build_request(:get_map_sprites, params)
      req.send_request(options, &block)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend upgrading to [ `GetStyleDescriptor` ][1] unless
    # you require `Grab` data.
    #
    #  * `GetMapStyleDescriptor` is part of a previous Amazon Location
    #   Service Maps API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The version 2 `GetStyleDescriptor` operation gives a better user
    #   experience and is compatible with the remainder of the V2 Maps API.
    #
    # * If you are using an AWS SDK or the AWS CLI, note that the Maps API
    #   version 2 is found under `geo-maps` or `geo_maps`, not under
    #   `location`.
    #
    # * Since `Grab` is not yet fully supported in Maps API version 2, we
    #   recommend you continue using API version 1 when using `Grab`.
    #
    # * Start your version 2 API journey with the [Maps V2 API Reference][2]
    #   or the [Developer Guide][3].
    #
    #  Retrieves the map style descriptor from a map resource.
    #
    #  The style descriptor contains speciﬁcations on how features render on
    # a map. For example, what data to display, what order to display the
    # data in, and the style for the data. Style descriptors follow the
    # Mapbox Style Specification.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/APIReference/API_geomaps_GetStyleDescriptor.html
    # [2]: https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html
    # [3]: https://docs.aws.amazon.com/location/latest/developerguide/maps.html
    #
    # @option params [required, String] :map_name
    #   The map resource to retrieve the style descriptor from.
    #
    # @option params [String] :key
    #   The optional [API key][1] to authorize the request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html
    #
    # @return [Types::GetMapStyleDescriptorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMapStyleDescriptorResponse#blob #blob} => IO
    #   * {Types::GetMapStyleDescriptorResponse#content_type #content_type} => String
    #   * {Types::GetMapStyleDescriptorResponse#cache_control #cache_control} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_style_descriptor({
    #     map_name: "ResourceName", # required
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #   resp.cache_control #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapStyleDescriptor AWS API Documentation
    #
    # @overload get_map_style_descriptor(params = {})
    # @param [Hash] params ({})
    def get_map_style_descriptor(params = {}, options = {}, &block)
      req = build_request(:get_map_style_descriptor, params)
      req.send_request(options, &block)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend upgrading to [ `GetTile` ][1] unless you require
    # `Grab` data.
    #
    #  * `GetMapTile` is part of a previous Amazon Location Service Maps API
    #   (version 1) which has been superseded by a more intuitive, powerful,
    #   and complete API (version 2).
    #
    # * The version 2 `GetTile` operation gives a better user experience and
    #   is compatible with the remainder of the V2 Maps API.
    #
    # * If you are using an AWS SDK or the AWS CLI, note that the Maps API
    #   version 2 is found under `geo-maps` or `geo_maps`, not under
    #   `location`.
    #
    # * Since `Grab` is not yet fully supported in Maps API version 2, we
    #   recommend you continue using API version 1 when using `Grab`.
    #
    # * Start your version 2 API journey with the [Maps V2 API Reference][2]
    #   or the [Developer Guide][3].
    #
    #  Retrieves a vector data tile from the map resource. Map tiles are
    # used
    # by clients to render a map. they're addressed using a grid
    # arrangement with an X coordinate, Y coordinate, and Z (zoom) level.
    #
    #  The origin (0, 0) is the top left of the map. Increasing the zoom
    # level by 1 doubles both the X and Y dimensions, so a tile containing
    # data for the entire world at (0/0/0) will be split into 4 tiles at
    # zoom 1 (1/0/0, 1/0/1, 1/1/0, 1/1/1).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/APIReference/API_geomaps_GetTile.html
    # [2]: https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html
    # [3]: https://docs.aws.amazon.com/location/latest/developerguide/maps.html
    #
    # @option params [required, String] :map_name
    #   The map resource to retrieve the map tiles from.
    #
    # @option params [required, String] :z
    #   The zoom value for the map tile.
    #
    # @option params [required, String] :x
    #   The X axis value for the map tile.
    #
    # @option params [required, String] :y
    #   The Y axis value for the map tile.
    #
    # @option params [String] :key
    #   The optional [API key][1] to authorize the request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html
    #
    # @return [Types::GetMapTileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMapTileResponse#blob #blob} => IO
    #   * {Types::GetMapTileResponse#content_type #content_type} => String
    #   * {Types::GetMapTileResponse#cache_control #cache_control} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_tile({
    #     map_name: "ResourceName", # required
    #     z: "GetMapTileRequestZString", # required
    #     x: "GetMapTileRequestXString", # required
    #     y: "GetMapTileRequestYString", # required
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #   resp.cache_control #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapTile AWS API Documentation
    #
    # @overload get_map_tile(params = {})
    # @param [Hash] params ({})
    def get_map_tile(params = {}, options = {}, &block)
      req = build_request(:get_map_tile, params)
      req.send_request(options, &block)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the [V2 `GetPlace`
    # ](/location/latest/APIReference/API_geoplaces_GetPlace.html) operation
    # unless you require Grab data.
    #
    #  * This version of `GetPlace` is part of a previous Amazon Location
    #   Service Places API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * Version 2 of the `GetPlace` operation interoperates with the rest of
    #   the Places V2 API, while this version does not.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Places API version 2 is found under
    #   `geo-places` or `geo_places`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Places API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Places V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/places.html).
    #
    #  Finds a place by its unique ID. A `PlaceId` is returned by other
    # search operations.
    #
    #  <note markdown="1"> A PlaceId is valid only if all of the following
    # are the same in the
    # original search request and the call to `GetPlace`.
    #
    #  * Customer Amazon Web Services account
    #
    # * Amazon Web Services Region
    #
    # * Data provider specified in the place index resource
    #
    #  </note>
    #
    #  <note markdown="1"> If your Place index resource is configured with
    # Grab as your
    # geolocation provider and Storage as Intended use, the GetPlace
    # operation is unavailable. For more information, see [AWS service
    # terms][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/service-terms
    #
    # @option params [required, String] :index_name
    #   The name of the place index resource that you want to use for the
    #   search.
    #
    # @option params [required, String] :place_id
    #   The identifier of the place to find.
    #
    # @option params [String] :language
    #   The preferred language used to return results. The value must be a
    #   valid [BCP 47][1] language tag, for example, `en` for English.
    #
    #   This setting affects the languages used in the results, but not the
    #   results themselves. If no language is specified, or not supported for
    #   a particular result, the partner automatically chooses a language for
    #   the result.
    #
    #   For an example, we'll use the Greek language. You search for a
    #   location around Athens, Greece, with the `language` parameter set to
    #   `en`. The `city` in the results will most likely be returned as
    #   `Athens`.
    #
    #   If you set the `language` parameter to `el`, for Greek, then the
    #   `city` in the results will more likely be returned as `Αθήνα`.
    #
    #   If the data provider does not have a value for Greek, the result will
    #   be in a language that the provider does support.
    #
    #
    #
    #   [1]: https://tools.ietf.org/search/bcp47
    #
    # @option params [String] :key
    #   The optional [API key][1] to authorize the request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html
    #
    # @return [Types::GetPlaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlaceResponse#place #place} => Types::Place
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_place({
    #     index_name: "ResourceName", # required
    #     place_id: "PlaceId", # required
    #     language: "LanguageTag",
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.place.label #=> String
    #   resp.place.geometry.point #=> Array
    #   resp.place.geometry.point[0] #=> Float
    #   resp.place.address_number #=> String
    #   resp.place.street #=> String
    #   resp.place.neighborhood #=> String
    #   resp.place.municipality #=> String
    #   resp.place.sub_region #=> String
    #   resp.place.region #=> String
    #   resp.place.country #=> String
    #   resp.place.postal_code #=> String
    #   resp.place.interpolated #=> Boolean
    #   resp.place.time_zone.name #=> String
    #   resp.place.time_zone.offset #=> Integer
    #   resp.place.unit_type #=> String
    #   resp.place.unit_number #=> String
    #   resp.place.categories #=> Array
    #   resp.place.categories[0] #=> String
    #   resp.place.supplemental_categories #=> Array
    #   resp.place.supplemental_categories[0] #=> String
    #   resp.place.sub_municipality #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetPlace AWS API Documentation
    #
    # @overload get_place(params = {})
    # @param [Hash] params ({})
    def get_place(params = {}, options = {})
      req = build_request(:get_place, params)
      req.send_request(options)
    end

    # A batch request to retrieve all device positions.
    #
    # @option params [required, String] :tracker_name
    #   The tracker resource containing the requested devices.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of entries returned in a single call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @option params [Types::TrackingFilterGeometry] :filter_geometry
    #   The geometry used to filter device positions.
    #
    # @return [Types::ListDevicePositionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicePositionsResponse#entries #data.entries} => Array&lt;Types::ListDevicePositionsResponseEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::ListDevicePositionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_positions({
    #     tracker_name: "ResourceName", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter_geometry: {
    #       polygon: [
    #         [
    #           [1.0],
    #         ],
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].device_id #=> String
    #   resp.data.entries[0].sample_time #=> Time
    #   resp.data.entries[0].position #=> Array
    #   resp.data.entries[0].position[0] #=> Float
    #   resp.data.entries[0].accuracy.horizontal #=> Float
    #   resp.data.entries[0].position_properties #=> Hash
    #   resp.data.entries[0].position_properties["PositionPropertyMapKeyString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListDevicePositions AWS API Documentation
    #
    # @overload list_device_positions(params = {})
    # @param [Hash] params ({})
    def list_device_positions(params = {}, options = {})
      req = build_request(:list_device_positions, params)
      req.send_request(options)
    end

    # Lists geofence collections in your Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @return [Types::ListGeofenceCollectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGeofenceCollectionsResponse#entries #data.entries} => Array&lt;Types::ListGeofenceCollectionsResponseEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::ListGeofenceCollectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_geofence_collections({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].collection_name #=> String
    #   resp.data.entries[0].description #=> String
    #   resp.data.entries[0].pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.data.entries[0].pricing_plan_data_source #=> String
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListGeofenceCollections AWS API Documentation
    #
    # @overload list_geofence_collections(params = {})
    # @param [Hash] params ({})
    def list_geofence_collections(params = {}, options = {})
      req = build_request(:list_geofence_collections, params)
      req.send_request(options)
    end

    # Lists geofences stored in a given geofence collection.
    #
    # @option params [required, String] :collection_name
    #   The name of the geofence collection storing the list of geofences.
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of geofences returned in a single
    #   call.
    #
    #   Default value: `100`
    #
    # @return [Types::ListGeofencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGeofencesResponse#entries #data.entries} => Array&lt;Types::ListGeofenceResponseEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::ListGeofencesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_geofences({
    #     collection_name: "ResourceName", # required
    #     next_token: "LargeToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].geofence_id #=> String
    #   resp.data.entries[0].geometry.polygon #=> Array
    #   resp.data.entries[0].geometry.polygon[0] #=> Array
    #   resp.data.entries[0].geometry.polygon[0][0] #=> Array
    #   resp.data.entries[0].geometry.polygon[0][0][0] #=> Float
    #   resp.data.entries[0].geometry.circle.center #=> Array
    #   resp.data.entries[0].geometry.circle.center[0] #=> Float
    #   resp.data.entries[0].geometry.circle.radius #=> Float
    #   resp.data.entries[0].geometry.geobuf #=> String
    #   resp.data.entries[0].geometry.multi_polygon #=> Array
    #   resp.data.entries[0].geometry.multi_polygon[0] #=> Array
    #   resp.data.entries[0].geometry.multi_polygon[0][0] #=> Array
    #   resp.data.entries[0].geometry.multi_polygon[0][0][0] #=> Array
    #   resp.data.entries[0].geometry.multi_polygon[0][0][0][0] #=> Float
    #   resp.data.entries[0].status #=> String
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.data.entries[0].geofence_properties #=> Hash
    #   resp.data.entries[0].geofence_properties["PropertyMapKeyString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListGeofences AWS API Documentation
    #
    # @overload list_geofences(params = {})
    # @param [Hash] params ({})
    def list_geofences(params = {}, options = {})
      req = build_request(:list_geofences, params)
      req.send_request(options)
    end

    # Lists API key resources in your Amazon Web Services account.
    #
    # For more information, see [Use API keys to authenticate][1] in the
    # *Amazon Location Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @option params [Types::ApiKeyFilter] :filter
    #   Optionally filter the list to only `Active` or `Expired` API keys.
    #
    # @return [Types::ListKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeysResponse#entries #data.entries} => Array&lt;Types::ListKeysResponseEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::ListKeysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_keys({
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       key_status: "Active", # accepts Active, Expired
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].key_name #=> String
    #   resp.data.entries[0].expire_time #=> Time
    #   resp.data.entries[0].description #=> String
    #   resp.data.entries[0].restrictions.allow_actions #=> Array
    #   resp.data.entries[0].restrictions.allow_actions[0] #=> String
    #   resp.data.entries[0].restrictions.allow_resources #=> Array
    #   resp.data.entries[0].restrictions.allow_resources[0] #=> String
    #   resp.data.entries[0].restrictions.allow_referers #=> Array
    #   resp.data.entries[0].restrictions.allow_referers[0] #=> String
    #   resp.data.entries[0].restrictions.allow_android_apps #=> Array
    #   resp.data.entries[0].restrictions.allow_android_apps[0].package #=> String
    #   resp.data.entries[0].restrictions.allow_android_apps[0].certificate_fingerprint #=> String
    #   resp.data.entries[0].restrictions.allow_apple_apps #=> Array
    #   resp.data.entries[0].restrictions.allow_apple_apps[0].bundle_id #=> String
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListKeys AWS API Documentation
    #
    # @overload list_keys(params = {})
    # @param [Hash] params ({})
    def list_keys(params = {}, options = {})
      req = build_request(:list_keys, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend upgrading to the Maps API V2 unless you require
    # `Grab` data.
    #
    #  * `ListMaps` is part of a previous Amazon Location Service Maps API
    #   (version 1) which has been superseded by a more intuitive, powerful,
    #   and complete API (version 2).
    #
    # * The Maps API version 2 has a simplified interface that can be used
    #   without creating or managing map resources.
    #
    # * If you are using an AWS SDK or the AWS CLI, note that the Maps API
    #   version 2 is found under `geo-maps` or `geo_maps`, not under
    #   `location`.
    #
    # * Since `Grab` is not yet fully supported in Maps API version 2, we
    #   recommend you continue using API version 1 when using `Grab`.
    #
    # * Start your version 2 API journey with the [Maps V2 API Reference][1]
    #   or the [Developer Guide][2].
    #
    #  Lists map resources in your Amazon Web Services account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html
    # [2]: https://docs.aws.amazon.com/location/latest/developerguide/maps.html
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @return [Types::ListMapsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMapsResponse#entries #data.entries} => Array&lt;Types::ListMapsResponseEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::ListMapsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_maps({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].map_name #=> String
    #   resp.data.entries[0].description #=> String
    #   resp.data.entries[0].data_source #=> String
    #   resp.data.entries[0].pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListMaps AWS API Documentation
    #
    # @overload list_maps(params = {})
    # @param [Hash] params ({})
    def list_maps(params = {}, options = {})
      req = build_request(:list_maps, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the Places API V2 unless you
    # require Grab data.
    #
    #  * `ListPlaceIndexes` is part of a previous Amazon Location Service
    #   Places API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The Places API version 2 has a simplified interface that can be used
    #   without creating or managing place index resources.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Places API version 2 is found under
    #   `geo-places` or `geo_places`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Places API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Places V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/places.html).
    #
    #  Lists place index resources in your Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the maximum number of results returned in a
    #   single call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @return [Types::ListPlaceIndexesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlaceIndexesResponse#entries #data.entries} => Array&lt;Types::ListPlaceIndexesResponseEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::ListPlaceIndexesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_place_indexes({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].index_name #=> String
    #   resp.data.entries[0].description #=> String
    #   resp.data.entries[0].data_source #=> String
    #   resp.data.entries[0].pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListPlaceIndexes AWS API Documentation
    #
    # @overload list_place_indexes(params = {})
    # @param [Hash] params ({})
    def list_place_indexes(params = {}, options = {})
      req = build_request(:list_place_indexes, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the Routes API V2 unless you
    # require Grab data.
    #
    #  * `ListRouteCalculators` is part of a previous Amazon Location
    # Service
    #   Routes API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The Routes API version 2 has a simplified interface that can be used
    #   without creating or managing route calculator resources.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Routes API version 2 is found under
    #   `geo-routes` or `geo_routes`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Routes API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Routes V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/routes.html).
    #
    #  Lists route calculator resources in your Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   An optional maximum number of results returned in a single call.
    #
    #   Default Value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default Value: `null`
    #
    # @return [Types::ListRouteCalculatorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRouteCalculatorsResponse#entries #data.entries} => Array&lt;Types::ListRouteCalculatorsResponseEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::ListRouteCalculatorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_route_calculators({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].calculator_name #=> String
    #   resp.data.entries[0].description #=> String
    #   resp.data.entries[0].data_source #=> String
    #   resp.data.entries[0].pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListRouteCalculators AWS API Documentation
    #
    # @overload list_route_calculators(params = {})
    # @param [Hash] params ({})
    def list_route_calculators(params = {}, options = {})
      req = build_request(:list_route_calculators, params)
      req.send_request(options)
    end

    # Returns a list of tags that are applied to the specified Amazon
    # Location resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want to
    #   retrieve.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:resourcetype/ExampleResource`
    #
    #   ^
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists geofence collections currently associated to the given tracker
    # resource.
    #
    # @option params [required, String] :tracker_name
    #   The tracker resource whose associated geofence collections you want to
    #   list.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @return [Types::ListTrackerConsumersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrackerConsumersResponse#consumer_arns #consumer_arns} => Array&lt;String&gt;
    #   * {Types::ListTrackerConsumersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tracker_consumers({
    #     tracker_name: "ResourceName", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.consumer_arns #=> Array
    #   resp.consumer_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTrackerConsumers AWS API Documentation
    #
    # @overload list_tracker_consumers(params = {})
    # @param [Hash] params ({})
    def list_tracker_consumers(params = {}, options = {})
      req = build_request(:list_tracker_consumers, params)
      req.send_request(options)
    end

    # Lists tracker resources in your Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #
    # @option params [String] :next_token
    #   The pagination token specifying which page of results to return in the
    #   response. If no token is provided, the default page is the first page.
    #
    #   Default value: `null`
    #
    # @return [Types::ListTrackersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrackersResponse#entries #data.entries} => Array&lt;Types::ListTrackersResponseEntry&gt; (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::ListTrackersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trackers({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.data.entries #=> Array
    #   resp.data.entries[0].tracker_name #=> String
    #   resp.data.entries[0].description #=> String
    #   resp.data.entries[0].pricing_plan #=> String, one of "RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"
    #   resp.data.entries[0].pricing_plan_data_source #=> String
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTrackers AWS API Documentation
    #
    # @overload list_trackers(params = {})
    # @param [Hash] params ({})
    def list_trackers(params = {}, options = {})
      req = build_request(:list_trackers, params)
      req.send_request(options)
    end

    # Stores a geofence geometry in a given geofence collection, or updates
    # the geometry of an existing geofence if a geofence ID is included in
    # the request.
    #
    # @option params [required, String] :collection_name
    #   The geofence collection to store the geofence in.
    #
    # @option params [required, String] :geofence_id
    #   An identifier for the geofence. For example, `ExampleGeofence-1`.
    #
    # @option params [required, Types::GeofenceGeometry] :geometry
    #   Contains the details to specify the position of the geofence. Can be a
    #   circle, a polygon, or a multipolygon. `Polygon` and `MultiPolygon`
    #   geometries can be defined using their respective parameters, or
    #   encoded in Geobuf format using the `Geobuf` parameter. Including
    #   multiple geometry types in the same request will return a validation
    #   error.
    #
    #   <note markdown="1"> The geofence `Polygon` and `MultiPolygon` formats support a maximum of
    #   1,000 total vertices. The `Geobuf` format supports a maximum of
    #   100,000 vertices.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :geofence_properties
    #   Associates one of more properties with the geofence. A property is a
    #   key-value pair stored with the geofence and added to any geofence
    #   event triggered with that geofence.
    #
    #   Format: `"key" : "value"`
    #
    # @return [Types::PutGeofenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutGeofenceResponse#geofence_id #geofence_id} => String
    #   * {Types::PutGeofenceResponse#create_time #create_time} => Time
    #   * {Types::PutGeofenceResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_geofence({
    #     collection_name: "ResourceName", # required
    #     geofence_id: "Id", # required
    #     geometry: { # required
    #       polygon: [
    #         [
    #           [1.0],
    #         ],
    #       ],
    #       circle: {
    #         center: [1.0], # required
    #         radius: 1.0, # required
    #       },
    #       geobuf: "data",
    #       multi_polygon: [
    #         [
    #           [
    #             [1.0],
    #           ],
    #         ],
    #       ],
    #     },
    #     geofence_properties: {
    #       "PropertyMapKeyString" => "PropertyMapValueString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.geofence_id #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/PutGeofence AWS API Documentation
    #
    # @overload put_geofence(params = {})
    # @param [Hash] params ({})
    def put_geofence(params = {}, options = {})
      req = build_request(:put_geofence, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to [ `ReverseGeocode`
    # ](/location/latest/APIReference/API_geoplaces_ReverseGeocode.html) or
    # [ `SearchNearby`
    # ](/location/latest/APIReference/API_geoplaces_SearchNearby.html)
    # unless you require Grab data.
    #
    #  * `SearchPlaceIndexForPosition` is part of a previous Amazon Location
    #   Service Places API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The version 2 `ReverseGeocode` operation gives better results in the
    #   address reverse-geocoding use case, while the version 2
    #   `SearchNearby` operation gives better results when searching for
    #   businesses and points of interest near a specific location.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Places API version 2 is found under
    #   `geo-places` or `geo_places`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Places API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    #  Reverse geocodes a given coordinate and returns a legible address.
    # Allows you to search for Places or points of interest near a given
    # position.
    #
    # @option params [required, String] :index_name
    #   The name of the place index resource you want to use for the search.
    #
    # @option params [required, Array<Float>] :position
    #   Specifies the longitude and latitude of the position to query.
    #
    #   This parameter must contain a pair of numbers. The first number
    #   represents the X coordinate, or longitude; the second number
    #   represents the Y coordinate, or latitude.
    #
    #   For example, `[-123.1174, 49.2847]` represents a position with
    #   longitude `-123.1174` and latitude `49.2847`.
    #
    # @option params [Integer] :max_results
    #   An optional parameter. The maximum number of results returned per
    #   request.
    #
    #   Default value: `50`
    #
    # @option params [String] :language
    #   The preferred language used to return results. The value must be a
    #   valid [BCP 47][1] language tag, for example, `en` for English.
    #
    #   This setting affects the languages used in the results, but not the
    #   results themselves. If no language is specified, or not supported for
    #   a particular result, the partner automatically chooses a language for
    #   the result.
    #
    #   For an example, we'll use the Greek language. You search for a
    #   location around Athens, Greece, with the `language` parameter set to
    #   `en`. The `city` in the results will most likely be returned as
    #   `Athens`.
    #
    #   If you set the `language` parameter to `el`, for Greek, then the
    #   `city` in the results will more likely be returned as `Αθήνα`.
    #
    #   If the data provider does not have a value for Greek, the result will
    #   be in a language that the provider does support.
    #
    #
    #
    #   [1]: https://tools.ietf.org/search/bcp47
    #
    # @option params [String] :key
    #   The optional [API key][1] to authorize the request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html
    #
    # @return [Types::SearchPlaceIndexForPositionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchPlaceIndexForPositionResponse#summary #summary} => Types::SearchPlaceIndexForPositionSummary
    #   * {Types::SearchPlaceIndexForPositionResponse#results #results} => Array&lt;Types::SearchForPositionResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_place_index_for_position({
    #     index_name: "ResourceName", # required
    #     position: [1.0], # required
    #     max_results: 1,
    #     language: "LanguageTag",
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.position #=> Array
    #   resp.summary.position[0] #=> Float
    #   resp.summary.max_results #=> Integer
    #   resp.summary.data_source #=> String
    #   resp.summary.language #=> String
    #   resp.results #=> Array
    #   resp.results[0].place.label #=> String
    #   resp.results[0].place.geometry.point #=> Array
    #   resp.results[0].place.geometry.point[0] #=> Float
    #   resp.results[0].place.address_number #=> String
    #   resp.results[0].place.street #=> String
    #   resp.results[0].place.neighborhood #=> String
    #   resp.results[0].place.municipality #=> String
    #   resp.results[0].place.sub_region #=> String
    #   resp.results[0].place.region #=> String
    #   resp.results[0].place.country #=> String
    #   resp.results[0].place.postal_code #=> String
    #   resp.results[0].place.interpolated #=> Boolean
    #   resp.results[0].place.time_zone.name #=> String
    #   resp.results[0].place.time_zone.offset #=> Integer
    #   resp.results[0].place.unit_type #=> String
    #   resp.results[0].place.unit_number #=> String
    #   resp.results[0].place.categories #=> Array
    #   resp.results[0].place.categories[0] #=> String
    #   resp.results[0].place.supplemental_categories #=> Array
    #   resp.results[0].place.supplemental_categories[0] #=> String
    #   resp.results[0].place.sub_municipality #=> String
    #   resp.results[0].distance #=> Float
    #   resp.results[0].place_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForPosition AWS API Documentation
    #
    # @overload search_place_index_for_position(params = {})
    # @param [Hash] params ({})
    def search_place_index_for_position(params = {}, options = {})
      req = build_request(:search_place_index_for_position, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to [ `Suggest`
    # ](/location/latest/APIReference/API_geoplaces_Suggest.html) or [
    # `Autocomplete`
    # ](/location/latest/APIReference/API_geoplaces_Autocomplete.html)
    # unless you require Grab data.
    #
    #  * `SearchPlaceIndexForSuggestions` is part of a previous Amazon
    #   Location Service Places API (version 1) which has been superseded by
    #   a more intuitive, powerful, and complete API (version 2).
    #
    # * The version 2 `Suggest` operation gives better results for typeahead
    #   place search suggestions with fuzzy matching, while the version 2
    #   `Autocomplete` operation gives better results for address completion
    #   based on partial input.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Places API version 2 is found under
    #   `geo-places` or `geo_places`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Places API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    #  Generates suggestions for addresses and points of interest based on
    # partial or misspelled free-form text. This operation is also known as
    # autocomplete, autosuggest, or fuzzy matching.
    #
    #  Optional parameters let you narrow your search results by bounding
    # box
    # or country, or bias your search toward a specific position on the
    # globe.
    #
    #  <note markdown="1"> You can search for suggested place names near a
    # specified position by
    # using `BiasPosition`, or filter results within a bounding box by using
    # `FilterBBox`. These parameters are mutually exclusive; using both
    # `BiasPosition` and `FilterBBox` in the same command returns an error.
    #
    #  </note>
    #
    # @option params [required, String] :index_name
    #   The name of the place index resource you want to use for the search.
    #
    # @option params [required, String] :text
    #   The free-form partial text to use to generate place suggestions. For
    #   example, `eiffel tow`.
    #
    # @option params [Array<Float>] :bias_position
    #   An optional parameter that indicates a preference for place
    #   suggestions that are closer to a specified position.
    #
    #   If provided, this parameter must contain a pair of numbers. The first
    #   number represents the X coordinate, or longitude; the second number
    #   represents the Y coordinate, or latitude.
    #
    #   For example, `[-123.1174, 49.2847]` represents the position with
    #   longitude `-123.1174` and latitude `49.2847`.
    #
    #   <note markdown="1"> `BiasPosition` and `FilterBBox` are mutually exclusive. Specifying
    #   both options results in an error.
    #
    #    </note>
    #
    # @option params [Array<Float>] :filter_b_box
    #   An optional parameter that limits the search results by returning only
    #   suggestions within a specified bounding box.
    #
    #   If provided, this parameter must contain a total of four consecutive
    #   numbers in two pairs. The first pair of numbers represents the X and Y
    #   coordinates (longitude and latitude, respectively) of the southwest
    #   corner of the bounding box; the second pair of numbers represents the
    #   X and Y coordinates (longitude and latitude, respectively) of the
    #   northeast corner of the bounding box.
    #
    #   For example, `[-12.7935, -37.4835, -12.0684, -36.9542]` represents a
    #   bounding box where the southwest corner has longitude `-12.7935` and
    #   latitude `-37.4835`, and the northeast corner has longitude `-12.0684`
    #   and latitude `-36.9542`.
    #
    #   <note markdown="1"> `FilterBBox` and `BiasPosition` are mutually exclusive. Specifying
    #   both options results in an error.
    #
    #    </note>
    #
    # @option params [Array<String>] :filter_countries
    #   An optional parameter that limits the search results by returning only
    #   suggestions within the provided list of countries.
    #
    #   * Use the [ISO 3166][1] 3-digit country code. For example, Australia
    #     uses three upper-case characters: `AUS`.
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-3166-country-codes.html
    #
    # @option params [Integer] :max_results
    #   An optional parameter. The maximum number of results returned per
    #   request.
    #
    #   The default: `5`
    #
    # @option params [String] :language
    #   The preferred language used to return results. The value must be a
    #   valid [BCP 47][1] language tag, for example, `en` for English.
    #
    #   This setting affects the languages used in the results. If no language
    #   is specified, or not supported for a particular result, the partner
    #   automatically chooses a language for the result.
    #
    #   For an example, we'll use the Greek language. You search for `Athens,
    #   Gr` to get suggestions with the `language` parameter set to `en`. The
    #   results found will most likely be returned as `Athens, Greece`.
    #
    #   If you set the `language` parameter to `el`, for Greek, then the
    #   result found will more likely be returned as `Αθήνα, Ελλάδα`.
    #
    #   If the data provider does not have a value for Greek, the result will
    #   be in a language that the provider does support.
    #
    #
    #
    #   [1]: https://tools.ietf.org/search/bcp47
    #
    # @option params [Array<String>] :filter_categories
    #   A list of one or more Amazon Location categories to filter the
    #   returned places. If you include more than one category, the results
    #   will include results that match *any* of the categories listed.
    #
    #   For more information about using categories, including a list of
    #   Amazon Location categories, see [Categories and filtering][1], in the
    #   *Amazon Location Service developer guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/category-filtering.html
    #
    # @option params [String] :key
    #   The optional [API key][1] to authorize the request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html
    #
    # @return [Types::SearchPlaceIndexForSuggestionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchPlaceIndexForSuggestionsResponse#summary #summary} => Types::SearchPlaceIndexForSuggestionsSummary
    #   * {Types::SearchPlaceIndexForSuggestionsResponse#results #results} => Array&lt;Types::SearchForSuggestionsResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_place_index_for_suggestions({
    #     index_name: "ResourceName", # required
    #     text: "SearchPlaceIndexForSuggestionsRequestTextString", # required
    #     bias_position: [1.0],
    #     filter_b_box: [1.0],
    #     filter_countries: ["CountryCode3"],
    #     max_results: 1,
    #     language: "LanguageTag",
    #     filter_categories: ["PlaceCategory"],
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.text #=> String
    #   resp.summary.bias_position #=> Array
    #   resp.summary.bias_position[0] #=> Float
    #   resp.summary.filter_b_box #=> Array
    #   resp.summary.filter_b_box[0] #=> Float
    #   resp.summary.filter_countries #=> Array
    #   resp.summary.filter_countries[0] #=> String
    #   resp.summary.max_results #=> Integer
    #   resp.summary.data_source #=> String
    #   resp.summary.language #=> String
    #   resp.summary.filter_categories #=> Array
    #   resp.summary.filter_categories[0] #=> String
    #   resp.results #=> Array
    #   resp.results[0].text #=> String
    #   resp.results[0].place_id #=> String
    #   resp.results[0].categories #=> Array
    #   resp.results[0].categories[0] #=> String
    #   resp.results[0].supplemental_categories #=> Array
    #   resp.results[0].supplemental_categories[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForSuggestions AWS API Documentation
    #
    # @overload search_place_index_for_suggestions(params = {})
    # @param [Hash] params ({})
    def search_place_index_for_suggestions(params = {}, options = {})
      req = build_request(:search_place_index_for_suggestions, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to [ `Geocode`
    # ](/location/latest/APIReference/API_geoplaces_Geocode.html) or [
    # `SearchText`
    # ](/location/latest/APIReference/API_geoplaces_SearchText.html) unless
    # you require Grab data.
    #
    #  * `SearchPlaceIndexForText` is part of a previous Amazon Location
    #   Service Places API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The version 2 `Geocode` operation gives better results in the
    #   address geocoding use case, while the version 2 `SearchText`
    #   operation gives better results when searching for businesses and
    #   points of interest.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Places API version 2 is found under
    #   `geo-places` or `geo_places`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Places API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    #  Geocodes free-form text, such as an address, name, city, or region to
    # allow you to search for Places or points of interest.
    #
    #  Optional parameters let you narrow your search results by bounding
    # box
    # or country, or bias your search toward a specific position on the
    # globe.
    #
    #  <note markdown="1"> You can search for places near a given position
    # using `BiasPosition`,
    # or filter results within a bounding box using `FilterBBox`. Providing
    # both parameters simultaneously returns an error.
    #
    #  </note>
    #
    #  Search results are returned in order of highest to lowest relevance.
    #
    # @option params [required, String] :index_name
    #   The name of the place index resource you want to use for the search.
    #
    # @option params [required, String] :text
    #   The address, name, city, or region to be used in the search in
    #   free-form text format. For example, `123 Any Street`.
    #
    # @option params [Array<Float>] :bias_position
    #   An optional parameter that indicates a preference for places that are
    #   closer to a specified position.
    #
    #   If provided, this parameter must contain a pair of numbers. The first
    #   number represents the X coordinate, or longitude; the second number
    #   represents the Y coordinate, or latitude.
    #
    #   For example, `[-123.1174, 49.2847]` represents the position with
    #   longitude `-123.1174` and latitude `49.2847`.
    #
    #   <note markdown="1"> `BiasPosition` and `FilterBBox` are mutually exclusive. Specifying
    #   both options results in an error.
    #
    #    </note>
    #
    # @option params [Array<Float>] :filter_b_box
    #   An optional parameter that limits the search results by returning only
    #   places that are within the provided bounding box.
    #
    #   If provided, this parameter must contain a total of four consecutive
    #   numbers in two pairs. The first pair of numbers represents the X and Y
    #   coordinates (longitude and latitude, respectively) of the southwest
    #   corner of the bounding box; the second pair of numbers represents the
    #   X and Y coordinates (longitude and latitude, respectively) of the
    #   northeast corner of the bounding box.
    #
    #   For example, `[-12.7935, -37.4835, -12.0684, -36.9542]` represents a
    #   bounding box where the southwest corner has longitude `-12.7935` and
    #   latitude `-37.4835`, and the northeast corner has longitude `-12.0684`
    #   and latitude `-36.9542`.
    #
    #   <note markdown="1"> `FilterBBox` and `BiasPosition` are mutually exclusive. Specifying
    #   both options results in an error.
    #
    #    </note>
    #
    # @option params [Array<String>] :filter_countries
    #   An optional parameter that limits the search results by returning only
    #   places that are in a specified list of countries.
    #
    #   * Valid values include [ISO 3166][1] 3-digit country codes. For
    #     example, Australia uses three upper-case characters: `AUS`.
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-3166-country-codes.html
    #
    # @option params [Integer] :max_results
    #   An optional parameter. The maximum number of results returned per
    #   request.
    #
    #   The default: `50`
    #
    # @option params [String] :language
    #   The preferred language used to return results. The value must be a
    #   valid [BCP 47][1] language tag, for example, `en` for English.
    #
    #   This setting affects the languages used in the results, but not the
    #   results themselves. If no language is specified, or not supported for
    #   a particular result, the partner automatically chooses a language for
    #   the result.
    #
    #   For an example, we'll use the Greek language. You search for `Athens,
    #   Greece`, with the `language` parameter set to `en`. The result found
    #   will most likely be returned as `Athens`.
    #
    #   If you set the `language` parameter to `el`, for Greek, then the
    #   result found will more likely be returned as `Αθήνα`.
    #
    #   If the data provider does not have a value for Greek, the result will
    #   be in a language that the provider does support.
    #
    #
    #
    #   [1]: https://tools.ietf.org/search/bcp47
    #
    # @option params [Array<String>] :filter_categories
    #   A list of one or more Amazon Location categories to filter the
    #   returned places. If you include more than one category, the results
    #   will include results that match *any* of the categories listed.
    #
    #   For more information about using categories, including a list of
    #   Amazon Location categories, see [Categories and filtering][1], in the
    #   *Amazon Location Service developer guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/category-filtering.html
    #
    # @option params [String] :key
    #   The optional [API key][1] to authorize the request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html
    #
    # @return [Types::SearchPlaceIndexForTextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchPlaceIndexForTextResponse#summary #summary} => Types::SearchPlaceIndexForTextSummary
    #   * {Types::SearchPlaceIndexForTextResponse#results #results} => Array&lt;Types::SearchForTextResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_place_index_for_text({
    #     index_name: "ResourceName", # required
    #     text: "SearchPlaceIndexForTextRequestTextString", # required
    #     bias_position: [1.0],
    #     filter_b_box: [1.0],
    #     filter_countries: ["CountryCode3"],
    #     max_results: 1,
    #     language: "LanguageTag",
    #     filter_categories: ["PlaceCategory"],
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.text #=> String
    #   resp.summary.bias_position #=> Array
    #   resp.summary.bias_position[0] #=> Float
    #   resp.summary.filter_b_box #=> Array
    #   resp.summary.filter_b_box[0] #=> Float
    #   resp.summary.filter_countries #=> Array
    #   resp.summary.filter_countries[0] #=> String
    #   resp.summary.max_results #=> Integer
    #   resp.summary.result_b_box #=> Array
    #   resp.summary.result_b_box[0] #=> Float
    #   resp.summary.data_source #=> String
    #   resp.summary.language #=> String
    #   resp.summary.filter_categories #=> Array
    #   resp.summary.filter_categories[0] #=> String
    #   resp.results #=> Array
    #   resp.results[0].place.label #=> String
    #   resp.results[0].place.geometry.point #=> Array
    #   resp.results[0].place.geometry.point[0] #=> Float
    #   resp.results[0].place.address_number #=> String
    #   resp.results[0].place.street #=> String
    #   resp.results[0].place.neighborhood #=> String
    #   resp.results[0].place.municipality #=> String
    #   resp.results[0].place.sub_region #=> String
    #   resp.results[0].place.region #=> String
    #   resp.results[0].place.country #=> String
    #   resp.results[0].place.postal_code #=> String
    #   resp.results[0].place.interpolated #=> Boolean
    #   resp.results[0].place.time_zone.name #=> String
    #   resp.results[0].place.time_zone.offset #=> Integer
    #   resp.results[0].place.unit_type #=> String
    #   resp.results[0].place.unit_number #=> String
    #   resp.results[0].place.categories #=> Array
    #   resp.results[0].place.categories[0] #=> String
    #   resp.results[0].place.supplemental_categories #=> Array
    #   resp.results[0].place.supplemental_categories[0] #=> String
    #   resp.results[0].place.sub_municipality #=> String
    #   resp.results[0].distance #=> Float
    #   resp.results[0].relevance #=> Float
    #   resp.results[0].place_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForText AWS API Documentation
    #
    # @overload search_place_index_for_text(params = {})
    # @param [Hash] params ({})
    def search_place_index_for_text(params = {}, options = {})
      req = build_request(:search_place_index_for_text, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified Amazon
    # Location Service resource.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions, by granting a user permission to
    # access or change only resources with certain tag values.
    #
    # You can use the `TagResource` operation with an Amazon Location
    # Service resource that already has tags. If you specify a new tag key
    # for the resource, this tag is appended to the tags already associated
    # with the resource. If you specify a tag key that's already associated
    # with the resource, the new tag value that you specify replaces the
    # previous value for that tag.
    #
    # You can associate up to 50 tags with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want to
    #   update.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:resourcetype/ExampleResource`
    #
    #   ^
    #
    # @option params [required, Hash<String,String>] :tags
    #   Applies one or more tags to specific resource. A tag is a key-value
    #   pair that helps you manage, identify, search, and filter your
    #   resources.
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource.
    #
    #   * Each tag key must be unique and must have exactly one associated
    #     value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8.
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified Amazon Location resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which you want to
    #   remove tags.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:resourcetype/ExampleResource`
    #
    #   ^
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified properties of a given geofence collection.
    #
    # @option params [required, String] :collection_name
    #   The name of the geofence collection to update.
    #
    # @option params [String] :pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #
    # @option params [String] :pricing_plan_data_source
    #   This parameter is no longer used.
    #
    # @option params [String] :description
    #   Updates the description for the geofence collection.
    #
    # @return [Types::UpdateGeofenceCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGeofenceCollectionResponse#collection_name #collection_name} => String
    #   * {Types::UpdateGeofenceCollectionResponse#collection_arn #collection_arn} => String
    #   * {Types::UpdateGeofenceCollectionResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_geofence_collection({
    #     collection_name: "ResourceName", # required
    #     pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     pricing_plan_data_source: "String",
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.collection_name #=> String
    #   resp.collection_arn #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateGeofenceCollection AWS API Documentation
    #
    # @overload update_geofence_collection(params = {})
    # @param [Hash] params ({})
    def update_geofence_collection(params = {}, options = {})
      req = build_request(:update_geofence_collection, params)
      req.send_request(options)
    end

    # Updates the specified properties of a given API key resource.
    #
    # @option params [required, String] :key_name
    #   The name of the API key resource to update.
    #
    # @option params [String] :description
    #   Updates the description for the API key resource.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expire_time
    #   Updates the timestamp for when the API key resource will expire in [
    #   ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #
    # @option params [Boolean] :no_expiry
    #   Whether the API key should expire. Set to `true` to set the API key to
    #   have no expiration time.
    #
    # @option params [Boolean] :force_update
    #   The boolean flag to be included for updating `ExpireTime` or
    #   `Restrictions` details.
    #
    #   Must be set to `true` to update an API key resource that has been used
    #   in the past 7 days.
    #
    #   `False` if force update is not preferred
    #
    #   Default value: `False`
    #
    # @option params [Types::ApiKeyRestrictions] :restrictions
    #   Updates the API key restrictions for the API key resource.
    #
    # @return [Types::UpdateKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKeyResponse#key_arn #key_arn} => String
    #   * {Types::UpdateKeyResponse#key_name #key_name} => String
    #   * {Types::UpdateKeyResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_key({
    #     key_name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     expire_time: Time.now,
    #     no_expiry: false,
    #     force_update: false,
    #     restrictions: {
    #       allow_actions: ["ApiKeyAction"], # required
    #       allow_resources: ["GeoArnV2"], # required
    #       allow_referers: ["RefererPattern"],
    #       allow_android_apps: [
    #         {
    #           package: "AndroidPackageName", # required
    #           certificate_fingerprint: "Sha1CertificateFingerprint", # required
    #         },
    #       ],
    #       allow_apple_apps: [
    #         {
    #           bundle_id: "AppleBundleId", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.key_arn #=> String
    #   resp.key_name #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateKey AWS API Documentation
    #
    # @overload update_key(params = {})
    # @param [Hash] params ({})
    def update_key(params = {}, options = {})
      req = build_request(:update_key, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend upgrading to the Maps API V2 unless you require
    # `Grab` data.
    #
    #  * `UpdateMap` is part of a previous Amazon Location Service Maps API
    #   (version 1) which has been superseded by a more intuitive, powerful,
    #   and complete API (version 2).
    #
    # * The Maps API version 2 has a simplified interface that can be used
    #   without creating or managing map resources.
    #
    # * If you are using an AWS SDK or the AWS CLI, note that the Maps API
    #   version 2 is found under `geo-maps` or `geo_maps`, not under
    #   `location`.
    #
    # * Since `Grab` is not yet fully supported in Maps API version 2, we
    #   recommend you continue using API version 1 when using `Grab`.
    #
    # * Start your version 2 API journey with the [Maps V2 API Reference][1]
    #   or the [Developer Guide][2].
    #
    #  Updates the specified properties of a given map resource.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/APIReference/API_Operations_Amazon_Location_Service_Maps_V2.html
    # [2]: https://docs.aws.amazon.com/location/latest/developerguide/maps.html
    #
    # @option params [required, String] :map_name
    #   The name of the map resource to update.
    #
    # @option params [String] :pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #
    # @option params [String] :description
    #   Updates the description for the map resource.
    #
    # @option params [Types::MapConfigurationUpdate] :configuration_update
    #   Updates the parts of the map configuration that can be updated,
    #   including the political view.
    #
    # @return [Types::UpdateMapResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMapResponse#map_name #map_name} => String
    #   * {Types::UpdateMapResponse#map_arn #map_arn} => String
    #   * {Types::UpdateMapResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_map({
    #     map_name: "ResourceName", # required
    #     pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     description: "ResourceDescription",
    #     configuration_update: {
    #       political_view: "CountryCode3OrEmpty",
    #       custom_layers: ["CustomLayer"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.map_name #=> String
    #   resp.map_arn #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateMap AWS API Documentation
    #
    # @overload update_map(params = {})
    # @param [Hash] params ({})
    def update_map(params = {}, options = {})
      req = build_request(:update_map, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the Places API V2 unless you
    # require Grab data.
    #
    #  * `UpdatePlaceIndex` is part of a previous Amazon Location Service
    #   Places API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The Places API version 2 has a simplified interface that can be used
    #   without creating or managing place index resources.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Places API version 2 is found under
    #   `geo-places` or `geo_places`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Places API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Places V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Places_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/places.html).
    #
    #  Updates the specified properties of a given place index resource.
    #
    # @option params [required, String] :index_name
    #   The name of the place index resource to update.
    #
    # @option params [String] :pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #
    # @option params [String] :description
    #   Updates the description for the place index resource.
    #
    # @option params [Types::DataSourceConfiguration] :data_source_configuration
    #   Updates the data storage option for the place index resource.
    #
    # @return [Types::UpdatePlaceIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePlaceIndexResponse#index_name #index_name} => String
    #   * {Types::UpdatePlaceIndexResponse#index_arn #index_arn} => String
    #   * {Types::UpdatePlaceIndexResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_place_index({
    #     index_name: "ResourceName", # required
    #     pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     description: "ResourceDescription",
    #     data_source_configuration: {
    #       intended_use: "SingleUse", # accepts SingleUse, Storage
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.index_name #=> String
    #   resp.index_arn #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdatePlaceIndex AWS API Documentation
    #
    # @overload update_place_index(params = {})
    # @param [Hash] params ({})
    def update_place_index(params = {}, options = {})
      req = build_request(:update_place_index, params)
      req.send_request(options)
    end

    # This operation is no longer current and may be deprecated in the
    # future. We recommend you upgrade to the Routes API V2 unless you
    # require Grab data.
    #
    #  * `UpdateRouteCalculator` is part of a previous Amazon Location
    #   Service Routes API (version 1) which has been superseded by a more
    #   intuitive, powerful, and complete API (version 2).
    #
    # * The Routes API version 2 has a simplified interface that can be used
    #   without creating or managing route calculator resources.
    #
    # * If you are using an Amazon Web Services SDK or the Amazon Web
    #   Services CLI, note that the Routes API version 2 is found under
    #   `geo-routes` or `geo_routes`, not under `location`.
    #
    # * Since Grab is not yet fully supported in Routes API version 2, we
    #   recommend you continue using API version 1 when using Grab.
    #
    # * Start your version 2 API journey with the Routes V2 [API
    #
    # Reference](/location/latest/APIReference/API_Operations_Amazon_Location_Service_Routes_V2.html)
    #   or the [Developer
    #   Guide](/location/latest/developerguide/routes.html).
    #
    #  Updates the specified properties for a given route calculator
    # resource.
    #
    # @option params [required, String] :calculator_name
    #   The name of the route calculator resource to update.
    #
    # @option params [String] :pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #
    # @option params [String] :description
    #   Updates the description for the route calculator resource.
    #
    # @return [Types::UpdateRouteCalculatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRouteCalculatorResponse#calculator_name #calculator_name} => String
    #   * {Types::UpdateRouteCalculatorResponse#calculator_arn #calculator_arn} => String
    #   * {Types::UpdateRouteCalculatorResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_route_calculator({
    #     calculator_name: "ResourceName", # required
    #     pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.calculator_name #=> String
    #   resp.calculator_arn #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateRouteCalculator AWS API Documentation
    #
    # @overload update_route_calculator(params = {})
    # @param [Hash] params ({})
    def update_route_calculator(params = {}, options = {})
      req = build_request(:update_route_calculator, params)
      req.send_request(options)
    end

    # Updates the specified properties of a given tracker resource.
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource to update.
    #
    # @option params [String] :pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #
    # @option params [String] :pricing_plan_data_source
    #   This parameter is no longer used.
    #
    # @option params [String] :description
    #   Updates the description for the tracker resource.
    #
    # @option params [String] :position_filtering
    #   Updates the position filtering for the tracker resource.
    #
    #   Valid values:
    #
    #   * `TimeBased` - Location updates are evaluated against linked geofence
    #     collections, but not every location update is stored. If your update
    #     frequency is more often than 30 seconds, only one update per 30
    #     seconds is stored for each unique device ID.
    #
    #   * `DistanceBased` - If the device has moved less than 30 m (98.4 ft),
    #     location updates are ignored. Location updates within this distance
    #     are neither evaluated against linked geofence collections, nor
    #     stored. This helps control costs by reducing the number of geofence
    #     evaluations and historical device positions to paginate through.
    #     Distance-based filtering can also reduce the effects of GPS noise
    #     when displaying device trajectories on a map.
    #
    #   * `AccuracyBased` - If the device has moved less than the measured
    #     accuracy, location updates are ignored. For example, if two
    #     consecutive updates from a device have a horizontal accuracy of 5 m
    #     and 10 m, the second update is ignored if the device has moved less
    #     than 15 m. Ignored location updates are neither evaluated against
    #     linked geofence collections, nor stored. This helps educe the
    #     effects of GPS noise when displaying device trajectories on a map,
    #     and can help control costs by reducing the number of geofence
    #     evaluations.
    #
    # @option params [Boolean] :event_bridge_enabled
    #   Whether to enable position `UPDATE` events from this tracker to be
    #   sent to EventBridge.
    #
    #   <note markdown="1"> You do not need enable this feature to get `ENTER` and `EXIT` events
    #   for geofences with this tracker. Those events are always sent to
    #   EventBridge.
    #
    #    </note>
    #
    # @option params [Boolean] :kms_key_enable_geospatial_queries
    #   Enables `GeospatialQueries` for a tracker that uses a [Amazon Web
    #   Services KMS customer managed key][1].
    #
    #   This parameter is only used if you are using a KMS customer managed
    #   key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html
    #
    # @return [Types::UpdateTrackerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTrackerResponse#tracker_name #tracker_name} => String
    #   * {Types::UpdateTrackerResponse#tracker_arn #tracker_arn} => String
    #   * {Types::UpdateTrackerResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_tracker({
    #     tracker_name: "ResourceName", # required
    #     pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #     pricing_plan_data_source: "String",
    #     description: "ResourceDescription",
    #     position_filtering: "TimeBased", # accepts TimeBased, DistanceBased, AccuracyBased
    #     event_bridge_enabled: false,
    #     kms_key_enable_geospatial_queries: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.tracker_name #=> String
    #   resp.tracker_arn #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateTracker AWS API Documentation
    #
    # @overload update_tracker(params = {})
    # @param [Hash] params ({})
    def update_tracker(params = {}, options = {})
      req = build_request(:update_tracker, params)
      req.send_request(options)
    end

    # Verifies the integrity of the device's position by determining if it
    # was reported behind a proxy, and by comparing it to an inferred
    # position estimated based on the device's state.
    #
    # <note markdown="1"> The Location Integrity SDK provides enhanced features related to
    # device verification, and it is available for use by request. To get
    # access to the SDK, contact [Sales Support][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://aws.amazon.com/contact-us/sales-support/?pg=locationprice&amp;cta=herobtn
    #
    # @option params [required, String] :tracker_name
    #   The name of the tracker resource to be associated with verification
    #   request.
    #
    # @option params [required, Types::DeviceState] :device_state
    #   The device's state, including position, IP address, cell signals and
    #   Wi-Fi access points.
    #
    # @option params [String] :distance_unit
    #   The distance unit for the verification request.
    #
    #   Default Value: `Kilometers`
    #
    # @return [Types::VerifyDevicePositionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifyDevicePositionResponse#inferred_state #inferred_state} => Types::InferredState
    #   * {Types::VerifyDevicePositionResponse#device_id #device_id} => String
    #   * {Types::VerifyDevicePositionResponse#sample_time #sample_time} => Time
    #   * {Types::VerifyDevicePositionResponse#received_time #received_time} => Time
    #   * {Types::VerifyDevicePositionResponse#distance_unit #distance_unit} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_device_position({
    #     tracker_name: "ResourceName", # required
    #     device_state: { # required
    #       device_id: "Id", # required
    #       sample_time: Time.now, # required
    #       position: [1.0], # required
    #       accuracy: {
    #         horizontal: 1.0, # required
    #       },
    #       ipv_4_address: "DeviceStateIpv4AddressString",
    #       wi_fi_access_points: [
    #         {
    #           mac_address: "WiFiAccessPointMacAddressString", # required
    #           rss: 1, # required
    #         },
    #       ],
    #       cell_signals: {
    #         lte_cell_details: [ # required
    #           {
    #             cell_id: 1, # required
    #             mcc: 1, # required
    #             mnc: 1, # required
    #             local_id: {
    #               earfcn: 1, # required
    #               pci: 1, # required
    #             },
    #             network_measurements: [
    #               {
    #                 earfcn: 1, # required
    #                 cell_id: 1, # required
    #                 pci: 1, # required
    #                 rsrp: 1,
    #                 rsrq: 1.0,
    #               },
    #             ],
    #             timing_advance: 1,
    #             nr_capable: false,
    #             rsrp: 1,
    #             rsrq: 1.0,
    #             tac: 1,
    #           },
    #         ],
    #       },
    #     },
    #     distance_unit: "Kilometers", # accepts Kilometers, Miles
    #   })
    #
    # @example Response structure
    #
    #   resp.inferred_state.position #=> Array
    #   resp.inferred_state.position[0] #=> Float
    #   resp.inferred_state.accuracy.horizontal #=> Float
    #   resp.inferred_state.deviation_distance #=> Float
    #   resp.inferred_state.proxy_detected #=> Boolean
    #   resp.device_id #=> String
    #   resp.sample_time #=> Time
    #   resp.received_time #=> Time
    #   resp.distance_unit #=> String, one of "Kilometers", "Miles"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/VerifyDevicePosition AWS API Documentation
    #
    # @overload verify_device_position(params = {})
    # @param [Hash] params ({})
    def verify_device_position(params = {}, options = {})
      req = build_request(:verify_device_position, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::LocationService')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-locationservice'
      context[:gem_version] = '1.80.0'
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
