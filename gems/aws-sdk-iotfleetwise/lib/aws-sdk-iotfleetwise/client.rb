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

module Aws::IoTFleetWise
  # An API client for IoTFleetWise.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoTFleetWise::Client.new(
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

    @identifier = :iotfleetwise

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
    add_plugin(Aws::IoTFleetWise::Plugins::Endpoints)

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
    #   @option options [Aws::IoTFleetWise::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::IoTFleetWise::EndpointParameters`.
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

    # Adds, or associates, a vehicle with a fleet.
    #
    # @option params [required, String] :vehicle_name
    #   The unique ID of the vehicle to associate with the fleet.
    #
    # @option params [required, String] :fleet_id
    #   The ID of a fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_vehicle_fleet({
    #     vehicle_name: "vehicleName", # required
    #     fleet_id: "fleetId", # required
    #   })
    #
    # @overload associate_vehicle_fleet(params = {})
    # @param [Hash] params ({})
    def associate_vehicle_fleet(params = {}, options = {})
      req = build_request(:associate_vehicle_fleet, params)
      req.send_request(options)
    end

    # Creates a group, or batch, of vehicles.
    #
    # <note markdown="1"> You must specify a decoder manifest and a vehicle model (model
    # manifest) for each vehicle.
    #
    #  </note>
    #
    # For more information, see [Create multiple vehicles (AWS CLI)][1] in
    # the *Amazon Web Services IoT FleetWise Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicles-cli.html
    #
    # @option params [required, Array<Types::CreateVehicleRequestItem>] :vehicles
    #   A list of information about each vehicle to create. For more
    #   information, see the API data type.
    #
    # @return [Types::BatchCreateVehicleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateVehicleResponse#vehicles #vehicles} => Array&lt;Types::CreateVehicleResponseItem&gt;
    #   * {Types::BatchCreateVehicleResponse#errors #errors} => Array&lt;Types::CreateVehicleError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_vehicle({
    #     vehicles: [ # required
    #       {
    #         vehicle_name: "vehicleName", # required
    #         model_manifest_arn: "arn", # required
    #         decoder_manifest_arn: "arn", # required
    #         attributes: {
    #           "attributeName" => "attributeValue",
    #         },
    #         association_behavior: "CreateIotThing", # accepts CreateIotThing, ValidateIotThingExists
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         state_templates: [
    #           {
    #             identifier: "ResourceIdentifier", # required
    #             state_template_update_strategy: { # required
    #               periodic: {
    #                 state_template_update_rate: { # required
    #                   unit: "MILLISECOND", # required, accepts MILLISECOND, SECOND, MINUTE, HOUR
    #                   value: 1, # required
    #                 },
    #               },
    #               on_change: {
    #               },
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.vehicles #=> Array
    #   resp.vehicles[0].vehicle_name #=> String
    #   resp.vehicles[0].arn #=> String
    #   resp.vehicles[0].thing_arn #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].vehicle_name #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @overload batch_create_vehicle(params = {})
    # @param [Hash] params ({})
    def batch_create_vehicle(params = {}, options = {})
      req = build_request(:batch_create_vehicle, params)
      req.send_request(options)
    end

    # Updates a group, or batch, of vehicles.
    #
    # <note markdown="1"> You must specify a decoder manifest and a vehicle model (model
    # manifest) for each vehicle.
    #
    #  </note>
    #
    # For more information, see [Update multiple vehicles (AWS CLI)][1] in
    # the *Amazon Web Services IoT FleetWise Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/update-vehicles-cli.html
    #
    # @option params [required, Array<Types::UpdateVehicleRequestItem>] :vehicles
    #   A list of information about the vehicles to update. For more
    #   information, see the API data type.
    #
    # @return [Types::BatchUpdateVehicleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateVehicleResponse#vehicles #vehicles} => Array&lt;Types::UpdateVehicleResponseItem&gt;
    #   * {Types::BatchUpdateVehicleResponse#errors #errors} => Array&lt;Types::UpdateVehicleError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_vehicle({
    #     vehicles: [ # required
    #       {
    #         vehicle_name: "vehicleName", # required
    #         model_manifest_arn: "arn",
    #         decoder_manifest_arn: "arn",
    #         attributes: {
    #           "attributeName" => "attributeValue",
    #         },
    #         attribute_update_mode: "Overwrite", # accepts Overwrite, Merge
    #         state_templates_to_add: [
    #           {
    #             identifier: "ResourceIdentifier", # required
    #             state_template_update_strategy: { # required
    #               periodic: {
    #                 state_template_update_rate: { # required
    #                   unit: "MILLISECOND", # required, accepts MILLISECOND, SECOND, MINUTE, HOUR
    #                   value: 1, # required
    #                 },
    #               },
    #               on_change: {
    #               },
    #             },
    #           },
    #         ],
    #         state_templates_to_remove: ["ResourceIdentifier"],
    #         state_templates_to_update: [
    #           {
    #             identifier: "ResourceIdentifier", # required
    #             state_template_update_strategy: { # required
    #               periodic: {
    #                 state_template_update_rate: { # required
    #                   unit: "MILLISECOND", # required, accepts MILLISECOND, SECOND, MINUTE, HOUR
    #                   value: 1, # required
    #                 },
    #               },
    #               on_change: {
    #               },
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.vehicles #=> Array
    #   resp.vehicles[0].vehicle_name #=> String
    #   resp.vehicles[0].arn #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].vehicle_name #=> String
    #   resp.errors[0].code #=> Integer
    #   resp.errors[0].message #=> String
    #
    # @overload batch_update_vehicle(params = {})
    # @param [Hash] params ({})
    def batch_update_vehicle(params = {}, options = {})
      req = build_request(:batch_update_vehicle, params)
      req.send_request(options)
    end

    # Creates an orchestration of data collection rules. The Amazon Web
    # Services IoT FleetWise Edge Agent software running in vehicles uses
    # campaigns to decide how to collect and transfer data to the cloud. You
    # create campaigns in the cloud. After you or your team approve
    # campaigns, Amazon Web Services IoT FleetWise automatically deploys
    # them to vehicles.
    #
    # For more information, see [Collect and transfer data with
    # campaigns][1] in the *Amazon Web Services IoT FleetWise Developer
    # Guide*.
    #
    # Access to certain Amazon Web Services IoT FleetWise features is
    # currently gated. For more information, see [Amazon Web Services Region
    # and feature availability][2] in the *Amazon Web Services IoT FleetWise
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/campaigns.html
    # [2]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
    #
    # @option params [required, String] :name
    #   The name of the campaign to create.
    #
    # @option params [String] :description
    #   An optional description of the campaign to help identify its purpose.
    #
    # @option params [required, String] :signal_catalog_arn
    #   The Amazon Resource Name (ARN) of the signal catalog to associate with
    #   the campaign.
    #
    # @option params [required, String] :target_arn
    #   The ARN of the vehicle or fleet to deploy a campaign to.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The time, in milliseconds, to deliver a campaign after it was
    #   approved. If it's not specified, `0` is used.
    #
    #   Default: `0`
    #
    # @option params [Time,DateTime,Date,Integer,String] :expiry_time
    #   The time the campaign expires, in seconds since epoch (January 1, 1970
    #   at midnight UTC time). Vehicle data isn't collected after the
    #   campaign expires.
    #
    #   Default: 253402214400 (December 31, 9999, 00:00:00 UTC)
    #
    # @option params [Integer] :post_trigger_collection_duration
    #   How long (in milliseconds) to collect raw data after a triggering
    #   event initiates the collection. If it's not specified, `0` is used.
    #
    #   Default: `0`
    #
    # @option params [String] :diagnostics_mode
    #   Option for a vehicle to send diagnostic trouble codes to Amazon Web
    #   Services IoT FleetWise. If you want to send diagnostic trouble codes,
    #   use `SEND_ACTIVE_DTCS`. If it's not specified, `OFF` is used.
    #
    #   Default: `OFF`
    #
    # @option params [String] :spooling_mode
    #   Determines whether to store collected data after a vehicle lost a
    #   connection with the cloud. After a connection is re-established, the
    #   data is automatically forwarded to Amazon Web Services IoT FleetWise.
    #   If you want to store collected data when a vehicle loses connection
    #   with the cloud, use `TO_DISK`. If it's not specified, `OFF` is used.
    #
    #   Default: `OFF`
    #
    # @option params [String] :compression
    #   Determines whether to compress signals before transmitting data to
    #   Amazon Web Services IoT FleetWise. If you don't want to compress the
    #   signals, use `OFF`. If it's not specified, `SNAPPY` is used.
    #
    #   Default: `SNAPPY`
    #
    # @option params [Integer] :priority
    #   A number indicating the priority of one campaign over another campaign
    #   for a certain vehicle or fleet. A campaign with the lowest value is
    #   deployed to vehicles before any other campaigns. If it's not
    #   specified, `0` is used.
    #
    #   Default: `0`
    #
    # @option params [Array<Types::SignalInformation>] :signals_to_collect
    #   A list of information about signals to collect.
    #
    #   <note markdown="1"> If you upload a signal as a condition in a data partition for a
    #   campaign, then those same signals must be included in
    #   `signalsToCollect`.
    #
    #    </note>
    #
    # @option params [required, Types::CollectionScheme] :collection_scheme
    #   The data collection scheme associated with the campaign. You can
    #   specify a scheme that collects data based on time or an event.
    #
    # @option params [Array<String>] :data_extra_dimensions
    #   A list of vehicle attributes to associate with a campaign.
    #
    #   Enrich the data with specified vehicle attributes. For example, add
    #   `make` and `model` to the campaign, and Amazon Web Services IoT
    #   FleetWise will associate the data with those attributes as dimensions
    #   in Amazon Timestream. You can then query the data against `make` and
    #   `model`.
    #
    #   Default: An empty array
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the campaign.
    #
    # @option params [Array<Types::DataDestinationConfig>] :data_destination_configs
    #   The destination where the campaign sends data. You can send data to an
    #   MQTT topic, or store it in Amazon S3 or Amazon Timestream.
    #
    #   MQTT is the publish/subscribe messaging protocol used by Amazon Web
    #   Services IoT to communicate with your devices.
    #
    #   Amazon S3 optimizes the cost of data storage and provides additional
    #   mechanisms to use vehicle data, such as data lakes, centralized data
    #   storage, data processing pipelines, and analytics. Amazon Web Services
    #   IoT FleetWise supports at-least-once file delivery to S3. Your vehicle
    #   data is stored on multiple Amazon Web Services IoT FleetWise servers
    #   for redundancy and high availability.
    #
    #   You can use Amazon Timestream to access and analyze time series data,
    #   and Timestream to query vehicle data so that you can identify trends
    #   and patterns.
    #
    # @option params [Array<Types::DataPartition>] :data_partitions
    #   The data partitions associated with the signals collected from the
    #   vehicle.
    #
    # @option params [Array<Types::SignalFetchInformation>] :signals_to_fetch
    #   A list of information about signals to fetch.
    #
    # @return [Types::CreateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCampaignResponse#name #name} => String
    #   * {Types::CreateCampaignResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_campaign({
    #     name: "campaignName", # required
    #     description: "description",
    #     signal_catalog_arn: "arn", # required
    #     target_arn: "arn", # required
    #     start_time: Time.now,
    #     expiry_time: Time.now,
    #     post_trigger_collection_duration: 1,
    #     diagnostics_mode: "OFF", # accepts OFF, SEND_ACTIVE_DTCS
    #     spooling_mode: "OFF", # accepts OFF, TO_DISK
    #     compression: "OFF", # accepts OFF, SNAPPY
    #     priority: 1,
    #     signals_to_collect: [
    #       {
    #         name: "wildcardSignalName", # required
    #         max_sample_count: 1,
    #         minimum_sampling_interval_ms: 1,
    #         data_partition_id: "DataPartitionId",
    #       },
    #     ],
    #     collection_scheme: { # required
    #       time_based_collection_scheme: {
    #         period_ms: 1, # required
    #       },
    #       condition_based_collection_scheme: {
    #         expression: "eventExpression", # required
    #         minimum_trigger_interval_ms: 1,
    #         trigger_mode: "ALWAYS", # accepts ALWAYS, RISING_EDGE
    #         condition_language_version: 1,
    #       },
    #     },
    #     data_extra_dimensions: ["NodePath"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     data_destination_configs: [
    #       {
    #         s3_config: {
    #           bucket_arn: "S3BucketArn", # required
    #           data_format: "JSON", # accepts JSON, PARQUET
    #           storage_compression_format: "NONE", # accepts NONE, GZIP
    #           prefix: "Prefix",
    #         },
    #         timestream_config: {
    #           timestream_table_arn: "TimestreamTableArn", # required
    #           execution_role_arn: "IAMRoleArn", # required
    #         },
    #         mqtt_topic_config: {
    #           mqtt_topic_arn: "MqttTopicArn", # required
    #           execution_role_arn: "IAMRoleArn", # required
    #         },
    #       },
    #     ],
    #     data_partitions: [
    #       {
    #         id: "DataPartitionId", # required
    #         storage_options: { # required
    #           maximum_size: { # required
    #             unit: "MB", # required, accepts MB, GB, TB
    #             value: 1, # required
    #           },
    #           storage_location: "StorageLocation", # required
    #           minimum_time_to_live: { # required
    #             unit: "HOURS", # required, accepts HOURS, DAYS, WEEKS
    #             value: 1, # required
    #           },
    #         },
    #         upload_options: {
    #           expression: "eventExpression", # required
    #           condition_language_version: 1,
    #         },
    #       },
    #     ],
    #     signals_to_fetch: [
    #       {
    #         fully_qualified_name: "NodePath", # required
    #         signal_fetch_config: { # required
    #           time_based: {
    #             execution_frequency_ms: 1, # required
    #           },
    #           condition_based: {
    #             condition_expression: "fetchConfigEventExpression", # required
    #             trigger_mode: "ALWAYS", # required, accepts ALWAYS, RISING_EDGE
    #           },
    #         },
    #         condition_language_version: 1,
    #         actions: ["actionEventExpression"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload create_campaign(params = {})
    # @param [Hash] params ({})
    def create_campaign(params = {}, options = {})
      req = build_request(:create_campaign, params)
      req.send_request(options)
    end

    # Creates the decoder manifest associated with a model manifest. To
    # create a decoder manifest, the following must be true:
    #
    # * Every signal decoder has a unique name.
    #
    # * Each signal decoder is associated with a network interface.
    #
    # * Each network interface has a unique ID.
    #
    # * The signal decoders are specified in the model manifest.
    #
    # @option params [required, String] :name
    #   The unique name of the decoder manifest to create.
    #
    # @option params [String] :description
    #   A brief description of the decoder manifest.
    #
    # @option params [required, String] :model_manifest_arn
    #   The Amazon Resource Name (ARN) of the vehicle model (model manifest).
    #
    # @option params [Array<Types::SignalDecoder>] :signal_decoders
    #   A list of information about signal decoders.
    #
    # @option params [Array<Types::NetworkInterface>] :network_interfaces
    #   A list of information about available network interfaces.
    #
    # @option params [String] :default_for_unmapped_signals
    #   Use default decoders for all unmapped signals in the model. You don't
    #   need to provide any detailed decoding information.
    #
    #   Access to certain Amazon Web Services IoT FleetWise features is
    #   currently gated. For more information, see [Amazon Web Services Region
    #   and feature availability][1] in the *Amazon Web Services IoT FleetWise
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the decoder manifest.
    #
    # @return [Types::CreateDecoderManifestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDecoderManifestResponse#name #name} => String
    #   * {Types::CreateDecoderManifestResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_decoder_manifest({
    #     name: "resourceName", # required
    #     description: "description",
    #     model_manifest_arn: "CreateDecoderManifestRequestModelManifestArnString", # required
    #     signal_decoders: [
    #       {
    #         fully_qualified_name: "FullyQualifiedName", # required
    #         type: "CAN_SIGNAL", # required, accepts CAN_SIGNAL, OBD_SIGNAL, MESSAGE_SIGNAL, CUSTOM_DECODING_SIGNAL
    #         interface_id: "InterfaceId", # required
    #         can_signal: {
    #           message_id: 1, # required
    #           is_big_endian: false, # required
    #           is_signed: false, # required
    #           start_bit: 1, # required
    #           offset: 1.0, # required
    #           factor: 1.0, # required
    #           length: 1, # required
    #           name: "CanSignalName",
    #           signal_value_type: "INTEGER", # accepts INTEGER, FLOATING_POINT
    #         },
    #         obd_signal: {
    #           pid_response_length: 1, # required
    #           service_mode: 1, # required
    #           pid: 1, # required
    #           scaling: 1.0, # required
    #           offset: 1.0, # required
    #           start_byte: 1, # required
    #           byte_length: 1, # required
    #           bit_right_shift: 1,
    #           bit_mask_length: 1,
    #           is_signed: false,
    #           signal_value_type: "INTEGER", # accepts INTEGER, FLOATING_POINT
    #         },
    #         message_signal: {
    #           topic_name: "TopicName", # required
    #           structured_message: { # required
    #             primitive_message_definition: {
    #               ros2_primitive_message_definition: {
    #                 primitive_type: "BOOL", # required, accepts BOOL, BYTE, CHAR, FLOAT32, FLOAT64, INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, STRING, WSTRING
    #                 offset: 1.0,
    #                 scaling: 1.0,
    #                 upper_bound: 1,
    #               },
    #             },
    #             structured_message_list_definition: {
    #               name: "StructureMessageName", # required
    #               member_type: { # required
    #                 # recursive StructuredMessage
    #               },
    #               list_type: "FIXED_CAPACITY", # required, accepts FIXED_CAPACITY, DYNAMIC_UNBOUNDED_CAPACITY, DYNAMIC_BOUNDED_CAPACITY
    #               capacity: 1,
    #             },
    #             structured_message_definition: [
    #               {
    #                 field_name: "StructureMessageName", # required
    #                 data_type: { # required
    #                   # recursive StructuredMessage
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         custom_decoding_signal: {
    #           id: "CustomDecodingId", # required
    #         },
    #       },
    #     ],
    #     network_interfaces: [
    #       {
    #         interface_id: "InterfaceId", # required
    #         type: "CAN_INTERFACE", # required, accepts CAN_INTERFACE, OBD_INTERFACE, VEHICLE_MIDDLEWARE, CUSTOM_DECODING_INTERFACE
    #         can_interface: {
    #           name: "CanInterfaceName", # required
    #           protocol_name: "ProtocolName",
    #           protocol_version: "ProtocolVersion",
    #         },
    #         obd_interface: {
    #           name: "ObdInterfaceName", # required
    #           request_message_id: 1, # required
    #           obd_standard: "ObdStandard",
    #           pid_request_interval_seconds: 1,
    #           dtc_request_interval_seconds: 1,
    #           use_extended_ids: false,
    #           has_transmission_ecu: false,
    #         },
    #         vehicle_middleware: {
    #           name: "VehicleMiddlewareName", # required
    #           protocol_name: "ROS_2", # required, accepts ROS_2
    #         },
    #         custom_decoding_interface: {
    #           name: "CustomDecodingSignalInterfaceName", # required
    #         },
    #       },
    #     ],
    #     default_for_unmapped_signals: "CUSTOM_DECODING", # accepts CUSTOM_DECODING
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
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload create_decoder_manifest(params = {})
    # @param [Hash] params ({})
    def create_decoder_manifest(params = {}, options = {})
      req = build_request(:create_decoder_manifest, params)
      req.send_request(options)
    end

    # Creates a fleet that represents a group of vehicles.
    #
    # <note markdown="1"> You must create both a signal catalog and vehicles before you can
    # create a fleet.
    #
    #  </note>
    #
    # For more information, see [Fleets][1] in the *Amazon Web Services IoT
    # FleetWise Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleets.html
    #
    # @option params [required, String] :fleet_id
    #   The unique ID of the fleet to create.
    #
    # @option params [String] :description
    #   A brief description of the fleet to create.
    #
    # @option params [required, String] :signal_catalog_arn
    #   The Amazon Resource Name (ARN) of a signal catalog.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the fleet.
    #
    # @return [Types::CreateFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetResponse#id #id} => String
    #   * {Types::CreateFleetResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet({
    #     fleet_id: "fleetId", # required
    #     description: "description",
    #     signal_catalog_arn: "arn", # required
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
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @overload create_fleet(params = {})
    # @param [Hash] params ({})
    def create_fleet(params = {}, options = {})
      req = build_request(:create_fleet, params)
      req.send_request(options)
    end

    # Creates a vehicle model (model manifest) that specifies signals
    # (attributes, branches, sensors, and actuators).
    #
    # For more information, see [Vehicle models][1] in the *Amazon Web
    # Services IoT FleetWise Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/vehicle-models.html
    #
    # @option params [required, String] :name
    #   The name of the vehicle model to create.
    #
    # @option params [String] :description
    #   A brief description of the vehicle model.
    #
    # @option params [required, Array<String>] :nodes
    #   A list of nodes, which are a general abstraction of signals.
    #
    # @option params [required, String] :signal_catalog_arn
    #   The Amazon Resource Name (ARN) of a signal catalog.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the vehicle model.
    #
    # @return [Types::CreateModelManifestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelManifestResponse#name #name} => String
    #   * {Types::CreateModelManifestResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model_manifest({
    #     name: "resourceName", # required
    #     description: "description",
    #     nodes: ["string"], # required
    #     signal_catalog_arn: "arn", # required
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
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload create_model_manifest(params = {})
    # @param [Hash] params ({})
    def create_model_manifest(params = {}, options = {})
      req = build_request(:create_model_manifest, params)
      req.send_request(options)
    end

    # Creates a collection of standardized signals that can be reused to
    # create vehicle models.
    #
    # @option params [required, String] :name
    #   The name of the signal catalog to create.
    #
    # @option params [String] :description
    #   A brief description of the signal catalog.
    #
    # @option params [Array<Types::Node>] :nodes
    #   A list of information about nodes, which are a general abstraction of
    #   signals. For more information, see the API data type.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the signal catalog.
    #
    # @return [Types::CreateSignalCatalogResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSignalCatalogResponse#name #name} => String
    #   * {Types::CreateSignalCatalogResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_signal_catalog({
    #     name: "resourceName", # required
    #     description: "description",
    #     nodes: [
    #       {
    #         branch: {
    #           fully_qualified_name: "BranchFullyQualifiedNameString", # required
    #           description: "description",
    #           deprecation_message: "message",
    #           comment: "message",
    #         },
    #         sensor: {
    #           fully_qualified_name: "SensorFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           description: "description",
    #           unit: "string",
    #           allowed_values: ["string"],
    #           min: 1.0,
    #           max: 1.0,
    #           deprecation_message: "message",
    #           comment: "message",
    #           struct_fully_qualified_name: "NodePath",
    #         },
    #         actuator: {
    #           fully_qualified_name: "ActuatorFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           description: "description",
    #           unit: "string",
    #           allowed_values: ["string"],
    #           min: 1.0,
    #           max: 1.0,
    #           assigned_value: "string",
    #           deprecation_message: "message",
    #           comment: "message",
    #           struct_fully_qualified_name: "NodePath",
    #         },
    #         attribute: {
    #           fully_qualified_name: "AttributeFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           description: "description",
    #           unit: "string",
    #           allowed_values: ["string"],
    #           min: 1.0,
    #           max: 1.0,
    #           assigned_value: "string",
    #           default_value: "string",
    #           deprecation_message: "message",
    #           comment: "message",
    #         },
    #         struct: {
    #           fully_qualified_name: "CustomStructFullyQualifiedNameString", # required
    #           description: "description",
    #           deprecation_message: "message",
    #           comment: "message",
    #         },
    #         property: {
    #           fully_qualified_name: "CustomPropertyFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           data_encoding: "BINARY", # accepts BINARY, TYPED
    #           description: "description",
    #           deprecation_message: "message",
    #           comment: "message",
    #           struct_fully_qualified_name: "NodePath",
    #         },
    #       },
    #     ],
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
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload create_signal_catalog(params = {})
    # @param [Hash] params ({})
    def create_signal_catalog(params = {}, options = {})
      req = build_request(:create_signal_catalog, params)
      req.send_request(options)
    end

    # Creates a state template. State templates contain state properties,
    # which are signals that belong to a signal catalog that is synchronized
    # between the Amazon Web Services IoT FleetWise Edge and the Amazon Web
    # Services Cloud.
    #
    # Access to certain Amazon Web Services IoT FleetWise features is
    # currently gated. For more information, see [Amazon Web Services Region
    # and feature availability][1] in the *Amazon Web Services IoT FleetWise
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
    #
    # @option params [required, String] :name
    #   The name of the state template.
    #
    # @option params [String] :description
    #   A brief description of the state template.
    #
    # @option params [required, String] :signal_catalog_arn
    #   The ARN of the signal catalog associated with the state template.
    #
    # @option params [required, Array<String>] :state_template_properties
    #   A list of signals from which data is collected. The state template
    #   properties contain the fully qualified names of the signals.
    #
    # @option params [Array<String>] :data_extra_dimensions
    #   A list of vehicle attributes to associate with the payload published
    #   on the state template's MQTT topic. (See [ Processing last known
    #   state vehicle data using MQTT messaging][1]). For example, if you add
    #   `Vehicle.Attributes.Make` and `Vehicle.Attributes.Model` attributes,
    #   Amazon Web Services IoT FleetWise will enrich the protobuf encoded
    #   payload with those attributes in the `extraDimensions` field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data
    #
    # @option params [Array<String>] :metadata_extra_dimensions
    #   A list of vehicle attributes to associate with user properties of the
    #   messages published on the state template's MQTT topic. (See [
    #   Processing last known state vehicle data using MQTT messaging][1]).
    #   For example, if you add `Vehicle.Attributes.Make` and
    #   `Vehicle.Attributes.Model` attributes, Amazon Web Services IoT
    #   FleetWise will include these attributes as User Properties with the
    #   MQTT message.
    #
    #   Default: An empty array
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the state template.
    #
    # @return [Types::CreateStateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStateTemplateResponse#name #name} => String
    #   * {Types::CreateStateTemplateResponse#arn #arn} => String
    #   * {Types::CreateStateTemplateResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_state_template({
    #     name: "resourceName", # required
    #     description: "description",
    #     signal_catalog_arn: "arn", # required
    #     state_template_properties: ["NodePath"], # required
    #     data_extra_dimensions: ["NodePath"],
    #     metadata_extra_dimensions: ["NodePath"],
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
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @overload create_state_template(params = {})
    # @param [Hash] params ({})
    def create_state_template(params = {}, options = {})
      req = build_request(:create_state_template, params)
      req.send_request(options)
    end

    # Creates a vehicle, which is an instance of a vehicle model (model
    # manifest). Vehicles created from the same vehicle model consist of the
    # same signals inherited from the vehicle model.
    #
    # <note markdown="1"> If you have an existing Amazon Web Services IoT thing, you can use
    # Amazon Web Services IoT FleetWise to create a vehicle and collect data
    # from your thing.
    #
    #  </note>
    #
    # For more information, see [Create a vehicle (AWS CLI)][1] in the
    # *Amazon Web Services IoT FleetWise Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicle-cli.html
    #
    # @option params [required, String] :vehicle_name
    #   The unique ID of the vehicle to create.
    #
    # @option params [required, String] :model_manifest_arn
    #   The Amazon Resource Name ARN of a vehicle model.
    #
    # @option params [required, String] :decoder_manifest_arn
    #   The ARN of a decoder manifest.
    #
    # @option params [Hash<String,String>] :attributes
    #   Static information about a vehicle in a key-value pair. For example:
    #   `"engineType"` : `"1.3 L R2"`
    #
    #   To use attributes with Campaigns or State Templates, you must include
    #   them using the request parameters `dataExtraDimensions` and/or
    #   `metadataExtraDimensions` (for state templates only) when creating
    #   your campaign/state template.
    #
    # @option params [String] :association_behavior
    #   An option to create a new Amazon Web Services IoT thing when creating
    #   a vehicle, or to validate an existing Amazon Web Services IoT thing as
    #   a vehicle.
    #
    #   Default: ``
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the vehicle.
    #
    # @option params [Array<Types::StateTemplateAssociation>] :state_templates
    #   Associate state templates with the vehicle. You can monitor the last
    #   known state of the vehicle in near real time.
    #
    # @return [Types::CreateVehicleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVehicleResponse#vehicle_name #vehicle_name} => String
    #   * {Types::CreateVehicleResponse#arn #arn} => String
    #   * {Types::CreateVehicleResponse#thing_arn #thing_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vehicle({
    #     vehicle_name: "vehicleName", # required
    #     model_manifest_arn: "arn", # required
    #     decoder_manifest_arn: "arn", # required
    #     attributes: {
    #       "attributeName" => "attributeValue",
    #     },
    #     association_behavior: "CreateIotThing", # accepts CreateIotThing, ValidateIotThingExists
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     state_templates: [
    #       {
    #         identifier: "ResourceIdentifier", # required
    #         state_template_update_strategy: { # required
    #           periodic: {
    #             state_template_update_rate: { # required
    #               unit: "MILLISECOND", # required, accepts MILLISECOND, SECOND, MINUTE, HOUR
    #               value: 1, # required
    #             },
    #           },
    #           on_change: {
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.vehicle_name #=> String
    #   resp.arn #=> String
    #   resp.thing_arn #=> String
    #
    # @overload create_vehicle(params = {})
    # @param [Hash] params ({})
    def create_vehicle(params = {}, options = {})
      req = build_request(:create_vehicle, params)
      req.send_request(options)
    end

    # Deletes a data collection campaign. Deleting a campaign suspends all
    # data collection and removes it from any vehicles.
    #
    # @option params [required, String] :name
    #   The name of the campaign to delete.
    #
    # @return [Types::DeleteCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCampaignResponse#name #name} => String
    #   * {Types::DeleteCampaignResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign({
    #     name: "campaignName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload delete_campaign(params = {})
    # @param [Hash] params ({})
    def delete_campaign(params = {}, options = {})
      req = build_request(:delete_campaign, params)
      req.send_request(options)
    end

    # Deletes a decoder manifest. You can't delete a decoder manifest if it
    # has vehicles associated with it.
    #
    # @option params [required, String] :name
    #   The name of the decoder manifest to delete.
    #
    # @return [Types::DeleteDecoderManifestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDecoderManifestResponse#name #name} => String
    #   * {Types::DeleteDecoderManifestResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_decoder_manifest({
    #     name: "resourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload delete_decoder_manifest(params = {})
    # @param [Hash] params ({})
    def delete_decoder_manifest(params = {}, options = {})
      req = build_request(:delete_decoder_manifest, params)
      req.send_request(options)
    end

    # Deletes a fleet. Before you delete a fleet, all vehicles must be
    # dissociated from the fleet. For more information, see [Delete a fleet
    # (AWS CLI)][1] in the *Amazon Web Services IoT FleetWise Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/delete-fleet-cli.html
    #
    # @option params [required, String] :fleet_id
    #   The ID of the fleet to delete.
    #
    # @return [Types::DeleteFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFleetResponse#id #id} => String
    #   * {Types::DeleteFleetResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet({
    #     fleet_id: "fleetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @overload delete_fleet(params = {})
    # @param [Hash] params ({})
    def delete_fleet(params = {}, options = {})
      req = build_request(:delete_fleet, params)
      req.send_request(options)
    end

    # Deletes a vehicle model (model manifest).
    #
    # @option params [required, String] :name
    #   The name of the model manifest to delete.
    #
    # @return [Types::DeleteModelManifestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteModelManifestResponse#name #name} => String
    #   * {Types::DeleteModelManifestResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model_manifest({
    #     name: "resourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload delete_model_manifest(params = {})
    # @param [Hash] params ({})
    def delete_model_manifest(params = {}, options = {})
      req = build_request(:delete_model_manifest, params)
      req.send_request(options)
    end

    # Deletes a signal catalog.
    #
    # @option params [required, String] :name
    #   The name of the signal catalog to delete.
    #
    # @return [Types::DeleteSignalCatalogResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSignalCatalogResponse#name #name} => String
    #   * {Types::DeleteSignalCatalogResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_signal_catalog({
    #     name: "resourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload delete_signal_catalog(params = {})
    # @param [Hash] params ({})
    def delete_signal_catalog(params = {}, options = {})
      req = build_request(:delete_signal_catalog, params)
      req.send_request(options)
    end

    # Deletes a state template.
    #
    # @option params [required, String] :identifier
    #   The unique ID of the state template.
    #
    # @return [Types::DeleteStateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteStateTemplateResponse#name #name} => String
    #   * {Types::DeleteStateTemplateResponse#arn #arn} => String
    #   * {Types::DeleteStateTemplateResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_state_template({
    #     identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @overload delete_state_template(params = {})
    # @param [Hash] params ({})
    def delete_state_template(params = {}, options = {})
      req = build_request(:delete_state_template, params)
      req.send_request(options)
    end

    # Deletes a vehicle and removes it from any campaigns.
    #
    # @option params [required, String] :vehicle_name
    #   The ID of the vehicle to delete.
    #
    # @return [Types::DeleteVehicleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVehicleResponse#vehicle_name #vehicle_name} => String
    #   * {Types::DeleteVehicleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vehicle({
    #     vehicle_name: "vehicleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vehicle_name #=> String
    #   resp.arn #=> String
    #
    # @overload delete_vehicle(params = {})
    # @param [Hash] params ({})
    def delete_vehicle(params = {}, options = {})
      req = build_request(:delete_vehicle, params)
      req.send_request(options)
    end

    # Removes, or disassociates, a vehicle from a fleet. Disassociating a
    # vehicle from a fleet doesn't delete the vehicle.
    #
    # @option params [required, String] :vehicle_name
    #   The unique ID of the vehicle to disassociate from the fleet.
    #
    # @option params [required, String] :fleet_id
    #   The unique ID of a fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_vehicle_fleet({
    #     vehicle_name: "vehicleName", # required
    #     fleet_id: "fleetId", # required
    #   })
    #
    # @overload disassociate_vehicle_fleet(params = {})
    # @param [Hash] params ({})
    def disassociate_vehicle_fleet(params = {}, options = {})
      req = build_request(:disassociate_vehicle_fleet, params)
      req.send_request(options)
    end

    # Retrieves information about a campaign.
    #
    # Access to certain Amazon Web Services IoT FleetWise features is
    # currently gated. For more information, see [Amazon Web Services Region
    # and feature availability][1] in the *Amazon Web Services IoT FleetWise
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
    #
    # @option params [required, String] :name
    #   The name of the campaign to retrieve information about.
    #
    # @return [Types::GetCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignResponse#name #name} => String
    #   * {Types::GetCampaignResponse#arn #arn} => String
    #   * {Types::GetCampaignResponse#description #description} => String
    #   * {Types::GetCampaignResponse#signal_catalog_arn #signal_catalog_arn} => String
    #   * {Types::GetCampaignResponse#target_arn #target_arn} => String
    #   * {Types::GetCampaignResponse#status #status} => String
    #   * {Types::GetCampaignResponse#start_time #start_time} => Time
    #   * {Types::GetCampaignResponse#expiry_time #expiry_time} => Time
    #   * {Types::GetCampaignResponse#post_trigger_collection_duration #post_trigger_collection_duration} => Integer
    #   * {Types::GetCampaignResponse#diagnostics_mode #diagnostics_mode} => String
    #   * {Types::GetCampaignResponse#spooling_mode #spooling_mode} => String
    #   * {Types::GetCampaignResponse#compression #compression} => String
    #   * {Types::GetCampaignResponse#priority #priority} => Integer
    #   * {Types::GetCampaignResponse#signals_to_collect #signals_to_collect} => Array&lt;Types::SignalInformation&gt;
    #   * {Types::GetCampaignResponse#collection_scheme #collection_scheme} => Types::CollectionScheme
    #   * {Types::GetCampaignResponse#data_extra_dimensions #data_extra_dimensions} => Array&lt;String&gt;
    #   * {Types::GetCampaignResponse#creation_time #creation_time} => Time
    #   * {Types::GetCampaignResponse#last_modification_time #last_modification_time} => Time
    #   * {Types::GetCampaignResponse#data_destination_configs #data_destination_configs} => Array&lt;Types::DataDestinationConfig&gt;
    #   * {Types::GetCampaignResponse#data_partitions #data_partitions} => Array&lt;Types::DataPartition&gt;
    #   * {Types::GetCampaignResponse#signals_to_fetch #signals_to_fetch} => Array&lt;Types::SignalFetchInformation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign({
    #     name: "campaignName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.signal_catalog_arn #=> String
    #   resp.target_arn #=> String
    #   resp.status #=> String, one of "CREATING", "WAITING_FOR_APPROVAL", "RUNNING", "SUSPENDED"
    #   resp.start_time #=> Time
    #   resp.expiry_time #=> Time
    #   resp.post_trigger_collection_duration #=> Integer
    #   resp.diagnostics_mode #=> String, one of "OFF", "SEND_ACTIVE_DTCS"
    #   resp.spooling_mode #=> String, one of "OFF", "TO_DISK"
    #   resp.compression #=> String, one of "OFF", "SNAPPY"
    #   resp.priority #=> Integer
    #   resp.signals_to_collect #=> Array
    #   resp.signals_to_collect[0].name #=> String
    #   resp.signals_to_collect[0].max_sample_count #=> Integer
    #   resp.signals_to_collect[0].minimum_sampling_interval_ms #=> Integer
    #   resp.signals_to_collect[0].data_partition_id #=> String
    #   resp.collection_scheme.time_based_collection_scheme.period_ms #=> Integer
    #   resp.collection_scheme.condition_based_collection_scheme.expression #=> String
    #   resp.collection_scheme.condition_based_collection_scheme.minimum_trigger_interval_ms #=> Integer
    #   resp.collection_scheme.condition_based_collection_scheme.trigger_mode #=> String, one of "ALWAYS", "RISING_EDGE"
    #   resp.collection_scheme.condition_based_collection_scheme.condition_language_version #=> Integer
    #   resp.data_extra_dimensions #=> Array
    #   resp.data_extra_dimensions[0] #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #   resp.data_destination_configs #=> Array
    #   resp.data_destination_configs[0].s3_config.bucket_arn #=> String
    #   resp.data_destination_configs[0].s3_config.data_format #=> String, one of "JSON", "PARQUET"
    #   resp.data_destination_configs[0].s3_config.storage_compression_format #=> String, one of "NONE", "GZIP"
    #   resp.data_destination_configs[0].s3_config.prefix #=> String
    #   resp.data_destination_configs[0].timestream_config.timestream_table_arn #=> String
    #   resp.data_destination_configs[0].timestream_config.execution_role_arn #=> String
    #   resp.data_destination_configs[0].mqtt_topic_config.mqtt_topic_arn #=> String
    #   resp.data_destination_configs[0].mqtt_topic_config.execution_role_arn #=> String
    #   resp.data_partitions #=> Array
    #   resp.data_partitions[0].id #=> String
    #   resp.data_partitions[0].storage_options.maximum_size.unit #=> String, one of "MB", "GB", "TB"
    #   resp.data_partitions[0].storage_options.maximum_size.value #=> Integer
    #   resp.data_partitions[0].storage_options.storage_location #=> String
    #   resp.data_partitions[0].storage_options.minimum_time_to_live.unit #=> String, one of "HOURS", "DAYS", "WEEKS"
    #   resp.data_partitions[0].storage_options.minimum_time_to_live.value #=> Integer
    #   resp.data_partitions[0].upload_options.expression #=> String
    #   resp.data_partitions[0].upload_options.condition_language_version #=> Integer
    #   resp.signals_to_fetch #=> Array
    #   resp.signals_to_fetch[0].fully_qualified_name #=> String
    #   resp.signals_to_fetch[0].signal_fetch_config.time_based.execution_frequency_ms #=> Integer
    #   resp.signals_to_fetch[0].signal_fetch_config.condition_based.condition_expression #=> String
    #   resp.signals_to_fetch[0].signal_fetch_config.condition_based.trigger_mode #=> String, one of "ALWAYS", "RISING_EDGE"
    #   resp.signals_to_fetch[0].condition_language_version #=> Integer
    #   resp.signals_to_fetch[0].actions #=> Array
    #   resp.signals_to_fetch[0].actions[0] #=> String
    #
    # @overload get_campaign(params = {})
    # @param [Hash] params ({})
    def get_campaign(params = {}, options = {})
      req = build_request(:get_campaign, params)
      req.send_request(options)
    end

    # Retrieves information about a created decoder manifest.
    #
    # @option params [required, String] :name
    #   The name of the decoder manifest to retrieve information about.
    #
    # @return [Types::GetDecoderManifestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDecoderManifestResponse#name #name} => String
    #   * {Types::GetDecoderManifestResponse#arn #arn} => String
    #   * {Types::GetDecoderManifestResponse#description #description} => String
    #   * {Types::GetDecoderManifestResponse#model_manifest_arn #model_manifest_arn} => String
    #   * {Types::GetDecoderManifestResponse#status #status} => String
    #   * {Types::GetDecoderManifestResponse#creation_time #creation_time} => Time
    #   * {Types::GetDecoderManifestResponse#last_modification_time #last_modification_time} => Time
    #   * {Types::GetDecoderManifestResponse#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_decoder_manifest({
    #     name: "resourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.model_manifest_arn #=> String
    #   resp.status #=> String, one of "ACTIVE", "DRAFT", "INVALID", "VALIDATING"
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #   resp.message #=> String
    #
    # @overload get_decoder_manifest(params = {})
    # @param [Hash] params ({})
    def get_decoder_manifest(params = {}, options = {})
      req = build_request(:get_decoder_manifest, params)
      req.send_request(options)
    end

    # Retrieves the encryption configuration for resources and data in
    # Amazon Web Services IoT FleetWise.
    #
    # @return [Types::GetEncryptionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEncryptionConfigurationResponse#kms_key_id #kms_key_id} => String
    #   * {Types::GetEncryptionConfigurationResponse#encryption_status #encryption_status} => String
    #   * {Types::GetEncryptionConfigurationResponse#encryption_type #encryption_type} => String
    #   * {Types::GetEncryptionConfigurationResponse#error_message #error_message} => String
    #   * {Types::GetEncryptionConfigurationResponse#creation_time #creation_time} => Time
    #   * {Types::GetEncryptionConfigurationResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Response structure
    #
    #   resp.kms_key_id #=> String
    #   resp.encryption_status #=> String, one of "PENDING", "SUCCESS", "FAILURE"
    #   resp.encryption_type #=> String, one of "KMS_BASED_ENCRYPTION", "FLEETWISE_DEFAULT_ENCRYPTION"
    #   resp.error_message #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @overload get_encryption_configuration(params = {})
    # @param [Hash] params ({})
    def get_encryption_configuration(params = {}, options = {})
      req = build_request(:get_encryption_configuration, params)
      req.send_request(options)
    end

    # Retrieves information about a fleet.
    #
    # @option params [required, String] :fleet_id
    #   The ID of the fleet to retrieve information about.
    #
    # @return [Types::GetFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFleetResponse#id #id} => String
    #   * {Types::GetFleetResponse#arn #arn} => String
    #   * {Types::GetFleetResponse#description #description} => String
    #   * {Types::GetFleetResponse#signal_catalog_arn #signal_catalog_arn} => String
    #   * {Types::GetFleetResponse#creation_time #creation_time} => Time
    #   * {Types::GetFleetResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_fleet({
    #     fleet_id: "fleetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.signal_catalog_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @overload get_fleet(params = {})
    # @param [Hash] params ({})
    def get_fleet(params = {}, options = {})
      req = build_request(:get_fleet, params)
      req.send_request(options)
    end

    # Retrieves the logging options.
    #
    # @return [Types::GetLoggingOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoggingOptionsResponse#cloud_watch_log_delivery #cloud_watch_log_delivery} => Types::CloudWatchLogDeliveryOptions
    #
    # @example Response structure
    #
    #   resp.cloud_watch_log_delivery.log_type #=> String, one of "OFF", "ERROR"
    #   resp.cloud_watch_log_delivery.log_group_name #=> String
    #
    # @overload get_logging_options(params = {})
    # @param [Hash] params ({})
    def get_logging_options(params = {}, options = {})
      req = build_request(:get_logging_options, params)
      req.send_request(options)
    end

    # Retrieves information about a vehicle model (model manifest).
    #
    # @option params [required, String] :name
    #   The name of the vehicle model to retrieve information about.
    #
    # @return [Types::GetModelManifestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelManifestResponse#name #name} => String
    #   * {Types::GetModelManifestResponse#arn #arn} => String
    #   * {Types::GetModelManifestResponse#description #description} => String
    #   * {Types::GetModelManifestResponse#signal_catalog_arn #signal_catalog_arn} => String
    #   * {Types::GetModelManifestResponse#status #status} => String
    #   * {Types::GetModelManifestResponse#creation_time #creation_time} => Time
    #   * {Types::GetModelManifestResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_manifest({
    #     name: "resourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.signal_catalog_arn #=> String
    #   resp.status #=> String, one of "ACTIVE", "DRAFT", "INVALID", "VALIDATING"
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @overload get_model_manifest(params = {})
    # @param [Hash] params ({})
    def get_model_manifest(params = {}, options = {})
      req = build_request(:get_model_manifest, params)
      req.send_request(options)
    end

    # Retrieves information about the status of registering your Amazon Web
    # Services account, IAM, and Amazon Timestream resources so that Amazon
    # Web Services IoT FleetWise can transfer your vehicle data to the
    # Amazon Web Services Cloud.
    #
    # For more information, including step-by-step procedures, see [Setting
    # up Amazon Web Services IoT FleetWise][1].
    #
    # <note markdown="1"> This API operation doesn't require input parameters.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html
    #
    # @return [Types::GetRegisterAccountStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegisterAccountStatusResponse#customer_account_id #customer_account_id} => String
    #   * {Types::GetRegisterAccountStatusResponse#account_status #account_status} => String
    #   * {Types::GetRegisterAccountStatusResponse#timestream_registration_response #timestream_registration_response} => Types::TimestreamRegistrationResponse
    #   * {Types::GetRegisterAccountStatusResponse#iam_registration_response #iam_registration_response} => Types::IamRegistrationResponse
    #   * {Types::GetRegisterAccountStatusResponse#creation_time #creation_time} => Time
    #   * {Types::GetRegisterAccountStatusResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Response structure
    #
    #   resp.customer_account_id #=> String
    #   resp.account_status #=> String, one of "REGISTRATION_PENDING", "REGISTRATION_SUCCESS", "REGISTRATION_FAILURE"
    #   resp.timestream_registration_response.timestream_database_name #=> String
    #   resp.timestream_registration_response.timestream_table_name #=> String
    #   resp.timestream_registration_response.timestream_database_arn #=> String
    #   resp.timestream_registration_response.timestream_table_arn #=> String
    #   resp.timestream_registration_response.registration_status #=> String, one of "REGISTRATION_PENDING", "REGISTRATION_SUCCESS", "REGISTRATION_FAILURE"
    #   resp.timestream_registration_response.error_message #=> String
    #   resp.iam_registration_response.role_arn #=> String
    #   resp.iam_registration_response.registration_status #=> String, one of "REGISTRATION_PENDING", "REGISTRATION_SUCCESS", "REGISTRATION_FAILURE"
    #   resp.iam_registration_response.error_message #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @overload get_register_account_status(params = {})
    # @param [Hash] params ({})
    def get_register_account_status(params = {}, options = {})
      req = build_request(:get_register_account_status, params)
      req.send_request(options)
    end

    # Retrieves information about a signal catalog.
    #
    # @option params [required, String] :name
    #   The name of the signal catalog to retrieve information about.
    #
    # @return [Types::GetSignalCatalogResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSignalCatalogResponse#name #name} => String
    #   * {Types::GetSignalCatalogResponse#arn #arn} => String
    #   * {Types::GetSignalCatalogResponse#description #description} => String
    #   * {Types::GetSignalCatalogResponse#node_counts #node_counts} => Types::NodeCounts
    #   * {Types::GetSignalCatalogResponse#creation_time #creation_time} => Time
    #   * {Types::GetSignalCatalogResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signal_catalog({
    #     name: "resourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.node_counts.total_nodes #=> Integer
    #   resp.node_counts.total_branches #=> Integer
    #   resp.node_counts.total_sensors #=> Integer
    #   resp.node_counts.total_attributes #=> Integer
    #   resp.node_counts.total_actuators #=> Integer
    #   resp.node_counts.total_structs #=> Integer
    #   resp.node_counts.total_properties #=> Integer
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @overload get_signal_catalog(params = {})
    # @param [Hash] params ({})
    def get_signal_catalog(params = {}, options = {})
      req = build_request(:get_signal_catalog, params)
      req.send_request(options)
    end

    # Retrieves information about a state template.
    #
    # Access to certain Amazon Web Services IoT FleetWise features is
    # currently gated. For more information, see [Amazon Web Services Region
    # and feature availability][1] in the *Amazon Web Services IoT FleetWise
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
    #
    # @option params [required, String] :identifier
    #   The unique ID of the state template.
    #
    # @return [Types::GetStateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStateTemplateResponse#name #name} => String
    #   * {Types::GetStateTemplateResponse#arn #arn} => String
    #   * {Types::GetStateTemplateResponse#description #description} => String
    #   * {Types::GetStateTemplateResponse#signal_catalog_arn #signal_catalog_arn} => String
    #   * {Types::GetStateTemplateResponse#state_template_properties #state_template_properties} => Array&lt;String&gt;
    #   * {Types::GetStateTemplateResponse#data_extra_dimensions #data_extra_dimensions} => Array&lt;String&gt;
    #   * {Types::GetStateTemplateResponse#metadata_extra_dimensions #metadata_extra_dimensions} => Array&lt;String&gt;
    #   * {Types::GetStateTemplateResponse#creation_time #creation_time} => Time
    #   * {Types::GetStateTemplateResponse#last_modification_time #last_modification_time} => Time
    #   * {Types::GetStateTemplateResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_state_template({
    #     identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.signal_catalog_arn #=> String
    #   resp.state_template_properties #=> Array
    #   resp.state_template_properties[0] #=> String
    #   resp.data_extra_dimensions #=> Array
    #   resp.data_extra_dimensions[0] #=> String
    #   resp.metadata_extra_dimensions #=> Array
    #   resp.metadata_extra_dimensions[0] #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #   resp.id #=> String
    #
    # @overload get_state_template(params = {})
    # @param [Hash] params ({})
    def get_state_template(params = {}, options = {})
      req = build_request(:get_state_template, params)
      req.send_request(options)
    end

    # Retrieves information about a vehicle.
    #
    # @option params [required, String] :vehicle_name
    #   The ID of the vehicle to retrieve information about.
    #
    # @return [Types::GetVehicleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVehicleResponse#vehicle_name #vehicle_name} => String
    #   * {Types::GetVehicleResponse#arn #arn} => String
    #   * {Types::GetVehicleResponse#model_manifest_arn #model_manifest_arn} => String
    #   * {Types::GetVehicleResponse#decoder_manifest_arn #decoder_manifest_arn} => String
    #   * {Types::GetVehicleResponse#attributes #attributes} => Hash&lt;String,String&gt;
    #   * {Types::GetVehicleResponse#state_templates #state_templates} => Array&lt;Types::StateTemplateAssociation&gt;
    #   * {Types::GetVehicleResponse#creation_time #creation_time} => Time
    #   * {Types::GetVehicleResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vehicle({
    #     vehicle_name: "vehicleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vehicle_name #=> String
    #   resp.arn #=> String
    #   resp.model_manifest_arn #=> String
    #   resp.decoder_manifest_arn #=> String
    #   resp.attributes #=> Hash
    #   resp.attributes["attributeName"] #=> String
    #   resp.state_templates #=> Array
    #   resp.state_templates[0].identifier #=> String
    #   resp.state_templates[0].state_template_update_strategy.periodic.state_template_update_rate.unit #=> String, one of "MILLISECOND", "SECOND", "MINUTE", "HOUR"
    #   resp.state_templates[0].state_template_update_strategy.periodic.state_template_update_rate.value #=> Integer
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @overload get_vehicle(params = {})
    # @param [Hash] params ({})
    def get_vehicle(params = {}, options = {})
      req = build_request(:get_vehicle, params)
      req.send_request(options)
    end

    # Retrieves information about the status of campaigns, decoder
    # manifests, or state templates associated with a vehicle.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value. This
    #   parameter is only supported for resources of type `CAMPAIGN`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   This parameter is only supported for resources of type `CAMPAIGN`.
    #
    # @option params [required, String] :vehicle_name
    #   The ID of the vehicle to retrieve information about.
    #
    # @return [Types::GetVehicleStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVehicleStatusResponse#campaigns #campaigns} => Array&lt;Types::VehicleStatus&gt;
    #   * {Types::GetVehicleStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vehicle_status({
    #     next_token: "nextToken",
    #     max_results: 1,
    #     vehicle_name: "vehicleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaigns #=> Array
    #   resp.campaigns[0].campaign_name #=> String
    #   resp.campaigns[0].vehicle_name #=> String
    #   resp.campaigns[0].status #=> String, one of "CREATED", "READY", "HEALTHY", "SUSPENDED", "DELETING", "READY_FOR_CHECKIN"
    #   resp.next_token #=> String
    #
    # @overload get_vehicle_status(params = {})
    # @param [Hash] params ({})
    def get_vehicle_status(params = {}, options = {})
      req = build_request(:get_vehicle_status, params)
      req.send_request(options)
    end

    # Creates a decoder manifest using your existing CAN DBC file from your
    # local device.
    #
    # The CAN signal name must be unique and not repeated across CAN message
    # definitions in a .dbc file.
    #
    # @option params [required, String] :name
    #   The name of the decoder manifest to import.
    #
    # @option params [required, Array<Types::NetworkFileDefinition>] :network_file_definitions
    #   The file to load into an Amazon Web Services account.
    #
    # @return [Types::ImportDecoderManifestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportDecoderManifestResponse#name #name} => String
    #   * {Types::ImportDecoderManifestResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_decoder_manifest({
    #     name: "resourceName", # required
    #     network_file_definitions: [ # required
    #       {
    #         can_dbc: {
    #           network_interface: "InterfaceId", # required
    #           can_dbc_files: ["data"], # required
    #           signals_map: {
    #             "string" => "string",
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload import_decoder_manifest(params = {})
    # @param [Hash] params ({})
    def import_decoder_manifest(params = {}, options = {})
      req = build_request(:import_decoder_manifest, params)
      req.send_request(options)
    end

    # Creates a signal catalog using your existing VSS formatted content
    # from your local device.
    #
    # @option params [required, String] :name
    #   The name of the signal catalog to import.
    #
    # @option params [String] :description
    #   A brief description of the signal catalog.
    #
    # @option params [Types::FormattedVss] :vss
    #   The contents of the Vehicle Signal Specification (VSS) configuration.
    #   VSS is a precise language used to describe and model signals in
    #   vehicle networks.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the signal catalog.
    #
    # @return [Types::ImportSignalCatalogResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportSignalCatalogResponse#name #name} => String
    #   * {Types::ImportSignalCatalogResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_signal_catalog({
    #     name: "resourceName", # required
    #     description: "description",
    #     vss: {
    #       vss_json: "String",
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
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload import_signal_catalog(params = {})
    # @param [Hash] params ({})
    def import_signal_catalog(params = {}, options = {})
      req = build_request(:import_signal_catalog, params)
      req.send_request(options)
    end

    # Lists information about created campaigns.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @option params [String] :status
    #   An optional parameter to filter the results by the status of each
    #   created campaign in your account. The status can be one of:
    #   `CREATING`, `WAITING_FOR_APPROVAL`, `RUNNING`, or `SUSPENDED`.
    #
    # @option params [String] :list_response_scope
    #   When you set the `listResponseScope` parameter to `METADATA_ONLY`, the
    #   list response includes: campaign name, Amazon Resource Name (ARN),
    #   creation time, and last modification time.
    #
    # @return [Types::ListCampaignsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCampaignsResponse#campaign_summaries #campaign_summaries} => Array&lt;Types::CampaignSummary&gt;
    #   * {Types::ListCampaignsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_campaigns({
    #     next_token: "nextToken",
    #     max_results: 1,
    #     status: "statusStr",
    #     list_response_scope: "METADATA_ONLY", # accepts METADATA_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_summaries #=> Array
    #   resp.campaign_summaries[0].arn #=> String
    #   resp.campaign_summaries[0].name #=> String
    #   resp.campaign_summaries[0].description #=> String
    #   resp.campaign_summaries[0].signal_catalog_arn #=> String
    #   resp.campaign_summaries[0].target_arn #=> String
    #   resp.campaign_summaries[0].status #=> String, one of "CREATING", "WAITING_FOR_APPROVAL", "RUNNING", "SUSPENDED"
    #   resp.campaign_summaries[0].creation_time #=> Time
    #   resp.campaign_summaries[0].last_modification_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_campaigns(params = {})
    # @param [Hash] params ({})
    def list_campaigns(params = {}, options = {})
      req = build_request(:list_campaigns, params)
      req.send_request(options)
    end

    # Lists the network interfaces specified in a decoder manifest.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the decoder manifest to list information about.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @return [Types::ListDecoderManifestNetworkInterfacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDecoderManifestNetworkInterfacesResponse#network_interfaces #network_interfaces} => Array&lt;Types::NetworkInterface&gt;
    #   * {Types::ListDecoderManifestNetworkInterfacesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_decoder_manifest_network_interfaces({
    #     name: "resourceName", # required
    #     next_token: "nextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.network_interfaces #=> Array
    #   resp.network_interfaces[0].interface_id #=> String
    #   resp.network_interfaces[0].type #=> String, one of "CAN_INTERFACE", "OBD_INTERFACE", "VEHICLE_MIDDLEWARE", "CUSTOM_DECODING_INTERFACE"
    #   resp.network_interfaces[0].can_interface.name #=> String
    #   resp.network_interfaces[0].can_interface.protocol_name #=> String
    #   resp.network_interfaces[0].can_interface.protocol_version #=> String
    #   resp.network_interfaces[0].obd_interface.name #=> String
    #   resp.network_interfaces[0].obd_interface.request_message_id #=> Integer
    #   resp.network_interfaces[0].obd_interface.obd_standard #=> String
    #   resp.network_interfaces[0].obd_interface.pid_request_interval_seconds #=> Integer
    #   resp.network_interfaces[0].obd_interface.dtc_request_interval_seconds #=> Integer
    #   resp.network_interfaces[0].obd_interface.use_extended_ids #=> Boolean
    #   resp.network_interfaces[0].obd_interface.has_transmission_ecu #=> Boolean
    #   resp.network_interfaces[0].vehicle_middleware.name #=> String
    #   resp.network_interfaces[0].vehicle_middleware.protocol_name #=> String, one of "ROS_2"
    #   resp.network_interfaces[0].custom_decoding_interface.name #=> String
    #   resp.next_token #=> String
    #
    # @overload list_decoder_manifest_network_interfaces(params = {})
    # @param [Hash] params ({})
    def list_decoder_manifest_network_interfaces(params = {}, options = {})
      req = build_request(:list_decoder_manifest_network_interfaces, params)
      req.send_request(options)
    end

    # A list of information about signal decoders specified in a decoder
    # manifest.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the decoder manifest to list information about.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @return [Types::ListDecoderManifestSignalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDecoderManifestSignalsResponse#signal_decoders #signal_decoders} => Array&lt;Types::SignalDecoder&gt;
    #   * {Types::ListDecoderManifestSignalsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_decoder_manifest_signals({
    #     name: "resourceName", # required
    #     next_token: "nextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.signal_decoders #=> Array
    #   resp.signal_decoders[0].fully_qualified_name #=> String
    #   resp.signal_decoders[0].type #=> String, one of "CAN_SIGNAL", "OBD_SIGNAL", "MESSAGE_SIGNAL", "CUSTOM_DECODING_SIGNAL"
    #   resp.signal_decoders[0].interface_id #=> String
    #   resp.signal_decoders[0].can_signal.message_id #=> Integer
    #   resp.signal_decoders[0].can_signal.is_big_endian #=> Boolean
    #   resp.signal_decoders[0].can_signal.is_signed #=> Boolean
    #   resp.signal_decoders[0].can_signal.start_bit #=> Integer
    #   resp.signal_decoders[0].can_signal.offset #=> Float
    #   resp.signal_decoders[0].can_signal.factor #=> Float
    #   resp.signal_decoders[0].can_signal.length #=> Integer
    #   resp.signal_decoders[0].can_signal.name #=> String
    #   resp.signal_decoders[0].can_signal.signal_value_type #=> String, one of "INTEGER", "FLOATING_POINT"
    #   resp.signal_decoders[0].obd_signal.pid_response_length #=> Integer
    #   resp.signal_decoders[0].obd_signal.service_mode #=> Integer
    #   resp.signal_decoders[0].obd_signal.pid #=> Integer
    #   resp.signal_decoders[0].obd_signal.scaling #=> Float
    #   resp.signal_decoders[0].obd_signal.offset #=> Float
    #   resp.signal_decoders[0].obd_signal.start_byte #=> Integer
    #   resp.signal_decoders[0].obd_signal.byte_length #=> Integer
    #   resp.signal_decoders[0].obd_signal.bit_right_shift #=> Integer
    #   resp.signal_decoders[0].obd_signal.bit_mask_length #=> Integer
    #   resp.signal_decoders[0].obd_signal.is_signed #=> Boolean
    #   resp.signal_decoders[0].obd_signal.signal_value_type #=> String, one of "INTEGER", "FLOATING_POINT"
    #   resp.signal_decoders[0].message_signal.topic_name #=> String
    #   resp.signal_decoders[0].message_signal.structured_message.primitive_message_definition.ros2_primitive_message_definition.primitive_type #=> String, one of "BOOL", "BYTE", "CHAR", "FLOAT32", "FLOAT64", "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "STRING", "WSTRING"
    #   resp.signal_decoders[0].message_signal.structured_message.primitive_message_definition.ros2_primitive_message_definition.offset #=> Float
    #   resp.signal_decoders[0].message_signal.structured_message.primitive_message_definition.ros2_primitive_message_definition.scaling #=> Float
    #   resp.signal_decoders[0].message_signal.structured_message.primitive_message_definition.ros2_primitive_message_definition.upper_bound #=> Integer
    #   resp.signal_decoders[0].message_signal.structured_message.structured_message_list_definition.name #=> String
    #   resp.signal_decoders[0].message_signal.structured_message.structured_message_list_definition.member_type #=> Types::StructuredMessage
    #   resp.signal_decoders[0].message_signal.structured_message.structured_message_list_definition.list_type #=> String, one of "FIXED_CAPACITY", "DYNAMIC_UNBOUNDED_CAPACITY", "DYNAMIC_BOUNDED_CAPACITY"
    #   resp.signal_decoders[0].message_signal.structured_message.structured_message_list_definition.capacity #=> Integer
    #   resp.signal_decoders[0].message_signal.structured_message.structured_message_definition #=> Array
    #   resp.signal_decoders[0].message_signal.structured_message.structured_message_definition[0].field_name #=> String
    #   resp.signal_decoders[0].message_signal.structured_message.structured_message_definition[0].data_type #=> Types::StructuredMessage
    #   resp.signal_decoders[0].custom_decoding_signal.id #=> String
    #   resp.next_token #=> String
    #
    # @overload list_decoder_manifest_signals(params = {})
    # @param [Hash] params ({})
    def list_decoder_manifest_signals(params = {}, options = {})
      req = build_request(:list_decoder_manifest_signals, params)
      req.send_request(options)
    end

    # Lists decoder manifests.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [String] :model_manifest_arn
    #   The Amazon Resource Name (ARN) of a vehicle model (model manifest)
    #   associated with the decoder manifest.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @option params [String] :list_response_scope
    #   When you set the `listResponseScope` parameter to `METADATA_ONLY`, the
    #   list response includes: decoder manifest name, Amazon Resource Name
    #   (ARN), creation time, and last modification time.
    #
    # @return [Types::ListDecoderManifestsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDecoderManifestsResponse#summaries #summaries} => Array&lt;Types::DecoderManifestSummary&gt;
    #   * {Types::ListDecoderManifestsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_decoder_manifests({
    #     model_manifest_arn: "arn",
    #     next_token: "nextToken",
    #     max_results: 1,
    #     list_response_scope: "METADATA_ONLY", # accepts METADATA_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].name #=> String
    #   resp.summaries[0].arn #=> String
    #   resp.summaries[0].model_manifest_arn #=> String
    #   resp.summaries[0].description #=> String
    #   resp.summaries[0].status #=> String, one of "ACTIVE", "DRAFT", "INVALID", "VALIDATING"
    #   resp.summaries[0].creation_time #=> Time
    #   resp.summaries[0].last_modification_time #=> Time
    #   resp.summaries[0].message #=> String
    #   resp.next_token #=> String
    #
    # @overload list_decoder_manifests(params = {})
    # @param [Hash] params ({})
    def list_decoder_manifests(params = {}, options = {})
      req = build_request(:list_decoder_manifests, params)
      req.send_request(options)
    end

    # Retrieves information for each created fleet in an Amazon Web Services
    # account.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @option params [String] :list_response_scope
    #   When you set the `listResponseScope` parameter to `METADATA_ONLY`, the
    #   list response includes: fleet ID, Amazon Resource Name (ARN), creation
    #   time, and last modification time.
    #
    # @return [Types::ListFleetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetsResponse#fleet_summaries #fleet_summaries} => Array&lt;Types::FleetSummary&gt;
    #   * {Types::ListFleetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets({
    #     next_token: "nextToken",
    #     max_results: 1,
    #     list_response_scope: "METADATA_ONLY", # accepts METADATA_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_summaries #=> Array
    #   resp.fleet_summaries[0].id #=> String
    #   resp.fleet_summaries[0].arn #=> String
    #   resp.fleet_summaries[0].description #=> String
    #   resp.fleet_summaries[0].signal_catalog_arn #=> String
    #   resp.fleet_summaries[0].creation_time #=> Time
    #   resp.fleet_summaries[0].last_modification_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_fleets(params = {})
    # @param [Hash] params ({})
    def list_fleets(params = {}, options = {})
      req = build_request(:list_fleets, params)
      req.send_request(options)
    end

    # Retrieves a list of IDs for all fleets that the vehicle is associated
    # with.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [required, String] :vehicle_name
    #   The ID of the vehicle to retrieve information about.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @return [Types::ListFleetsForVehicleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetsForVehicleResponse#fleets #fleets} => Array&lt;String&gt;
    #   * {Types::ListFleetsForVehicleResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets_for_vehicle({
    #     vehicle_name: "vehicleName", # required
    #     next_token: "nextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.fleets #=> Array
    #   resp.fleets[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_fleets_for_vehicle(params = {})
    # @param [Hash] params ({})
    def list_fleets_for_vehicle(params = {}, options = {})
      req = build_request(:list_fleets_for_vehicle, params)
      req.send_request(options)
    end

    # Lists information about nodes specified in a vehicle model (model
    # manifest).
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the vehicle model to list information about.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @return [Types::ListModelManifestNodesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelManifestNodesResponse#nodes #nodes} => Array&lt;Types::Node&gt;
    #   * {Types::ListModelManifestNodesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_model_manifest_nodes({
    #     name: "resourceName", # required
    #     next_token: "nextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.nodes #=> Array
    #   resp.nodes[0].branch.fully_qualified_name #=> String
    #   resp.nodes[0].branch.description #=> String
    #   resp.nodes[0].branch.deprecation_message #=> String
    #   resp.nodes[0].branch.comment #=> String
    #   resp.nodes[0].sensor.fully_qualified_name #=> String
    #   resp.nodes[0].sensor.data_type #=> String, one of "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"
    #   resp.nodes[0].sensor.description #=> String
    #   resp.nodes[0].sensor.unit #=> String
    #   resp.nodes[0].sensor.allowed_values #=> Array
    #   resp.nodes[0].sensor.allowed_values[0] #=> String
    #   resp.nodes[0].sensor.min #=> Float
    #   resp.nodes[0].sensor.max #=> Float
    #   resp.nodes[0].sensor.deprecation_message #=> String
    #   resp.nodes[0].sensor.comment #=> String
    #   resp.nodes[0].sensor.struct_fully_qualified_name #=> String
    #   resp.nodes[0].actuator.fully_qualified_name #=> String
    #   resp.nodes[0].actuator.data_type #=> String, one of "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"
    #   resp.nodes[0].actuator.description #=> String
    #   resp.nodes[0].actuator.unit #=> String
    #   resp.nodes[0].actuator.allowed_values #=> Array
    #   resp.nodes[0].actuator.allowed_values[0] #=> String
    #   resp.nodes[0].actuator.min #=> Float
    #   resp.nodes[0].actuator.max #=> Float
    #   resp.nodes[0].actuator.assigned_value #=> String
    #   resp.nodes[0].actuator.deprecation_message #=> String
    #   resp.nodes[0].actuator.comment #=> String
    #   resp.nodes[0].actuator.struct_fully_qualified_name #=> String
    #   resp.nodes[0].attribute.fully_qualified_name #=> String
    #   resp.nodes[0].attribute.data_type #=> String, one of "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"
    #   resp.nodes[0].attribute.description #=> String
    #   resp.nodes[0].attribute.unit #=> String
    #   resp.nodes[0].attribute.allowed_values #=> Array
    #   resp.nodes[0].attribute.allowed_values[0] #=> String
    #   resp.nodes[0].attribute.min #=> Float
    #   resp.nodes[0].attribute.max #=> Float
    #   resp.nodes[0].attribute.assigned_value #=> String
    #   resp.nodes[0].attribute.default_value #=> String
    #   resp.nodes[0].attribute.deprecation_message #=> String
    #   resp.nodes[0].attribute.comment #=> String
    #   resp.nodes[0].struct.fully_qualified_name #=> String
    #   resp.nodes[0].struct.description #=> String
    #   resp.nodes[0].struct.deprecation_message #=> String
    #   resp.nodes[0].struct.comment #=> String
    #   resp.nodes[0].property.fully_qualified_name #=> String
    #   resp.nodes[0].property.data_type #=> String, one of "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"
    #   resp.nodes[0].property.data_encoding #=> String, one of "BINARY", "TYPED"
    #   resp.nodes[0].property.description #=> String
    #   resp.nodes[0].property.deprecation_message #=> String
    #   resp.nodes[0].property.comment #=> String
    #   resp.nodes[0].property.struct_fully_qualified_name #=> String
    #   resp.next_token #=> String
    #
    # @overload list_model_manifest_nodes(params = {})
    # @param [Hash] params ({})
    def list_model_manifest_nodes(params = {}, options = {})
      req = build_request(:list_model_manifest_nodes, params)
      req.send_request(options)
    end

    # Retrieves a list of vehicle models (model manifests).
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [String] :signal_catalog_arn
    #   The ARN of a signal catalog. If you specify a signal catalog, only the
    #   vehicle models associated with it are returned.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @option params [String] :list_response_scope
    #   When you set the `listResponseScope` parameter to `METADATA_ONLY`, the
    #   list response includes: model manifest name, Amazon Resource Name
    #   (ARN), creation time, and last modification time.
    #
    # @return [Types::ListModelManifestsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelManifestsResponse#summaries #summaries} => Array&lt;Types::ModelManifestSummary&gt;
    #   * {Types::ListModelManifestsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_model_manifests({
    #     signal_catalog_arn: "arn",
    #     next_token: "nextToken",
    #     max_results: 1,
    #     list_response_scope: "METADATA_ONLY", # accepts METADATA_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].name #=> String
    #   resp.summaries[0].arn #=> String
    #   resp.summaries[0].signal_catalog_arn #=> String
    #   resp.summaries[0].description #=> String
    #   resp.summaries[0].status #=> String, one of "ACTIVE", "DRAFT", "INVALID", "VALIDATING"
    #   resp.summaries[0].creation_time #=> Time
    #   resp.summaries[0].last_modification_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_model_manifests(params = {})
    # @param [Hash] params ({})
    def list_model_manifests(params = {}, options = {})
      req = build_request(:list_model_manifests, params)
      req.send_request(options)
    end

    # Lists of information about the signals (nodes) specified in a signal
    # catalog.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the signal catalog to list information about.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @option params [String] :signal_node_type
    #   The type of node in the signal catalog.
    #
    # @return [Types::ListSignalCatalogNodesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSignalCatalogNodesResponse#nodes #nodes} => Array&lt;Types::Node&gt;
    #   * {Types::ListSignalCatalogNodesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signal_catalog_nodes({
    #     name: "resourceName", # required
    #     next_token: "nextToken",
    #     max_results: 1,
    #     signal_node_type: "SENSOR", # accepts SENSOR, ACTUATOR, ATTRIBUTE, BRANCH, CUSTOM_STRUCT, CUSTOM_PROPERTY
    #   })
    #
    # @example Response structure
    #
    #   resp.nodes #=> Array
    #   resp.nodes[0].branch.fully_qualified_name #=> String
    #   resp.nodes[0].branch.description #=> String
    #   resp.nodes[0].branch.deprecation_message #=> String
    #   resp.nodes[0].branch.comment #=> String
    #   resp.nodes[0].sensor.fully_qualified_name #=> String
    #   resp.nodes[0].sensor.data_type #=> String, one of "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"
    #   resp.nodes[0].sensor.description #=> String
    #   resp.nodes[0].sensor.unit #=> String
    #   resp.nodes[0].sensor.allowed_values #=> Array
    #   resp.nodes[0].sensor.allowed_values[0] #=> String
    #   resp.nodes[0].sensor.min #=> Float
    #   resp.nodes[0].sensor.max #=> Float
    #   resp.nodes[0].sensor.deprecation_message #=> String
    #   resp.nodes[0].sensor.comment #=> String
    #   resp.nodes[0].sensor.struct_fully_qualified_name #=> String
    #   resp.nodes[0].actuator.fully_qualified_name #=> String
    #   resp.nodes[0].actuator.data_type #=> String, one of "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"
    #   resp.nodes[0].actuator.description #=> String
    #   resp.nodes[0].actuator.unit #=> String
    #   resp.nodes[0].actuator.allowed_values #=> Array
    #   resp.nodes[0].actuator.allowed_values[0] #=> String
    #   resp.nodes[0].actuator.min #=> Float
    #   resp.nodes[0].actuator.max #=> Float
    #   resp.nodes[0].actuator.assigned_value #=> String
    #   resp.nodes[0].actuator.deprecation_message #=> String
    #   resp.nodes[0].actuator.comment #=> String
    #   resp.nodes[0].actuator.struct_fully_qualified_name #=> String
    #   resp.nodes[0].attribute.fully_qualified_name #=> String
    #   resp.nodes[0].attribute.data_type #=> String, one of "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"
    #   resp.nodes[0].attribute.description #=> String
    #   resp.nodes[0].attribute.unit #=> String
    #   resp.nodes[0].attribute.allowed_values #=> Array
    #   resp.nodes[0].attribute.allowed_values[0] #=> String
    #   resp.nodes[0].attribute.min #=> Float
    #   resp.nodes[0].attribute.max #=> Float
    #   resp.nodes[0].attribute.assigned_value #=> String
    #   resp.nodes[0].attribute.default_value #=> String
    #   resp.nodes[0].attribute.deprecation_message #=> String
    #   resp.nodes[0].attribute.comment #=> String
    #   resp.nodes[0].struct.fully_qualified_name #=> String
    #   resp.nodes[0].struct.description #=> String
    #   resp.nodes[0].struct.deprecation_message #=> String
    #   resp.nodes[0].struct.comment #=> String
    #   resp.nodes[0].property.fully_qualified_name #=> String
    #   resp.nodes[0].property.data_type #=> String, one of "INT8", "UINT8", "INT16", "UINT16", "INT32", "UINT32", "INT64", "UINT64", "BOOLEAN", "FLOAT", "DOUBLE", "STRING", "UNIX_TIMESTAMP", "INT8_ARRAY", "UINT8_ARRAY", "INT16_ARRAY", "UINT16_ARRAY", "INT32_ARRAY", "UINT32_ARRAY", "INT64_ARRAY", "UINT64_ARRAY", "BOOLEAN_ARRAY", "FLOAT_ARRAY", "DOUBLE_ARRAY", "STRING_ARRAY", "UNIX_TIMESTAMP_ARRAY", "UNKNOWN", "STRUCT", "STRUCT_ARRAY"
    #   resp.nodes[0].property.data_encoding #=> String, one of "BINARY", "TYPED"
    #   resp.nodes[0].property.description #=> String
    #   resp.nodes[0].property.deprecation_message #=> String
    #   resp.nodes[0].property.comment #=> String
    #   resp.nodes[0].property.struct_fully_qualified_name #=> String
    #   resp.next_token #=> String
    #
    # @overload list_signal_catalog_nodes(params = {})
    # @param [Hash] params ({})
    def list_signal_catalog_nodes(params = {}, options = {})
      req = build_request(:list_signal_catalog_nodes, params)
      req.send_request(options)
    end

    # Lists all the created signal catalogs in an Amazon Web Services
    # account.
    #
    # You can use to list information about each signal (node) specified in
    # a signal catalog.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @return [Types::ListSignalCatalogsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSignalCatalogsResponse#summaries #summaries} => Array&lt;Types::SignalCatalogSummary&gt;
    #   * {Types::ListSignalCatalogsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signal_catalogs({
    #     next_token: "nextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].name #=> String
    #   resp.summaries[0].arn #=> String
    #   resp.summaries[0].creation_time #=> Time
    #   resp.summaries[0].last_modification_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_signal_catalogs(params = {})
    # @param [Hash] params ({})
    def list_signal_catalogs(params = {}, options = {})
      req = build_request(:list_signal_catalogs, params)
      req.send_request(options)
    end

    # Lists information about created state templates.
    #
    # Access to certain Amazon Web Services IoT FleetWise features is
    # currently gated. For more information, see [Amazon Web Services Region
    # and feature availability][1] in the *Amazon Web Services IoT FleetWise
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results, or `null` if there are
    #   no more results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @option params [String] :list_response_scope
    #   When you set the `listResponseScope` parameter to `METADATA_ONLY`, the
    #   list response includes: state template ID, Amazon Resource Name (ARN),
    #   creation time, and last modification time.
    #
    # @return [Types::ListStateTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStateTemplatesResponse#summaries #summaries} => Array&lt;Types::StateTemplateSummary&gt;
    #   * {Types::ListStateTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_state_templates({
    #     next_token: "nextToken",
    #     max_results: 1,
    #     list_response_scope: "METADATA_ONLY", # accepts METADATA_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].name #=> String
    #   resp.summaries[0].arn #=> String
    #   resp.summaries[0].signal_catalog_arn #=> String
    #   resp.summaries[0].description #=> String
    #   resp.summaries[0].creation_time #=> Time
    #   resp.summaries[0].last_modification_time #=> Time
    #   resp.summaries[0].id #=> String
    #   resp.next_token #=> String
    #
    # @overload list_state_templates(params = {})
    # @param [Hash] params ({})
    def list_state_templates(params = {}, options = {})
      req = build_request(:list_state_templates, params)
      req.send_request(options)
    end

    # Lists the tags (metadata) you have assigned to the resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
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
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves a list of summaries of created vehicles.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [String] :model_manifest_arn
    #   The Amazon Resource Name (ARN) of a vehicle model (model manifest).
    #   You can use this optional parameter to list only the vehicles created
    #   from a certain vehicle model.
    #
    # @option params [Array<String>] :attribute_names
    #   The fully qualified names of the attributes. You can use this optional
    #   parameter to list the vehicles containing all the attributes in the
    #   request. For example, `attributeNames` could be
    #   "`Vehicle.Body.Engine.Type, Vehicle.Color`" and the corresponding
    #   `attributeValues` could be "`1.3 L R2, Blue`" . In this case, the
    #   API will filter vehicles with an attribute name
    #   `Vehicle.Body.Engine.Type` that contains a value of `1.3 L R2` AND an
    #   attribute name `Vehicle.Color` that contains a value of "`Blue`". A
    #   request must contain unique values for the `attributeNames` filter and
    #   the matching number of `attributeValues` filters to return the subset
    #   of vehicles that match the attributes filter condition.
    #
    # @option params [Array<String>] :attribute_values
    #   Static information about a vehicle attribute value in string format.
    #   You can use this optional parameter in conjunction with
    #   `attributeNames` to list the vehicles containing all the
    #   `attributeValues` corresponding to the `attributeNames` filter. For
    #   example, `attributeValues` could be "`1.3 L R2, Blue`" and the
    #   corresponding `attributeNames` filter could be
    #   "`Vehicle.Body.Engine.Type, Vehicle.Color`". In this case, the API
    #   will filter vehicles with attribute name `Vehicle.Body.Engine.Type`
    #   that contains a value of `1.3 L R2` AND an attribute name
    #   `Vehicle.Color` that contains a value of "`Blue`". A request must
    #   contain unique values for the `attributeNames` filter and the matching
    #   number of `attributeValues` filter to return the subset of vehicles
    #   that match the attributes filter condition.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @option params [String] :list_response_scope
    #   When you set the `listResponseScope` parameter to `METADATA_ONLY`, the
    #   list response includes: vehicle name, Amazon Resource Name (ARN),
    #   creation time, and last modification time.
    #
    # @return [Types::ListVehiclesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVehiclesResponse#vehicle_summaries #vehicle_summaries} => Array&lt;Types::VehicleSummary&gt;
    #   * {Types::ListVehiclesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vehicles({
    #     model_manifest_arn: "arn",
    #     attribute_names: ["attributeName"],
    #     attribute_values: ["attributeValue"],
    #     next_token: "nextToken",
    #     max_results: 1,
    #     list_response_scope: "METADATA_ONLY", # accepts METADATA_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.vehicle_summaries #=> Array
    #   resp.vehicle_summaries[0].vehicle_name #=> String
    #   resp.vehicle_summaries[0].arn #=> String
    #   resp.vehicle_summaries[0].model_manifest_arn #=> String
    #   resp.vehicle_summaries[0].decoder_manifest_arn #=> String
    #   resp.vehicle_summaries[0].creation_time #=> Time
    #   resp.vehicle_summaries[0].last_modification_time #=> Time
    #   resp.vehicle_summaries[0].attributes #=> Hash
    #   resp.vehicle_summaries[0].attributes["attributeName"] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_vehicles(params = {})
    # @param [Hash] params ({})
    def list_vehicles(params = {}, options = {})
      req = build_request(:list_vehicles, params)
      req.send_request(options)
    end

    # Retrieves a list of summaries of all vehicles associated with a fleet.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the request to return more results.
    #
    #  </note>
    #
    # @option params [required, String] :fleet_id
    #   The ID of a fleet.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #
    # @return [Types::ListVehiclesInFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVehiclesInFleetResponse#vehicles #vehicles} => Array&lt;String&gt;
    #   * {Types::ListVehiclesInFleetResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vehicles_in_fleet({
    #     fleet_id: "fleetId", # required
    #     next_token: "nextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.vehicles #=> Array
    #   resp.vehicles[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_vehicles_in_fleet(params = {})
    # @param [Hash] params ({})
    def list_vehicles_in_fleet(params = {}, options = {})
      req = build_request(:list_vehicles_in_fleet, params)
      req.send_request(options)
    end

    # Creates or updates the encryption configuration. Amazon Web Services
    # IoT FleetWise can encrypt your data and resources using an Amazon Web
    # Services managed key. Or, you can use a KMS key that you own and
    # manage. For more information, see [Data encryption][1] in the *Amazon
    # Web Services IoT FleetWise Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/data-encryption.html
    #
    # @option params [String] :kms_key_id
    #   The ID of the KMS key that is used for encryption.
    #
    # @option params [required, String] :encryption_type
    #   The type of encryption. Choose `KMS_BASED_ENCRYPTION` to use a KMS key
    #   or `FLEETWISE_DEFAULT_ENCRYPTION` to use an Amazon Web Services
    #   managed key.
    #
    # @return [Types::PutEncryptionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEncryptionConfigurationResponse#kms_key_id #kms_key_id} => String
    #   * {Types::PutEncryptionConfigurationResponse#encryption_status #encryption_status} => String
    #   * {Types::PutEncryptionConfigurationResponse#encryption_type #encryption_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_encryption_configuration({
    #     kms_key_id: "PutEncryptionConfigurationRequestKmsKeyIdString",
    #     encryption_type: "KMS_BASED_ENCRYPTION", # required, accepts KMS_BASED_ENCRYPTION, FLEETWISE_DEFAULT_ENCRYPTION
    #   })
    #
    # @example Response structure
    #
    #   resp.kms_key_id #=> String
    #   resp.encryption_status #=> String, one of "PENDING", "SUCCESS", "FAILURE"
    #   resp.encryption_type #=> String, one of "KMS_BASED_ENCRYPTION", "FLEETWISE_DEFAULT_ENCRYPTION"
    #
    # @overload put_encryption_configuration(params = {})
    # @param [Hash] params ({})
    def put_encryption_configuration(params = {}, options = {})
      req = build_request(:put_encryption_configuration, params)
      req.send_request(options)
    end

    # Creates or updates the logging option.
    #
    # @option params [required, Types::CloudWatchLogDeliveryOptions] :cloud_watch_log_delivery
    #   Creates or updates the log delivery option to Amazon CloudWatch Logs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_logging_options({
    #     cloud_watch_log_delivery: { # required
    #       log_type: "OFF", # required, accepts OFF, ERROR
    #       log_group_name: "CloudWatchLogGroupName",
    #     },
    #   })
    #
    # @overload put_logging_options(params = {})
    # @param [Hash] params ({})
    def put_logging_options(params = {}, options = {})
      req = build_request(:put_logging_options, params)
      req.send_request(options)
    end

    # This API operation contains deprecated parameters. Register your
    # account again without the Timestream resources parameter so that
    # Amazon Web Services IoT FleetWise can remove the Timestream metadata
    # stored. You should then pass the data destination into the
    # [CreateCampaign][1] API operation.
    #
    #  You must delete any existing campaigns that include an empty data
    # destination before you register your account again. For more
    # information, see the [DeleteCampaign][2] API operation.
    #
    #  If you want to delete the Timestream inline policy from the
    # service-linked role, such as to mitigate an overly permissive policy,
    # you must first delete any existing campaigns. Then delete the
    # service-linked role and register your account again to enable
    # CloudWatch metrics. For more information, see
    # [DeleteServiceLinkedRole][3] in the *Identity and Access Management
    # API Reference*.
    #
    # Registers your Amazon Web Services account, IAM, and Amazon Timestream
    # resources so Amazon Web Services IoT FleetWise can transfer your
    # vehicle data to the Amazon Web Services Cloud. For more information,
    # including step-by-step procedures, see [Setting up Amazon Web Services
    # IoT FleetWise][4].
    #
    # <note markdown="1"> An Amazon Web Services account is **not** the same thing as a
    # "user." An [Amazon Web Services user][5] is an identity that you
    # create using Identity and Access Management (IAM) and takes the form
    # of either an [IAM user][6] or an [IAM role, both with credentials][7].
    # A single Amazon Web Services account can, and typically does, contain
    # many users and roles.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_CreateCampaign.html
    # [2]: https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_DeleteCampaign.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceLinkedRole.html
    # [4]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html
    # [5]: https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction_identity-management.html#intro-identity-users
    # [6]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html
    # [7]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html
    #
    # @option params [Types::TimestreamResources] :timestream_resources
    #   The registered Amazon Timestream resources that Amazon Web Services
    #   IoT FleetWise edge agent software can transfer your vehicle data to.
    #
    # @option params [Types::IamResources] :iam_resources
    #   The IAM resource that allows Amazon Web Services IoT FleetWise to send
    #   data to Amazon Timestream.
    #
    # @return [Types::RegisterAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterAccountResponse#register_account_status #register_account_status} => String
    #   * {Types::RegisterAccountResponse#timestream_resources #timestream_resources} => Types::TimestreamResources
    #   * {Types::RegisterAccountResponse#iam_resources #iam_resources} => Types::IamResources
    #   * {Types::RegisterAccountResponse#creation_time #creation_time} => Time
    #   * {Types::RegisterAccountResponse#last_modification_time #last_modification_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_account({
    #     timestream_resources: {
    #       timestream_database_name: "TimestreamDatabaseName", # required
    #       timestream_table_name: "TimestreamTableName", # required
    #     },
    #     iam_resources: {
    #       role_arn: "IAMRoleArn", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.register_account_status #=> String, one of "REGISTRATION_PENDING", "REGISTRATION_SUCCESS", "REGISTRATION_FAILURE"
    #   resp.timestream_resources.timestream_database_name #=> String
    #   resp.timestream_resources.timestream_table_name #=> String
    #   resp.iam_resources.role_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modification_time #=> Time
    #
    # @overload register_account(params = {})
    # @param [Hash] params ({})
    def register_account(params = {}, options = {})
      req = build_request(:register_account, params)
      req.send_request(options)
    end

    # Adds to or modifies the tags of the given resource. Tags are metadata
    # which can be used to manage a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The new or modified tags for the resource.
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
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the given tags (metadata) from the resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of the keys of the tags to be removed from the resource.
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
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a campaign.
    #
    # @option params [required, String] :name
    #   The name of the campaign to update.
    #
    # @option params [String] :description
    #   The description of the campaign.
    #
    # @option params [Array<String>] :data_extra_dimensions
    #   A list of vehicle attributes to associate with a signal.
    #
    #   Default: An empty array
    #
    # @option params [required, String] :action
    #   Specifies how to update a campaign. The action can be one of the
    #   following:
    #
    #   * `APPROVE` - To approve delivering a data collection scheme to
    #     vehicles.
    #
    #   * `SUSPEND` - To suspend collecting signal data. The campaign is
    #     deleted from vehicles and all vehicles in the suspended campaign
    #     will stop sending data.
    #
    #   * `RESUME` - To reactivate the `SUSPEND` campaign. The campaign is
    #     redeployed to all vehicles and the vehicles will resume sending
    #     data.
    #
    #   * `UPDATE` - To update a campaign.
    #
    # @return [Types::UpdateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCampaignResponse#arn #arn} => String
    #   * {Types::UpdateCampaignResponse#name #name} => String
    #   * {Types::UpdateCampaignResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign({
    #     name: "campaignName", # required
    #     description: "description",
    #     data_extra_dimensions: ["NodePath"],
    #     action: "APPROVE", # required, accepts APPROVE, SUSPEND, RESUME, UPDATE
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "WAITING_FOR_APPROVAL", "RUNNING", "SUSPENDED"
    #
    # @overload update_campaign(params = {})
    # @param [Hash] params ({})
    def update_campaign(params = {}, options = {})
      req = build_request(:update_campaign, params)
      req.send_request(options)
    end

    # Updates a decoder manifest.
    #
    # A decoder manifest can only be updated when the status is `DRAFT`.
    # Only `ACTIVE` decoder manifests can be associated with vehicles.
    #
    # @option params [required, String] :name
    #   The name of the decoder manifest to update.
    #
    # @option params [String] :description
    #   A brief description of the decoder manifest to update.
    #
    # @option params [Array<Types::SignalDecoder>] :signal_decoders_to_add
    #   A list of information about decoding additional signals to add to the
    #   decoder manifest.
    #
    # @option params [Array<Types::SignalDecoder>] :signal_decoders_to_update
    #   A list of updated information about decoding signals to update in the
    #   decoder manifest.
    #
    # @option params [Array<String>] :signal_decoders_to_remove
    #   A list of signal decoders to remove from the decoder manifest.
    #
    # @option params [Array<Types::NetworkInterface>] :network_interfaces_to_add
    #   A list of information about the network interfaces to add to the
    #   decoder manifest.
    #
    # @option params [Array<Types::NetworkInterface>] :network_interfaces_to_update
    #   A list of information about the network interfaces to update in the
    #   decoder manifest.
    #
    # @option params [Array<String>] :network_interfaces_to_remove
    #   A list of network interfaces to remove from the decoder manifest.
    #
    # @option params [String] :status
    #   The state of the decoder manifest. If the status is `ACTIVE`, the
    #   decoder manifest can't be edited. If the status is `DRAFT`, you can
    #   edit the decoder manifest.
    #
    # @option params [String] :default_for_unmapped_signals
    #   Use default decoders for all unmapped signals in the model. You don't
    #   need to provide any detailed decoding information.
    #
    #   Access to certain Amazon Web Services IoT FleetWise features is
    #   currently gated. For more information, see [Amazon Web Services Region
    #   and feature availability][1] in the *Amazon Web Services IoT FleetWise
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
    #
    # @return [Types::UpdateDecoderManifestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDecoderManifestResponse#name #name} => String
    #   * {Types::UpdateDecoderManifestResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_decoder_manifest({
    #     name: "resourceName", # required
    #     description: "description",
    #     signal_decoders_to_add: [
    #       {
    #         fully_qualified_name: "FullyQualifiedName", # required
    #         type: "CAN_SIGNAL", # required, accepts CAN_SIGNAL, OBD_SIGNAL, MESSAGE_SIGNAL, CUSTOM_DECODING_SIGNAL
    #         interface_id: "InterfaceId", # required
    #         can_signal: {
    #           message_id: 1, # required
    #           is_big_endian: false, # required
    #           is_signed: false, # required
    #           start_bit: 1, # required
    #           offset: 1.0, # required
    #           factor: 1.0, # required
    #           length: 1, # required
    #           name: "CanSignalName",
    #           signal_value_type: "INTEGER", # accepts INTEGER, FLOATING_POINT
    #         },
    #         obd_signal: {
    #           pid_response_length: 1, # required
    #           service_mode: 1, # required
    #           pid: 1, # required
    #           scaling: 1.0, # required
    #           offset: 1.0, # required
    #           start_byte: 1, # required
    #           byte_length: 1, # required
    #           bit_right_shift: 1,
    #           bit_mask_length: 1,
    #           is_signed: false,
    #           signal_value_type: "INTEGER", # accepts INTEGER, FLOATING_POINT
    #         },
    #         message_signal: {
    #           topic_name: "TopicName", # required
    #           structured_message: { # required
    #             primitive_message_definition: {
    #               ros2_primitive_message_definition: {
    #                 primitive_type: "BOOL", # required, accepts BOOL, BYTE, CHAR, FLOAT32, FLOAT64, INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, STRING, WSTRING
    #                 offset: 1.0,
    #                 scaling: 1.0,
    #                 upper_bound: 1,
    #               },
    #             },
    #             structured_message_list_definition: {
    #               name: "StructureMessageName", # required
    #               member_type: { # required
    #                 # recursive StructuredMessage
    #               },
    #               list_type: "FIXED_CAPACITY", # required, accepts FIXED_CAPACITY, DYNAMIC_UNBOUNDED_CAPACITY, DYNAMIC_BOUNDED_CAPACITY
    #               capacity: 1,
    #             },
    #             structured_message_definition: [
    #               {
    #                 field_name: "StructureMessageName", # required
    #                 data_type: { # required
    #                   # recursive StructuredMessage
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         custom_decoding_signal: {
    #           id: "CustomDecodingId", # required
    #         },
    #       },
    #     ],
    #     signal_decoders_to_update: [
    #       {
    #         fully_qualified_name: "FullyQualifiedName", # required
    #         type: "CAN_SIGNAL", # required, accepts CAN_SIGNAL, OBD_SIGNAL, MESSAGE_SIGNAL, CUSTOM_DECODING_SIGNAL
    #         interface_id: "InterfaceId", # required
    #         can_signal: {
    #           message_id: 1, # required
    #           is_big_endian: false, # required
    #           is_signed: false, # required
    #           start_bit: 1, # required
    #           offset: 1.0, # required
    #           factor: 1.0, # required
    #           length: 1, # required
    #           name: "CanSignalName",
    #           signal_value_type: "INTEGER", # accepts INTEGER, FLOATING_POINT
    #         },
    #         obd_signal: {
    #           pid_response_length: 1, # required
    #           service_mode: 1, # required
    #           pid: 1, # required
    #           scaling: 1.0, # required
    #           offset: 1.0, # required
    #           start_byte: 1, # required
    #           byte_length: 1, # required
    #           bit_right_shift: 1,
    #           bit_mask_length: 1,
    #           is_signed: false,
    #           signal_value_type: "INTEGER", # accepts INTEGER, FLOATING_POINT
    #         },
    #         message_signal: {
    #           topic_name: "TopicName", # required
    #           structured_message: { # required
    #             primitive_message_definition: {
    #               ros2_primitive_message_definition: {
    #                 primitive_type: "BOOL", # required, accepts BOOL, BYTE, CHAR, FLOAT32, FLOAT64, INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, STRING, WSTRING
    #                 offset: 1.0,
    #                 scaling: 1.0,
    #                 upper_bound: 1,
    #               },
    #             },
    #             structured_message_list_definition: {
    #               name: "StructureMessageName", # required
    #               member_type: { # required
    #                 # recursive StructuredMessage
    #               },
    #               list_type: "FIXED_CAPACITY", # required, accepts FIXED_CAPACITY, DYNAMIC_UNBOUNDED_CAPACITY, DYNAMIC_BOUNDED_CAPACITY
    #               capacity: 1,
    #             },
    #             structured_message_definition: [
    #               {
    #                 field_name: "StructureMessageName", # required
    #                 data_type: { # required
    #                   # recursive StructuredMessage
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         custom_decoding_signal: {
    #           id: "CustomDecodingId", # required
    #         },
    #       },
    #     ],
    #     signal_decoders_to_remove: ["FullyQualifiedName"],
    #     network_interfaces_to_add: [
    #       {
    #         interface_id: "InterfaceId", # required
    #         type: "CAN_INTERFACE", # required, accepts CAN_INTERFACE, OBD_INTERFACE, VEHICLE_MIDDLEWARE, CUSTOM_DECODING_INTERFACE
    #         can_interface: {
    #           name: "CanInterfaceName", # required
    #           protocol_name: "ProtocolName",
    #           protocol_version: "ProtocolVersion",
    #         },
    #         obd_interface: {
    #           name: "ObdInterfaceName", # required
    #           request_message_id: 1, # required
    #           obd_standard: "ObdStandard",
    #           pid_request_interval_seconds: 1,
    #           dtc_request_interval_seconds: 1,
    #           use_extended_ids: false,
    #           has_transmission_ecu: false,
    #         },
    #         vehicle_middleware: {
    #           name: "VehicleMiddlewareName", # required
    #           protocol_name: "ROS_2", # required, accepts ROS_2
    #         },
    #         custom_decoding_interface: {
    #           name: "CustomDecodingSignalInterfaceName", # required
    #         },
    #       },
    #     ],
    #     network_interfaces_to_update: [
    #       {
    #         interface_id: "InterfaceId", # required
    #         type: "CAN_INTERFACE", # required, accepts CAN_INTERFACE, OBD_INTERFACE, VEHICLE_MIDDLEWARE, CUSTOM_DECODING_INTERFACE
    #         can_interface: {
    #           name: "CanInterfaceName", # required
    #           protocol_name: "ProtocolName",
    #           protocol_version: "ProtocolVersion",
    #         },
    #         obd_interface: {
    #           name: "ObdInterfaceName", # required
    #           request_message_id: 1, # required
    #           obd_standard: "ObdStandard",
    #           pid_request_interval_seconds: 1,
    #           dtc_request_interval_seconds: 1,
    #           use_extended_ids: false,
    #           has_transmission_ecu: false,
    #         },
    #         vehicle_middleware: {
    #           name: "VehicleMiddlewareName", # required
    #           protocol_name: "ROS_2", # required, accepts ROS_2
    #         },
    #         custom_decoding_interface: {
    #           name: "CustomDecodingSignalInterfaceName", # required
    #         },
    #       },
    #     ],
    #     network_interfaces_to_remove: ["InterfaceId"],
    #     status: "ACTIVE", # accepts ACTIVE, DRAFT, INVALID, VALIDATING
    #     default_for_unmapped_signals: "CUSTOM_DECODING", # accepts CUSTOM_DECODING
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload update_decoder_manifest(params = {})
    # @param [Hash] params ({})
    def update_decoder_manifest(params = {}, options = {})
      req = build_request(:update_decoder_manifest, params)
      req.send_request(options)
    end

    # Updates the description of an existing fleet.
    #
    # @option params [required, String] :fleet_id
    #   The ID of the fleet to update.
    #
    # @option params [String] :description
    #   An updated description of the fleet.
    #
    # @return [Types::UpdateFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetResponse#id #id} => String
    #   * {Types::UpdateFleetResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet({
    #     fleet_id: "fleetId", # required
    #     description: "description",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @overload update_fleet(params = {})
    # @param [Hash] params ({})
    def update_fleet(params = {}, options = {})
      req = build_request(:update_fleet, params)
      req.send_request(options)
    end

    # Updates a vehicle model (model manifest). If created vehicles are
    # associated with a vehicle model, it can't be updated.
    #
    # @option params [required, String] :name
    #   The name of the vehicle model to update.
    #
    # @option params [String] :description
    #   A brief description of the vehicle model.
    #
    # @option params [Array<String>] :nodes_to_add
    #   A list of `fullyQualifiedName` of nodes, which are a general
    #   abstraction of signals, to add to the vehicle model.
    #
    # @option params [Array<String>] :nodes_to_remove
    #   A list of `fullyQualifiedName` of nodes, which are a general
    #   abstraction of signals, to remove from the vehicle model.
    #
    # @option params [String] :status
    #   The state of the vehicle model. If the status is `ACTIVE`, the vehicle
    #   model can't be edited. If the status is `DRAFT`, you can edit the
    #   vehicle model.
    #
    # @return [Types::UpdateModelManifestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateModelManifestResponse#name #name} => String
    #   * {Types::UpdateModelManifestResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model_manifest({
    #     name: "resourceName", # required
    #     description: "description",
    #     nodes_to_add: ["NodePath"],
    #     nodes_to_remove: ["NodePath"],
    #     status: "ACTIVE", # accepts ACTIVE, DRAFT, INVALID, VALIDATING
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload update_model_manifest(params = {})
    # @param [Hash] params ({})
    def update_model_manifest(params = {}, options = {})
      req = build_request(:update_model_manifest, params)
      req.send_request(options)
    end

    # Updates a signal catalog.
    #
    # @option params [required, String] :name
    #   The name of the signal catalog to update.
    #
    # @option params [String] :description
    #   A brief description of the signal catalog to update.
    #
    # @option params [Array<Types::Node>] :nodes_to_add
    #   A list of information about nodes to add to the signal catalog.
    #
    # @option params [Array<Types::Node>] :nodes_to_update
    #   A list of information about nodes to update in the signal catalog.
    #
    # @option params [Array<String>] :nodes_to_remove
    #   A list of `fullyQualifiedName` of nodes to remove from the signal
    #   catalog.
    #
    # @return [Types::UpdateSignalCatalogResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSignalCatalogResponse#name #name} => String
    #   * {Types::UpdateSignalCatalogResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_signal_catalog({
    #     name: "resourceName", # required
    #     description: "description",
    #     nodes_to_add: [
    #       {
    #         branch: {
    #           fully_qualified_name: "BranchFullyQualifiedNameString", # required
    #           description: "description",
    #           deprecation_message: "message",
    #           comment: "message",
    #         },
    #         sensor: {
    #           fully_qualified_name: "SensorFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           description: "description",
    #           unit: "string",
    #           allowed_values: ["string"],
    #           min: 1.0,
    #           max: 1.0,
    #           deprecation_message: "message",
    #           comment: "message",
    #           struct_fully_qualified_name: "NodePath",
    #         },
    #         actuator: {
    #           fully_qualified_name: "ActuatorFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           description: "description",
    #           unit: "string",
    #           allowed_values: ["string"],
    #           min: 1.0,
    #           max: 1.0,
    #           assigned_value: "string",
    #           deprecation_message: "message",
    #           comment: "message",
    #           struct_fully_qualified_name: "NodePath",
    #         },
    #         attribute: {
    #           fully_qualified_name: "AttributeFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           description: "description",
    #           unit: "string",
    #           allowed_values: ["string"],
    #           min: 1.0,
    #           max: 1.0,
    #           assigned_value: "string",
    #           default_value: "string",
    #           deprecation_message: "message",
    #           comment: "message",
    #         },
    #         struct: {
    #           fully_qualified_name: "CustomStructFullyQualifiedNameString", # required
    #           description: "description",
    #           deprecation_message: "message",
    #           comment: "message",
    #         },
    #         property: {
    #           fully_qualified_name: "CustomPropertyFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           data_encoding: "BINARY", # accepts BINARY, TYPED
    #           description: "description",
    #           deprecation_message: "message",
    #           comment: "message",
    #           struct_fully_qualified_name: "NodePath",
    #         },
    #       },
    #     ],
    #     nodes_to_update: [
    #       {
    #         branch: {
    #           fully_qualified_name: "BranchFullyQualifiedNameString", # required
    #           description: "description",
    #           deprecation_message: "message",
    #           comment: "message",
    #         },
    #         sensor: {
    #           fully_qualified_name: "SensorFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           description: "description",
    #           unit: "string",
    #           allowed_values: ["string"],
    #           min: 1.0,
    #           max: 1.0,
    #           deprecation_message: "message",
    #           comment: "message",
    #           struct_fully_qualified_name: "NodePath",
    #         },
    #         actuator: {
    #           fully_qualified_name: "ActuatorFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           description: "description",
    #           unit: "string",
    #           allowed_values: ["string"],
    #           min: 1.0,
    #           max: 1.0,
    #           assigned_value: "string",
    #           deprecation_message: "message",
    #           comment: "message",
    #           struct_fully_qualified_name: "NodePath",
    #         },
    #         attribute: {
    #           fully_qualified_name: "AttributeFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           description: "description",
    #           unit: "string",
    #           allowed_values: ["string"],
    #           min: 1.0,
    #           max: 1.0,
    #           assigned_value: "string",
    #           default_value: "string",
    #           deprecation_message: "message",
    #           comment: "message",
    #         },
    #         struct: {
    #           fully_qualified_name: "CustomStructFullyQualifiedNameString", # required
    #           description: "description",
    #           deprecation_message: "message",
    #           comment: "message",
    #         },
    #         property: {
    #           fully_qualified_name: "CustomPropertyFullyQualifiedNameString", # required
    #           data_type: "INT8", # required, accepts INT8, UINT8, INT16, UINT16, INT32, UINT32, INT64, UINT64, BOOLEAN, FLOAT, DOUBLE, STRING, UNIX_TIMESTAMP, INT8_ARRAY, UINT8_ARRAY, INT16_ARRAY, UINT16_ARRAY, INT32_ARRAY, UINT32_ARRAY, INT64_ARRAY, UINT64_ARRAY, BOOLEAN_ARRAY, FLOAT_ARRAY, DOUBLE_ARRAY, STRING_ARRAY, UNIX_TIMESTAMP_ARRAY, UNKNOWN, STRUCT, STRUCT_ARRAY
    #           data_encoding: "BINARY", # accepts BINARY, TYPED
    #           description: "description",
    #           deprecation_message: "message",
    #           comment: "message",
    #           struct_fully_qualified_name: "NodePath",
    #         },
    #       },
    #     ],
    #     nodes_to_remove: ["NodePath"],
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload update_signal_catalog(params = {})
    # @param [Hash] params ({})
    def update_signal_catalog(params = {}, options = {})
      req = build_request(:update_signal_catalog, params)
      req.send_request(options)
    end

    # Updates a state template.
    #
    # Access to certain Amazon Web Services IoT FleetWise features is
    # currently gated. For more information, see [Amazon Web Services Region
    # and feature availability][1] in the *Amazon Web Services IoT FleetWise
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
    #
    # @option params [required, String] :identifier
    #   The unique ID of the state template.
    #
    # @option params [String] :description
    #   A brief description of the state template.
    #
    # @option params [Array<String>] :state_template_properties_to_add
    #   Add signals from which data is collected as part of the state
    #   template.
    #
    # @option params [Array<String>] :state_template_properties_to_remove
    #   Remove signals from which data is collected as part of the state
    #   template.
    #
    # @option params [Array<String>] :data_extra_dimensions
    #   A list of vehicle attributes to associate with the payload published
    #   on the state template's MQTT topic. (See [ Processing last known
    #   state vehicle data using MQTT messaging][1]). For example, if you add
    #   `Vehicle.Attributes.Make` and `Vehicle.Attributes.Model` attributes,
    #   Amazon Web Services IoT FleetWise will enrich the protobuf encoded
    #   payload with those attributes in the `extraDimensions` field.
    #
    #   Default: An empty array
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data
    #
    # @option params [Array<String>] :metadata_extra_dimensions
    #   A list of vehicle attributes to associate with user properties of the
    #   messages published on the state template's MQTT topic. (See [
    #   Processing last known state vehicle data using MQTT messaging][1]).
    #   For example, if you add `Vehicle.Attributes.Make` and
    #   `Vehicle.Attributes.Model` attributes, Amazon Web Services IoT
    #   FleetWise will include these attributes as User Properties with the
    #   MQTT message.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data
    #
    # @return [Types::UpdateStateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStateTemplateResponse#name #name} => String
    #   * {Types::UpdateStateTemplateResponse#arn #arn} => String
    #   * {Types::UpdateStateTemplateResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_state_template({
    #     identifier: "ResourceIdentifier", # required
    #     description: "description",
    #     state_template_properties_to_add: ["NodePath"],
    #     state_template_properties_to_remove: ["NodePath"],
    #     data_extra_dimensions: ["NodePath"],
    #     metadata_extra_dimensions: ["NodePath"],
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @overload update_state_template(params = {})
    # @param [Hash] params ({})
    def update_state_template(params = {}, options = {})
      req = build_request(:update_state_template, params)
      req.send_request(options)
    end

    # Updates a vehicle.
    #
    # Access to certain Amazon Web Services IoT FleetWise features is
    # currently gated. For more information, see [Amazon Web Services Region
    # and feature availability][1] in the *Amazon Web Services IoT FleetWise
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html
    #
    # @option params [required, String] :vehicle_name
    #   The unique ID of the vehicle to update.
    #
    # @option params [String] :model_manifest_arn
    #   The ARN of a vehicle model (model manifest) associated with the
    #   vehicle.
    #
    # @option params [String] :decoder_manifest_arn
    #   The ARN of the decoder manifest associated with this vehicle.
    #
    # @option params [Hash<String,String>] :attributes
    #   Static information about a vehicle in a key-value pair. For example:
    #
    #   `"engineType"` : `"1.3 L R2"`
    #
    # @option params [String] :attribute_update_mode
    #   The method the specified attributes will update the existing
    #   attributes on the vehicle. Use`Overwite` to replace the vehicle
    #   attributes with the specified attributes. Or use `Merge` to combine
    #   all attributes.
    #
    #   This is required if attributes are present in the input.
    #
    # @option params [Array<Types::StateTemplateAssociation>] :state_templates_to_add
    #   Associate state templates with the vehicle.
    #
    # @option params [Array<String>] :state_templates_to_remove
    #   Remove state templates from the vehicle.
    #
    # @option params [Array<Types::StateTemplateAssociation>] :state_templates_to_update
    #   Change the `stateTemplateUpdateStrategy` of state templates already
    #   associated with the vehicle.
    #
    # @return [Types::UpdateVehicleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVehicleResponse#vehicle_name #vehicle_name} => String
    #   * {Types::UpdateVehicleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vehicle({
    #     vehicle_name: "vehicleName", # required
    #     model_manifest_arn: "arn",
    #     decoder_manifest_arn: "arn",
    #     attributes: {
    #       "attributeName" => "attributeValue",
    #     },
    #     attribute_update_mode: "Overwrite", # accepts Overwrite, Merge
    #     state_templates_to_add: [
    #       {
    #         identifier: "ResourceIdentifier", # required
    #         state_template_update_strategy: { # required
    #           periodic: {
    #             state_template_update_rate: { # required
    #               unit: "MILLISECOND", # required, accepts MILLISECOND, SECOND, MINUTE, HOUR
    #               value: 1, # required
    #             },
    #           },
    #           on_change: {
    #           },
    #         },
    #       },
    #     ],
    #     state_templates_to_remove: ["ResourceIdentifier"],
    #     state_templates_to_update: [
    #       {
    #         identifier: "ResourceIdentifier", # required
    #         state_template_update_strategy: { # required
    #           periodic: {
    #             state_template_update_rate: { # required
    #               unit: "MILLISECOND", # required, accepts MILLISECOND, SECOND, MINUTE, HOUR
    #               value: 1, # required
    #             },
    #           },
    #           on_change: {
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.vehicle_name #=> String
    #   resp.arn #=> String
    #
    # @overload update_vehicle(params = {})
    # @param [Hash] params ({})
    def update_vehicle(params = {}, options = {})
      req = build_request(:update_vehicle, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::IoTFleetWise')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-iotfleetwise'
      context[:gem_version] = '1.57.0'
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
