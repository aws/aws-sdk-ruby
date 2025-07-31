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

module Aws::CognitoIdentityProvider
  # An API client for CognitoIdentityProvider.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CognitoIdentityProvider::Client.new(
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

    @identifier = :cognitoidentityprovider

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
    add_plugin(Aws::CognitoIdentityProvider::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
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
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
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
    #     Your Bearer token used for authentication. This can be an instance of any one of the
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
    #   @option options [Aws::CognitoIdentityProvider::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CognitoIdentityProvider::EndpointParameters`.
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

    # Adds additional user attributes to the user pool schema. Custom
    # attributes can be mutable or immutable and have a `custom:` or `dev:`
    # prefix. For more information, see [Custom attributes][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-custom-attributes
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to add custom attributes.
    #
    # @option params [required, Array<Types::SchemaAttributeType>] :custom_attributes
    #   An array of custom attribute names and other properties. Sets the
    #   following characteristics:
    #
    #   AttributeDataType
    #
    #   : The expected data type. Can be a string, a number, a date and time,
    #     or a boolean.
    #
    #   Mutable
    #
    #   : If true, you can grant app clients write access to the attribute
    #     value. If false, the attribute value can only be set up on sign-up
    #     or administrator creation of users.
    #
    #   Name
    #
    #   : The attribute name. For an attribute like `custom:myAttribute`,
    #     enter `myAttribute` for this field.
    #
    #   Required
    #
    #   : When true, users who sign up or are created must set a value for the
    #     attribute.
    #
    #   NumberAttributeConstraints
    #
    #   : The minimum and maximum length of accepted values for a
    #     `Number`-type attribute.
    #
    #   StringAttributeConstraints
    #
    #   : The minimum and maximum length of accepted values for a
    #     `String`-type attribute.
    #
    #   DeveloperOnlyAttribute
    #
    #   : This legacy option creates an attribute with a `dev:` prefix. You
    #     can only set the value of a developer-only attribute with
    #     administrative IAM credentials.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_custom_attributes({
    #     user_pool_id: "UserPoolIdType", # required
    #     custom_attributes: [ # required
    #       {
    #         name: "CustomAttributeNameType",
    #         attribute_data_type: "String", # accepts String, Number, DateTime, Boolean
    #         developer_only_attribute: false,
    #         mutable: false,
    #         required: false,
    #         number_attribute_constraints: {
    #           min_value: "StringType",
    #           max_value: "StringType",
    #         },
    #         string_attribute_constraints: {
    #           min_length: "StringType",
    #           max_length: "StringType",
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AddCustomAttributes AWS API Documentation
    #
    # @overload add_custom_attributes(params = {})
    # @param [Hash] params ({})
    def add_custom_attributes(params = {}, options = {})
      req = build_request(:add_custom_attributes, params)
      req.send_request(options)
    end

    # Adds a user to a group. A user who is in a group can present a
    # preferred-role claim to an identity pool, and populates a
    # `cognito:groups` claim to their access and identity tokens.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that contains the group that you want to add
    #   the user to.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to add your user to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_add_user_to_group({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     group_name: "GroupNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminAddUserToGroup AWS API Documentation
    #
    # @overload admin_add_user_to_group(params = {})
    # @param [Hash] params ({})
    def admin_add_user_to_group(params = {}, options = {})
      req = build_request(:admin_add_user_to_group, params)
      req.send_request(options)
    end

    # Confirms user sign-up as an administrator.
    #
    # This request sets a user account active in a user pool that [requires
    # confirmation of new user accounts][1] before they can sign in. You can
    # configure your user pool to not send confirmation codes to new users
    # and instead confirm them with this API operation on the back end.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    # To configure your user pool to require administrative confirmation of
    # users, set `AllowAdminCreateUserOnly` to `true` in a `CreateUserPool`
    # or `UpdateUserPool` request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#signing-up-users-in-your-app-and-confirming-them-as-admin
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to confirm a user's sign-up
    #   request.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   If your user pool configuration includes triggers, the
    #   AdminConfirmSignUp API action invokes the Lambda function that is
    #   specified for the *post confirmation* trigger. When Amazon Cognito
    #   invokes this function, it passes a JSON payload, which the function
    #   receives as input. In this payload, the `clientMetadata` attribute
    #   provides the data that you assigned to the ClientMetadata parameter in
    #   your AdminConfirmSignUp request. In your function code in Lambda, you
    #   can process the ClientMetadata value to enhance your workflow for your
    #   specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_confirm_sign_up({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminConfirmSignUp AWS API Documentation
    #
    # @overload admin_confirm_sign_up(params = {})
    # @param [Hash] params ({})
    def admin_confirm_sign_up(params = {}, options = {})
      req = build_request(:admin_confirm_sign_up, params)
      req.send_request(options)
    end

    # Creates a new user in the specified user pool.
    #
    # If `MessageAction` isn't set, the default is to send a welcome
    # message via email or phone (SMS).
    #
    # This message is based on a template that you configured in your call
    # to create or update a user pool. This template includes your custom
    # sign-up instructions and placeholders for user name and temporary
    # password.
    #
    # Alternatively, you can call `AdminCreateUser` with `SUPPRESS` for the
    # `MessageAction` parameter, and Amazon Cognito won't send any email.
    #
    # In either case, if the user has a password, they will be in the
    # `FORCE_CHANGE_PASSWORD` state until they sign in and set their
    # password. Your invitation message template must have the `{####}`
    # password placeholder if your users have passwords. If your template
    # doesn't have this placeholder, Amazon Cognito doesn't deliver the
    # invitation message. In this case, you must update your message
    # template and resend the password with a new `AdminCreateUser` request
    # with a `MessageAction` value of `RESEND`.
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][1]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][2] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][3]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][4]
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/pinpoint/home/
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to create a user.
    #
    # @option params [required, String] :username
    #   The value that you want to set as the username sign-in attribute. The
    #   following conditions apply to the username parameter.
    #
    #   * The username can't be a duplicate of another username in the same
    #     user pool.
    #
    #   * You can't change the value of a username after you create it.
    #
    #   * You can only provide a value if usernames are a valid sign-in
    #     attribute for your user pool. If your user pool only supports phone
    #     numbers or email addresses as sign-in attributes, Amazon Cognito
    #     automatically generates a username value. For more information, see
    #     [Customizing sign-in attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases
    #
    # @option params [Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs that contain user attributes and
    #   attribute values to be set for the user to be created. You can create
    #   a user without specifying any attributes other than `Username`.
    #   However, any attributes that you specify as required (when creating a
    #   user pool or in the **Attributes** tab of the console) either you
    #   should supply (in your call to `AdminCreateUser`) or the user should
    #   supply (when they sign up in response to your welcome message).
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    #   To send a message inviting the user to sign up, you must specify the
    #   user's email address or phone number. You can do this in your call to
    #   AdminCreateUser or in the **Users** tab of the Amazon Cognito console
    #   for managing your user pools.
    #
    #   You must also provide an email address or phone number when you expect
    #   the user to do passwordless sign-in with an email or SMS OTP. These
    #   attributes must be provided when passwordless options are the only
    #   available, or when you don't submit a `TemporaryPassword`.
    #
    #   In your `AdminCreateUser` request, you can set the `email_verified`
    #   and `phone_number_verified` attributes to `true`. The following
    #   conditions apply:
    #
    #   email
    #
    #   : The email address where you want the user to receive their
    #     confirmation code and username. You must provide a value for `email`
    #     when you want to set `email_verified` to `true`, or if you set
    #     `EMAIL` in the `DesiredDeliveryMediums` parameter.
    #
    #   phone\_number
    #
    #   : The phone number where you want the user to receive their
    #     confirmation code and username. You must provide a value for
    #     `phone_number` when you want to set `phone_number_verified` to
    #     `true`, or if you set `SMS` in the `DesiredDeliveryMediums`
    #     parameter.
    #
    # @option params [Array<Types::AttributeType>] :validation_data
    #   Temporary user attributes that contribute to the outcomes of your pre
    #   sign-up Lambda trigger. This set of key-value pairs are for custom
    #   validation of information that you collect from your users but don't
    #   need to retain.
    #
    #   Your Lambda function can analyze this additional data and act on it.
    #   Your function can automatically confirm and verify select users or
    #   perform external API operations like logging user attributes and
    #   validation data to Amazon CloudWatch Logs.
    #
    #   For more information about the pre sign-up Lambda trigger, see [Pre
    #   sign-up Lambda trigger][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html
    #
    # @option params [String] :temporary_password
    #   The user's temporary password. This password must conform to the
    #   password policy that you specified when you created the user pool.
    #
    #   The exception to the requirement for a password is when your user pool
    #   supports passwordless sign-in with email or SMS OTPs. To create a user
    #   with no password, omit this parameter or submit a blank value. You can
    #   only create a passwordless user when passwordless sign-in is
    #   available.
    #
    #   The temporary password is valid only once. To complete the Admin
    #   Create User flow, the user must enter the temporary password in the
    #   sign-in page, along with a new password to be used in all future
    #   sign-ins.
    #
    #   If you don't specify a value, Amazon Cognito generates one for you
    #   unless you have passwordless options active for your user pool.
    #
    #   The temporary password can only be used until the user account
    #   expiration limit that you set for your user pool. To reset the account
    #   after that time limit, you must call `AdminCreateUser` again and
    #   specify `RESEND` for the `MessageAction` parameter.
    #
    # @option params [Boolean] :force_alias_creation
    #   This parameter is used only if the `phone_number_verified` or
    #   `email_verified` attribute is set to `True`. Otherwise, it is ignored.
    #
    #   If this parameter is set to `True` and the phone number or email
    #   address specified in the `UserAttributes` parameter already exists as
    #   an alias with a different user, this request migrates the alias from
    #   the previous user to the newly-created user. The previous user will no
    #   longer be able to log in using that alias.
    #
    #   If this parameter is set to `False`, the API throws an
    #   `AliasExistsException` error if the alias already exists. The default
    #   value is `False`.
    #
    # @option params [String] :message_action
    #   Set to `RESEND` to resend the invitation message to a user that
    #   already exists, and to reset the temporary-password duration with a
    #   new temporary password. Set to `SUPPRESS` to suppress sending the
    #   message. You can specify only one value.
    #
    # @option params [Array<String>] :desired_delivery_mediums
    #   Specify `EMAIL` if email will be used to send the welcome message.
    #   Specify `SMS` if the phone number will be used. The default value is
    #   `SMS`. You can specify more than one value.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the AdminCreateUser API action, Amazon Cognito
    #   invokes the function that is assigned to the *pre sign-up* trigger.
    #   When Amazon Cognito invokes this function, it passes a JSON payload,
    #   which the function receives as input. This payload contains a
    #   `ClientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your AdminCreateUser request. In
    #   your function code in Lambda, you can process the `clientMetadata`
    #   value to enhance your workflow for your specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::AdminCreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminCreateUserResponse#user #user} => Types::UserType
    #
    #
    # @example Example: An AdminCreateUser request for for a test user named John.
    #
    #   # This request submits a value for all possible parameters for AdminCreateUser.
    #
    #   resp = client.admin_create_user({
    #     desired_delivery_mediums: [
    #       "SMS", 
    #     ], 
    #     message_action: "SUPPRESS", 
    #     temporary_password: "This-is-my-test-99!", 
    #     user_attributes: [
    #       {
    #         name: "name", 
    #         value: "John", 
    #       }, 
    #       {
    #         name: "phone_number", 
    #         value: "+12065551212", 
    #       }, 
    #       {
    #         name: "email", 
    #         value: "testuser@example.com", 
    #       }, 
    #     ], 
    #     user_pool_id: "us-east-1_EXAMPLE", 
    #     username: "testuser", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     user: {
    #       attributes: [
    #         {
    #           name: "sub", 
    #           value: "d16b4aa8-8633-4abd-93b3-5062a8e1b5f8", 
    #         }, 
    #         {
    #           name: "name", 
    #           value: "John", 
    #         }, 
    #         {
    #           name: "phone_number", 
    #           value: "+12065551212", 
    #         }, 
    #         {
    #           name: "email", 
    #           value: "testuser@example.com", 
    #         }, 
    #       ], 
    #       enabled: true, 
    #       user_create_date: Time.parse(1689980857.949), 
    #       user_last_modified_date: Time.parse(1689980857.949), 
    #       user_status: "FORCE_CHANGE_PASSWORD", 
    #       username: "testuser", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_create_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     user_attributes: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     validation_data: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     temporary_password: "PasswordType",
    #     force_alias_creation: false,
    #     message_action: "RESEND", # accepts RESEND, SUPPRESS
    #     desired_delivery_mediums: ["SMS"], # accepts SMS, EMAIL
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user.username #=> String
    #   resp.user.attributes #=> Array
    #   resp.user.attributes[0].name #=> String
    #   resp.user.attributes[0].value #=> String
    #   resp.user.user_create_date #=> Time
    #   resp.user.user_last_modified_date #=> Time
    #   resp.user.enabled #=> Boolean
    #   resp.user.user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"
    #   resp.user.mfa_options #=> Array
    #   resp.user.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.user.mfa_options[0].attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminCreateUser AWS API Documentation
    #
    # @overload admin_create_user(params = {})
    # @param [Hash] params ({})
    def admin_create_user(params = {}, options = {})
      req = build_request(:admin_create_user, params)
      req.send_request(options)
    end

    # Deletes a user profile in your user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to delete the user.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_delete_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUser AWS API Documentation
    #
    # @overload admin_delete_user(params = {})
    # @param [Hash] params ({})
    def admin_delete_user(params = {}, options = {})
      req = build_request(:admin_delete_user, params)
      req.send_request(options)
    end

    # Deletes attribute values from a user. This operation doesn't affect
    # tokens for existing user sessions. The next ID token that the user
    # receives will no longer have the deleted attributes.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to delete user attributes.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, Array<String>] :user_attribute_names
    #   An array of strings representing the user attribute names you want to
    #   delete.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_delete_user_attributes({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     user_attribute_names: ["AttributeNameType"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUserAttributes AWS API Documentation
    #
    # @overload admin_delete_user_attributes(params = {})
    # @param [Hash] params ({})
    def admin_delete_user_attributes(params = {}, options = {})
      req = build_request(:admin_delete_user_attributes, params)
      req.send_request(options)
    end

    # Prevents the user from signing in with the specified external (SAML or
    # social) identity provider (IdP). If the user that you want to
    # deactivate is a Amazon Cognito user pools native username + password
    # user, they can't use their password to sign in. If the user to
    # deactivate is a linked external IdP user, any link between that user
    # and an existing user is removed. When the external user signs in
    # again, and the user is no longer attached to the previously linked
    # `DestinationUser`, the user must create a new user account.
    #
    # The value of `ProviderName` must match the name of a user pool IdP.
    #
    # To deactivate a local user, set `ProviderName` to `Cognito` and the
    # `ProviderAttributeName` to `Cognito_Subject`. The
    # `ProviderAttributeValue` must be user's local username.
    #
    # The `ProviderAttributeName` must always be `Cognito_Subject` for
    # social IdPs. The `ProviderAttributeValue` must always be the exact
    # subject that was used when the user was originally linked as a source
    # user.
    #
    # For de-linking a SAML identity, there are two scenarios. If the linked
    # identity has not yet been used to sign in, the `ProviderAttributeName`
    # and `ProviderAttributeValue` must be the same values that were used
    # for the `SourceUser` when the identities were originally linked using
    # ` AdminLinkProviderForUser` call. This is also true if the linking was
    # done with `ProviderAttributeName` set to `Cognito_Subject`. If the
    # user has already signed in, the `ProviderAttributeName` must be
    # `Cognito_Subject` and `ProviderAttributeValue` must be the `NameID`
    # from their SAML assertion.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to delete the user's linked
    #   identities.
    #
    # @option params [required, Types::ProviderUserIdentifierType] :user
    #   The user profile that you want to delete a linked identity from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_disable_provider_for_user({
    #     user_pool_id: "StringType", # required
    #     user: { # required
    #       provider_name: "ProviderNameType",
    #       provider_attribute_name: "StringType",
    #       provider_attribute_value: "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableProviderForUser AWS API Documentation
    #
    # @overload admin_disable_provider_for_user(params = {})
    # @param [Hash] params ({})
    def admin_disable_provider_for_user(params = {}, options = {})
      req = build_request(:admin_disable_provider_for_user, params)
      req.send_request(options)
    end

    # Deactivates a user profile and revokes all access tokens for the user.
    # A deactivated user can't sign in, but still appears in the responses
    # to `ListUsers` API requests.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to disable the user.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_disable_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableUser AWS API Documentation
    #
    # @overload admin_disable_user(params = {})
    # @param [Hash] params ({})
    def admin_disable_user(params = {}, options = {})
      req = build_request(:admin_disable_user, params)
      req.send_request(options)
    end

    # Activates sign-in for a user profile that previously had sign-in
    # access disabled.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to activate sign-in for the
    #   user.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_enable_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminEnableUser AWS API Documentation
    #
    # @overload admin_enable_user(params = {})
    # @param [Hash] params ({})
    def admin_enable_user(params = {}, options = {})
      req = build_request(:admin_enable_user, params)
      req.send_request(options)
    end

    # Forgets, or deletes, a remembered device from a user's profile. After
    # you forget the device, the user can no longer complete device
    # authentication with that device and when applicable, must submit MFA
    # codes again. For more information, see [Working with devices][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where the device owner is a user.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :device_key
    #   The key ID of the device that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_forget_device({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     device_key: "DeviceKeyType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminForgetDevice AWS API Documentation
    #
    # @overload admin_forget_device(params = {})
    # @param [Hash] params ({})
    def admin_forget_device(params = {}, options = {})
      req = build_request(:admin_forget_device, params)
      req.send_request(options)
    end

    # Given the device key, returns details for a user's device. For more
    # information, see [Working with devices][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :device_key
    #   The key of the device that you want to delete.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where the device owner is a user.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Types::AdminGetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminGetDeviceResponse#device #device} => Types::DeviceType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_get_device({
    #     device_key: "DeviceKeyType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_key #=> String
    #   resp.device.device_attributes #=> Array
    #   resp.device.device_attributes[0].name #=> String
    #   resp.device.device_attributes[0].value #=> String
    #   resp.device.device_create_date #=> Time
    #   resp.device.device_last_modified_date #=> Time
    #   resp.device.device_last_authenticated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetDevice AWS API Documentation
    #
    # @overload admin_get_device(params = {})
    # @param [Hash] params ({})
    def admin_get_device(params = {}, options = {})
      req = build_request(:admin_get_device, params)
      req.send_request(options)
    end

    # Given a username, returns details about a user profile in a user pool.
    # You can specify alias attributes in the `Username` request parameter.
    #
    # This operation contributes to your monthly active user (MAU) count for
    # the purpose of billing.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to get information about the
    #   user.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Types::AdminGetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminGetUserResponse#username #username} => String
    #   * {Types::AdminGetUserResponse#user_attributes #user_attributes} => Array&lt;Types::AttributeType&gt;
    #   * {Types::AdminGetUserResponse#user_create_date #user_create_date} => Time
    #   * {Types::AdminGetUserResponse#user_last_modified_date #user_last_modified_date} => Time
    #   * {Types::AdminGetUserResponse#enabled #enabled} => Boolean
    #   * {Types::AdminGetUserResponse#user_status #user_status} => String
    #   * {Types::AdminGetUserResponse#mfa_options #mfa_options} => Array&lt;Types::MFAOptionType&gt;
    #   * {Types::AdminGetUserResponse#preferred_mfa_setting #preferred_mfa_setting} => String
    #   * {Types::AdminGetUserResponse#user_mfa_setting_list #user_mfa_setting_list} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_get_user({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.username #=> String
    #   resp.user_attributes #=> Array
    #   resp.user_attributes[0].name #=> String
    #   resp.user_attributes[0].value #=> String
    #   resp.user_create_date #=> Time
    #   resp.user_last_modified_date #=> Time
    #   resp.enabled #=> Boolean
    #   resp.user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"
    #   resp.mfa_options #=> Array
    #   resp.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.mfa_options[0].attribute_name #=> String
    #   resp.preferred_mfa_setting #=> String
    #   resp.user_mfa_setting_list #=> Array
    #   resp.user_mfa_setting_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetUser AWS API Documentation
    #
    # @overload admin_get_user(params = {})
    # @param [Hash] params ({})
    def admin_get_user(params = {}, options = {})
      req = build_request(:admin_get_user, params)
      req.send_request(options)
    end

    # Starts sign-in for applications with a server-side component, for
    # example a traditional web application. This operation specifies the
    # authentication flow that you'd like to begin. The authentication flow
    # that you specify must be supported in your app client configuration.
    # For more information about authentication flows, see [Authentication
    # flows][1].
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][4]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][5]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [5]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where the user wants to sign in.
    #
    # @option params [required, String] :client_id
    #   The ID of the app client where the user wants to sign in.
    #
    # @option params [required, String] :auth_flow
    #   The authentication flow that you want to initiate. Each `AuthFlow` has
    #   linked `AuthParameters` that you must submit. The following are some
    #   example flows.
    #
    #   USER\_AUTH
    #
    #   : The entry point for [choice-based authentication][1] with passwords,
    #     one-time passwords, and WebAuthn authenticators. Request a preferred
    #     authentication type or review available authentication types. From
    #     the offered authentication types, select one in a challenge response
    #     and then authenticate with that method in an additional challenge
    #     response. To activate this setting, your user pool must be in the [
    #     Essentials tier][2] or higher.
    #
    #   USER\_SRP\_AUTH
    #
    #   : Username-password authentication with the Secure Remote Password
    #     (SRP) protocol. For more information, see [Use SRP password
    #     verification in custom authentication flow][3].
    #
    #   REFRESH\_TOKEN\_AUTH and REFRESH\_TOKEN
    #
    #   : Receive new ID and access tokens when you pass a `REFRESH_TOKEN`
    #     parameter with a valid refresh token as the value. For more
    #     information, see [Using the refresh token][4].
    #
    #   CUSTOM\_AUTH
    #
    #   : Custom authentication with Lambda triggers. For more information,
    #     see [Custom authentication challenge Lambda triggers][5].
    #
    #   ADMIN\_USER\_PASSWORD\_AUTH
    #
    #   : Server-side username-password authentication with the password sent
    #     directly in the request. For more information about client-side and
    #     server-side authentication, see [SDK authorization models][6].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow.html#Using-SRP-password-verification-in-custom-authentication-flow
    #   [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-refresh-token.html
    #   [5]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    #   [6]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html
    #
    # @option params [Hash<String,String>] :auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you're invoking. The required values depend on the
    #   value of `AuthFlow` for example:
    #
    #   * For `USER_AUTH`: `USERNAME` (required), `PREFERRED_CHALLENGE`. If
    #     you don't provide a value for `PREFERRED_CHALLENGE`, Amazon Cognito
    #     responds with the `AvailableChallenges` parameter that specifies the
    #     available sign-in methods.
    #
    #   * For `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`.
    #
    #   * For `ADMIN_USER_PASSWORD_AUTH`: `USERNAME` (required), `PASSWORD`
    #     (required), `SECRET_HASH` (required if the app client is configured
    #     with a client secret), `DEVICE_KEY`.
    #
    #   * For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required),
    #     `SECRET_HASH` (required if the app client is configured with a
    #     client secret), `DEVICE_KEY`.
    #
    #   * For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app
    #     client is configured with client secret), `DEVICE_KEY`. To start the
    #     authentication flow with password verification, include
    #     `ChallengeName: SRP_A` and `SRP_A: (The SRP_A Value)`.
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][1]. For information about `DEVICE_KEY`, see [Working with user
    #   devices in your user pool][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   certain custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the AdminInitiateAuth API action, Amazon
    #   Cognito invokes the Lambda functions that are specified for various
    #   triggers. The ClientMetadata value is passed as input to the functions
    #   for only the following triggers:
    #
    #   * Pre signup
    #
    #   * Pre authentication
    #
    #   * User migration
    #
    #   When Amazon Cognito invokes the functions for these triggers, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `validationData` attribute, which provides the data
    #   that you assigned to the ClientMetadata parameter in your
    #   AdminInitiateAuth request. In your function code in Lambda, you can
    #   process the `validationData` value to enhance your workflow for your
    #   specific needs.
    #
    #   When you use the AdminInitiateAuth API action, Amazon Cognito also
    #   invokes the functions for the following triggers, but it doesn't
    #   provide the ClientMetadata value as input:
    #
    #   * Post authentication
    #
    #   * Custom message
    #
    #   * Pre token generation
    #
    #   * Create auth challenge
    #
    #   * Define auth challenge
    #
    #   * Custom email sender
    #
    #   * Custom SMS sender
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #
    # @option params [Types::ContextDataType] :context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your app
    #   generates and passes to Amazon Cognito when it makes API requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #
    # @option params [String] :session
    #   The optional session ID from a `ConfirmSignUp` API request. You can
    #   sign in a user directly from the sign-up process with an `AuthFlow` of
    #   `USER_AUTH` and `AuthParameters` of `EMAIL_OTP` or `SMS_OTP`,
    #   depending on how your user pool sent the confirmation-code message.
    #
    # @return [Types::AdminInitiateAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminInitiateAuthResponse#challenge_name #challenge_name} => String
    #   * {Types::AdminInitiateAuthResponse#session #session} => String
    #   * {Types::AdminInitiateAuthResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::AdminInitiateAuthResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #   * {Types::AdminInitiateAuthResponse#available_challenges #available_challenges} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_initiate_auth({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     auth_flow: "USER_SRP_AUTH", # required, accepts USER_SRP_AUTH, REFRESH_TOKEN_AUTH, REFRESH_TOKEN, CUSTOM_AUTH, ADMIN_NO_SRP_AUTH, USER_PASSWORD_AUTH, ADMIN_USER_PASSWORD_AUTH, USER_AUTH
    #     auth_parameters: {
    #       "StringType" => "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     context_data: {
    #       ip_address: "StringType", # required
    #       server_name: "StringType", # required
    #       server_path: "StringType", # required
    #       http_headers: [ # required
    #         {
    #           header_name: "StringType",
    #           header_value: "StringType",
    #         },
    #       ],
    #       encoded_data: "StringType",
    #     },
    #     session: "SessionType",
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #   resp.available_challenges #=> Array
    #   resp.available_challenges[0] #=> String, one of "SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminInitiateAuth AWS API Documentation
    #
    # @overload admin_initiate_auth(params = {})
    # @param [Hash] params ({})
    def admin_initiate_auth(params = {}, options = {})
      req = build_request(:admin_initiate_auth, params)
      req.send_request(options)
    end

    # Links an existing user account in a user pool, or `DestinationUser`,
    # to an identity from an external IdP, or `SourceUser`, based on a
    # specified attribute name and value from the external IdP.
    #
    # This operation connects a local user profile with a user identity who
    # hasn't yet signed in from their third-party IdP. When the user signs
    # in with their IdP, they get access-control configuration from the
    # local user profile. Linked local users can also sign in with SDK-based
    # API operations like `InitiateAuth` after they sign in at least once
    # through their IdP. For more information, see [Linking federated
    # users][1].
    #
    # <note markdown="1"> The maximum number of federated identities linked to a user is five.
    #
    #  </note>
    #
    # Because this API allows a user with an external federated identity to
    # sign in as a local user, it is critical that it only be used with
    # external IdPs and linked attributes that you trust.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to link a federated identity.
    #
    # @option params [required, Types::ProviderUserIdentifierType] :destination_user
    #   The existing user in the user pool that you want to assign to the
    #   external IdP user account. This user can be a local (Username +
    #   Password) Amazon Cognito user pools user or a federated user (for
    #   example, a SAML or Facebook user). If the user doesn't exist, Amazon
    #   Cognito generates an exception. Amazon Cognito returns this user when
    #   the new user (with the linked IdP attribute) signs in.
    #
    #   For a native username + password user, the `ProviderAttributeValue`
    #   for the `DestinationUser` should be the username in the user pool. For
    #   a federated user, it should be the provider-specific `user_id`.
    #
    #   The `ProviderAttributeName` of the `DestinationUser` is ignored.
    #
    #   The `ProviderName` should be set to `Cognito` for users in Cognito
    #   user pools.
    #
    #   All attributes in the DestinationUser profile must be mutable. If you
    #   have assigned the user any immutable custom attributes, the operation
    #   won't succeed.
    #
    # @option params [required, Types::ProviderUserIdentifierType] :source_user
    #   An external IdP account for a user who doesn't exist yet in the user
    #   pool. This user must be a federated user (for example, a SAML or
    #   Facebook user), not another native user.
    #
    #   If the `SourceUser` is using a federated social IdP, such as Facebook,
    #   Google, or Login with Amazon, you must set the `ProviderAttributeName`
    #   to `Cognito_Subject`. For social IdPs, the `ProviderName` will be
    #   `Facebook`, `Google`, or `LoginWithAmazon`, and Amazon Cognito will
    #   automatically parse the Facebook, Google, and Login with Amazon tokens
    #   for `id`, `sub`, and `user_id`, respectively. The
    #   `ProviderAttributeValue` for the user must be the same value as the
    #   `id`, `sub`, or `user_id` value found in the social IdP token.
    #
    #   For OIDC, the `ProviderAttributeName` can be any mapped value from a
    #   claim in the ID token, or that your app retrieves from the `userInfo`
    #   endpoint. For SAML, the `ProviderAttributeName` can be any mapped
    #   value from a claim in the SAML assertion.
    #
    #   The following additional considerations apply to `SourceUser` for OIDC
    #   and SAML providers.
    #
    #   * You must map the claim to a user pool attribute in your IdP
    #     configuration, and set the user pool attribute name as the value of
    #     `ProviderAttributeName` in your `AdminLinkProviderForUser` request.
    #     For example, `email`.
    #
    #   * When you set `ProviderAttributeName` to `Cognito_Subject`, Amazon
    #     Cognito will automatically parse the default unique identifier found
    #     in the subject from the IdP token.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_link_provider_for_user({
    #     user_pool_id: "StringType", # required
    #     destination_user: { # required
    #       provider_name: "ProviderNameType",
    #       provider_attribute_name: "StringType",
    #       provider_attribute_value: "StringType",
    #     },
    #     source_user: { # required
    #       provider_name: "ProviderNameType",
    #       provider_attribute_name: "StringType",
    #       provider_attribute_value: "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminLinkProviderForUser AWS API Documentation
    #
    # @overload admin_link_provider_for_user(params = {})
    # @param [Hash] params ({})
    def admin_link_provider_for_user(params = {}, options = {})
      req = build_request(:admin_link_provider_for_user, params)
      req.send_request(options)
    end

    # Lists a user's registered devices. Remembered devices are used in
    # authentication services where you offer a "Remember me" option for
    # users who you want to permit to sign in without MFA from a trusted
    # device. Users can bypass MFA while your application performs device
    # SRP authentication on the back end. For more information, see [Working
    # with devices][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where the device owner is a user.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Integer] :limit
    #   The maximum number of devices that you want Amazon Cognito to return
    #   in the response.
    #
    # @option params [String] :pagination_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::AdminListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminListDevicesResponse#devices #devices} => Array&lt;Types::DeviceType&gt;
    #   * {Types::AdminListDevicesResponse#pagination_token #pagination_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_list_devices({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType",
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_key #=> String
    #   resp.devices[0].device_attributes #=> Array
    #   resp.devices[0].device_attributes[0].name #=> String
    #   resp.devices[0].device_attributes[0].value #=> String
    #   resp.devices[0].device_create_date #=> Time
    #   resp.devices[0].device_last_modified_date #=> Time
    #   resp.devices[0].device_last_authenticated_date #=> Time
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListDevices AWS API Documentation
    #
    # @overload admin_list_devices(params = {})
    # @param [Hash] params ({})
    def admin_list_devices(params = {}, options = {})
      req = build_request(:admin_list_devices, params)
      req.send_request(options)
    end

    # Lists the groups that a user belongs to. User pool groups are
    # identifiers that you can reference from the contents of ID and access
    # tokens, and set preferred IAM roles for identity-pool authentication.
    # For more information, see [Adding groups to a user pool][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to view a user's groups.
    #
    # @option params [Integer] :limit
    #   The maximum number of groups that you want Amazon Cognito to return in
    #   the response.
    #
    # @option params [String] :next_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::AdminListGroupsForUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminListGroupsForUserResponse#groups #groups} => Array&lt;Types::GroupType&gt;
    #   * {Types::AdminListGroupsForUserResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_list_groups_for_user({
    #     username: "UsernameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     limit: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].user_pool_id #=> String
    #   resp.groups[0].description #=> String
    #   resp.groups[0].role_arn #=> String
    #   resp.groups[0].precedence #=> Integer
    #   resp.groups[0].last_modified_date #=> Time
    #   resp.groups[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListGroupsForUser AWS API Documentation
    #
    # @overload admin_list_groups_for_user(params = {})
    # @param [Hash] params ({})
    def admin_list_groups_for_user(params = {}, options = {})
      req = build_request(:admin_list_groups_for_user, params)
      req.send_request(options)
    end

    # Requests a history of user activity and any risks detected as part of
    # Amazon Cognito threat protection. For more information, see [Viewing
    # user event history][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-event-user-history
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The Id of the user pool that contains the user profile with the logged
    #   events.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Integer] :max_results
    #   The maximum number of authentication events to return. Returns 60
    #   events if you set `MaxResults` to 0, or if you don't include a
    #   `MaxResults` parameter.
    #
    # @option params [String] :next_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::AdminListUserAuthEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminListUserAuthEventsResponse#auth_events #auth_events} => Array&lt;Types::AuthEventType&gt;
    #   * {Types::AdminListUserAuthEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_list_user_auth_events({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     max_results: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.auth_events #=> Array
    #   resp.auth_events[0].event_id #=> String
    #   resp.auth_events[0].event_type #=> String, one of "SignIn", "SignUp", "ForgotPassword", "PasswordChange", "ResendCode"
    #   resp.auth_events[0].creation_date #=> Time
    #   resp.auth_events[0].event_response #=> String, one of "Pass", "Fail", "InProgress"
    #   resp.auth_events[0].event_risk.risk_decision #=> String, one of "NoRisk", "AccountTakeover", "Block"
    #   resp.auth_events[0].event_risk.risk_level #=> String, one of "Low", "Medium", "High"
    #   resp.auth_events[0].event_risk.compromised_credentials_detected #=> Boolean
    #   resp.auth_events[0].challenge_responses #=> Array
    #   resp.auth_events[0].challenge_responses[0].challenge_name #=> String, one of "Password", "Mfa"
    #   resp.auth_events[0].challenge_responses[0].challenge_response #=> String, one of "Success", "Failure"
    #   resp.auth_events[0].event_context_data.ip_address #=> String
    #   resp.auth_events[0].event_context_data.device_name #=> String
    #   resp.auth_events[0].event_context_data.timezone #=> String
    #   resp.auth_events[0].event_context_data.city #=> String
    #   resp.auth_events[0].event_context_data.country #=> String
    #   resp.auth_events[0].event_feedback.feedback_value #=> String, one of "Valid", "Invalid"
    #   resp.auth_events[0].event_feedback.provider #=> String
    #   resp.auth_events[0].event_feedback.feedback_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListUserAuthEvents AWS API Documentation
    #
    # @overload admin_list_user_auth_events(params = {})
    # @param [Hash] params ({})
    def admin_list_user_auth_events(params = {}, options = {})
      req = build_request(:admin_list_user_auth_events, params)
      req.send_request(options)
    end

    # Given a username and a group name, removes them from the group. User
    # pool groups are identifiers that you can reference from the contents
    # of ID and access tokens, and set preferred IAM roles for identity-pool
    # authentication. For more information, see [Adding groups to a user
    # pool][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that contains the group and the user that you
    #   want to remove.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to remove the user from, for
    #   example `MyTestGroup`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_remove_user_from_group({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     group_name: "GroupNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRemoveUserFromGroup AWS API Documentation
    #
    # @overload admin_remove_user_from_group(params = {})
    # @param [Hash] params ({})
    def admin_remove_user_from_group(params = {}, options = {})
      req = build_request(:admin_remove_user_from_group, params)
      req.send_request(options)
    end

    # Resets the specified user's password in a user pool. This operation
    # doesn't change the user's password, but sends a password-reset code.
    #
    # To use this API operation, your user pool must have self-service
    # account recovery configured.
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][1]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][2] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][3]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][4]
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/pinpoint/home/
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to reset the user's password.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. The `AdminResetUserPassword` API operation invokes the
    #   function that is assigned to the *custom message* trigger. When Amazon
    #   Cognito invokes this function, it passes a JSON payload, which the
    #   function receives as input. This payload contains a `clientMetadata`
    #   attribute, which provides the data that you assigned to the
    #   ClientMetadata parameter in your AdminResetUserPassword request. In
    #   your function code in Lambda, you can process the `clientMetadata`
    #   value to enhance your workflow for your specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_reset_user_password({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminResetUserPassword AWS API Documentation
    #
    # @overload admin_reset_user_password(params = {})
    # @param [Hash] params ({})
    def admin_reset_user_password(params = {}, options = {})
      req = build_request(:admin_reset_user_password, params)
      req.send_request(options)
    end

    # Some API operations in a user pool generate a challenge, like a prompt
    # for an MFA code, for device authentication that bypasses MFA, or for a
    # custom authentication challenge. An `AdminRespondToAuthChallenge` API
    # request provides the answer to that challenge, like a code or a secure
    # remote password (SRP). The parameters of a response to an
    # authentication challenge vary with the type of challenge.
    #
    # For more information about custom authentication challenges, see
    # [Custom authentication challenge Lambda triggers][1].
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][4]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][5]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [5]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to respond to an authentication
    #   challenge.
    #
    # @option params [required, String] :client_id
    #   The ID of the app client where you initiated sign-in.
    #
    # @option params [required, String] :challenge_name
    #   The name of the challenge that you are responding to.
    #
    #   Possible challenges include the following:
    #
    #   <note markdown="1"> All of the following challenges require `USERNAME` and, when the app
    #   client has a client secret, `SECRET_HASH` in the parameters.
    #
    #    </note>
    #
    #   * `WEB_AUTHN`: Respond to the challenge with the results of a
    #     successful authentication with a WebAuthn authenticator, or passkey.
    #     Examples of WebAuthn authenticators include biometric devices and
    #     security keys.
    #
    #   * `PASSWORD`: Respond with `USER_PASSWORD_AUTH` parameters: `USERNAME`
    #     (required), `PASSWORD` (required), `SECRET_HASH` (required if the
    #     app client is configured with a client secret), `DEVICE_KEY`.
    #
    #   * `PASSWORD_SRP`: Respond with `USER_SRP_AUTH` parameters: `USERNAME`
    #     (required), `SRP_A` (required), `SECRET_HASH` (required if the app
    #     client is configured with a client secret), `DEVICE_KEY`.
    #
    #   * `SELECT_CHALLENGE`: Respond to the challenge with `USERNAME` and an
    #     `ANSWER` that matches one of the challenge types in the
    #     `AvailableChallenges` response parameter.
    #
    #   * `SMS_MFA`: Respond with an `SMS_MFA_CODE` that your user pool
    #     delivered in an SMS message.
    #
    #   * `EMAIL_OTP`: Respond with an `EMAIL_OTP_CODE` that your user pool
    #     delivered in an email message.
    #
    #   * `PASSWORD_VERIFIER`: Respond with `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, and `TIMESTAMP` after client-side SRP
    #     calculations.
    #
    #   * `CUSTOM_CHALLENGE`: This is returned if your custom authentication
    #     flow determines that the user should pass another challenge before
    #     tokens are issued. The parameters of the challenge are determined by
    #     your Lambda function.
    #
    #   * `DEVICE_SRP_AUTH`: Respond with the initial parameters of device SRP
    #     authentication. For more information, see [Signing in with a
    #     device][1].
    #
    #   * `DEVICE_PASSWORD_VERIFIER`: Respond with `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, and `TIMESTAMP` after client-side SRP
    #     calculations. For more information, see [Signing in with a
    #     device][1].
    #
    #   * `NEW_PASSWORD_REQUIRED`: For users who are required to change their
    #     passwords after successful first login. Respond to this challenge
    #     with `NEW_PASSWORD` and any required attributes that Amazon Cognito
    #     returned in the `requiredAttributes` parameter. You can also set
    #     values for attributes that aren't required by your user pool and
    #     that your app client can write.
    #
    #     Amazon Cognito only returns this challenge for users who have
    #     temporary passwords. When you create passwordless users, you must
    #     provide values for all required attributes.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify a
    #     required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API operation
    #     to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   * `MFA_SETUP`: For users who are required to setup an MFA factor
    #     before they can sign in. The MFA types activated for the user pool
    #     will be listed in the challenge parameters `MFAS_CAN_SETUP` value.
    #
    #     To set up time-based one-time password (TOTP) MFA, use the session
    #     returned in this challenge from `InitiateAuth` or
    #     `AdminInitiateAuth` as an input to `AssociateSoftwareToken`. Then,
    #     use the session returned by `VerifySoftwareToken` as an input to
    #     `RespondToAuthChallenge` or `AdminRespondToAuthChallenge` with
    #     challenge name `MFA_SETUP` to complete sign-in.
    #
    #     To set up SMS or email MFA, collect a `phone_number` or `email`
    #     attribute for the user. Then restart the authentication flow with an
    #     `InitiateAuth` or `AdminInitiateAuth` request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device
    #
    # @option params [Hash<String,String>] :challenge_responses
    #   The responses to the challenge that you received in the previous
    #   request. Each challenge has its own required response parameters. The
    #   following examples are partial JSON request bodies that highlight
    #   challenge-response parameters.
    #
    #   You must provide a SECRET\_HASH parameter in all challenge responses
    #   to an app client that has a client secret. Include a `DEVICE_KEY` for
    #   device authentication.
    #
    #   SELECT\_CHALLENGE
    #
    #   : `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #     "USERNAME": "[username]", "ANSWER": "[Challenge name]"}`
    #
    #     Available challenges are `PASSWORD`, `PASSWORD_SRP`, `EMAIL_OTP`,
    #     `SMS_OTP`, and `WEB_AUTHN`.
    #
    #     Complete authentication in the `SELECT_CHALLENGE` response for
    #     `PASSWORD`, `PASSWORD_SRP`, and `WEB_AUTHN`:
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "WEB_AUTHN", "USERNAME": "[username]", "CREDENTIAL":
    #       "[AuthenticationResponseJSON]"}`
    #
    #       See [ AuthenticationResponseJSON][1].
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "PASSWORD", "USERNAME": "[username]", "PASSWORD":
    #       "[password]"}`
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "PASSWORD_SRP", "USERNAME": "[username]", "SRP_A":
    #       "[SRP_A]"}`
    #
    #     For `SMS_OTP` and `EMAIL_OTP`, respond with the username and answer.
    #     Your user pool will send a code for the user to submit in the next
    #     challenge response.
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "SMS_OTP", "USERNAME": "[username]"}`
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "EMAIL_OTP", "USERNAME": "[username]"}`
    #
    #   SMS\_OTP
    #
    #   : `"ChallengeName": "SMS_OTP", "ChallengeResponses": {"SMS_OTP_CODE":
    #     "[code]", "USERNAME": "[username]"}`
    #
    #   EMAIL\_OTP
    #
    #   : `"ChallengeName": "EMAIL_OTP", "ChallengeResponses":
    #     {"EMAIL_OTP_CODE": "[code]", "USERNAME": "[username]"}`
    #
    #   SMS\_MFA
    #
    #   : `"ChallengeName": "SMS_MFA", "ChallengeResponses": {"SMS_MFA_CODE":
    #     "[code]", "USERNAME": "[username]"}`
    #
    #   PASSWORD\_VERIFIER
    #
    #   : This challenge response is part of the SRP flow. Amazon Cognito
    #     requires that your application respond to this challenge within a
    #     few seconds. When the response time exceeds this period, your user
    #     pool returns a `NotAuthorizedException` error.
    #
    #     `"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #     {"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #     "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #     [timestamp], "USERNAME": "[username]"}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   CUSTOM\_CHALLENGE
    #
    #   : `"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #     {"USERNAME": "[username]", "ANSWER": "[challenge_answer]"}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   NEW\_PASSWORD\_REQUIRED
    #
    #   : `"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #     {"NEW_PASSWORD": "[new_password]", "USERNAME": "[username]"}`
    #
    #     To set any required attributes that `InitiateAuth` returned in an
    #     `requiredAttributes` parameter, add
    #     `"userAttributes.[attribute_name]": "[attribute_value]"`. This
    #     parameter can also set values for writable attributes that aren't
    #     required by your user pool.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify a
    #     required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API operation
    #     to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   SOFTWARE\_TOKEN\_MFA
    #
    #   : `"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #     {"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #     [authenticator_code]}`
    #
    #   DEVICE\_SRP\_AUTH
    #
    #   : `"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses":
    #     {"USERNAME": "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #     "[srp_a]"}`
    #
    #   DEVICE\_PASSWORD\_VERIFIER
    #
    #   : `"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses":
    #     {"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE":
    #     "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK":
    #     "[secret_block]", "TIMESTAMP": [timestamp], "USERNAME":
    #     "[username]"}`
    #
    #   MFA\_SETUP
    #
    #   : `"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME":
    #     "[username]"}, "SESSION": "[Session ID from VerifySoftwareToken]"`
    #
    #   SELECT\_MFA\_TYPE
    #
    #   : `"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses":
    #     {"USERNAME": "[username]", "ANSWER": "[SMS_MFA or
    #     SOFTWARE_TOKEN_MFA]"}`
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][2]. For information about `DEVICE_KEY`, see [Working with user
    #   devices in your user pool][3].
    #
    #
    #
    #   [1]: https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @option params [String] :session
    #   The session identifier that maintains the state of authentication
    #   requests and challenge responses. If an `AdminInitiateAuth` or
    #   `AdminRespondToAuthChallenge` API request results in a determination
    #   that your application must pass another challenge, Amazon Cognito
    #   returns a session with other challenge parameters. Send this session
    #   identifier, unmodified, to the next `AdminRespondToAuthChallenge`
    #   request.
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #
    # @option params [Types::ContextDataType] :context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your app
    #   generates and passes to Amazon Cognito when it makes API requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the AdminRespondToAuthChallenge API action,
    #   Amazon Cognito invokes any functions that you have assigned to the
    #   following triggers:
    #
    #   * Pre sign-up
    #
    #   * custom message
    #
    #   * Post authentication
    #
    #   * User migration
    #
    #   * Pre token generation
    #
    #   * Define auth challenge
    #
    #   * Create auth challenge
    #
    #   * Verify auth challenge response
    #
    #   When Amazon Cognito invokes any of these functions, it passes a JSON
    #   payload, which the function receives as input. This payload contains a
    #   `clientMetadata` attribute that provides the data that you assigned to
    #   the ClientMetadata parameter in your AdminRespondToAuthChallenge
    #   request. In your function code in Lambda, you can process the
    #   `clientMetadata` value to enhance your workflow for your specific
    #   needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::AdminRespondToAuthChallengeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AdminRespondToAuthChallengeResponse#challenge_name #challenge_name} => String
    #   * {Types::AdminRespondToAuthChallengeResponse#session #session} => String
    #   * {Types::AdminRespondToAuthChallengeResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::AdminRespondToAuthChallengeResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_respond_to_auth_challenge({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     challenge_name: "SMS_MFA", # required, accepts SMS_MFA, EMAIL_OTP, SOFTWARE_TOKEN_MFA, SELECT_MFA_TYPE, MFA_SETUP, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, SELECT_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH, NEW_PASSWORD_REQUIRED, SMS_OTP, PASSWORD, WEB_AUTHN, PASSWORD_SRP
    #     challenge_responses: {
    #       "StringType" => "StringType",
    #     },
    #     session: "SessionType",
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     context_data: {
    #       ip_address: "StringType", # required
    #       server_name: "StringType", # required
    #       server_path: "StringType", # required
    #       http_headers: [ # required
    #         {
    #           header_name: "StringType",
    #           header_value: "StringType",
    #         },
    #       ],
    #       encoded_data: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRespondToAuthChallenge AWS API Documentation
    #
    # @overload admin_respond_to_auth_challenge(params = {})
    # @param [Hash] params ({})
    def admin_respond_to_auth_challenge(params = {}, options = {})
      req = build_request(:admin_respond_to_auth_challenge, params)
      req.send_request(options)
    end

    # Sets the user's multi-factor authentication (MFA) preference,
    # including which MFA options are activated, and if any are preferred.
    # Only one factor can be set as preferred. The preferred MFA factor will
    # be used to authenticate a user if multiple factors are activated. If
    # multiple options are activated and no preference is set, a challenge
    # to choose an MFA option will be returned during sign-in.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [Types::SMSMfaSettingsType] :sms_mfa_settings
    #   User preferences for SMS message MFA. Activates or deactivates SMS MFA
    #   and sets it as the preferred MFA method when multiple methods are
    #   available.
    #
    # @option params [Types::SoftwareTokenMfaSettingsType] :software_token_mfa_settings
    #   User preferences for time-based one-time password (TOTP) MFA.
    #   Activates or deactivates TOTP MFA and sets it as the preferred MFA
    #   method when multiple methods are available. This operation can set
    #   TOTP as a user's preferred MFA method before they register a TOTP
    #   authenticator.
    #
    # @option params [Types::EmailMfaSettingsType] :email_mfa_settings
    #   User preferences for email message MFA. Activates or deactivates email
    #   MFA and sets it as the preferred MFA method when multiple methods are
    #   available. To activate this setting, your user pool must be in the [
    #   Essentials tier][1] or higher.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to set a user's MFA
    #   preferences.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_set_user_mfa_preference({
    #     sms_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false,
    #     },
    #     software_token_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false,
    #     },
    #     email_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false,
    #     },
    #     username: "UsernameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserMFAPreference AWS API Documentation
    #
    # @overload admin_set_user_mfa_preference(params = {})
    # @param [Hash] params ({})
    def admin_set_user_mfa_preference(params = {}, options = {})
      req = build_request(:admin_set_user_mfa_preference, params)
      req.send_request(options)
    end

    # Sets the specified user's password in a user pool. This operation
    # administratively sets a temporary or permanent password for a user.
    # With this operation, you can bypass self-service password changes and
    # permit immediate sign-in with the password that you set. To do this,
    # set `Permanent` to `true`.
    #
    # You can also set a new temporary password in this request, send it to
    # a user, and require them to choose a new password on their next
    # sign-in. To do this, set `Permanent` to `false`.
    #
    # If the password is temporary, the user's `Status` becomes
    # `FORCE_CHANGE_PASSWORD`. When the user next tries to sign in, the
    # `InitiateAuth` or `AdminInitiateAuth` response includes the
    # `NEW_PASSWORD_REQUIRED` challenge. If the user doesn't sign in before
    # the temporary password expires, they can no longer sign in and you
    # must repeat this operation to set a temporary or permanent password
    # for them.
    #
    # After the user sets a new password, or if you set a permanent
    # password, their status becomes `Confirmed`.
    #
    # `AdminSetUserPassword` can set a password for the user profile that
    # Amazon Cognito creates for third-party federated users. When you set a
    # password, the federated user's status changes from
    # `EXTERNAL_PROVIDER` to `CONFIRMED`. A user in this state can sign in
    # as a federated user, and initiate authentication flows in the API like
    # a linked native user. They can also modify their password and
    # attributes in token-authenticated API requests like `ChangePassword`
    # and `UpdateUserAttributes`. As a best security practice and to keep
    # users in sync with your external IdP, don't set passwords on
    # federated user profiles. To set up a federated user for native sign-in
    # with a linked native user, refer to [Linking federated users to an
    # existing user profile][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to set the user's password.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :password
    #   The new temporary or permanent password that you want to set for the
    #   user. You can't remove the password for a user who already has a
    #   password so that they can only sign in with passwordless methods. In
    #   this scenario, you must create a new user without a password.
    #
    # @option params [Boolean] :permanent
    #   Set to `true` to set a password that the user can immediately sign in
    #   with. Set to `false` to set a temporary password that the user must
    #   change on their next sign-in.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_set_user_password({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     password: "PasswordType", # required
    #     permanent: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserPassword AWS API Documentation
    #
    # @overload admin_set_user_password(params = {})
    # @param [Hash] params ({})
    def admin_set_user_password(params = {}, options = {})
      req = build_request(:admin_set_user_password, params)
      req.send_request(options)
    end

    # *This action is no longer supported.* You can use it to configure only
    # SMS MFA. You can't use it to configure time-based one-time password
    # (TOTP) software token MFA.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that contains the user whose options you're
    #   setting.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, Array<Types::MFAOptionType>] :mfa_options
    #   You can use this parameter only to set an SMS configuration that uses
    #   SMS for delivery.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_set_user_settings({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     mfa_options: [ # required
    #       {
    #         delivery_medium: "SMS", # accepts SMS, EMAIL
    #         attribute_name: "AttributeNameType",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserSettings AWS API Documentation
    #
    # @overload admin_set_user_settings(params = {})
    # @param [Hash] params ({})
    def admin_set_user_settings(params = {}, options = {})
      req = build_request(:admin_set_user_settings, params)
      req.send_request(options)
    end

    # Provides the feedback for an authentication event generated by threat
    # protection features. Your response indicates that you think that the
    # event either was from a valid user or was an unwanted authentication
    # attempt. This feedback improves the risk evaluation decision for the
    # user pool as part of Amazon Cognito threat protection. To activate
    # this setting, your user pool must be on the [ Plus tier][1].
    #
    # To train the threat-protection model to recognize trusted and
    # untrusted sign-in characteristics, configure threat protection in
    # audit-only mode and provide a mechanism for users or administrators to
    # submit feedback. Your feedback can tell Amazon Cognito that a risk
    # rating was assigned at a level you don't agree with.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to submit authentication-event
    #   feedback.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :event_id
    #   The ID of the threat protection authentication event that you want to
    #   update.
    #
    # @option params [required, String] :feedback_value
    #   Your feedback to the authentication event. When you provide a
    #   `FeedbackValue` value of `valid`, you tell Amazon Cognito that you
    #   trust a user session where Amazon Cognito has evaluated some level of
    #   risk. When you provide a `FeedbackValue` value of `invalid`, you tell
    #   Amazon Cognito that you don't trust a user session, or you don't
    #   believe that Amazon Cognito evaluated a high-enough risk level.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_update_auth_event_feedback({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     event_id: "EventIdType", # required
    #     feedback_value: "Valid", # required, accepts Valid, Invalid
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateAuthEventFeedback AWS API Documentation
    #
    # @overload admin_update_auth_event_feedback(params = {})
    # @param [Hash] params ({})
    def admin_update_auth_event_feedback(params = {}, options = {})
      req = build_request(:admin_update_auth_event_feedback, params)
      req.send_request(options)
    end

    # Updates the status of a user's device so that it is marked as
    # remembered or not remembered for the purpose of device authentication.
    # Device authentication is a "remember me" mechanism that silently
    # completes sign-in from trusted devices with a device key instead of a
    # user-provided MFA code. This operation changes the status of a device
    # without deleting it, so you can enable it again later. For more
    # information about device authentication, see [Working with
    # devices][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to change a user's device
    #   status.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :device_key
    #   The unique identifier, or device key, of the device that you want to
    #   update the status for.
    #
    # @option params [String] :device_remembered_status
    #   To enable device authentication with the specified device, set to
    #   `remembered`.To disable, set to `not_remembered`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_update_device_status({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_remembered_status: "remembered", # accepts remembered, not_remembered
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateDeviceStatus AWS API Documentation
    #
    # @overload admin_update_device_status(params = {})
    # @param [Hash] params ({})
    def admin_update_device_status(params = {}, options = {})
      req = build_request(:admin_update_device_status, params)
      req.send_request(options)
    end

    # Updates the specified user's attributes. To delete an attribute from
    # your user, submit the attribute in your API request with a blank
    # value.
    #
    # For custom attributes, you must add a `custom:` prefix to the
    # attribute name, for example `custom:department`.
    #
    # This operation can set a user's email address or phone number as
    # verified and permit immediate sign-in in user pools that require
    # verification of these attributes. To do this, set the `email_verified`
    # or `phone_number_verified` attribute to `true`.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][3]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][4] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [3]: https://console.aws.amazon.com/pinpoint/home/
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to update user attributes.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name.
    #
    #   If your user pool requires verification before Amazon Cognito updates
    #   an attribute value that you specify in this request, Amazon Cognito
    #   doesn’t immediately update the value of that attribute. After your
    #   user receives and responds to a verification message to verify the new
    #   value, Amazon Cognito updates the attribute value. Your user can sign
    #   in and receive messages with the original attribute value until they
    #   verify the new value.
    #
    #   To skip the verification message and update the value of an attribute
    #   that requires verification in the same API request, include the
    #   `email_verified` or `phone_number_verified` attribute, with a value of
    #   `true`. If you set the `email_verified` or `phone_number_verified`
    #   value for an `email` or `phone_number` attribute that requires
    #   verification to `true`, Amazon Cognito doesn’t send a verification
    #   message to your user.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the AdminUpdateUserAttributes API action,
    #   Amazon Cognito invokes the function that is assigned to the *custom
    #   message* trigger. When Amazon Cognito invokes this function, it passes
    #   a JSON payload, which the function receives as input. This payload
    #   contains a `clientMetadata` attribute, which provides the data that
    #   you assigned to the ClientMetadata parameter in your
    #   AdminUpdateUserAttributes request. In your function code in Lambda,
    #   you can process the `clientMetadata` value to enhance your workflow
    #   for your specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_update_user_attributes({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     user_attributes: [ # required
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateUserAttributes AWS API Documentation
    #
    # @overload admin_update_user_attributes(params = {})
    # @param [Hash] params ({})
    def admin_update_user_attributes(params = {}, options = {})
      req = build_request(:admin_update_user_attributes, params)
      req.send_request(options)
    end

    # Invalidates the identity, access, and refresh tokens that Amazon
    # Cognito issued to a user. Call this operation with your administrative
    # credentials when your user signs out of your app. This results in the
    # following behavior.
    #
    # * Amazon Cognito no longer accepts *token-authorized* user operations
    #   that you authorize with a signed-out user's access tokens. For more
    #   information, see [Using the Amazon Cognito user pools API and user
    #   pool endpoints][1].
    #
    #   Amazon Cognito returns an `Access Token has been revoked` error when
    #   your app attempts to authorize a user pools API request with a
    #   revoked access token that contains the scope
    #   `aws.cognito.signin.user.admin`.
    #
    # * Amazon Cognito no longer accepts a signed-out user's ID token in a
    #   [GetId ][2] request to an identity pool with `ServerSideTokenCheck`
    #   enabled for its user pool IdP configuration in
    #   [CognitoIdentityProvider][3].
    #
    # * Amazon Cognito no longer accepts a signed-out user's refresh tokens
    #   in refresh requests.
    #
    # Other requests might be valid until your user's token expires. This
    # operation doesn't clear the [managed login][4] session cookie. To
    # clear the session for a user who signed in with managed login or the
    # classic hosted UI, direct their browser session to the [logout
    # endpoint][5].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][6]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][1]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html
    # [3]: https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
    # [5]: https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html
    # [6]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to sign out a user.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.admin_user_global_sign_out({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUserGlobalSignOut AWS API Documentation
    #
    # @overload admin_user_global_sign_out(params = {})
    # @param [Hash] params ({})
    def admin_user_global_sign_out(params = {}, options = {})
      req = build_request(:admin_user_global_sign_out, params)
      req.send_request(options)
    end

    # Begins setup of time-based one-time password (TOTP) multi-factor
    # authentication (MFA) for a user, with a unique private key that Amazon
    # Cognito generates and returns in the API response. You can authorize
    # an `AssociateSoftwareToken` request with either the user's access
    # token, or a session string from a challenge response that you received
    # from Amazon Cognito.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    #   You can provide either an access token or a session ID in the request.
    #
    # @option params [String] :session
    #   The session identifier that maintains the state of authentication
    #   requests and challenge responses. In `AssociateSoftwareToken`, this is
    #   the session ID from a successful sign-in. You can provide either an
    #   access token or a session ID in the request.
    #
    # @return [Types::AssociateSoftwareTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateSoftwareTokenResponse#secret_code #secret_code} => String
    #   * {Types::AssociateSoftwareTokenResponse#session #session} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_software_token({
    #     access_token: "TokenModelType",
    #     session: "SessionType",
    #   })
    #
    # @example Response structure
    #
    #   resp.secret_code #=> String
    #   resp.session #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AssociateSoftwareToken AWS API Documentation
    #
    # @overload associate_software_token(params = {})
    # @param [Hash] params ({})
    def associate_software_token(params = {}, options = {})
      req = build_request(:associate_software_token, params)
      req.send_request(options)
    end

    # Changes the password for the currently signed-in user.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [String] :previous_password
    #   The user's previous password. Required if the user has a password. If
    #   the user has no password and only signs in with passwordless
    #   authentication options, you can omit this parameter.
    #
    # @option params [required, String] :proposed_password
    #   A new password that you prompted the user to enter in your
    #   application.
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the user whose
    #   password you want to change.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_password({
    #     previous_password: "PasswordType",
    #     proposed_password: "PasswordType", # required
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ChangePassword AWS API Documentation
    #
    # @overload change_password(params = {})
    # @param [Hash] params ({})
    def change_password(params = {}, options = {})
      req = build_request(:change_password, params)
      req.send_request(options)
    end

    # Completes registration of a passkey authenticator for the currently
    # signed-in user.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [required, Hash,Array,String,Numeric,Boolean] :credential
    #   A [RegistrationResponseJSON][1] public-key credential response from
    #   the user's passkey provider.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    #
    #
    #   [1]: https://www.w3.org/TR/WebAuthn-3/#dictdef-registrationresponsejson
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_web_authn_registration({
    #     access_token: "TokenModelType", # required
    #     credential: { # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CompleteWebAuthnRegistration AWS API Documentation
    #
    # @overload complete_web_authn_registration(params = {})
    # @param [Hash] params ({})
    def complete_web_authn_registration(params = {}, options = {})
      req = build_request(:complete_web_authn_registration, params)
      req.send_request(options)
    end

    # Confirms a device that a user wants to remember. A remembered device
    # is a "Remember me on this device" option for user pools that perform
    # authentication with the device key of a trusted device in the back
    # end, instead of a user-provided MFA code. For more information about
    # device authentication, see [Working with user devices in your user
    # pool][1].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [required, String] :device_key
    #   The unique identifier, or device key, of the device that you want to
    #   update the status for.
    #
    # @option params [Types::DeviceSecretVerifierConfigType] :device_secret_verifier_config
    #   The configuration of the device secret verifier.
    #
    # @option params [String] :device_name
    #   A friendly name for the device, for example `MyMobilePhone`.
    #
    # @return [Types::ConfirmDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmDeviceResponse#user_confirmation_necessary #user_confirmation_necessary} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_device({
    #     access_token: "TokenModelType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_secret_verifier_config: {
    #       password_verifier: "StringType",
    #       salt: "StringType",
    #     },
    #     device_name: "DeviceNameType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_confirmation_necessary #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmDevice AWS API Documentation
    #
    # @overload confirm_device(params = {})
    # @param [Hash] params ({})
    def confirm_device(params = {}, options = {})
      req = build_request(:confirm_device, params)
      req.send_request(options)
    end

    # This public API operation accepts a confirmation code that Amazon
    # Cognito sent to a user and accepts a new password for that user.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :client_id
    #   The ID of the app client where the user wants to reset their password.
    #   This parameter is an identifier of the client application that users
    #   are resetting their password from, but this operation resets users'
    #   irrespective of the app clients they sign in to.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message. For more information about `SecretHash`, see [Computing
    #   secret hash values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :confirmation_code
    #   The confirmation code that your user pool delivered when your user
    #   requested to reset their password.
    #
    # @option params [required, String] :password
    #   The new password that your user wants to set.
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your app
    #   generates and passes to Amazon Cognito when it makes API requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the ConfirmForgotPassword API action, Amazon
    #   Cognito invokes the function that is assigned to the *post
    #   confirmation* trigger. When Amazon Cognito invokes this function, it
    #   passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the data
    #   that you assigned to the ClientMetadata parameter in your
    #   ConfirmForgotPassword request. In your function code in Lambda, you
    #   can process the `clientMetadata` value to enhance your workflow for
    #   your specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_forgot_password({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #     confirmation_code: "ConfirmationCodeType", # required
    #     password: "PasswordType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmForgotPassword AWS API Documentation
    #
    # @overload confirm_forgot_password(params = {})
    # @param [Hash] params ({})
    def confirm_forgot_password(params = {}, options = {})
      req = build_request(:confirm_forgot_password, params)
      req.send_request(options)
    end

    # Confirms the account of a new user. This public API operation submits
    # a code that Amazon Cognito sent to your user when they signed up in
    # your user pool. After your user enters their code, they confirm
    # ownership of the email address or phone number that they provided, and
    # their user account becomes active. Depending on your user pool
    # configuration, your users will receive their confirmation code in an
    # email or SMS message.
    #
    # Local users who signed up in your user pool are the only type of user
    # who can confirm sign-up with a code. Users who federate through an
    # external identity provider (IdP) have already been confirmed by their
    # IdP.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :client_id
    #   The ID of the app client associated with the user pool.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message. For more information about `SecretHash`, see [Computing
    #   secret hash values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :confirmation_code
    #   The confirmation code that your user pool sent in response to the
    #   `SignUp` request.
    #
    # @option params [Boolean] :force_alias_creation
    #   When `true`, forces user confirmation despite any existing aliases.
    #   Defaults to `false`. A value of `true` migrates the alias from an
    #   existing user to the new user if an existing user already has the
    #   phone number or email address as an alias.
    #
    #   Say, for example, that an existing user has an `email` attribute of
    #   `bob@example.com` and email is an alias in your user pool. If the new
    #   user also has an email of `bob@example.com` and your `ConfirmSignUp`
    #   response sets `ForceAliasCreation` to `true`, the new user can sign in
    #   with a username of `bob@example.com` and the existing user can no
    #   longer do so.
    #
    #   If `false` and an attribute belongs to an existing alias, this request
    #   returns an **AliasExistsException** error.
    #
    #   For more information about sign-in aliases, see [Customizing sign-in
    #   attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your app
    #   generates and passes to Amazon Cognito when it makes API requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the ConfirmSignUp API action, Amazon Cognito
    #   invokes the function that is assigned to the *post confirmation*
    #   trigger. When Amazon Cognito invokes this function, it passes a JSON
    #   payload, which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your ConfirmSignUp request. In your
    #   function code in Lambda, you can process the `clientMetadata` value to
    #   enhance your workflow for your specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @option params [String] :session
    #   The optional session ID from a `SignUp` API request. You can sign in a
    #   user directly from the sign-up process with the `USER_AUTH`
    #   authentication flow.
    #
    # @return [Types::ConfirmSignUpResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmSignUpResponse#session #session} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_sign_up({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #     confirmation_code: "ConfirmationCodeType", # required
    #     force_alias_creation: false,
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #     session: "SessionType",
    #   })
    #
    # @example Response structure
    #
    #   resp.session #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmSignUp AWS API Documentation
    #
    # @overload confirm_sign_up(params = {})
    # @param [Hash] params ({})
    def confirm_sign_up(params = {}, options = {})
      req = build_request(:confirm_sign_up, params)
      req.send_request(options)
    end

    # Creates a new group in the specified user pool. For more information
    # about user pool groups, see [Adding groups to a user pool][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :group_name
    #   A name for the group. This name must be unique in your user pool.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to create a user group.
    #
    # @option params [String] :description
    #   A description of the group that you're creating.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that you want to
    #   associate with the group. A group role primarily declares a preferred
    #   role for the credentials that you get from an identity pool. Amazon
    #   Cognito ID tokens have a `cognito:preferred_role` claim that presents
    #   the highest-precedence group that a user belongs to. Both ID and
    #   access tokens also contain a `cognito:groups` claim that list all the
    #   groups that a user is a member of.
    #
    # @option params [Integer] :precedence
    #   A non-negative integer value that specifies the precedence of this
    #   group relative to the other groups that a user can belong to in the
    #   user pool. Zero is the highest precedence value. Groups with lower
    #   `Precedence` values take precedence over groups with higher or null
    #   `Precedence` values. If a user belongs to two or more groups, it is
    #   the group with the lowest precedence value whose role ARN is given in
    #   the user's tokens for the `cognito:roles` and
    #   `cognito:preferred_role` claims.
    #
    #   Two groups can have the same `Precedence` value. If this happens,
    #   neither group takes precedence over the other. If two groups with the
    #   same `Precedence` have the same role ARN, that role is used in the
    #   `cognito:preferred_role` claim in tokens for users in each group. If
    #   the two groups have different role ARNs, the `cognito:preferred_role`
    #   claim isn't set in users' tokens.
    #
    #   The default `Precedence` value is null. The maximum `Precedence` value
    #   is `2^31-1`.
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#group #group} => Types::GroupType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     description: "DescriptionType",
    #     role_arn: "ArnType",
    #     precedence: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.user_pool_id #=> String
    #   resp.group.description #=> String
    #   resp.group.role_arn #=> String
    #   resp.group.precedence #=> Integer
    #   resp.group.last_modified_date #=> Time
    #   resp.group.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Adds a configuration and trust relationship between a third-party
    # identity provider (IdP) and a user pool. Amazon Cognito accepts
    # sign-in with third-party identity providers through managed login and
    # OIDC relying-party libraries. For more information, see [Third-party
    # IdP sign-in][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The Id of the user pool where you want to create an IdP.
    #
    # @option params [required, String] :provider_name
    #   The name that you want to assign to the IdP. You can pass the identity
    #   provider name in the `identity_provider` query parameter of requests
    #   to the [Authorize endpoint][1] to silently redirect to sign-in with
    #   the associated IdP.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html
    #
    # @option params [required, String] :provider_type
    #   The type of IdP that you want to add. Amazon Cognito supports OIDC,
    #   SAML 2.0, Login With Amazon, Sign In With Apple, Google, and Facebook
    #   IdPs.
    #
    # @option params [required, Hash<String,String>] :provider_details
    #   The scopes, URLs, and identifiers for your external identity provider.
    #   The following examples describe the provider detail keys for each IdP
    #   type. These values and their schema are subject to change. Social IdP
    #   `authorize_scopes` values must match the values listed here.
    #
    #   OpenID Connect (OIDC)
    #
    #   : Amazon Cognito accepts the following elements when it can't
    #     discover endpoint URLs from `oidc_issuer`: `attributes_url`,
    #     `authorize_url`, `jwks_uri`, `token_url`.
    #
    #     Create or update request: `"ProviderDetails": {
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo", "authorize_scopes": "openid
    #     profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" }`
    #
    #     Describe response: `"ProviderDetails": {
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "openid profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" }`
    #
    #   SAML
    #
    #   : Create or update request with Metadata URL: `"ProviderDetails": {
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataURL": "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256" }`
    #
    #     Create or update request with Metadata file: `"ProviderDetails": {
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataFile": "[metadata XML]", "RequestSigningAlgorithm":
    #     "rsa-sha256" }`
    #
    #     The value of `MetadataFile` must be the plaintext metadata document
    #     with all quote (") characters escaped by backslashes.
    #
    #     Describe response: `"ProviderDetails": { "IDPInit": "true",
    #     "IDPSignout": "true", "EncryptedResponses" : "true",
    #     "ActiveEncryptionCertificate": "[certificate]", "MetadataURL":
    #     "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256", "SLORedirectBindingURI":
    #     "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #     "https://auth.example.com/sso/saml" }`
    #
    #   LoginWithAmazon
    #
    #   : Create or update request: `"ProviderDetails": { "authorize_scopes":
    #     "profile postal_code", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret"`
    #
    #     Describe response: `"ProviderDetails": { "attributes_url":
    #     "https://api.amazon.com/user/profile",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "profile postal_code", "authorize_url":
    #     "https://www.amazon.com/ap/oa", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret", "token_request_method": "POST",
    #     "token_url": "https://api.amazon.com/auth/o2/token" }`
    #
    #   Google
    #
    #   : Create or update request: `"ProviderDetails": { "authorize_scopes":
    #     "email profile openid", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret" }`
    #
    #     Describe response: `"ProviderDetails": { "attributes_url":
    #     "https://people.googleapis.com/v1/people/me?personFields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes": "email
    #     profile openid", "authorize_url":
    #     "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret", "oidc_issuer":
    #     "https://accounts.google.com", "token_request_method": "POST",
    #     "token_url": "https://www.googleapis.com/oauth2/v4/token" }`
    #
    #   SignInWithApple
    #
    #   : Create or update request: `"ProviderDetails": { "authorize_scopes":
    #     "email name", "client_id": "com.example.cognito", "private_key":
    #     "1EXAMPLE", "key_id": "2EXAMPLE", "team_id": "3EXAMPLE" }`
    #
    #     Describe response: `"ProviderDetails": {
    #     "attributes_url_add_attributes": "false", "authorize_scopes": "email
    #     name", "authorize_url": "https://appleid.apple.com/auth/authorize",
    #     "client_id": "com.example.cognito", "key_id": "1EXAMPLE",
    #     "oidc_issuer": "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #     "token_request_method": "POST", "token_url":
    #     "https://appleid.apple.com/auth/token" }`
    #
    #   Facebook
    #
    #   : Create or update request: `"ProviderDetails": { "api_version":
    #     "v17.0", "authorize_scopes": "public_profile, email", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret" }`
    #
    #     Describe response: `"ProviderDetails": { "api_version": "v17.0",
    #     "attributes_url": "https://graph.facebook.com/v17.0/me?fields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes":
    #     "public_profile, email", "authorize_url":
    #     "https://www.facebook.com/v17.0/dialog/oauth", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "token_request_method": "GET", "token_url":
    #     "https://graph.facebook.com/v17.0/oauth/access_token" }`
    #
    # @option params [Hash<String,String>] :attribute_mapping
    #   A mapping of IdP attributes to standard and custom user pool
    #   attributes. Specify a user pool attribute as the key of the key-value
    #   pair, and the IdP attribute claim name as the value.
    #
    # @option params [Array<String>] :idp_identifiers
    #   An array of IdP identifiers, for example `"IdPIdentifiers": [ "MyIdP",
    #   "MyIdP2" ]`. Identifiers are friendly names that you can pass in the
    #   `idp_identifier` query parameter of requests to the [Authorize
    #   endpoint][1] to silently redirect to sign-in with the associated IdP.
    #   Identifiers in a domain format also enable the use of [email-address
    #   matching with SAML providers][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managing-saml-idp-naming.html
    #
    # @return [Types::CreateIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameTypeV2", # required
    #     provider_type: "SAML", # required, accepts SAML, Facebook, Google, LoginWithAmazon, SignInWithApple, OIDC
    #     provider_details: { # required
    #       "StringType" => "StringType",
    #     },
    #     attribute_mapping: {
    #       "AttributeMappingKeyType" => "StringType",
    #     },
    #     idp_identifiers: ["IdpIdentifierType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["AttributeMappingKeyType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateIdentityProvider AWS API Documentation
    #
    # @overload create_identity_provider(params = {})
    # @param [Hash] params ({})
    def create_identity_provider(params = {}, options = {})
      req = build_request(:create_identity_provider, params)
      req.send_request(options)
    end

    # Creates a new set of branding settings for a user pool style and
    # associates it with an app client. This operation is the programmatic
    # option for the creation of a new style in the branding designer.
    #
    # Provides values for UI customization in a `Settings` JSON object and
    # image files in an `Assets` array. To send the JSON object `Document`
    # type parameter in `Settings`, you might need to update to the most
    # recent version of your Amazon Web Services SDK. To create a new style
    # with default settings, set `UseCognitoProvidedValues` to `true` and
    # don't provide values for any other options.
    #
    # This operation has a 2-megabyte request-size limit and include the CSS
    # settings and image assets for your app client. Your branding settings
    # might exceed 2MB in size. Amazon Cognito doesn't require that you
    # pass all parameters in one request and preserves existing style
    # settings that you don't specify. If your request is larger than 2MB,
    # separate it into multiple requests, each with a size smaller than the
    # limit.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to create a new branding style.
    #
    # @option params [required, String] :client_id
    #   The app client that you want to create the branding style for. Each
    #   style is linked to an app client until you delete it.
    #
    # @option params [Boolean] :use_cognito_provided_values
    #   When true, applies the default branding style options. These default
    #   options are managed by Amazon Cognito. You can modify them later in
    #   the branding designer.
    #
    #   When you specify `true` for this option, you must also omit values for
    #   `Settings` and `Assets` in the request.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :settings
    #   A JSON file, encoded as a `Document` type, with the the settings that
    #   you want to apply to your style.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Array<Types::AssetType>] :assets
    #   An array of image files that you want to apply to functions like
    #   backgrounds, logos, and icons. Each object must also indicate whether
    #   it is for dark mode, light mode, or browser-adaptive mode.
    #
    # @return [Types::CreateManagedLoginBrandingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateManagedLoginBrandingResponse#managed_login_branding #managed_login_branding} => Types::ManagedLoginBrandingType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_managed_login_branding({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     use_cognito_provided_values: false,
    #     settings: {
    #     },
    #     assets: [
    #       {
    #         category: "FAVICON_ICO", # required, accepts FAVICON_ICO, FAVICON_SVG, EMAIL_GRAPHIC, SMS_GRAPHIC, AUTH_APP_GRAPHIC, PASSWORD_GRAPHIC, PASSKEY_GRAPHIC, PAGE_HEADER_LOGO, PAGE_HEADER_BACKGROUND, PAGE_FOOTER_LOGO, PAGE_FOOTER_BACKGROUND, PAGE_BACKGROUND, FORM_BACKGROUND, FORM_LOGO, IDP_BUTTON_ICON
    #         color_mode: "LIGHT", # required, accepts LIGHT, DARK, DYNAMIC
    #         extension: "ICO", # required, accepts ICO, JPEG, PNG, SVG, WEBP
    #         bytes: "data",
    #         resource_id: "ResourceIdType",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_login_branding.managed_login_branding_id #=> String
    #   resp.managed_login_branding.user_pool_id #=> String
    #   resp.managed_login_branding.use_cognito_provided_values #=> Boolean
    #   resp.managed_login_branding.assets #=> Array
    #   resp.managed_login_branding.assets[0].category #=> String, one of "FAVICON_ICO", "FAVICON_SVG", "EMAIL_GRAPHIC", "SMS_GRAPHIC", "AUTH_APP_GRAPHIC", "PASSWORD_GRAPHIC", "PASSKEY_GRAPHIC", "PAGE_HEADER_LOGO", "PAGE_HEADER_BACKGROUND", "PAGE_FOOTER_LOGO", "PAGE_FOOTER_BACKGROUND", "PAGE_BACKGROUND", "FORM_BACKGROUND", "FORM_LOGO", "IDP_BUTTON_ICON"
    #   resp.managed_login_branding.assets[0].color_mode #=> String, one of "LIGHT", "DARK", "DYNAMIC"
    #   resp.managed_login_branding.assets[0].extension #=> String, one of "ICO", "JPEG", "PNG", "SVG", "WEBP"
    #   resp.managed_login_branding.assets[0].bytes #=> String
    #   resp.managed_login_branding.assets[0].resource_id #=> String
    #   resp.managed_login_branding.creation_date #=> Time
    #   resp.managed_login_branding.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateManagedLoginBranding AWS API Documentation
    #
    # @overload create_managed_login_branding(params = {})
    # @param [Hash] params ({})
    def create_managed_login_branding(params = {}, options = {})
      req = build_request(:create_managed_login_branding, params)
      req.send_request(options)
    end

    # Creates a new OAuth2.0 resource server and defines custom scopes
    # within it. Resource servers are associated with custom scopes and
    # machine-to-machine (M2M) authorization. For more information, see
    # [Access control with resource servers][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to create a resource server.
    #
    # @option params [required, String] :identifier
    #   A unique resource server identifier for the resource server. The
    #   identifier can be an API friendly name like `solar-system-data`. You
    #   can also set an API URL like
    #   `https://solar-system-data-api.example.com` as your identifier.
    #
    #   Amazon Cognito represents scopes in the access token in the format
    #   `$resource-server-identifier/$scope`. Longer scope-identifier strings
    #   increase the size of your access tokens.
    #
    # @option params [required, String] :name
    #   A friendly name for the resource server.
    #
    # @option params [Array<Types::ResourceServerScopeType>] :scopes
    #   A list of custom scopes. Each scope is a key-value map with the keys
    #   `ScopeName` and `ScopeDescription`. The name of a custom scope is a
    #   combination of `ScopeName` and the resource server `Name` in this
    #   request, for example `MyResourceServerName/MyScopeName`.
    #
    # @return [Types::CreateResourceServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResourceServerResponse#resource_server #resource_server} => Types::ResourceServerType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_server({
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #     name: "ResourceServerNameType", # required
    #     scopes: [
    #       {
    #         scope_name: "ResourceServerScopeNameType", # required
    #         scope_description: "ResourceServerScopeDescriptionType", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_server.user_pool_id #=> String
    #   resp.resource_server.identifier #=> String
    #   resp.resource_server.name #=> String
    #   resp.resource_server.scopes #=> Array
    #   resp.resource_server.scopes[0].scope_name #=> String
    #   resp.resource_server.scopes[0].scope_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateResourceServer AWS API Documentation
    #
    # @overload create_resource_server(params = {})
    # @param [Hash] params ({})
    def create_resource_server(params = {}, options = {})
      req = build_request(:create_resource_server, params)
      req.send_request(options)
    end

    # Creates a user import job. You can import users into user pools from a
    # comma-separated values (CSV) file without adding Amazon Cognito MAU
    # costs to your Amazon Web Services bill.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :job_name
    #   A friendly name for the user import job.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that you want to import users into.
    #
    # @option params [required, String] :cloud_watch_logs_role_arn
    #   You must specify an IAM role that has permission to log import-job
    #   results to Amazon CloudWatch Logs. This parameter is the ARN of that
    #   role.
    #
    # @return [Types::CreateUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_import_job({
    #     job_name: "UserImportJobNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     cloud_watch_logs_role_arn: "ArnType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserImportJob AWS API Documentation
    #
    # @overload create_user_import_job(params = {})
    # @param [Hash] params ({})
    def create_user_import_job(params = {}, options = {})
      req = build_request(:create_user_import_job, params)
      req.send_request(options)
    end

    # Creates a new Amazon Cognito user pool. This operation sets basic and
    # advanced configuration options.
    #
    # If you don't provide a value for an attribute, Amazon Cognito sets it
    # to its default value.
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][1]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][2] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][3]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][4]
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/pinpoint/home/
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :pool_name
    #   A friendly name for your user pool.
    #
    # @option params [Types::UserPoolPolicyType] :policies
    #   The password policy and sign-in policy in the user pool. The password
    #   policy sets options like password complexity requirements and password
    #   history. The sign-in policy sets the options available to applications
    #   in [choice-based authentication][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice
    #
    # @option params [String] :deletion_protection
    #   When active, `DeletionProtection` prevents accidental deletion of your
    #   user pool. Before you can delete a user pool that you have protected
    #   against deletion, you must deactivate this feature.
    #
    #   When you try to delete a protected user pool in a `DeleteUserPool` API
    #   request, Amazon Cognito returns an `InvalidParameterException` error.
    #   To delete a protected user pool, send a new `DeleteUserPool` request
    #   after you deactivate deletion protection in an `UpdateUserPool` API
    #   request.
    #
    # @option params [Types::LambdaConfigType] :lambda_config
    #   A collection of user pool Lambda triggers. Amazon Cognito invokes
    #   triggers at several possible stages of authentication operations.
    #   Triggers can modify the outcome of the operations that invoked them.
    #
    # @option params [Array<String>] :auto_verified_attributes
    #   The attributes that you want your user pool to automatically verify.
    #   For more information, see [Verifying contact information at
    #   sign-up][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#allowing-users-to-sign-up-and-confirm-themselves
    #
    # @option params [Array<String>] :alias_attributes
    #   Attributes supported as an alias for this user pool. For more
    #   information about alias attributes, see [Customizing sign-in
    #   attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases
    #
    # @option params [Array<String>] :username_attributes
    #   Specifies whether a user can use an email address or phone number as a
    #   username when they sign up. For more information, see [Customizing
    #   sign-in attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases
    #
    # @option params [String] :sms_verification_message
    #   This parameter is no longer used.
    #
    # @option params [String] :email_verification_message
    #   This parameter is no longer used.
    #
    # @option params [String] :email_verification_subject
    #   This parameter is no longer used.
    #
    # @option params [Types::VerificationMessageTemplateType] :verification_message_template
    #   The template for the verification message that your user pool delivers
    #   to users who set an email address or phone number attribute.
    #
    #   Set the email message type that corresponds to your
    #   `DefaultEmailOption` selection. For `CONFIRM_WITH_LINK`, specify an
    #   `EmailMessageByLink` and leave `EmailMessage` blank. For
    #   `CONFIRM_WITH_CODE`, specify an `EmailMessage` and leave
    #   `EmailMessageByLink` blank. When you supply both parameters with
    #   either choice, Amazon Cognito returns an error.
    #
    # @option params [String] :sms_authentication_message
    #   The contents of the SMS message that your user pool sends to users in
    #   SMS OTP and MFA authentication.
    #
    # @option params [String] :mfa_configuration
    #   Sets multi-factor authentication (MFA) to be on, off, or optional.
    #   When `ON`, all users must set up MFA before they can sign in. When
    #   `OPTIONAL`, your application must make a client-side determination of
    #   whether a user wants to register an MFA device. For user pools with
    #   adaptive authentication with threat protection, choose `OPTIONAL`.
    #
    #   When `MfaConfiguration` is `OPTIONAL`, managed login doesn't
    #   automatically prompt users to set up MFA. Amazon Cognito generates MFA
    #   prompts in API responses and in managed login for users who have
    #   chosen and configured a preferred MFA factor.
    #
    # @option params [Types::UserAttributeUpdateSettingsType] :user_attribute_update_settings
    #   The settings for updates to user attributes. These settings include
    #   the property `AttributesRequireVerificationBeforeUpdate`, a user-pool
    #   setting that tells Amazon Cognito how to handle changes to the value
    #   of your users' email address and phone number attributes. For more
    #   information, see [ Verifying updates to email addresses and phone
    #   numbers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates
    #
    # @option params [Types::DeviceConfigurationType] :device_configuration
    #   The device-remembering configuration for a user pool. Device
    #   remembering or device tracking is a "Remember me on this device"
    #   option for user pools that perform authentication with the device key
    #   of a trusted device in the back end, instead of a user-provided MFA
    #   code. For more information about device authentication, see [Working
    #   with user devices in your user pool][1]. A null value indicates that
    #   you have deactivated device remembering in your user pool.
    #
    #   <note markdown="1"> When you provide a value for any `DeviceConfiguration` field, you
    #   activate the Amazon Cognito device-remembering feature. For more
    #   information, see [Working with devices][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @option params [Types::EmailConfigurationType] :email_configuration
    #   The email configuration of your user pool. The email configuration
    #   type sets your preferred sending method, Amazon Web Services Region,
    #   and sender for messages from your user pool.
    #
    # @option params [Types::SmsConfigurationType] :sms_configuration
    #   The settings for your Amazon Cognito user pool to send SMS messages
    #   with Amazon Simple Notification Service. To send SMS messages with
    #   Amazon SNS in the Amazon Web Services Region that you want, the Amazon
    #   Cognito user pool uses an Identity and Access Management (IAM) role in
    #   your Amazon Web Services account. For more information see [SMS
    #   message settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [Hash<String,String>] :user_pool_tags
    #   The tag keys and values to assign to the user pool. A tag is a label
    #   that you can use to categorize and manage user pools in different
    #   ways, such as by purpose, owner, environment, or other criteria.
    #
    # @option params [Types::AdminCreateUserConfigType] :admin_create_user_config
    #   The configuration for administrative creation of users. Includes the
    #   template for the invitation message for new users, the duration of
    #   temporary passwords, and permitting self-service sign-up.
    #
    # @option params [Array<Types::SchemaAttributeType>] :schema
    #   An array of attributes for the new user pool. You can add custom
    #   attributes and modify the properties of default attributes. The
    #   specifications in this parameter set the required attributes in your
    #   user pool. For more information, see [Working with user
    #   attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html
    #
    # @option params [Types::UserPoolAddOnsType] :user_pool_add_ons
    #   Contains settings for activation of threat protection, including the
    #   operating mode and additional authentication types. To log user
    #   security information but take no action, set to `AUDIT`. To configure
    #   automatic security responses to potentially unwanted traffic to your
    #   user pool, set to `ENFORCED`.
    #
    #   For more information, see [Adding advanced security to a user
    #   pool][1]. To activate this setting, your user pool must be on the [
    #   Plus tier][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html
    #
    # @option params [Types::UsernameConfigurationType] :username_configuration
    #   Sets the case sensitivity option for sign-in usernames. When
    #   `CaseSensitive` is `false` (case insensitive), users can sign in with
    #   any combination of capital and lowercase letters. For example,
    #   `username`, `USERNAME`, or `UserName`, or for email,
    #   `email@example.com` or `EMaiL@eXamplE.Com`. For most use cases, set
    #   case sensitivity to `false` as a best practice. When usernames and
    #   email addresses are case insensitive, Amazon Cognito treats any
    #   variation in case as the same user, and prevents a case variation from
    #   being assigned to the same attribute for a different user.
    #
    #   When `CaseSensitive` is `true` (case sensitive), Amazon Cognito
    #   interprets `USERNAME` and `UserName` as distinct users.
    #
    #   This configuration is immutable after you set it.
    #
    # @option params [Types::AccountRecoverySettingType] :account_recovery_setting
    #   The available verified method a user can use to recover their password
    #   when they call `ForgotPassword`. You can use this setting to define a
    #   preferred method when a user has more than one method available. With
    #   this setting, SMS doesn't qualify for a valid password recovery
    #   mechanism if the user also has SMS multi-factor authentication (MFA)
    #   activated. Email MFA is also disqualifying for account recovery with
    #   email. In the absence of this setting, Amazon Cognito uses the legacy
    #   behavior to determine the recovery method where SMS is preferred over
    #   email.
    #
    #   As a best practice, configure both `verified_email` and
    #   `verified_phone_number`, with one having a higher priority than the
    #   other.
    #
    # @option params [String] :user_pool_tier
    #   The user pool [feature plan][1], or tier. This parameter determines
    #   the eligibility of the user pool for features like managed login,
    #   access-token customization, and threat protection. Defaults to
    #   `ESSENTIALS`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html
    #
    # @return [Types::CreateUserPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserPoolResponse#user_pool #user_pool} => Types::UserPoolType
    #
    #
    # @example Example: Example user pool with email and username sign-in
    #
    #   # The following example creates a user pool with all configurable properties set to an example value. The resulting user
    #   # pool allows sign-in with username or email address, has optional MFA, and has a Lambda function assigned to each
    #   # possible trigger.
    #
    #   resp = client.create_user_pool({
    #     account_recovery_setting: {
    #       recovery_mechanisms: [
    #         {
    #           name: "verified_email", 
    #           priority: 1, 
    #         }, 
    #       ], 
    #     }, 
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false, 
    #       invite_message_template: {
    #         email_message: "Your username is {username} and temporary password is {####}.", 
    #         email_subject: "Your sign-in information", 
    #         sms_message: "Your username is {username} and temporary password is {####}.", 
    #       }, 
    #     }, 
    #     alias_attributes: [
    #       "email", 
    #     ], 
    #     auto_verified_attributes: [
    #       "email", 
    #     ], 
    #     deletion_protection: "ACTIVE", 
    #     device_configuration: {
    #       challenge_required_on_new_device: true, 
    #       device_only_remembered_on_user_prompt: true, 
    #     }, 
    #     email_configuration: {
    #       configuration_set: "my-test-ses-configuration-set", 
    #       email_sending_account: "DEVELOPER", 
    #       from: "support@example.com", 
    #       reply_to_email_address: "support@example.com", 
    #       source_arn: "arn:aws:ses:us-east-1:123456789012:identity/support@example.com", 
    #     }, 
    #     email_verification_message: "Your verification code is {####}.", 
    #     email_verification_subject: "Verify your email address", 
    #     lambda_config: {
    #       custom_email_sender: {
    #         lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         lambda_version: "V1_0", 
    #       }, 
    #       custom_message: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       custom_sms_sender: {
    #         lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         lambda_version: "V1_0", 
    #       }, 
    #       define_auth_challenge: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/a6c4f8e2-0c45-47db-925f-87854bc9e357", 
    #       post_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       post_confirmation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       pre_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       pre_sign_up: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       pre_token_generation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       user_migration: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       verify_auth_challenge_response: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #     }, 
    #     mfa_configuration: "OPTIONAL", 
    #     policies: {
    #       password_policy: {
    #         minimum_length: 6, 
    #         require_lowercase: true, 
    #         require_numbers: true, 
    #         require_symbols: true, 
    #         require_uppercase: true, 
    #         temporary_password_validity_days: 7, 
    #       }, 
    #     }, 
    #     pool_name: "my-test-user-pool", 
    #     schema: [
    #       {
    #         attribute_data_type: "Number", 
    #         developer_only_attribute: true, 
    #         mutable: true, 
    #         name: "mydev", 
    #         number_attribute_constraints: {
    #           max_value: "99", 
    #           min_value: "1", 
    #         }, 
    #         required: false, 
    #         string_attribute_constraints: {
    #           max_length: "99", 
    #           min_length: "1", 
    #         }, 
    #       }, 
    #     ], 
    #     sms_authentication_message: "Your verification code is {####}.", 
    #     sms_configuration: {
    #       external_id: "my-role-external-id", 
    #       sns_caller_arn: "arn:aws:iam::123456789012:role/service-role/test-cognito-SMS-Role", 
    #     }, 
    #     sms_verification_message: "Your verification code is {####}.", 
    #     user_attribute_update_settings: {
    #       attributes_require_verification_before_update: [
    #         "email", 
    #       ], 
    #     }, 
    #     user_pool_add_ons: {
    #       advanced_security_mode: "OFF", 
    #     }, 
    #     user_pool_tags: {
    #       "my-test-tag-key" => "my-test-tag-key", 
    #     }, 
    #     username_configuration: {
    #       case_sensitive: true, 
    #     }, 
    #     verification_message_template: {
    #       default_email_option: "CONFIRM_WITH_CODE", 
    #       email_message: "Your confirmation code is {####}", 
    #       email_message_by_link: "Choose this link to {##verify your email##}", 
    #       email_subject: "Here is your confirmation code", 
    #       email_subject_by_link: "Here is your confirmation link", 
    #       sms_message: "Your confirmation code is {####}", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     user_pool: {
    #       account_recovery_setting: {
    #         recovery_mechanisms: [
    #           {
    #             name: "verified_email", 
    #             priority: 1, 
    #           }, 
    #         ], 
    #       }, 
    #       admin_create_user_config: {
    #         allow_admin_create_user_only: false, 
    #         invite_message_template: {
    #           email_message: "Your username is {username} and temporary password is {####}.", 
    #           email_subject: "Your sign-in information", 
    #           sms_message: "Your username is {username} and temporary password is {####}.", 
    #         }, 
    #         unused_account_validity_days: 7, 
    #       }, 
    #       alias_attributes: [
    #         "email", 
    #       ], 
    #       arn: "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_EXAMPLE", 
    #       auto_verified_attributes: [
    #         "email", 
    #       ], 
    #       creation_date: Time.parse(1689721665.239), 
    #       deletion_protection: "ACTIVE", 
    #       device_configuration: {
    #         challenge_required_on_new_device: true, 
    #         device_only_remembered_on_user_prompt: true, 
    #       }, 
    #       email_configuration: {
    #         configuration_set: "my-test-ses-configuration-set", 
    #         email_sending_account: "DEVELOPER", 
    #         from: "support@example.com", 
    #         reply_to_email_address: "support@example.com", 
    #         source_arn: "arn:aws:ses:us-east-1:123456789012:identity/support@example.com", 
    #       }, 
    #       email_verification_message: "Your verification code is {####}.", 
    #       email_verification_subject: "Verify your email address", 
    #       estimated_number_of_users: 0, 
    #       id: "us-east-1_EXAMPLE", 
    #       lambda_config: {
    #         custom_email_sender: {
    #           lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #           lambda_version: "V1_0", 
    #         }, 
    #         custom_message: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         custom_sms_sender: {
    #           lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #           lambda_version: "V1_0", 
    #         }, 
    #         define_auth_challenge: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         kms_key_id: "arn:aws:kms:us-east-1:767671399759:key/4d43904c-8edf-4bb4-9fca-fb1a80e41cbe", 
    #         post_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         post_confirmation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         pre_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         pre_sign_up: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         pre_token_generation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         user_migration: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #         verify_auth_challenge_response: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction", 
    #       }, 
    #       last_modified_date: Time.parse(1689721665.239), 
    #       mfa_configuration: "OPTIONAL", 
    #       name: "my-test-user-pool", 
    #       policies: {
    #         password_policy: {
    #           minimum_length: 6, 
    #           require_lowercase: true, 
    #           require_numbers: true, 
    #           require_symbols: true, 
    #           require_uppercase: true, 
    #           temporary_password_validity_days: 7, 
    #         }, 
    #       }, 
    #       schema_attributes: [
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: false, 
    #           name: "sub", 
    #           required: true, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "1", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "name", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "given_name", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "family_name", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "middle_name", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "nickname", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "preferred_username", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "profile", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "picture", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "website", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "email", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "Boolean", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "email_verified", 
    #           required: false, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "gender", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "birthdate", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "10", 
    #             min_length: "10", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "zoneinfo", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "locale", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "phone_number", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "Boolean", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "phone_number_verifie", 
    #           required: false, 
    #         }, 
    #         {
    #           attribute_data_type: "String", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "address", 
    #           required: false, 
    #           string_attribute_constraints: {
    #             max_length: "2048", 
    #             min_length: "0", 
    #           }, 
    #         }, 
    #         {
    #           attribute_data_type: "Number", 
    #           developer_only_attribute: false, 
    #           mutable: true, 
    #           name: "updated_at", 
    #           number_attribute_constraints: {
    #             min_value: "0", 
    #           }, 
    #           required: false, 
    #         }, 
    #         {
    #           attribute_data_type: "Number", 
    #           developer_only_attribute: true, 
    #           mutable: true, 
    #           name: "dev:custom:mydev", 
    #           number_attribute_constraints: {
    #             max_value: "99", 
    #             min_value: "1", 
    #           }, 
    #           required: false, 
    #         }, 
    #       ], 
    #       sms_authentication_message: "Your verification code is {####}.", 
    #       sms_configuration: {
    #         external_id: "my-role-external-id", 
    #         sns_caller_arn: "arn:aws:iam::123456789012:role/service-role/test-cognito-SMS-Role", 
    #         sns_region: "us-east-1", 
    #       }, 
    #       sms_verification_message: "Your verification code is {####}.", 
    #       user_attribute_update_settings: {
    #         attributes_require_verification_before_update: [
    #           "email", 
    #         ], 
    #       }, 
    #       user_pool_add_ons: {
    #         advanced_security_mode: "OFF", 
    #       }, 
    #       user_pool_tags: {
    #         "my-test-tag-key" => "my-test-tag-value", 
    #       }, 
    #       username_configuration: {
    #         case_sensitive: true, 
    #       }, 
    #       verification_message_template: {
    #         default_email_option: "CONFIRM_WITH_CODE", 
    #         email_message: "Your confirmation code is {####}", 
    #         email_message_by_link: "Choose this link to {##verify your email##}", 
    #         email_subject: "Here is your confirmation code", 
    #         email_subject_by_link: "Here is your confirmation link", 
    #         sms_message: "Your confirmation code is {####}", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_pool({
    #     pool_name: "UserPoolNameType", # required
    #     policies: {
    #       password_policy: {
    #         minimum_length: 1,
    #         require_uppercase: false,
    #         require_lowercase: false,
    #         require_numbers: false,
    #         require_symbols: false,
    #         password_history_size: 1,
    #         temporary_password_validity_days: 1,
    #       },
    #       sign_in_policy: {
    #         allowed_first_auth_factors: ["PASSWORD"], # accepts PASSWORD, EMAIL_OTP, SMS_OTP, WEB_AUTHN
    #       },
    #     },
    #     deletion_protection: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     lambda_config: {
    #       pre_sign_up: "ArnType",
    #       custom_message: "ArnType",
    #       post_confirmation: "ArnType",
    #       pre_authentication: "ArnType",
    #       post_authentication: "ArnType",
    #       define_auth_challenge: "ArnType",
    #       create_auth_challenge: "ArnType",
    #       verify_auth_challenge_response: "ArnType",
    #       pre_token_generation: "ArnType",
    #       user_migration: "ArnType",
    #       pre_token_generation_config: {
    #         lambda_version: "V1_0", # required, accepts V1_0, V2_0, V3_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_sms_sender: {
    #         lambda_version: "V1_0", # required, accepts V1_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_email_sender: {
    #         lambda_version: "V1_0", # required, accepts V1_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       kms_key_id: "ArnType",
    #     },
    #     auto_verified_attributes: ["phone_number"], # accepts phone_number, email
    #     alias_attributes: ["phone_number"], # accepts phone_number, email, preferred_username
    #     username_attributes: ["phone_number"], # accepts phone_number, email
    #     sms_verification_message: "SmsVerificationMessageType",
    #     email_verification_message: "EmailVerificationMessageType",
    #     email_verification_subject: "EmailVerificationSubjectType",
    #     verification_message_template: {
    #       sms_message: "SmsVerificationMessageType",
    #       email_message: "EmailVerificationMessageType",
    #       email_subject: "EmailVerificationSubjectType",
    #       email_message_by_link: "EmailVerificationMessageByLinkType",
    #       email_subject_by_link: "EmailVerificationSubjectByLinkType",
    #       default_email_option: "CONFIRM_WITH_LINK", # accepts CONFIRM_WITH_LINK, CONFIRM_WITH_CODE
    #     },
    #     sms_authentication_message: "SmsVerificationMessageType",
    #     mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
    #     user_attribute_update_settings: {
    #       attributes_require_verification_before_update: ["phone_number"], # accepts phone_number, email
    #     },
    #     device_configuration: {
    #       challenge_required_on_new_device: false,
    #       device_only_remembered_on_user_prompt: false,
    #     },
    #     email_configuration: {
    #       source_arn: "ArnType",
    #       reply_to_email_address: "EmailAddressType",
    #       email_sending_account: "COGNITO_DEFAULT", # accepts COGNITO_DEFAULT, DEVELOPER
    #       from: "StringType",
    #       configuration_set: "SESConfigurationSet",
    #     },
    #     sms_configuration: {
    #       sns_caller_arn: "ArnType", # required
    #       external_id: "StringType",
    #       sns_region: "RegionCodeType",
    #     },
    #     user_pool_tags: {
    #       "TagKeysType" => "TagValueType",
    #     },
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false,
    #       unused_account_validity_days: 1,
    #       invite_message_template: {
    #         sms_message: "SmsInviteMessageType",
    #         email_message: "EmailInviteMessageType",
    #         email_subject: "EmailVerificationSubjectType",
    #       },
    #     },
    #     schema: [
    #       {
    #         name: "CustomAttributeNameType",
    #         attribute_data_type: "String", # accepts String, Number, DateTime, Boolean
    #         developer_only_attribute: false,
    #         mutable: false,
    #         required: false,
    #         number_attribute_constraints: {
    #           min_value: "StringType",
    #           max_value: "StringType",
    #         },
    #         string_attribute_constraints: {
    #           min_length: "StringType",
    #           max_length: "StringType",
    #         },
    #       },
    #     ],
    #     user_pool_add_ons: {
    #       advanced_security_mode: "OFF", # required, accepts OFF, AUDIT, ENFORCED
    #       advanced_security_additional_flows: {
    #         custom_auth_mode: "AUDIT", # accepts AUDIT, ENFORCED
    #       },
    #     },
    #     username_configuration: {
    #       case_sensitive: false, # required
    #     },
    #     account_recovery_setting: {
    #       recovery_mechanisms: [
    #         {
    #           priority: 1, # required
    #           name: "verified_email", # required, accepts verified_email, verified_phone_number, admin_only
    #         },
    #       ],
    #     },
    #     user_pool_tier: "LITE", # accepts LITE, ESSENTIALS, PLUS
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool.id #=> String
    #   resp.user_pool.name #=> String
    #   resp.user_pool.policies.password_policy.minimum_length #=> Integer
    #   resp.user_pool.policies.password_policy.require_uppercase #=> Boolean
    #   resp.user_pool.policies.password_policy.require_lowercase #=> Boolean
    #   resp.user_pool.policies.password_policy.require_numbers #=> Boolean
    #   resp.user_pool.policies.password_policy.require_symbols #=> Boolean
    #   resp.user_pool.policies.password_policy.password_history_size #=> Integer
    #   resp.user_pool.policies.password_policy.temporary_password_validity_days #=> Integer
    #   resp.user_pool.policies.sign_in_policy.allowed_first_auth_factors #=> Array
    #   resp.user_pool.policies.sign_in_policy.allowed_first_auth_factors[0] #=> String, one of "PASSWORD", "EMAIL_OTP", "SMS_OTP", "WEB_AUTHN"
    #   resp.user_pool.deletion_protection #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.user_pool.lambda_config.pre_sign_up #=> String
    #   resp.user_pool.lambda_config.custom_message #=> String
    #   resp.user_pool.lambda_config.post_confirmation #=> String
    #   resp.user_pool.lambda_config.pre_authentication #=> String
    #   resp.user_pool.lambda_config.post_authentication #=> String
    #   resp.user_pool.lambda_config.define_auth_challenge #=> String
    #   resp.user_pool.lambda_config.create_auth_challenge #=> String
    #   resp.user_pool.lambda_config.verify_auth_challenge_response #=> String
    #   resp.user_pool.lambda_config.pre_token_generation #=> String
    #   resp.user_pool.lambda_config.user_migration #=> String
    #   resp.user_pool.lambda_config.pre_token_generation_config.lambda_version #=> String, one of "V1_0", "V2_0", "V3_0"
    #   resp.user_pool.lambda_config.pre_token_generation_config.lambda_arn #=> String
    #   resp.user_pool.lambda_config.custom_sms_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pool.lambda_config.custom_sms_sender.lambda_arn #=> String
    #   resp.user_pool.lambda_config.custom_email_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pool.lambda_config.custom_email_sender.lambda_arn #=> String
    #   resp.user_pool.lambda_config.kms_key_id #=> String
    #   resp.user_pool.status #=> String, one of "Enabled", "Disabled"
    #   resp.user_pool.last_modified_date #=> Time
    #   resp.user_pool.creation_date #=> Time
    #   resp.user_pool.schema_attributes #=> Array
    #   resp.user_pool.schema_attributes[0].name #=> String
    #   resp.user_pool.schema_attributes[0].attribute_data_type #=> String, one of "String", "Number", "DateTime", "Boolean"
    #   resp.user_pool.schema_attributes[0].developer_only_attribute #=> Boolean
    #   resp.user_pool.schema_attributes[0].mutable #=> Boolean
    #   resp.user_pool.schema_attributes[0].required #=> Boolean
    #   resp.user_pool.schema_attributes[0].number_attribute_constraints.min_value #=> String
    #   resp.user_pool.schema_attributes[0].number_attribute_constraints.max_value #=> String
    #   resp.user_pool.schema_attributes[0].string_attribute_constraints.min_length #=> String
    #   resp.user_pool.schema_attributes[0].string_attribute_constraints.max_length #=> String
    #   resp.user_pool.auto_verified_attributes #=> Array
    #   resp.user_pool.auto_verified_attributes[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.alias_attributes #=> Array
    #   resp.user_pool.alias_attributes[0] #=> String, one of "phone_number", "email", "preferred_username"
    #   resp.user_pool.username_attributes #=> Array
    #   resp.user_pool.username_attributes[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.sms_verification_message #=> String
    #   resp.user_pool.email_verification_message #=> String
    #   resp.user_pool.email_verification_subject #=> String
    #   resp.user_pool.verification_message_template.sms_message #=> String
    #   resp.user_pool.verification_message_template.email_message #=> String
    #   resp.user_pool.verification_message_template.email_subject #=> String
    #   resp.user_pool.verification_message_template.email_message_by_link #=> String
    #   resp.user_pool.verification_message_template.email_subject_by_link #=> String
    #   resp.user_pool.verification_message_template.default_email_option #=> String, one of "CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"
    #   resp.user_pool.sms_authentication_message #=> String
    #   resp.user_pool.user_attribute_update_settings.attributes_require_verification_before_update #=> Array
    #   resp.user_pool.user_attribute_update_settings.attributes_require_verification_before_update[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.mfa_configuration #=> String, one of "OFF", "ON", "OPTIONAL"
    #   resp.user_pool.device_configuration.challenge_required_on_new_device #=> Boolean
    #   resp.user_pool.device_configuration.device_only_remembered_on_user_prompt #=> Boolean
    #   resp.user_pool.estimated_number_of_users #=> Integer
    #   resp.user_pool.email_configuration.source_arn #=> String
    #   resp.user_pool.email_configuration.reply_to_email_address #=> String
    #   resp.user_pool.email_configuration.email_sending_account #=> String, one of "COGNITO_DEFAULT", "DEVELOPER"
    #   resp.user_pool.email_configuration.from #=> String
    #   resp.user_pool.email_configuration.configuration_set #=> String
    #   resp.user_pool.sms_configuration.sns_caller_arn #=> String
    #   resp.user_pool.sms_configuration.external_id #=> String
    #   resp.user_pool.sms_configuration.sns_region #=> String
    #   resp.user_pool.user_pool_tags #=> Hash
    #   resp.user_pool.user_pool_tags["TagKeysType"] #=> String
    #   resp.user_pool.sms_configuration_failure #=> String
    #   resp.user_pool.email_configuration_failure #=> String
    #   resp.user_pool.domain #=> String
    #   resp.user_pool.custom_domain #=> String
    #   resp.user_pool.admin_create_user_config.allow_admin_create_user_only #=> Boolean
    #   resp.user_pool.admin_create_user_config.unused_account_validity_days #=> Integer
    #   resp.user_pool.admin_create_user_config.invite_message_template.sms_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_subject #=> String
    #   resp.user_pool.user_pool_add_ons.advanced_security_mode #=> String, one of "OFF", "AUDIT", "ENFORCED"
    #   resp.user_pool.user_pool_add_ons.advanced_security_additional_flows.custom_auth_mode #=> String, one of "AUDIT", "ENFORCED"
    #   resp.user_pool.username_configuration.case_sensitive #=> Boolean
    #   resp.user_pool.arn #=> String
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms #=> Array
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms[0].priority #=> Integer
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms[0].name #=> String, one of "verified_email", "verified_phone_number", "admin_only"
    #   resp.user_pool.user_pool_tier #=> String, one of "LITE", "ESSENTIALS", "PLUS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPool AWS API Documentation
    #
    # @overload create_user_pool(params = {})
    # @param [Hash] params ({})
    def create_user_pool(params = {}, options = {})
      req = build_request(:create_user_pool, params)
      req.send_request(options)
    end

    # Creates an app client in a user pool. This operation sets basic and
    # advanced configuration options.
    #
    # Unlike app clients created in the console, Amazon Cognito doesn't
    # automatically assign a branding style to app clients that you
    # configure with this API operation. Managed login and classic hosted UI
    # pages aren't available for your client until after you apply a
    # branding style.
    #
    # If you don't provide a value for an attribute, Amazon Cognito sets it
    # to its default value.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to create an app client.
    #
    # @option params [required, String] :client_name
    #   A friendly name for the app client that you want to create.
    #
    # @option params [Boolean] :generate_secret
    #   When `true`, generates a client secret for the app client. Client
    #   secrets are used with server-side and machine-to-machine applications.
    #   Client secrets are automatically generated; you can't specify a
    #   secret value. For more information, see [App client types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html#user-pool-settings-client-app-client-types
    #
    # @option params [Integer] :refresh_token_validity
    #   The refresh token time limit. After this limit expires, your user
    #   can't use their refresh token. To specify the time unit for
    #   `RefreshTokenValidity` as `seconds`, `minutes`, `hours`, or `days`,
    #   set a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `RefreshTokenValidity` as `10` and
    #   `TokenValidityUnits` as `days`, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.
    #
    #   The default time unit for `RefreshTokenValidity` in an API request is
    #   days. You can't set `RefreshTokenValidity` to 0. If you do, Amazon
    #   Cognito overrides the value with the default value of 30 days. *Valid
    #   range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your refresh tokens are valid for 30 days.
    #
    # @option params [Integer] :access_token_validity
    #   The access token time limit. After this limit expires, your user
    #   can't use their access token. To specify the time unit for
    #   `AccessTokenValidity` as `seconds`, `minutes`, `hours`, or `days`, set
    #   a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `AccessTokenValidity` to `10` and
    #   `TokenValidityUnits` to `hours`, your user can authorize access with
    #   their access token for 10 hours.
    #
    #   The default time unit for `AccessTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your access tokens are valid for one hour.
    #
    # @option params [Integer] :id_token_validity
    #   The ID token time limit. After this limit expires, your user can't
    #   use their ID token. To specify the time unit for `IdTokenValidity` as
    #   `seconds`, `minutes`, `hours`, or `days`, set a `TokenValidityUnits`
    #   value in your API request.
    #
    #   For example, when you set `IdTokenValidity` as `10` and
    #   `TokenValidityUnits` as `hours`, your user can authenticate their
    #   session with their ID token for 10 hours.
    #
    #   The default time unit for `IdTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your ID tokens are valid for one hour.
    #
    # @option params [Types::TokenValidityUnitsType] :token_validity_units
    #   The units that validity times are represented in. The default unit for
    #   refresh tokens is days, and the default for ID and access tokens are
    #   hours.
    #
    # @option params [Array<String>] :read_attributes
    #   The list of user attributes that you want your app client to have read
    #   access to. After your user authenticates in your app, their access
    #   token authorizes them to read their own attribute value for any
    #   attribute in this list.
    #
    #   When you don't specify the `ReadAttributes` for your app client, your
    #   app can read the values of `email_verified`, `phone_number_verified`,
    #   and the standard attributes of your user pool. When your user pool app
    #   client has read access to these default attributes, `ReadAttributes`
    #   doesn't return any information. Amazon Cognito only populates
    #   `ReadAttributes` in the API response if you have specified your own
    #   custom set of read attributes.
    #
    # @option params [Array<String>] :write_attributes
    #   The list of user attributes that you want your app client to have
    #   write access to. After your user authenticates in your app, their
    #   access token authorizes them to set or modify their own attribute
    #   value for any attribute in this list.
    #
    #   When you don't specify the `WriteAttributes` for your app client,
    #   your app can write the values of the Standard attributes of your user
    #   pool. When your user pool has write access to these default
    #   attributes, `WriteAttributes` doesn't return any information. Amazon
    #   Cognito only populates `WriteAttributes` in the API response if you
    #   have specified your own custom set of write attributes.
    #
    #   If your app client allows users to sign in through an IdP, this array
    #   must include all attributes that you have mapped to IdP attributes.
    #   Amazon Cognito updates mapped attributes when users sign in to your
    #   application through an IdP. If your app client does not have write
    #   access to a mapped attribute, Amazon Cognito throws an error when it
    #   tries to update the attribute. For more information, see [Specifying
    #   IdP Attribute Mappings for Your user pool][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html
    #
    # @option params [Array<String>] :explicit_auth_flows
    #   The [authentication flows][1] that you want your user pool client to
    #   support. For each app client in your user pool, you can sign in your
    #   users with any combination of one or more flows, including with a user
    #   name and Secure Remote Password (SRP), a user name and password, or a
    #   custom authentication process that you define with Lambda functions.
    #
    #   <note markdown="1"> If you don't specify a value for `ExplicitAuthFlows`, your app client
    #   supports `ALLOW_REFRESH_TOKEN_AUTH`, `ALLOW_USER_SRP_AUTH`, and
    #   `ALLOW_CUSTOM_AUTH`.
    #
    #    </note>
    #
    #   The values for authentication flow options include the following.
    #
    #   * `ALLOW_USER_AUTH`: Enable selection-based sign-in with `USER_AUTH`.
    #     This setting covers username-password, secure remote password (SRP),
    #     passwordless, and passkey authentication. This authentiation flow
    #     can do username-password and SRP authentication without other
    #     `ExplicitAuthFlows` permitting them. For example users can complete
    #     an SRP challenge through `USER_AUTH` without the flow
    #     `USER_SRP_AUTH` being active for the app client. This flow doesn't
    #     include `CUSTOM_AUTH`.
    #
    #     To activate this setting, your user pool must be in the [ Essentials
    #     tier][2] or higher.
    #
    #   * `ALLOW_ADMIN_USER_PASSWORD_AUTH`: Enable admin based user password
    #     authentication flow `ADMIN_USER_PASSWORD_AUTH`. This setting
    #     replaces the `ADMIN_NO_SRP_AUTH` setting. With this authentication
    #     flow, your app passes a user name and password to Amazon Cognito in
    #     the request, instead of using the Secure Remote Password (SRP)
    #     protocol to securely transmit the password.
    #
    #   * `ALLOW_CUSTOM_AUTH`: Enable Lambda trigger based authentication.
    #
    #   * `ALLOW_USER_PASSWORD_AUTH`: Enable user password-based
    #     authentication. In this flow, Amazon Cognito receives the password
    #     in the request instead of using the SRP protocol to verify
    #     passwords.
    #
    #   * `ALLOW_USER_SRP_AUTH`: Enable SRP-based authentication.
    #
    #   * `ALLOW_REFRESH_TOKEN_AUTH`: Enable authflow to refresh tokens.
    #
    #   In some environments, you will see the values `ADMIN_NO_SRP_AUTH`,
    #   `CUSTOM_AUTH_FLOW_ONLY`, or `USER_PASSWORD_AUTH`. You can't assign
    #   these legacy `ExplicitAuthFlows` values to user pool clients at the
    #   same time as values that begin with `ALLOW_`, like
    #   `ALLOW_USER_SRP_AUTH`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #
    # @option params [Array<String>] :supported_identity_providers
    #   A list of provider names for the identity providers (IdPs) that are
    #   supported on this client. The following are supported: `COGNITO`,
    #   `Facebook`, `Google`, `SignInWithApple`, and `LoginWithAmazon`. You
    #   can also specify the names that you configured for the SAML and OIDC
    #   IdPs in your user pool, for example `MySAMLIdP` or `MyOIDCIdP`.
    #
    #   This parameter sets the IdPs that [managed login][1] will display on
    #   the login page for your app client. The removal of `COGNITO` from this
    #   list doesn't prevent authentication operations for local users with
    #   the user pools API in an Amazon Web Services SDK. The only way to
    #   prevent SDK-based authentication is to block access with a [WAF
    #   rule][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html
    #
    # @option params [Array<String>] :callback_urls
    #   A list of allowed redirect, or callback, URLs for managed login
    #   authentication. These URLs are the paths where you want to send your
    #   users' browsers after they complete authentication with managed login
    #   or a third-party IdP. Typically, callback URLs are the home of an
    #   application that uses OAuth or OIDC libraries to process
    #   authentication outcomes.
    #
    #   A redirect URI must meet the following requirements:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server. Amazon Cognito doesn't
    #     accept authorization requests with `redirect_uri` values that
    #     aren't in the list of `CallbackURLs` that you provide in this
    #     parameter.
    #
    #   * Not include a fragment component.
    #
    #   See [OAuth 2.0 - Redirection Endpoint][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for http://localhost
    #   for testing purposes only.
    #
    #   App callback URLs such as myapp://example are also supported.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6749#section-3.1.2
    #
    # @option params [Array<String>] :logout_urls
    #   A list of allowed logout URLs for managed login authentication. When
    #   you pass `logout_uri` and `client_id` parameters to `/logout`, Amazon
    #   Cognito signs out your user and redirects them to the logout URL. This
    #   parameter describes the URLs that you want to be the permitted targets
    #   of `logout_uri`. A typical use of these URLs is when a user selects
    #   "Sign out" and you redirect them to your public homepage. For more
    #   information, see [Logout endpoint][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html
    #
    # @option params [String] :default_redirect_uri
    #   The default redirect URI. In app clients with one assigned IdP,
    #   replaces `redirect_uri` in authentication requests. Must be in the
    #   `CallbackURLs` list.
    #
    # @option params [Array<String>] :allowed_o_auth_flows
    #   The OAuth grant types that you want your app client to generate for
    #   clients in managed login authentication. To create an app client that
    #   generates client credentials grants, you must add `client_credentials`
    #   as the only allowed OAuth flow.
    #
    #   code
    #
    #   : Use a code grant flow, which provides an authorization code as the
    #     response. This code can be exchanged for access tokens with the
    #     `/oauth2/token` endpoint.
    #
    #   implicit
    #
    #   : Issue the access token, and the ID token when scopes like `openid`
    #     and `profile` are requested, directly to your user.
    #
    #   client\_credentials
    #
    #   : Issue the access token from the `/oauth2/token` endpoint directly to
    #     a non-person user, authorized by a combination of the client ID and
    #     client secret.
    #
    # @option params [Array<String>] :allowed_o_auth_scopes
    #   The OAuth, OpenID Connect (OIDC), and custom scopes that you want to
    #   permit your app client to authorize access with. Scopes govern access
    #   control to user pool self-service API operations, user data from the
    #   `userInfo` endpoint, and third-party APIs. Scope values include
    #   `phone`, `email`, `openid`, and `profile`. The
    #   `aws.cognito.signin.user.admin` scope authorizes user self-service
    #   operations. Custom scopes with resource servers authorize access to
    #   external APIs.
    #
    # @option params [Boolean] :allowed_o_auth_flows_user_pool_client
    #   Set to `true` to use OAuth 2.0 authorization server features in your
    #   app client.
    #
    #   This parameter must have a value of `true` before you can configure
    #   the following features in your app client.
    #
    #   * `CallBackURLs`: Callback URLs.
    #
    #   * `LogoutURLs`: Sign-out redirect URLs.
    #
    #   * `AllowedOAuthScopes`: OAuth 2.0 scopes.
    #
    #   * `AllowedOAuthFlows`: Support for authorization code, implicit, and
    #     client credentials OAuth 2.0 grants.
    #
    #   To use authorization server features, configure one of these features
    #   in the Amazon Cognito console or set `AllowedOAuthFlowsUserPoolClient`
    #   to `true` in a `CreateUserPoolClient` or `UpdateUserPoolClient` API
    #   request. If you don't set a value for
    #   `AllowedOAuthFlowsUserPoolClient` in a request with the CLI or SDKs,
    #   it defaults to `false`. When `false`, only SDK-based API sign-in is
    #   permitted.
    #
    # @option params [Types::AnalyticsConfigurationType] :analytics_configuration
    #   The user pool analytics configuration for collecting metrics and
    #   sending them to your Amazon Pinpoint campaign.
    #
    #   In Amazon Web Services Regions where Amazon Pinpoint isn't available,
    #   user pools might not have access to analytics or might be configurable
    #   with campaigns in the US East (N. Virginia) Region. For more
    #   information, see [Using Amazon Pinpoint analytics][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html
    #
    # @option params [String] :prevent_user_existence_errors
    #   When `ENABLED`, suppresses messages that might indicate a valid user
    #   exists when someone attempts sign-in. This parameters sets your
    #   preference for the errors and responses that you want Amazon Cognito
    #   APIs to return during authentication, account confirmation, and
    #   password recovery when the user doesn't exist in the user pool. When
    #   set to `ENABLED` and the user doesn't exist, authentication returns
    #   an error indicating either the username or password was incorrect.
    #   Account confirmation and password recovery return a response
    #   indicating a code was sent to a simulated destination. When set to
    #   `LEGACY`, those APIs return a `UserNotFoundException` exception if the
    #   user doesn't exist in the user pool.
    #
    #   Defaults to `LEGACY`.
    #
    # @option params [Boolean] :enable_token_revocation
    #   Activates or deactivates [token revocation][1] in the target app
    #   client.
    #
    #   If you don't include this parameter, token revocation is
    #   automatically activated for the new user pool client.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/token-revocation.html
    #
    # @option params [Boolean] :enable_propagate_additional_user_context_data
    #   When `true`, your application can include additional `UserContextData`
    #   in authentication requests. This data includes the IP address, and
    #   contributes to analysis by threat protection features. For more
    #   information about propagation of user context data, see [Adding
    #   session data to API requests][1]. If you don’t include this parameter,
    #   you can't send the source IP address to Amazon Cognito threat
    #   protection features. You can only activate
    #   `EnablePropagateAdditionalUserContextData` in an app client that has a
    #   client secret.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint
    #
    # @option params [Integer] :auth_session_validity
    #   Amazon Cognito creates a session token for each API request in an
    #   authentication flow. `AuthSessionValidity` is the duration, in
    #   minutes, of that session token. Your user pool native user must
    #   respond to each authentication challenge before the session expires.
    #
    # @option params [Types::RefreshTokenRotationType] :refresh_token_rotation
    #   The configuration of your app client for refresh token rotation. When
    #   enabled, your app client issues new ID, access, and refresh tokens
    #   when users renew their sessions with refresh tokens. When disabled,
    #   token refresh issues only ID and access tokens.
    #
    # @return [Types::CreateUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserPoolClientResponse#user_pool_client #user_pool_client} => Types::UserPoolClientType
    #
    #
    # @example Example: Example user pool app client with email and username sign-in
    #
    #   # The following example creates an app client with all configurable properties set to an example value. The resulting user
    #   # pool client connects to an analytics client, allows sign-in with username and password, and has two external identity
    #   # providers associated with it.
    #
    #   resp = client.create_user_pool_client({
    #     access_token_validity: 6, 
    #     allowed_o_auth_flows: [
    #       "code", 
    #     ], 
    #     allowed_o_auth_flows_user_pool_client: true, 
    #     allowed_o_auth_scopes: [
    #       "aws.cognito.signin.user.admin", 
    #       "openid", 
    #     ], 
    #     analytics_configuration: {
    #       application_id: "d70b2ba36a8c4dc5a04a0451a31a1e12", 
    #       external_id: "my-external-id", 
    #       role_arn: "arn:aws:iam::123456789012:role/test-cognitouserpool-role", 
    #       user_data_shared: true, 
    #     }, 
    #     callback_urls: [
    #       "https://example.com", 
    #       "http://localhost", 
    #       "myapp://example", 
    #     ], 
    #     client_name: "my-test-app-client", 
    #     default_redirect_uri: "https://example.com", 
    #     explicit_auth_flows: [
    #       "ALLOW_ADMIN_USER_PASSWORD_AUTH", 
    #       "ALLOW_USER_PASSWORD_AUTH", 
    #       "ALLOW_REFRESH_TOKEN_AUTH", 
    #     ], 
    #     generate_secret: true, 
    #     id_token_validity: 6, 
    #     logout_urls: [
    #       "https://example.com/logout", 
    #     ], 
    #     prevent_user_existence_errors: "ENABLED", 
    #     read_attributes: [
    #       "email", 
    #       "address", 
    #       "preferred_username", 
    #     ], 
    #     refresh_token_validity: 6, 
    #     supported_identity_providers: [
    #       "SignInWithApple", 
    #       "MySSO", 
    #     ], 
    #     token_validity_units: {
    #       access_token: "hours", 
    #       id_token: "minutes", 
    #       refresh_token: "days", 
    #     }, 
    #     user_pool_id: "us-east-1_EXAMPLE", 
    #     write_attributes: [
    #       "family_name", 
    #       "email", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     user_pool_client: {
    #       access_token_validity: 6, 
    #       allowed_o_auth_flows: [
    #         "code", 
    #       ], 
    #       allowed_o_auth_flows_user_pool_client: true, 
    #       allowed_o_auth_scopes: [
    #         "aws.cognito.signin.user.admin", 
    #         "openid", 
    #       ], 
    #       analytics_configuration: {
    #         application_id: "d70b2ba36a8c4dc5a04a0451a31a1e12", 
    #         external_id: "my-external-id", 
    #         role_arn: "arn:aws:iam::123456789012:role/test-cognitouserpool-role", 
    #         user_data_shared: true, 
    #       }, 
    #       auth_session_validity: 3, 
    #       callback_urls: [
    #         "https://example.com", 
    #         "http://localhost", 
    #         "myapp://example", 
    #       ], 
    #       client_id: "26cb2c60kq7nbmas7rbme9b6pp", 
    #       client_name: "my-test-app-client", 
    #       client_secret: "13ka4h7u28d9oo44tqpq9djqsfvhvu8rk4d2ighvpu0k8fj1c2r9", 
    #       creation_date: Time.parse(1689885426.107), 
    #       default_redirect_uri: "https://example.com", 
    #       enable_propagate_additional_user_context_data: false, 
    #       enable_token_revocation: true, 
    #       explicit_auth_flows: [
    #         "ALLOW_USER_PASSWORD_AUTH", 
    #         "ALLOW_ADMIN_USER_PASSWORD_AUTH", 
    #         "ALLOW_REFRESH_TOKEN_AUTH", 
    #       ], 
    #       id_token_validity: 6, 
    #       last_modified_date: Time.parse(1689885426.107), 
    #       logout_urls: [
    #         "https://example.com/logout", 
    #       ], 
    #       prevent_user_existence_errors: "ENABLED", 
    #       read_attributes: [
    #         "address", 
    #         "preferred_username", 
    #         "email", 
    #       ], 
    #       refresh_token_validity: 6, 
    #       supported_identity_providers: [
    #         "SignInWithApple", 
    #         "MySSO", 
    #       ], 
    #       token_validity_units: {
    #         access_token: "hours", 
    #         id_token: "minutes", 
    #         refresh_token: "days", 
    #       }, 
    #       user_pool_id: "us-east-1_EXAMPLE", 
    #       write_attributes: [
    #         "family_name", 
    #         "email", 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_name: "ClientNameType", # required
    #     generate_secret: false,
    #     refresh_token_validity: 1,
    #     access_token_validity: 1,
    #     id_token_validity: 1,
    #     token_validity_units: {
    #       access_token: "seconds", # accepts seconds, minutes, hours, days
    #       id_token: "seconds", # accepts seconds, minutes, hours, days
    #       refresh_token: "seconds", # accepts seconds, minutes, hours, days
    #     },
    #     read_attributes: ["ClientPermissionType"],
    #     write_attributes: ["ClientPermissionType"],
    #     explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH, ALLOW_USER_AUTH
    #     supported_identity_providers: ["ProviderNameType"],
    #     callback_urls: ["RedirectUrlType"],
    #     logout_urls: ["RedirectUrlType"],
    #     default_redirect_uri: "RedirectUrlType",
    #     allowed_o_auth_flows: ["code"], # accepts code, implicit, client_credentials
    #     allowed_o_auth_scopes: ["ScopeType"],
    #     allowed_o_auth_flows_user_pool_client: false,
    #     analytics_configuration: {
    #       application_id: "HexStringType",
    #       application_arn: "ArnType",
    #       role_arn: "ArnType",
    #       external_id: "StringType",
    #       user_data_shared: false,
    #     },
    #     prevent_user_existence_errors: "LEGACY", # accepts LEGACY, ENABLED
    #     enable_token_revocation: false,
    #     enable_propagate_additional_user_context_data: false,
    #     auth_session_validity: 1,
    #     refresh_token_rotation: {
    #       feature: "ENABLED", # required, accepts ENABLED, DISABLED
    #       retry_grace_period_seconds: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_client.user_pool_id #=> String
    #   resp.user_pool_client.client_name #=> String
    #   resp.user_pool_client.client_id #=> String
    #   resp.user_pool_client.client_secret #=> String
    #   resp.user_pool_client.last_modified_date #=> Time
    #   resp.user_pool_client.creation_date #=> Time
    #   resp.user_pool_client.refresh_token_validity #=> Integer
    #   resp.user_pool_client.access_token_validity #=> Integer
    #   resp.user_pool_client.id_token_validity #=> Integer
    #   resp.user_pool_client.token_validity_units.access_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.id_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.refresh_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.read_attributes #=> Array
    #   resp.user_pool_client.read_attributes[0] #=> String
    #   resp.user_pool_client.write_attributes #=> Array
    #   resp.user_pool_client.write_attributes[0] #=> String
    #   resp.user_pool_client.explicit_auth_flows #=> Array
    #   resp.user_pool_client.explicit_auth_flows[0] #=> String, one of "ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH"
    #   resp.user_pool_client.supported_identity_providers #=> Array
    #   resp.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.user_pool_client.callback_urls #=> Array
    #   resp.user_pool_client.callback_urls[0] #=> String
    #   resp.user_pool_client.logout_urls #=> Array
    #   resp.user_pool_client.logout_urls[0] #=> String
    #   resp.user_pool_client.default_redirect_uri #=> String
    #   resp.user_pool_client.allowed_o_auth_flows #=> Array
    #   resp.user_pool_client.allowed_o_auth_flows[0] #=> String, one of "code", "implicit", "client_credentials"
    #   resp.user_pool_client.allowed_o_auth_scopes #=> Array
    #   resp.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #   resp.user_pool_client.analytics_configuration.application_id #=> String
    #   resp.user_pool_client.analytics_configuration.application_arn #=> String
    #   resp.user_pool_client.analytics_configuration.role_arn #=> String
    #   resp.user_pool_client.analytics_configuration.external_id #=> String
    #   resp.user_pool_client.analytics_configuration.user_data_shared #=> Boolean
    #   resp.user_pool_client.prevent_user_existence_errors #=> String, one of "LEGACY", "ENABLED"
    #   resp.user_pool_client.enable_token_revocation #=> Boolean
    #   resp.user_pool_client.enable_propagate_additional_user_context_data #=> Boolean
    #   resp.user_pool_client.auth_session_validity #=> Integer
    #   resp.user_pool_client.refresh_token_rotation.feature #=> String, one of "ENABLED", "DISABLED"
    #   resp.user_pool_client.refresh_token_rotation.retry_grace_period_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolClient AWS API Documentation
    #
    # @overload create_user_pool_client(params = {})
    # @param [Hash] params ({})
    def create_user_pool_client(params = {}, options = {})
      req = build_request(:create_user_pool_client, params)
      req.send_request(options)
    end

    # A user pool domain hosts managed login, an authorization server and
    # web server for authentication in your application. This operation
    # creates a new user pool prefix domain or custom domain and sets the
    # managed login branding version. Set the branding version to `1` for
    # hosted UI (classic) or `2` for managed login. When you choose a custom
    # domain, you must provide an SSL certificate in the US East (N.
    # Virginia) Amazon Web Services Region in your request.
    #
    # Your prefix domain might take up to one minute to take effect. Your
    # custom domain is online within five minutes, but it can take up to one
    # hour to distribute your SSL certificate.
    #
    # For more information about adding a custom domain to your user pool,
    # see [Configuring a user pool domain][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :domain
    #   The domain string. For custom domains, this is the fully-qualified
    #   domain name, such as `auth.example.com`. For prefix domains, this is
    #   the prefix alone, such as `myprefix`. A prefix value of `myprefix` for
    #   a user pool in the `us-east-1` Region results in a domain of
    #   `myprefix.auth.us-east-1.amazoncognito.com`.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to add a domain.
    #
    # @option params [Integer] :managed_login_version
    #   The version of managed login branding that you want to apply to your
    #   domain. A value of `1` indicates hosted UI (classic) and a version of
    #   `2` indicates managed login.
    #
    #   Managed login requires that your user pool be configured for any
    #   [feature plan][1] other than `Lite`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html
    #
    # @option params [Types::CustomDomainConfigType] :custom_domain_config
    #   The configuration for a custom domain. Configures your domain with an
    #   Certificate Manager certificate in the `us-east-1` Region.
    #
    #   Provide this parameter only if you want to use a [custom domain][1]
    #   for your user pool. Otherwise, you can omit this parameter and use a
    #   [prefix domain][2] instead.
    #
    #   When you create a custom domain, the passkey RP ID defaults to the
    #   custom domain. If you had a prefix domain active, this will cause
    #   passkey integration for your prefix domain to stop working due to a
    #   mismatch in RP ID. To keep the prefix domain passkey integration
    #   working, you can explicitly set RP ID to the prefix domain.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain-prefix.html
    #
    # @return [Types::CreateUserPoolDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserPoolDomainResponse#managed_login_version #managed_login_version} => Integer
    #   * {Types::CreateUserPoolDomainResponse#cloud_front_domain #cloud_front_domain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_pool_domain({
    #     domain: "DomainType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     managed_login_version: 1,
    #     custom_domain_config: {
    #       certificate_arn: "ArnType", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_login_version #=> Integer
    #   resp.cloud_front_domain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolDomain AWS API Documentation
    #
    # @overload create_user_pool_domain(params = {})
    # @param [Hash] params ({})
    def create_user_pool_domain(params = {}, options = {})
      req = build_request(:create_user_pool_domain, params)
      req.send_request(options)
    end

    # Deletes a group from the specified user pool. When you delete a group,
    # that group no longer contributes to users' `cognito:preferred_group`
    # or `cognito:groups` claims, and no longer influence access-control
    # decision that are based on group membership. For more information
    # about user pool groups, see [Adding groups to a user pool][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to delete.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to delete the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Deletes a user pool identity provider (IdP). After you delete an IdP,
    # users can no longer sign in to your user pool through that IdP. For
    # more information about user pool IdPs, see [Third-party IdP
    # sign-in][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to delete the identity
    #   provider.
    #
    # @option params [required, String] :provider_name
    #   The name of the IdP that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteIdentityProvider AWS API Documentation
    #
    # @overload delete_identity_provider(params = {})
    # @param [Hash] params ({})
    def delete_identity_provider(params = {}, options = {})
      req = build_request(:delete_identity_provider, params)
      req.send_request(options)
    end

    # Deletes a managed login branding style. When you delete a style, you
    # delete the branding association for an app client. When an app client
    # doesn't have a style assigned, your managed login pages for that app
    # client are nonfunctional until you create a new style or switch the
    # domain branding version.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :managed_login_branding_id
    #   The ID of the managed login branding style that you want to delete.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that contains the managed login branding style
    #   that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_managed_login_branding({
    #     managed_login_branding_id: "ManagedLoginBrandingIdType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteManagedLoginBranding AWS API Documentation
    #
    # @overload delete_managed_login_branding(params = {})
    # @param [Hash] params ({})
    def delete_managed_login_branding(params = {}, options = {})
      req = build_request(:delete_managed_login_branding, params)
      req.send_request(options)
    end

    # Deletes a resource server. After you delete a resource server, users
    # can no longer generate access tokens with scopes that are associate
    # with that resource server.
    #
    # Resource servers are associated with custom scopes and
    # machine-to-machine (M2M) authorization. For more information, see
    # [Access control with resource servers][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to delete the resource server.
    #
    # @option params [required, String] :identifier
    #   The identifier of the resource server that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_server({
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteResourceServer AWS API Documentation
    #
    # @overload delete_resource_server(params = {})
    # @param [Hash] params ({})
    def delete_resource_server(params = {}, options = {})
      req = build_request(:delete_resource_server, params)
      req.send_request(options)
    end

    # Deletes the profile of the currently signed-in user. A deleted user
    # profile can no longer be used to sign in and can't be restored.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes attributes from the currently signed-in user. For example,
    # your application can submit a request to this operation when a user
    # wants to remove their `birthdate` attribute value.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, Array<String>] :user_attribute_names
    #   An array of strings representing the user attribute names you want to
    #   delete.
    #
    #   For custom attributes, you must prepend the `custom:` prefix to the
    #   attribute name, for example `custom:department`.
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_attributes({
    #     user_attribute_names: ["AttributeNameType"], # required
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserAttributes AWS API Documentation
    #
    # @overload delete_user_attributes(params = {})
    # @param [Hash] params ({})
    def delete_user_attributes(params = {}, options = {})
      req = build_request(:delete_user_attributes, params)
      req.send_request(options)
    end

    # Deletes a user pool. After you delete a user pool, users can no longer
    # sign in to any associated applications.
    #
    # When you delete a user pool, it's no longer visible or operational in
    # your Amazon Web Services account. Amazon Cognito retains deleted user
    # pools in an inactive state for 14 days, then begins a cleanup process
    # that fully removes them from Amazon Web Services systems. In case of
    # accidental deletion, contact Amazon Web ServicesSupport within 14 days
    # for restoration assistance.
    #
    # Amazon Cognito begins full deletion of all resources from deleted user
    # pools after 14 days. In the case of large user pools, the cleanup
    # process might take significant additional time before all user data is
    # permanently deleted.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPool AWS API Documentation
    #
    # @overload delete_user_pool(params = {})
    # @param [Hash] params ({})
    def delete_user_pool(params = {}, options = {})
      req = build_request(:delete_user_pool, params)
      req.send_request(options)
    end

    # Deletes a user pool app client. After you delete an app client, users
    # can no longer sign in to the associated application.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to delete the client.
    #
    # @option params [required, String] :client_id
    #   The ID of the user pool app client that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolClient AWS API Documentation
    #
    # @overload delete_user_pool_client(params = {})
    # @param [Hash] params ({})
    def delete_user_pool_client(params = {}, options = {})
      req = build_request(:delete_user_pool_client, params)
      req.send_request(options)
    end

    # Given a user pool ID and domain identifier, deletes a user pool
    # domain. After you delete a user pool domain, your managed login pages
    # and authorization server are no longer available.
    #
    # @option params [required, String] :domain
    #   The domain that you want to delete. For custom domains, this is the
    #   fully-qualified domain name like `auth.example.com`. For Amazon
    #   Cognito prefix domains, this is the prefix alone, like `myprefix`.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to delete the domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_pool_domain({
    #     domain: "DomainType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolDomain AWS API Documentation
    #
    # @overload delete_user_pool_domain(params = {})
    # @param [Hash] params ({})
    def delete_user_pool_domain(params = {}, options = {})
      req = build_request(:delete_user_pool_domain, params)
      req.send_request(options)
    end

    # Deletes a registered passkey, or WebAuthn, authenticator for the
    # currently signed-in user.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [required, String] :credential_id
    #   The unique identifier of the passkey that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_web_authn_credential({
    #     access_token: "TokenModelType", # required
    #     credential_id: "StringType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteWebAuthnCredential AWS API Documentation
    #
    # @overload delete_web_authn_credential(params = {})
    # @param [Hash] params ({})
    def delete_web_authn_credential(params = {}, options = {})
      req = build_request(:delete_web_authn_credential, params)
      req.send_request(options)
    end

    # Given a user pool ID and identity provider (IdP) name, returns details
    # about the IdP.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that has the IdP that you want to describe..
    #
    # @option params [required, String] :provider_name
    #   The name of the IdP that you want to describe.
    #
    # @return [Types::DescribeIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["AttributeMappingKeyType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeIdentityProvider AWS API Documentation
    #
    # @overload describe_identity_provider(params = {})
    # @param [Hash] params ({})
    def describe_identity_provider(params = {}, options = {})
      req = build_request(:describe_identity_provider, params)
      req.send_request(options)
    end

    # Given the ID of a managed login branding style, returns detailed
    # information about the style.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that contains the managed login branding style
    #   that you want to get information about.
    #
    # @option params [required, String] :managed_login_branding_id
    #   The ID of the managed login branding style that you want to get more
    #   information about.
    #
    # @option params [Boolean] :return_merged_resources
    #   When `true`, returns values for branding options that are unchanged
    #   from Amazon Cognito defaults. When `false` or when you omit this
    #   parameter, returns only values that you customized in your branding
    #   style.
    #
    # @return [Types::DescribeManagedLoginBrandingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeManagedLoginBrandingResponse#managed_login_branding #managed_login_branding} => Types::ManagedLoginBrandingType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_managed_login_branding({
    #     user_pool_id: "UserPoolIdType", # required
    #     managed_login_branding_id: "ManagedLoginBrandingIdType", # required
    #     return_merged_resources: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_login_branding.managed_login_branding_id #=> String
    #   resp.managed_login_branding.user_pool_id #=> String
    #   resp.managed_login_branding.use_cognito_provided_values #=> Boolean
    #   resp.managed_login_branding.assets #=> Array
    #   resp.managed_login_branding.assets[0].category #=> String, one of "FAVICON_ICO", "FAVICON_SVG", "EMAIL_GRAPHIC", "SMS_GRAPHIC", "AUTH_APP_GRAPHIC", "PASSWORD_GRAPHIC", "PASSKEY_GRAPHIC", "PAGE_HEADER_LOGO", "PAGE_HEADER_BACKGROUND", "PAGE_FOOTER_LOGO", "PAGE_FOOTER_BACKGROUND", "PAGE_BACKGROUND", "FORM_BACKGROUND", "FORM_LOGO", "IDP_BUTTON_ICON"
    #   resp.managed_login_branding.assets[0].color_mode #=> String, one of "LIGHT", "DARK", "DYNAMIC"
    #   resp.managed_login_branding.assets[0].extension #=> String, one of "ICO", "JPEG", "PNG", "SVG", "WEBP"
    #   resp.managed_login_branding.assets[0].bytes #=> String
    #   resp.managed_login_branding.assets[0].resource_id #=> String
    #   resp.managed_login_branding.creation_date #=> Time
    #   resp.managed_login_branding.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeManagedLoginBranding AWS API Documentation
    #
    # @overload describe_managed_login_branding(params = {})
    # @param [Hash] params ({})
    def describe_managed_login_branding(params = {}, options = {})
      req = build_request(:describe_managed_login_branding, params)
      req.send_request(options)
    end

    # Given the ID of a user pool app client, returns detailed information
    # about the style assigned to the app client.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that contains the app client where you want
    #   more information about the managed login branding style.
    #
    # @option params [required, String] :client_id
    #   The app client that's assigned to the branding style that you want
    #   more information about.
    #
    # @option params [Boolean] :return_merged_resources
    #   When `true`, returns values for branding options that are unchanged
    #   from Amazon Cognito defaults. When `false` or when you omit this
    #   parameter, returns only values that you customized in your branding
    #   style.
    #
    # @return [Types::DescribeManagedLoginBrandingByClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeManagedLoginBrandingByClientResponse#managed_login_branding #managed_login_branding} => Types::ManagedLoginBrandingType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_managed_login_branding_by_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     return_merged_resources: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_login_branding.managed_login_branding_id #=> String
    #   resp.managed_login_branding.user_pool_id #=> String
    #   resp.managed_login_branding.use_cognito_provided_values #=> Boolean
    #   resp.managed_login_branding.assets #=> Array
    #   resp.managed_login_branding.assets[0].category #=> String, one of "FAVICON_ICO", "FAVICON_SVG", "EMAIL_GRAPHIC", "SMS_GRAPHIC", "AUTH_APP_GRAPHIC", "PASSWORD_GRAPHIC", "PASSKEY_GRAPHIC", "PAGE_HEADER_LOGO", "PAGE_HEADER_BACKGROUND", "PAGE_FOOTER_LOGO", "PAGE_FOOTER_BACKGROUND", "PAGE_BACKGROUND", "FORM_BACKGROUND", "FORM_LOGO", "IDP_BUTTON_ICON"
    #   resp.managed_login_branding.assets[0].color_mode #=> String, one of "LIGHT", "DARK", "DYNAMIC"
    #   resp.managed_login_branding.assets[0].extension #=> String, one of "ICO", "JPEG", "PNG", "SVG", "WEBP"
    #   resp.managed_login_branding.assets[0].bytes #=> String
    #   resp.managed_login_branding.assets[0].resource_id #=> String
    #   resp.managed_login_branding.creation_date #=> Time
    #   resp.managed_login_branding.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeManagedLoginBrandingByClient AWS API Documentation
    #
    # @overload describe_managed_login_branding_by_client(params = {})
    # @param [Hash] params ({})
    def describe_managed_login_branding_by_client(params = {}, options = {})
      req = build_request(:describe_managed_login_branding_by_client, params)
      req.send_request(options)
    end

    # Describes a resource server. For more information about resource
    # servers, see [Access control with resource servers][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that hosts the resource server.
    #
    # @option params [required, String] :identifier
    #   A unique resource server identifier for the resource server. The
    #   identifier can be an API friendly name like `solar-system-data`. You
    #   can also set an API URL like
    #   `https://solar-system-data-api.example.com` as your identifier.
    #
    #   Amazon Cognito represents scopes in the access token in the format
    #   `$resource-server-identifier/$scope`. Longer scope-identifier strings
    #   increase the size of your access tokens.
    #
    # @return [Types::DescribeResourceServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourceServerResponse#resource_server #resource_server} => Types::ResourceServerType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_server({
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_server.user_pool_id #=> String
    #   resp.resource_server.identifier #=> String
    #   resp.resource_server.name #=> String
    #   resp.resource_server.scopes #=> Array
    #   resp.resource_server.scopes[0].scope_name #=> String
    #   resp.resource_server.scopes[0].scope_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeResourceServer AWS API Documentation
    #
    # @overload describe_resource_server(params = {})
    # @param [Hash] params ({})
    def describe_resource_server(params = {}, options = {})
      req = build_request(:describe_resource_server, params)
      req.send_request(options)
    end

    # Given an app client or user pool ID where threat protection is
    # configured, describes the risk configuration. This operation returns
    # details about adaptive authentication, compromised credentials, and
    # IP-address allow- and denylists. For more information about threat
    # protection, see [Threat protection][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-threat-protection.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool with the risk configuration that you want to
    #   inspect. You can apply default risk configuration at the user pool
    #   level and further customize it from user pool defaults at the
    #   app-client level. Specify `ClientId` to inspect client-level
    #   configuration, or `UserPoolId` to inspect pool-level configuration.
    #
    # @option params [String] :client_id
    #   The ID of the app client with the risk configuration that you want to
    #   inspect. You can apply default risk configuration at the user pool
    #   level and further customize it from user pool defaults at the
    #   app-client level. Specify `ClientId` to inspect client-level
    #   configuration, or `UserPoolId` to inspect pool-level configuration.
    #
    # @return [Types::DescribeRiskConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRiskConfigurationResponse#risk_configuration #risk_configuration} => Types::RiskConfigurationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_risk_configuration({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType",
    #   })
    #
    # @example Response structure
    #
    #   resp.risk_configuration.user_pool_id #=> String
    #   resp.risk_configuration.client_id #=> String
    #   resp.risk_configuration.compromised_credentials_risk_configuration.event_filter #=> Array
    #   resp.risk_configuration.compromised_credentials_risk_configuration.event_filter[0] #=> String, one of "SIGN_IN", "PASSWORD_CHANGE", "SIGN_UP"
    #   resp.risk_configuration.compromised_credentials_risk_configuration.actions.event_action #=> String, one of "BLOCK", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.from #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.reply_to #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.source_arn #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.low_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.low_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.medium_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.medium_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.high_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.high_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.risk_exception_configuration.blocked_ip_range_list #=> Array
    #   resp.risk_configuration.risk_exception_configuration.blocked_ip_range_list[0] #=> String
    #   resp.risk_configuration.risk_exception_configuration.skipped_ip_range_list #=> Array
    #   resp.risk_configuration.risk_exception_configuration.skipped_ip_range_list[0] #=> String
    #   resp.risk_configuration.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeRiskConfiguration AWS API Documentation
    #
    # @overload describe_risk_configuration(params = {})
    # @param [Hash] params ({})
    def describe_risk_configuration(params = {}, options = {})
      req = build_request(:describe_risk_configuration, params)
      req.send_request(options)
    end

    # Describes a user import job. For more information about user CSV
    # import, see [Importing users from a CSV file][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that's associated with the import job.
    #
    # @option params [required, String] :job_id
    #   The Id of the user import job that you want to describe.
    #
    # @return [Types::DescribeUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_import_job({
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserImportJob AWS API Documentation
    #
    # @overload describe_user_import_job(params = {})
    # @param [Hash] params ({})
    def describe_user_import_job(params = {}, options = {})
      req = build_request(:describe_user_import_job, params)
      req.send_request(options)
    end

    # Given a user pool ID, returns configuration information. This
    # operation is useful when you want to inspect an existing user pool and
    # programmatically replicate the configuration to another user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool you want to describe.
    #
    # @return [Types::DescribeUserPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserPoolResponse#user_pool #user_pool} => Types::UserPoolType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool.id #=> String
    #   resp.user_pool.name #=> String
    #   resp.user_pool.policies.password_policy.minimum_length #=> Integer
    #   resp.user_pool.policies.password_policy.require_uppercase #=> Boolean
    #   resp.user_pool.policies.password_policy.require_lowercase #=> Boolean
    #   resp.user_pool.policies.password_policy.require_numbers #=> Boolean
    #   resp.user_pool.policies.password_policy.require_symbols #=> Boolean
    #   resp.user_pool.policies.password_policy.password_history_size #=> Integer
    #   resp.user_pool.policies.password_policy.temporary_password_validity_days #=> Integer
    #   resp.user_pool.policies.sign_in_policy.allowed_first_auth_factors #=> Array
    #   resp.user_pool.policies.sign_in_policy.allowed_first_auth_factors[0] #=> String, one of "PASSWORD", "EMAIL_OTP", "SMS_OTP", "WEB_AUTHN"
    #   resp.user_pool.deletion_protection #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.user_pool.lambda_config.pre_sign_up #=> String
    #   resp.user_pool.lambda_config.custom_message #=> String
    #   resp.user_pool.lambda_config.post_confirmation #=> String
    #   resp.user_pool.lambda_config.pre_authentication #=> String
    #   resp.user_pool.lambda_config.post_authentication #=> String
    #   resp.user_pool.lambda_config.define_auth_challenge #=> String
    #   resp.user_pool.lambda_config.create_auth_challenge #=> String
    #   resp.user_pool.lambda_config.verify_auth_challenge_response #=> String
    #   resp.user_pool.lambda_config.pre_token_generation #=> String
    #   resp.user_pool.lambda_config.user_migration #=> String
    #   resp.user_pool.lambda_config.pre_token_generation_config.lambda_version #=> String, one of "V1_0", "V2_0", "V3_0"
    #   resp.user_pool.lambda_config.pre_token_generation_config.lambda_arn #=> String
    #   resp.user_pool.lambda_config.custom_sms_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pool.lambda_config.custom_sms_sender.lambda_arn #=> String
    #   resp.user_pool.lambda_config.custom_email_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pool.lambda_config.custom_email_sender.lambda_arn #=> String
    #   resp.user_pool.lambda_config.kms_key_id #=> String
    #   resp.user_pool.status #=> String, one of "Enabled", "Disabled"
    #   resp.user_pool.last_modified_date #=> Time
    #   resp.user_pool.creation_date #=> Time
    #   resp.user_pool.schema_attributes #=> Array
    #   resp.user_pool.schema_attributes[0].name #=> String
    #   resp.user_pool.schema_attributes[0].attribute_data_type #=> String, one of "String", "Number", "DateTime", "Boolean"
    #   resp.user_pool.schema_attributes[0].developer_only_attribute #=> Boolean
    #   resp.user_pool.schema_attributes[0].mutable #=> Boolean
    #   resp.user_pool.schema_attributes[0].required #=> Boolean
    #   resp.user_pool.schema_attributes[0].number_attribute_constraints.min_value #=> String
    #   resp.user_pool.schema_attributes[0].number_attribute_constraints.max_value #=> String
    #   resp.user_pool.schema_attributes[0].string_attribute_constraints.min_length #=> String
    #   resp.user_pool.schema_attributes[0].string_attribute_constraints.max_length #=> String
    #   resp.user_pool.auto_verified_attributes #=> Array
    #   resp.user_pool.auto_verified_attributes[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.alias_attributes #=> Array
    #   resp.user_pool.alias_attributes[0] #=> String, one of "phone_number", "email", "preferred_username"
    #   resp.user_pool.username_attributes #=> Array
    #   resp.user_pool.username_attributes[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.sms_verification_message #=> String
    #   resp.user_pool.email_verification_message #=> String
    #   resp.user_pool.email_verification_subject #=> String
    #   resp.user_pool.verification_message_template.sms_message #=> String
    #   resp.user_pool.verification_message_template.email_message #=> String
    #   resp.user_pool.verification_message_template.email_subject #=> String
    #   resp.user_pool.verification_message_template.email_message_by_link #=> String
    #   resp.user_pool.verification_message_template.email_subject_by_link #=> String
    #   resp.user_pool.verification_message_template.default_email_option #=> String, one of "CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"
    #   resp.user_pool.sms_authentication_message #=> String
    #   resp.user_pool.user_attribute_update_settings.attributes_require_verification_before_update #=> Array
    #   resp.user_pool.user_attribute_update_settings.attributes_require_verification_before_update[0] #=> String, one of "phone_number", "email"
    #   resp.user_pool.mfa_configuration #=> String, one of "OFF", "ON", "OPTIONAL"
    #   resp.user_pool.device_configuration.challenge_required_on_new_device #=> Boolean
    #   resp.user_pool.device_configuration.device_only_remembered_on_user_prompt #=> Boolean
    #   resp.user_pool.estimated_number_of_users #=> Integer
    #   resp.user_pool.email_configuration.source_arn #=> String
    #   resp.user_pool.email_configuration.reply_to_email_address #=> String
    #   resp.user_pool.email_configuration.email_sending_account #=> String, one of "COGNITO_DEFAULT", "DEVELOPER"
    #   resp.user_pool.email_configuration.from #=> String
    #   resp.user_pool.email_configuration.configuration_set #=> String
    #   resp.user_pool.sms_configuration.sns_caller_arn #=> String
    #   resp.user_pool.sms_configuration.external_id #=> String
    #   resp.user_pool.sms_configuration.sns_region #=> String
    #   resp.user_pool.user_pool_tags #=> Hash
    #   resp.user_pool.user_pool_tags["TagKeysType"] #=> String
    #   resp.user_pool.sms_configuration_failure #=> String
    #   resp.user_pool.email_configuration_failure #=> String
    #   resp.user_pool.domain #=> String
    #   resp.user_pool.custom_domain #=> String
    #   resp.user_pool.admin_create_user_config.allow_admin_create_user_only #=> Boolean
    #   resp.user_pool.admin_create_user_config.unused_account_validity_days #=> Integer
    #   resp.user_pool.admin_create_user_config.invite_message_template.sms_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_message #=> String
    #   resp.user_pool.admin_create_user_config.invite_message_template.email_subject #=> String
    #   resp.user_pool.user_pool_add_ons.advanced_security_mode #=> String, one of "OFF", "AUDIT", "ENFORCED"
    #   resp.user_pool.user_pool_add_ons.advanced_security_additional_flows.custom_auth_mode #=> String, one of "AUDIT", "ENFORCED"
    #   resp.user_pool.username_configuration.case_sensitive #=> Boolean
    #   resp.user_pool.arn #=> String
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms #=> Array
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms[0].priority #=> Integer
    #   resp.user_pool.account_recovery_setting.recovery_mechanisms[0].name #=> String, one of "verified_email", "verified_phone_number", "admin_only"
    #   resp.user_pool.user_pool_tier #=> String, one of "LITE", "ESSENTIALS", "PLUS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPool AWS API Documentation
    #
    # @overload describe_user_pool(params = {})
    # @param [Hash] params ({})
    def describe_user_pool(params = {}, options = {})
      req = build_request(:describe_user_pool, params)
      req.send_request(options)
    end

    # Given an app client ID, returns configuration information. This
    # operation is useful when you want to inspect an existing app client
    # and programmatically replicate the configuration to another app
    # client. For more information about app clients, see [App clients][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that contains the app client you want to
    #   describe.
    #
    # @option params [required, String] :client_id
    #   The ID of the app client that you want to describe.
    #
    # @return [Types::DescribeUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserPoolClientResponse#user_pool_client #user_pool_client} => Types::UserPoolClientType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_client.user_pool_id #=> String
    #   resp.user_pool_client.client_name #=> String
    #   resp.user_pool_client.client_id #=> String
    #   resp.user_pool_client.client_secret #=> String
    #   resp.user_pool_client.last_modified_date #=> Time
    #   resp.user_pool_client.creation_date #=> Time
    #   resp.user_pool_client.refresh_token_validity #=> Integer
    #   resp.user_pool_client.access_token_validity #=> Integer
    #   resp.user_pool_client.id_token_validity #=> Integer
    #   resp.user_pool_client.token_validity_units.access_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.id_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.refresh_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.read_attributes #=> Array
    #   resp.user_pool_client.read_attributes[0] #=> String
    #   resp.user_pool_client.write_attributes #=> Array
    #   resp.user_pool_client.write_attributes[0] #=> String
    #   resp.user_pool_client.explicit_auth_flows #=> Array
    #   resp.user_pool_client.explicit_auth_flows[0] #=> String, one of "ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH"
    #   resp.user_pool_client.supported_identity_providers #=> Array
    #   resp.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.user_pool_client.callback_urls #=> Array
    #   resp.user_pool_client.callback_urls[0] #=> String
    #   resp.user_pool_client.logout_urls #=> Array
    #   resp.user_pool_client.logout_urls[0] #=> String
    #   resp.user_pool_client.default_redirect_uri #=> String
    #   resp.user_pool_client.allowed_o_auth_flows #=> Array
    #   resp.user_pool_client.allowed_o_auth_flows[0] #=> String, one of "code", "implicit", "client_credentials"
    #   resp.user_pool_client.allowed_o_auth_scopes #=> Array
    #   resp.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #   resp.user_pool_client.analytics_configuration.application_id #=> String
    #   resp.user_pool_client.analytics_configuration.application_arn #=> String
    #   resp.user_pool_client.analytics_configuration.role_arn #=> String
    #   resp.user_pool_client.analytics_configuration.external_id #=> String
    #   resp.user_pool_client.analytics_configuration.user_data_shared #=> Boolean
    #   resp.user_pool_client.prevent_user_existence_errors #=> String, one of "LEGACY", "ENABLED"
    #   resp.user_pool_client.enable_token_revocation #=> Boolean
    #   resp.user_pool_client.enable_propagate_additional_user_context_data #=> Boolean
    #   resp.user_pool_client.auth_session_validity #=> Integer
    #   resp.user_pool_client.refresh_token_rotation.feature #=> String, one of "ENABLED", "DISABLED"
    #   resp.user_pool_client.refresh_token_rotation.retry_grace_period_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolClient AWS API Documentation
    #
    # @overload describe_user_pool_client(params = {})
    # @param [Hash] params ({})
    def describe_user_pool_client(params = {}, options = {})
      req = build_request(:describe_user_pool_client, params)
      req.send_request(options)
    end

    # Given a user pool domain name, returns information about the domain
    # configuration.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :domain
    #   The domain that you want to describe. For custom domains, this is the
    #   fully-qualified domain name, such as `auth.example.com`. For Amazon
    #   Cognito prefix domains, this is the prefix alone, such as `auth`.
    #
    # @return [Types::DescribeUserPoolDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserPoolDomainResponse#domain_description #domain_description} => Types::DomainDescriptionType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_pool_domain({
    #     domain: "DomainType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_description.user_pool_id #=> String
    #   resp.domain_description.aws_account_id #=> String
    #   resp.domain_description.domain #=> String
    #   resp.domain_description.s3_bucket #=> String
    #   resp.domain_description.cloud_front_distribution #=> String
    #   resp.domain_description.version #=> String
    #   resp.domain_description.status #=> String, one of "CREATING", "DELETING", "UPDATING", "ACTIVE", "FAILED"
    #   resp.domain_description.custom_domain_config.certificate_arn #=> String
    #   resp.domain_description.managed_login_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolDomain AWS API Documentation
    #
    # @overload describe_user_pool_domain(params = {})
    # @param [Hash] params ({})
    def describe_user_pool_domain(params = {}, options = {})
      req = build_request(:describe_user_pool_domain, params)
      req.send_request(options)
    end

    # Given a device key, deletes a remembered device as the currently
    # signed-in user. For more information about device authentication, see
    # [Working with user devices in your user pool][1].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [required, String] :device_key
    #   The unique identifier, or device key, of the device that the user
    #   wants to forget.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.forget_device({
    #     access_token: "TokenModelType",
    #     device_key: "DeviceKeyType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgetDevice AWS API Documentation
    #
    # @overload forget_device(params = {})
    # @param [Hash] params ({})
    def forget_device(params = {}, options = {})
      req = build_request(:forget_device, params)
      req.send_request(options)
    end

    # Sends a password-reset confirmation code for the currently signed-in
    # user.
    #
    # For the `Username` parameter, you can use the username or user alias.
    #
    # If neither a verified phone number nor a verified email exists, Amazon
    # Cognito responds with an `InvalidParameterException` error . If your
    # app client has a client secret and you don't provide a `SECRET_HASH`
    # parameter, this API returns `NotAuthorizedException`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :client_id
    #   The ID of the user pool app client associated with the current
    #   signed-in user.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message. For more information about `SecretHash`, see [Computing
    #   secret hash values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your app
    #   generates and passes to Amazon Cognito when it makes API requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the ForgotPassword API action, Amazon Cognito
    #   invokes any functions that are assigned to the following triggers:
    #   *pre sign-up*, *custom message*, and *user migration*. When Amazon
    #   Cognito invokes any of these functions, it passes a JSON payload,
    #   which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your ForgotPassword request. In
    #   your function code in Lambda, you can process the `clientMetadata`
    #   value to enhance your workflow for your specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::ForgotPasswordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ForgotPasswordResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.forgot_password({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     username: "UsernameType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgotPassword AWS API Documentation
    #
    # @overload forgot_password(params = {})
    # @param [Hash] params ({})
    def forgot_password(params = {}, options = {})
      req = build_request(:forgot_password, params)
      req.send_request(options)
    end

    # Given a user pool ID, generates a comma-separated value (CSV) list
    # populated with available user attributes in the user pool. This list
    # is the header for the CSV file that determines the users in a user
    # import job. Save the content of `CSVHeader` in the response as a
    # `.csv` file and populate it with the usernames and attributes of users
    # that you want to import. For more information about CSV user import,
    # see [Importing users from a CSV file][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that you want to import users into.
    #
    # @return [Types::GetCSVHeaderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCSVHeaderResponse#user_pool_id #user_pool_id} => String
    #   * {Types::GetCSVHeaderResponse#csv_header #csv_header} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_csv_header({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_id #=> String
    #   resp.csv_header #=> Array
    #   resp.csv_header[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetCSVHeader AWS API Documentation
    #
    # @overload get_csv_header(params = {})
    # @param [Hash] params ({})
    def get_csv_header(params = {}, options = {})
      req = build_request(:get_csv_header, params)
      req.send_request(options)
    end

    # Given a device key, returns information about a remembered device for
    # the current user. For more information about device authentication,
    # see [Working with user devices in your user pool][1].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :device_key
    #   The key of the device that you want to get information about.
    #
    # @option params [String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @return [Types::GetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceResponse#device #device} => Types::DeviceType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device({
    #     device_key: "DeviceKeyType", # required
    #     access_token: "TokenModelType",
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_key #=> String
    #   resp.device.device_attributes #=> Array
    #   resp.device.device_attributes[0].name #=> String
    #   resp.device.device_attributes[0].value #=> String
    #   resp.device.device_create_date #=> Time
    #   resp.device.device_last_modified_date #=> Time
    #   resp.device.device_last_authenticated_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetDevice AWS API Documentation
    #
    # @overload get_device(params = {})
    # @param [Hash] params ({})
    def get_device(params = {}, options = {})
      req = build_request(:get_device, params)
      req.send_request(options)
    end

    # Given a user pool ID and a group name, returns information about the
    # user group.
    #
    # For more information about user pool groups, see [Adding groups to a
    # user pool][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to get information about.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that contains the group that you want to
    #   query.
    #
    # @return [Types::GetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupResponse#group #group} => Types::GroupType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.user_pool_id #=> String
    #   resp.group.description #=> String
    #   resp.group.role_arn #=> String
    #   resp.group.precedence #=> Integer
    #   resp.group.last_modified_date #=> Time
    #   resp.group.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetGroup AWS API Documentation
    #
    # @overload get_group(params = {})
    # @param [Hash] params ({})
    def get_group(params = {}, options = {})
      req = build_request(:get_group, params)
      req.send_request(options)
    end

    # Given the identifier of an identity provider (IdP), for example
    # `examplecorp`, returns information about the user pool configuration
    # for that IdP. For more information about IdPs, see [Third-party IdP
    # sign-in][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to get information about the
    #   IdP.
    #
    # @option params [required, String] :idp_identifier
    #   The identifier that you assigned to your user pool. The identifier is
    #   an alternative name for an IdP that is distinct from the IdP name. For
    #   example, an IdP with a name of `MyIdP` might have an identifier of the
    #   email domain `example.com`.
    #
    # @return [Types::GetIdentityProviderByIdentifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityProviderByIdentifierResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_provider_by_identifier({
    #     user_pool_id: "UserPoolIdType", # required
    #     idp_identifier: "IdpIdentifierType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["AttributeMappingKeyType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetIdentityProviderByIdentifier AWS API Documentation
    #
    # @overload get_identity_provider_by_identifier(params = {})
    # @param [Hash] params ({})
    def get_identity_provider_by_identifier(params = {}, options = {})
      req = build_request(:get_identity_provider_by_identifier, params)
      req.send_request(options)
    end

    # Given a user pool ID, returns the logging configuration. User pools
    # can export message-delivery error and threat-protection activity logs
    # to external Amazon Web Services services. For more information, see
    # [Exporting user pool logs][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/exporting-quotas-and-usage.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that has the logging configuration that you
    #   want to view.
    #
    # @return [Types::GetLogDeliveryConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLogDeliveryConfigurationResponse#log_delivery_configuration #log_delivery_configuration} => Types::LogDeliveryConfigurationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_delivery_configuration({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.log_delivery_configuration.user_pool_id #=> String
    #   resp.log_delivery_configuration.log_configurations #=> Array
    #   resp.log_delivery_configuration.log_configurations[0].log_level #=> String, one of "ERROR", "INFO"
    #   resp.log_delivery_configuration.log_configurations[0].event_source #=> String, one of "userNotification", "userAuthEvents"
    #   resp.log_delivery_configuration.log_configurations[0].cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.log_delivery_configuration.log_configurations[0].s3_configuration.bucket_arn #=> String
    #   resp.log_delivery_configuration.log_configurations[0].firehose_configuration.stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetLogDeliveryConfiguration AWS API Documentation
    #
    # @overload get_log_delivery_configuration(params = {})
    # @param [Hash] params ({})
    def get_log_delivery_configuration(params = {}, options = {})
      req = build_request(:get_log_delivery_configuration, params)
      req.send_request(options)
    end

    # Given a user pool ID, returns the signing certificate for SAML 2.0
    # federation.
    #
    # Issued certificates are valid for 10 years from the date of issue.
    # Amazon Cognito issues and assigns a new signing certificate annually.
    # This renewal process returns a new value in the response to
    # `GetSigningCertificate`, but doesn't invalidate the original
    # certificate.
    #
    # For more information, see [Signing SAML requests][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-SAML-signing-encryption.html#cognito-user-pools-SAML-signing
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to view the signing
    #   certificate.
    #
    # @return [Types::GetSigningCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSigningCertificateResponse#certificate #certificate} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signing_certificate({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetSigningCertificate AWS API Documentation
    #
    # @overload get_signing_certificate(params = {})
    # @param [Hash] params ({})
    def get_signing_certificate(params = {}, options = {})
      req = build_request(:get_signing_certificate, params)
      req.send_request(options)
    end

    # Given a refresh token, issues new ID, access, and optionally refresh
    # tokens for the user who owns the submitted token. This operation
    # issues a new refresh token and invalidates the original refresh token
    # after an optional grace period when refresh token rotation is enabled.
    # If refresh token rotation is disabled, issues new ID and access tokens
    # only.
    #
    # @option params [required, String] :refresh_token
    #   A valid refresh token that can authorize the request for new tokens.
    #   When refresh token rotation is active in the requested app client,
    #   this token is invalidated after the request is complete.
    #
    # @option params [required, String] :client_id
    #   The app client that issued the refresh token to the user who wants to
    #   request new tokens.
    #
    # @option params [String] :client_secret
    #   The client secret of the requested app client, if the client has a
    #   secret.
    #
    # @option params [String] :device_key
    #   When you enable device remembering, Amazon Cognito issues a device key
    #   that you can use for device authentication that bypasses multi-factor
    #   authentication (MFA). To implement `GetTokensFromRefreshToken` in a
    #   user pool with device remembering, you must capture the device key
    #   from the initial authentication request. If your application doesn't
    #   provide the key of a registered device, Amazon Cognito issues a new
    #   one. You must provide the confirmed device key in this request if
    #   device remembering is enabled in your user pool.
    #
    #   For more information about device remembering, see [Working with
    #   devices][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   certain custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the `GetTokensFromRefreshToken` API action,
    #   Amazon Cognito invokes the Lambda function the pre token generation
    #   trigger.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::GetTokensFromRefreshTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTokensFromRefreshTokenResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tokens_from_refresh_token({
    #     refresh_token: "TokenModelType", # required
    #     client_id: "ClientIdType", # required
    #     client_secret: "ClientSecretType",
    #     device_key: "DeviceKeyType",
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetTokensFromRefreshToken AWS API Documentation
    #
    # @overload get_tokens_from_refresh_token(params = {})
    # @param [Hash] params ({})
    def get_tokens_from_refresh_token(params = {}, options = {})
      req = build_request(:get_tokens_from_refresh_token, params)
      req.send_request(options)
    end

    # Given a user pool ID or app client, returns information about classic
    # hosted UI branding that you applied, if any. Returns user-pool level
    # branding information if no app client branding is applied, or if you
    # don't specify an app client ID. Returns an empty object if you
    # haven't applied hosted UI branding to either the client or the user
    # pool. For more information, see [Hosted UI (classic) branding][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/hosted-ui-classic-branding.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that you want to query for branding settings.
    #
    # @option params [String] :client_id
    #   The ID of the app client that you want to query for branding settings.
    #
    # @return [Types::GetUICustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUICustomizationResponse#ui_customization #ui_customization} => Types::UICustomizationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ui_customization({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType",
    #   })
    #
    # @example Response structure
    #
    #   resp.ui_customization.user_pool_id #=> String
    #   resp.ui_customization.client_id #=> String
    #   resp.ui_customization.image_url #=> String
    #   resp.ui_customization.css #=> String
    #   resp.ui_customization.css_version #=> String
    #   resp.ui_customization.last_modified_date #=> Time
    #   resp.ui_customization.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUICustomization AWS API Documentation
    #
    # @overload get_ui_customization(params = {})
    # @param [Hash] params ({})
    def get_ui_customization(params = {}, options = {})
      req = build_request(:get_ui_customization, params)
      req.send_request(options)
    end

    # Gets user attributes and and MFA settings for the currently signed-in
    # user.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @return [Types::GetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserResponse#username #username} => String
    #   * {Types::GetUserResponse#user_attributes #user_attributes} => Array&lt;Types::AttributeType&gt;
    #   * {Types::GetUserResponse#mfa_options #mfa_options} => Array&lt;Types::MFAOptionType&gt;
    #   * {Types::GetUserResponse#preferred_mfa_setting #preferred_mfa_setting} => String
    #   * {Types::GetUserResponse#user_mfa_setting_list #user_mfa_setting_list} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user({
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.username #=> String
    #   resp.user_attributes #=> Array
    #   resp.user_attributes[0].name #=> String
    #   resp.user_attributes[0].value #=> String
    #   resp.mfa_options #=> Array
    #   resp.mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.mfa_options[0].attribute_name #=> String
    #   resp.preferred_mfa_setting #=> String
    #   resp.user_mfa_setting_list #=> Array
    #   resp.user_mfa_setting_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUser AWS API Documentation
    #
    # @overload get_user(params = {})
    # @param [Hash] params ({})
    def get_user(params = {}, options = {})
      req = build_request(:get_user, params)
      req.send_request(options)
    end

    # Given an attribute name, sends a user attribute verification code for
    # the specified attribute name to the currently signed-in user.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [required, String] :attribute_name
    #   The name of the attribute that the user wants to verify, for example
    #   `email`.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the GetUserAttributeVerificationCode API
    #   action, Amazon Cognito invokes the function that is assigned to the
    #   *custom message* trigger. When Amazon Cognito invokes this function,
    #   it passes a JSON payload, which the function receives as input. This
    #   payload contains a `clientMetadata` attribute, which provides the data
    #   that you assigned to the ClientMetadata parameter in your
    #   GetUserAttributeVerificationCode request. In your function code in
    #   Lambda, you can process the `clientMetadata` value to enhance your
    #   workflow for your specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::GetUserAttributeVerificationCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserAttributeVerificationCodeResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_attribute_verification_code({
    #     access_token: "TokenModelType", # required
    #     attribute_name: "AttributeNameType", # required
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserAttributeVerificationCode AWS API Documentation
    #
    # @overload get_user_attribute_verification_code(params = {})
    # @param [Hash] params ({})
    def get_user_attribute_verification_code(params = {}, options = {})
      req = build_request(:get_user_attribute_verification_code, params)
      req.send_request(options)
    end

    # Lists the authentication options for the currently signed-in user.
    # Returns the following:
    #
    # 1.  The user's multi-factor authentication (MFA) preferences.
    #
    # 2.  The user's options for choice-based authentication with the
    #     `USER_AUTH` flow.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @return [Types::GetUserAuthFactorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserAuthFactorsResponse#username #username} => String
    #   * {Types::GetUserAuthFactorsResponse#preferred_mfa_setting #preferred_mfa_setting} => String
    #   * {Types::GetUserAuthFactorsResponse#user_mfa_setting_list #user_mfa_setting_list} => Array&lt;String&gt;
    #   * {Types::GetUserAuthFactorsResponse#configured_user_auth_factors #configured_user_auth_factors} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_auth_factors({
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.username #=> String
    #   resp.preferred_mfa_setting #=> String
    #   resp.user_mfa_setting_list #=> Array
    #   resp.user_mfa_setting_list[0] #=> String
    #   resp.configured_user_auth_factors #=> Array
    #   resp.configured_user_auth_factors[0] #=> String, one of "PASSWORD", "EMAIL_OTP", "SMS_OTP", "WEB_AUTHN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserAuthFactors AWS API Documentation
    #
    # @overload get_user_auth_factors(params = {})
    # @param [Hash] params ({})
    def get_user_auth_factors(params = {}, options = {})
      req = build_request(:get_user_auth_factors, params)
      req.send_request(options)
    end

    # Given a user pool ID, returns configuration for sign-in with WebAuthn
    # authenticators and for multi-factor authentication (MFA). This
    # operation describes the following:
    #
    # * The WebAuthn relying party (RP) ID and user-verification settings.
    #
    # * The required, optional, or disabled state of MFA for all user pool
    #   users.
    #
    # * The message templates for email and SMS MFA.
    #
    # * The enabled or disabled state of time-based one-time password (TOTP)
    #   MFA.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to query WebAuthn and MFA
    #   configuration.
    #
    # @return [Types::GetUserPoolMfaConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserPoolMfaConfigResponse#sms_mfa_configuration #sms_mfa_configuration} => Types::SmsMfaConfigType
    #   * {Types::GetUserPoolMfaConfigResponse#software_token_mfa_configuration #software_token_mfa_configuration} => Types::SoftwareTokenMfaConfigType
    #   * {Types::GetUserPoolMfaConfigResponse#email_mfa_configuration #email_mfa_configuration} => Types::EmailMfaConfigType
    #   * {Types::GetUserPoolMfaConfigResponse#mfa_configuration #mfa_configuration} => String
    #   * {Types::GetUserPoolMfaConfigResponse#web_authn_configuration #web_authn_configuration} => Types::WebAuthnConfigurationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_pool_mfa_config({
    #     user_pool_id: "UserPoolIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sms_mfa_configuration.sms_authentication_message #=> String
    #   resp.sms_mfa_configuration.sms_configuration.sns_caller_arn #=> String
    #   resp.sms_mfa_configuration.sms_configuration.external_id #=> String
    #   resp.sms_mfa_configuration.sms_configuration.sns_region #=> String
    #   resp.software_token_mfa_configuration.enabled #=> Boolean
    #   resp.email_mfa_configuration.message #=> String
    #   resp.email_mfa_configuration.subject #=> String
    #   resp.mfa_configuration #=> String, one of "OFF", "ON", "OPTIONAL"
    #   resp.web_authn_configuration.relying_party_id #=> String
    #   resp.web_authn_configuration.user_verification #=> String, one of "required", "preferred"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserPoolMfaConfig AWS API Documentation
    #
    # @overload get_user_pool_mfa_config(params = {})
    # @param [Hash] params ({})
    def get_user_pool_mfa_config(params = {}, options = {})
      req = build_request(:get_user_pool_mfa_config, params)
      req.send_request(options)
    end

    # Invalidates the identity, access, and refresh tokens that Amazon
    # Cognito issued to a user. Call this operation when your user signs out
    # of your app. This results in the following behavior.
    #
    # * Amazon Cognito no longer accepts *token-authorized* user operations
    #   that you authorize with a signed-out user's access tokens. For more
    #   information, see [Using the Amazon Cognito user pools API and user
    #   pool endpoints][1].
    #
    #   Amazon Cognito returns an `Access Token has been revoked` error when
    #   your app attempts to authorize a user pools API request with a
    #   revoked access token that contains the scope
    #   `aws.cognito.signin.user.admin`.
    #
    # * Amazon Cognito no longer accepts a signed-out user's ID token in a
    #   [GetId ][2] request to an identity pool with `ServerSideTokenCheck`
    #   enabled for its user pool IdP configuration in
    #   [CognitoIdentityProvider][3].
    #
    # * Amazon Cognito no longer accepts a signed-out user's refresh tokens
    #   in refresh requests.
    #
    # Other requests might be valid until your user's token expires. This
    # operation doesn't clear the [managed login][4] session cookie. To
    # clear the session for a user who signed in with managed login or the
    # classic hosted UI, direct their browser session to the [logout
    # endpoint][5].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html
    # [3]: https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
    # [5]: https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.global_sign_out({
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GlobalSignOut AWS API Documentation
    #
    # @overload global_sign_out(params = {})
    # @param [Hash] params ({})
    def global_sign_out(params = {}, options = {})
      req = build_request(:global_sign_out, params)
      req.send_request(options)
    end

    # Declares an authentication flow and initiates sign-in for a user in
    # the Amazon Cognito user directory. Amazon Cognito might respond with
    # an additional challenge or an `AuthenticationResult` that contains the
    # outcome of a successful authentication. You can't sign in a user with
    # a federated IdP with `InitiateAuth`. For more information, see
    # [Authentication][1].
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][3]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][4] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [3]: https://console.aws.amazon.com/pinpoint/home/
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :auth_flow
    #   The authentication flow that you want to initiate. Each `AuthFlow` has
    #   linked `AuthParameters` that you must submit. The following are some
    #   example flows.
    #
    #   USER\_AUTH
    #
    #   : The entry point for [choice-based authentication][1] with passwords,
    #     one-time passwords, and WebAuthn authenticators. Request a preferred
    #     authentication type or review available authentication types. From
    #     the offered authentication types, select one in a challenge response
    #     and then authenticate with that method in an additional challenge
    #     response. To activate this setting, your user pool must be in the [
    #     Essentials tier][2] or higher.
    #
    #   USER\_SRP\_AUTH
    #
    #   : Username-password authentication with the Secure Remote Password
    #     (SRP) protocol. For more information, see [Use SRP password
    #     verification in custom authentication flow][3].
    #
    #   REFRESH\_TOKEN\_AUTH and REFRESH\_TOKEN
    #
    #   : Receive new ID and access tokens when you pass a `REFRESH_TOKEN`
    #     parameter with a valid refresh token as the value. For more
    #     information, see [Using the refresh token][4].
    #
    #   CUSTOM\_AUTH
    #
    #   : Custom authentication with Lambda triggers. For more information,
    #     see [Custom authentication challenge Lambda triggers][5].
    #
    #   USER\_PASSWORD\_AUTH
    #
    #   : Client-side username-password authentication with the password sent
    #     directly in the request. For more information about client-side and
    #     server-side authentication, see [SDK authorization models][6].
    #
    #   `ADMIN_USER_PASSWORD_AUTH` is a flow type of `AdminInitiateAuth` and
    #   isn't valid for InitiateAuth. `ADMIN_NO_SRP_AUTH` is a legacy
    #   server-side username-password flow and isn't valid for InitiateAuth.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #   [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow.html#Using-SRP-password-verification-in-custom-authentication-flow
    #   [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-refresh-token.html
    #   [5]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    #   [6]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html
    #
    # @option params [Hash<String,String>] :auth_parameters
    #   The authentication parameters. These are inputs corresponding to the
    #   `AuthFlow` that you're invoking.
    #
    #   The required values are specific to the InitiateAuthRequest$AuthFlow.
    #
    #   The following are some authentication flows and their parameters. Add
    #   a `SECRET_HASH` parameter if your app client has a client secret.
    #
    #   * `USER_AUTH`: `USERNAME` (required), `PREFERRED_CHALLENGE`. If you
    #     don't provide a value for `PREFERRED_CHALLENGE`, Amazon Cognito
    #     responds with the `AvailableChallenges` parameter that specifies the
    #     available sign-in methods.
    #
    #   * `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required),
    #     `DEVICE_KEY`.
    #
    #   * `USER_PASSWORD_AUTH`: `USERNAME` (required), `PASSWORD` (required),
    #     `DEVICE_KEY`.
    #
    #   * `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required),
    #     `DEVICE_KEY`.
    #
    #   * `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app client
    #     is configured with client secret), `DEVICE_KEY`. To start the
    #     authentication flow with password verification, include
    #     `ChallengeName: SRP_A` and `SRP_A: (The SRP_A Value)`.
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][1]. For information about `DEVICE_KEY`, see [Working with user
    #   devices in your user pool][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for
    #   certain custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you send an `InitiateAuth` request, Amazon Cognito
    #   invokes the Lambda functions that are specified for various triggers.
    #   The `ClientMetadata` value is passed as input to the functions for
    #   only the following triggers.
    #
    #   * Pre sign-up
    #
    #   * Pre authentication
    #
    #   * User migration
    #
    #   When Amazon Cognito invokes the functions for these triggers, it
    #   passes a JSON payload as input to the function. This payload contains
    #   a `validationData` attribute with the data that you assigned to the
    #   `ClientMetadata` parameter in your `InitiateAuth` request. In your
    #   function, `validationData` can contribute to operations that require
    #   data that isn't in the default payload.
    #
    #   `InitiateAuth` requests invokes the following triggers without
    #   `ClientMetadata` as input.
    #
    #   * Post authentication
    #
    #   * Custom message
    #
    #   * Pre token generation
    #
    #   * Create auth challenge
    #
    #   * Define auth challenge
    #
    #   * Custom email sender
    #
    #   * Custom SMS sender
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @option params [required, String] :client_id
    #   The ID of the app client that your user wants to sign in to.
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your app
    #   generates and passes to Amazon Cognito when it makes API requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #
    # @option params [String] :session
    #   The optional session ID from a `ConfirmSignUp` API request. You can
    #   sign in a user directly from the sign-up process with the `USER_AUTH`
    #   authentication flow. When you pass the session ID to `InitiateAuth`,
    #   Amazon Cognito assumes the SMS or email message one-time verification
    #   password from `ConfirmSignUp` as the primary authentication factor.
    #   You're not required to submit this code a second time. This option is
    #   only valid for users who have confirmed their sign-up and are signing
    #   in for the first time within the authentication flow session duration
    #   of the session ID.
    #
    # @return [Types::InitiateAuthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateAuthResponse#challenge_name #challenge_name} => String
    #   * {Types::InitiateAuthResponse#session #session} => String
    #   * {Types::InitiateAuthResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::InitiateAuthResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #   * {Types::InitiateAuthResponse#available_challenges #available_challenges} => Array&lt;String&gt;
    #
    #
    # @example Example: Example username and password sign-in for a user who has TOTP MFA
    #
    #   # The following example signs in the user mytestuser with analytics data, client metadata, and user context data for
    #   # advanced security.
    #
    #   resp = client.initiate_auth({
    #     analytics_metadata: {
    #       analytics_endpoint_id: "d70b2ba36a8c4dc5a04a0451a31a1e12", 
    #     }, 
    #     auth_flow: "USER_PASSWORD_AUTH", 
    #     auth_parameters: {
    #       "PASSWORD" => "This-is-my-test-99!", 
    #       "SECRET_HASH" => "oT5ZkS8ctnrhYeeGsGTvOzPhoc/Jd1cO5fueBWFVmp8=", 
    #       "USERNAME" => "mytestuser", 
    #     }, 
    #     client_id: "1example23456789", 
    #     client_metadata: {
    #       "MyTestKey" => "MyTestValue", 
    #     }, 
    #     user_context_data: {
    #       encoded_data: "AmazonCognitoAdvancedSecurityData_object", 
    #       ip_address: "192.0.2.1", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     challenge_name: "SOFTWARE_TOKEN_MFA", 
    #     challenge_parameters: {
    #       "FRIENDLY_DEVICE_NAME" => "mytestauthenticator", 
    #       "USER_ID_FOR_SRP" => "mytestuser", 
    #     }, 
    #     session: "AYABeC1-y8qooiuysEv0uM4wAqQAHQABAAdTZXJ2aWNlABBDb2duaXRvVXNlclBvb2xzAAEAB2F3cy1rbXMAS2Fybjphd3M6a21zOnVzLXdlc3QtMjowMTU3MzY3MjcxOTg6a2V5LzI5OTFhNGE5LTM5YTAtNDQ0Mi04MWU4LWRkYjY4NTllMTg2MQC4AQIBAHhjxv5lVLhE2_WNrC1zuomqn08qDUUp3z9v4EGAjazZ-wGP3HuBF5Izvxf-9WkCT5uyAAAAfjB8BgkqhkiG9w0BBwagbzBtAgEAMGgGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMeQoT5e6Dpfh52caqAgEQgDvuL8uLMhPt0WmQpZnkNED1gob6xbqt5LaQo_H4L5CuT4Kj499dGCoZ1q1trmlZSRgRm0wwGGG8lFU37QIAAAAADAAAEAAAAAAAAAAAAAAAAADuLe9_UJ4oZAMsQYr0ntiT_____wAAAAEAAAAAAAAAAAAAAAEAAADnLDGmKBQtsCafNokRmPLgl2itBKuKR2dfZBQb5ucCYkzThM5HOfQUSEL-A3dZzfYDC0IODsrcMkrbeeVyMJk-FCzsxS9Og8BEBVnvi9WjZkPJ4mF0YS6FUXnoPSBV5oUqGzRaT-tJ169SUFZAUfFM1fGeJ8T57-QdCxjyISRCWV1VG5_7TiCioyRGfWwzNVWh7exJortF3ccfOyiEyxeqJ2VJvJq3m_w8NP24_PMDpktpRMKftObIMlD5ewRTNCdrUXQ1BW5KIxhJLGjYfRzJDZuKzmEgS-VHsKz0z76w-AlAgdfvdAjflLnsgduU5kUX4YP6jqnetg", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_auth({
    #     auth_flow: "USER_SRP_AUTH", # required, accepts USER_SRP_AUTH, REFRESH_TOKEN_AUTH, REFRESH_TOKEN, CUSTOM_AUTH, ADMIN_NO_SRP_AUTH, USER_PASSWORD_AUTH, ADMIN_USER_PASSWORD_AUTH, USER_AUTH
    #     auth_parameters: {
    #       "StringType" => "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #     client_id: "ClientIdType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     session: "SessionType",
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #   resp.available_challenges #=> Array
    #   resp.available_challenges[0] #=> String, one of "SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InitiateAuth AWS API Documentation
    #
    # @overload initiate_auth(params = {})
    # @param [Hash] params ({})
    def initiate_auth(params = {}, options = {})
      req = build_request(:initiate_auth, params)
      req.send_request(options)
    end

    # Lists the devices that Amazon Cognito has registered to the currently
    # signed-in user. For more information about device authentication, see
    # [Working with user devices in your user pool][1].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [Integer] :limit
    #   The maximum number of devices that you want Amazon Cognito to return
    #   in the response.
    #
    # @option params [String] :pagination_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::ListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicesResponse#devices #devices} => Array&lt;Types::DeviceType&gt;
    #   * {Types::ListDevicesResponse#pagination_token #pagination_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices({
    #     access_token: "TokenModelType", # required
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType",
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_key #=> String
    #   resp.devices[0].device_attributes #=> Array
    #   resp.devices[0].device_attributes[0].name #=> String
    #   resp.devices[0].device_attributes[0].value #=> String
    #   resp.devices[0].device_create_date #=> Time
    #   resp.devices[0].device_last_modified_date #=> Time
    #   resp.devices[0].device_last_authenticated_date #=> Time
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListDevices AWS API Documentation
    #
    # @overload list_devices(params = {})
    # @param [Hash] params ({})
    def list_devices(params = {}, options = {})
      req = build_request(:list_devices, params)
      req.send_request(options)
    end

    # Given a user pool ID, returns user pool groups and their details.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to list user groups.
    #
    # @option params [Integer] :limit
    #   The maximum number of groups that you want Amazon Cognito to return in
    #   the response.
    #
    # @option params [String] :next_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#groups #groups} => Array&lt;Types::GroupType&gt;
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     user_pool_id: "UserPoolIdType", # required
    #     limit: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].user_pool_id #=> String
    #   resp.groups[0].description #=> String
    #   resp.groups[0].role_arn #=> String
    #   resp.groups[0].precedence #=> Integer
    #   resp.groups[0].last_modified_date #=> Time
    #   resp.groups[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Given a user pool ID, returns information about configured identity
    # providers (IdPs). For more information about IdPs, see [Third-party
    # IdP sign-in][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to list IdPs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of IdPs that you want Amazon Cognito to return in
    #   the response.
    #
    # @option params [String] :next_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::ListIdentityProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityProvidersResponse#providers #providers} => Array&lt;Types::ProviderDescription&gt;
    #   * {Types::ListIdentityProvidersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_providers({
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "PaginationKeyType",
    #   })
    #
    # @example Response structure
    #
    #   resp.providers #=> Array
    #   resp.providers[0].provider_name #=> String
    #   resp.providers[0].provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.providers[0].last_modified_date #=> Time
    #   resp.providers[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListIdentityProviders AWS API Documentation
    #
    # @overload list_identity_providers(params = {})
    # @param [Hash] params ({})
    def list_identity_providers(params = {}, options = {})
      req = build_request(:list_identity_providers, params)
      req.send_request(options)
    end

    # Given a user pool ID, returns all resource servers and their details.
    # For more information about resource servers, see [Access control with
    # resource servers][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to list resource servers.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resource servers that you want Amazon Cognito to
    #   return in the response.
    #
    # @option params [String] :next_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::ListResourceServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceServersResponse#resource_servers #resource_servers} => Array&lt;Types::ResourceServerType&gt;
    #   * {Types::ListResourceServersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_servers({
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "PaginationKeyType",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_servers #=> Array
    #   resp.resource_servers[0].user_pool_id #=> String
    #   resp.resource_servers[0].identifier #=> String
    #   resp.resource_servers[0].name #=> String
    #   resp.resource_servers[0].scopes #=> Array
    #   resp.resource_servers[0].scopes[0].scope_name #=> String
    #   resp.resource_servers[0].scopes[0].scope_description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListResourceServers AWS API Documentation
    #
    # @overload list_resource_servers(params = {})
    # @param [Hash] params ({})
    def list_resource_servers(params = {}, options = {})
      req = build_request(:list_resource_servers, params)
      req.send_request(options)
    end

    # Lists the tags that are assigned to an Amazon Cognito user pool. For
    # more information, see [Tagging resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the user pool that the tags are
    #   assigned to.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ArnType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKeysType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Given a user pool ID, returns user import jobs and their details.
    # Import jobs are retained in user pool configuration so that you can
    # stage, stop, start, review, and delete them. For more information
    # about user import, see [Importing users from a CSV file][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to list import jobs.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of import jobs that you want Amazon Cognito to
    #   return in the response.
    #
    # @option params [String] :pagination_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::ListUserImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserImportJobsResponse#user_import_jobs #user_import_jobs} => Array&lt;Types::UserImportJobType&gt;
    #   * {Types::ListUserImportJobsResponse#pagination_token #pagination_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_import_jobs({
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1, # required
    #     pagination_token: "PaginationKeyType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_jobs #=> Array
    #   resp.user_import_jobs[0].job_name #=> String
    #   resp.user_import_jobs[0].job_id #=> String
    #   resp.user_import_jobs[0].user_pool_id #=> String
    #   resp.user_import_jobs[0].pre_signed_url #=> String
    #   resp.user_import_jobs[0].creation_date #=> Time
    #   resp.user_import_jobs[0].start_date #=> Time
    #   resp.user_import_jobs[0].completion_date #=> Time
    #   resp.user_import_jobs[0].status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_jobs[0].cloud_watch_logs_role_arn #=> String
    #   resp.user_import_jobs[0].imported_users #=> Integer
    #   resp.user_import_jobs[0].skipped_users #=> Integer
    #   resp.user_import_jobs[0].failed_users #=> Integer
    #   resp.user_import_jobs[0].completion_message #=> String
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserImportJobs AWS API Documentation
    #
    # @overload list_user_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_user_import_jobs(params = {}, options = {})
      req = build_request(:list_user_import_jobs, params)
      req.send_request(options)
    end

    # Given a user pool ID, lists app clients. App clients are sets of rules
    # for the access that you want a user pool to grant to one application.
    # For more information, see [App clients][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to list user pool clients.
    #
    # @option params [Integer] :max_results
    #   The maximum number of app clients that you want Amazon Cognito to
    #   return in the response.
    #
    # @option params [String] :next_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::ListUserPoolClientsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserPoolClientsResponse#user_pool_clients #user_pool_clients} => Array&lt;Types::UserPoolClientDescription&gt;
    #   * {Types::ListUserPoolClientsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_pool_clients({
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_clients #=> Array
    #   resp.user_pool_clients[0].client_id #=> String
    #   resp.user_pool_clients[0].user_pool_id #=> String
    #   resp.user_pool_clients[0].client_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPoolClients AWS API Documentation
    #
    # @overload list_user_pool_clients(params = {})
    # @param [Hash] params ({})
    def list_user_pool_clients(params = {}, options = {})
      req = build_request(:list_user_pool_clients, params)
      req.send_request(options)
    end

    # Lists user pools and their details in the current Amazon Web Services
    # account.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [String] :next_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of user pools that you want Amazon Cognito to
    #   return in the response.
    #
    # @return [Types::ListUserPoolsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserPoolsResponse#user_pools #user_pools} => Array&lt;Types::UserPoolDescriptionType&gt;
    #   * {Types::ListUserPoolsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_pools({
    #     next_token: "PaginationKeyType",
    #     max_results: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pools #=> Array
    #   resp.user_pools[0].id #=> String
    #   resp.user_pools[0].name #=> String
    #   resp.user_pools[0].lambda_config.pre_sign_up #=> String
    #   resp.user_pools[0].lambda_config.custom_message #=> String
    #   resp.user_pools[0].lambda_config.post_confirmation #=> String
    #   resp.user_pools[0].lambda_config.pre_authentication #=> String
    #   resp.user_pools[0].lambda_config.post_authentication #=> String
    #   resp.user_pools[0].lambda_config.define_auth_challenge #=> String
    #   resp.user_pools[0].lambda_config.create_auth_challenge #=> String
    #   resp.user_pools[0].lambda_config.verify_auth_challenge_response #=> String
    #   resp.user_pools[0].lambda_config.pre_token_generation #=> String
    #   resp.user_pools[0].lambda_config.user_migration #=> String
    #   resp.user_pools[0].lambda_config.pre_token_generation_config.lambda_version #=> String, one of "V1_0", "V2_0", "V3_0"
    #   resp.user_pools[0].lambda_config.pre_token_generation_config.lambda_arn #=> String
    #   resp.user_pools[0].lambda_config.custom_sms_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pools[0].lambda_config.custom_sms_sender.lambda_arn #=> String
    #   resp.user_pools[0].lambda_config.custom_email_sender.lambda_version #=> String, one of "V1_0"
    #   resp.user_pools[0].lambda_config.custom_email_sender.lambda_arn #=> String
    #   resp.user_pools[0].lambda_config.kms_key_id #=> String
    #   resp.user_pools[0].status #=> String, one of "Enabled", "Disabled"
    #   resp.user_pools[0].last_modified_date #=> Time
    #   resp.user_pools[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPools AWS API Documentation
    #
    # @overload list_user_pools(params = {})
    # @param [Hash] params ({})
    def list_user_pools(params = {}, options = {})
      req = build_request(:list_user_pools, params)
      req.send_request(options)
    end

    # Given a user pool ID, returns a list of users and their basic details
    # in a user pool.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to display or search for users.
    #
    # @option params [Array<String>] :attributes_to_get
    #   A JSON array of user attribute names, for example `given_name`, that
    #   you want Amazon Cognito to include in the response for each user. When
    #   you don't provide an `AttributesToGet` parameter, Amazon Cognito
    #   returns all attributes for each user.
    #
    #   Use `AttributesToGet` with required attributes in your user pool, or
    #   in conjunction with `Filter`. Amazon Cognito returns an error if not
    #   all users in the results have set a value for the attribute you
    #   request. Attributes that you can't filter on, including custom
    #   attributes, must have a value set in every user profile before an
    #   `AttributesToGet` parameter returns results.
    #
    # @option params [Integer] :limit
    #   The maximum number of users that you want Amazon Cognito to return in
    #   the response.
    #
    # @option params [String] :pagination_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @option params [String] :filter
    #   A filter string of the form `"AttributeName Filter-Type
    #   "AttributeValue"`. Quotation marks within the filter string must be
    #   escaped using the backslash (``) character. For example,
    #   `"family_name = "Reddy""`.
    #
    #   * *AttributeName*: The name of the attribute to search for. You can
    #     only search for one attribute at a time.
    #
    #   * *Filter-Type*: For an exact match, use `=`, for example,
    #     "`given_name = "Jon"`". For a prefix ("starts with") match,
    #     use `^=`, for example, "`given_name ^= "Jon"`".
    #
    #   * *AttributeValue*: The attribute value that must be matched for each
    #     user.
    #
    #   If the filter string is empty, `ListUsers` returns all users in the
    #   user pool.
    #
    #   You can only search for the following standard attributes:
    #
    #   * `username` (case-sensitive)
    #
    #   * `email`
    #
    #   * `phone_number`
    #
    #   * `name`
    #
    #   * `given_name`
    #
    #   * `family_name`
    #
    #   * `preferred_username`
    #
    #   * `cognito:user_status` (called **Status** in the Console)
    #     (case-insensitive)
    #
    #   * `status (called Enabled in the Console) (case-sensitive)`
    #
    #   * `sub`
    #
    #   Custom attributes aren't searchable.
    #
    #   <note markdown="1"> You can also list users with a client-side filter. The server-side
    #   filter matches no more than one attribute. For an advanced search, use
    #   a client-side filter with the `--query` parameter of the `list-users`
    #   action in the CLI. When you use a client-side filter, ListUsers
    #   returns a paginated list of zero or more users. You can receive
    #   multiple pages in a row with zero results. Repeat the query with each
    #   pagination token that is returned until you receive a null pagination
    #   token value, and then review the combined result.
    #
    #    For more information about server-side and client-side filtering, see
    #   [FilteringCLI output][1] in the [Command Line Interface User
    #   Guide][1].
    #
    #    </note>
    #
    #   For more information, see [Searching for Users Using the ListUsers
    #   API][2] and [Examples of Using the ListUsers API][3] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api
    #   [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::UserType&gt;
    #   * {Types::ListUsersResponse#pagination_token #pagination_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: A ListUsers request for the next 3 users whose email address starts with "testuser."
    #
    #   # This request submits a value for all possible parameters for ListUsers. By iterating the PaginationToken, you can page
    #   # through and collect all users in a user pool.
    #
    #   resp = client.list_users({
    #     attributes_to_get: [
    #       "email", 
    #       "sub", 
    #     ], 
    #     filter: "\"email\"^=\"testuser\"", 
    #     limit: 3, 
    #     pagination_token: "abcd1234EXAMPLE", 
    #     user_pool_id: "us-east-1_EXAMPLE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     pagination_token: "efgh5678EXAMPLE", 
    #     users: [
    #       {
    #         attributes: [
    #           {
    #             name: "sub", 
    #             value: "eaad0219-2117-439f-8d46-4db20e59268f", 
    #           }, 
    #           {
    #             name: "email", 
    #             value: "testuser@example.com", 
    #           }, 
    #         ], 
    #         enabled: true, 
    #         user_create_date: Time.parse(1682955829.578), 
    #         user_last_modified_date: Time.parse(1689030181.63), 
    #         user_status: "CONFIRMED", 
    #         username: "testuser", 
    #       }, 
    #       {
    #         attributes: [
    #           {
    #             name: "sub", 
    #             value: "3b994cfd-0b07-4581-be46-3c82f9a70c90", 
    #           }, 
    #           {
    #             name: "email", 
    #             value: "testuser2@example.com", 
    #           }, 
    #         ], 
    #         enabled: true, 
    #         user_create_date: Time.parse(1684427979.201), 
    #         user_last_modified_date: Time.parse(1684427979.201), 
    #         user_status: "UNCONFIRMED", 
    #         username: "testuser2", 
    #       }, 
    #       {
    #         attributes: [
    #           {
    #             name: "sub", 
    #             value: "5929e0d1-4c34-42d1-9b79-a5ecacfe66f7", 
    #           }, 
    #           {
    #             name: "email", 
    #             value: "testuser3@example.com", 
    #           }, 
    #         ], 
    #         enabled: true, 
    #         user_create_date: Time.parse(1684427823.641), 
    #         user_last_modified_date: Time.parse(1684427823.641), 
    #         user_status: "UNCONFIRMED", 
    #         username: "testuser3@example.com", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     user_pool_id: "UserPoolIdType", # required
    #     attributes_to_get: ["AttributeNameType"],
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType",
    #     filter: "UserFilterType",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].username #=> String
    #   resp.users[0].attributes #=> Array
    #   resp.users[0].attributes[0].name #=> String
    #   resp.users[0].attributes[0].value #=> String
    #   resp.users[0].user_create_date #=> Time
    #   resp.users[0].user_last_modified_date #=> Time
    #   resp.users[0].enabled #=> Boolean
    #   resp.users[0].user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"
    #   resp.users[0].mfa_options #=> Array
    #   resp.users[0].mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.users[0].mfa_options[0].attribute_name #=> String
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Given a user pool ID and a group name, returns a list of users in the
    # group. For more information about user pool groups, see [Adding groups
    # to a user pool][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to view the membership of the
    #   requested group.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to query for user membership.
    #
    # @option params [Integer] :limit
    #   The maximum number of groups that you want Amazon Cognito to return in
    #   the response.
    #
    # @option params [String] :next_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @return [Types::ListUsersInGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersInGroupResponse#users #users} => Array&lt;Types::UserType&gt;
    #   * {Types::ListUsersInGroupResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users_in_group({
    #     user_pool_id: "UserPoolIdType", # required
    #     group_name: "GroupNameType", # required
    #     limit: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].username #=> String
    #   resp.users[0].attributes #=> Array
    #   resp.users[0].attributes[0].name #=> String
    #   resp.users[0].attributes[0].value #=> String
    #   resp.users[0].user_create_date #=> Time
    #   resp.users[0].user_last_modified_date #=> Time
    #   resp.users[0].enabled #=> Boolean
    #   resp.users[0].user_status #=> String, one of "UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"
    #   resp.users[0].mfa_options #=> Array
    #   resp.users[0].mfa_options[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.users[0].mfa_options[0].attribute_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsersInGroup AWS API Documentation
    #
    # @overload list_users_in_group(params = {})
    # @param [Hash] params ({})
    def list_users_in_group(params = {}, options = {})
      req = build_request(:list_users_in_group, params)
      req.send_request(options)
    end

    # Generates a list of the currently signed-in user's registered
    # passkey, or WebAuthn, credentials.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [String] :next_token
    #   This API operation returns a limited number of results. The pagination
    #   token is an identifier that you can present in an additional API
    #   request with the same parameters. When you include the pagination
    #   token, Amazon Cognito returns the next set of items after the current
    #   list. Subsequent requests return a new pagination token. By use of
    #   this token, you can paginate through the full list of items.
    #
    # @option params [Integer] :max_results
    #   The maximum number of the user's passkey credentials that you want to
    #   return.
    #
    # @return [Types::ListWebAuthnCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebAuthnCredentialsResponse#credentials #credentials} => Array&lt;Types::WebAuthnCredentialDescription&gt;
    #   * {Types::ListWebAuthnCredentialsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_web_authn_credentials({
    #     access_token: "TokenModelType", # required
    #     next_token: "PaginationKey",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials #=> Array
    #   resp.credentials[0].credential_id #=> String
    #   resp.credentials[0].friendly_credential_name #=> String
    #   resp.credentials[0].relying_party_id #=> String
    #   resp.credentials[0].authenticator_attachment #=> String
    #   resp.credentials[0].authenticator_transports #=> Array
    #   resp.credentials[0].authenticator_transports[0] #=> String
    #   resp.credentials[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListWebAuthnCredentials AWS API Documentation
    #
    # @overload list_web_authn_credentials(params = {})
    # @param [Hash] params ({})
    def list_web_authn_credentials(params = {}, options = {})
      req = build_request(:list_web_authn_credentials, params)
      req.send_request(options)
    end

    # Resends the code that confirms a new account for a user who has signed
    # up in your user pool. Amazon Cognito sends confirmation codes to the
    # user attribute in the `AutoVerifiedAttributes` property of your user
    # pool. When you prompt new users for the confirmation code, include a
    # "Resend code" option that generates a call to this API operation.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :client_id
    #   The ID of the user pool app client where the user signed up.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message. For more information about `SecretHash`, see [Computing
    #   secret hash values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your app
    #   generates and passes to Amazon Cognito when it makes API requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the ResendConfirmationCode API action, Amazon
    #   Cognito invokes the function that is assigned to the *custom message*
    #   trigger. When Amazon Cognito invokes this function, it passes a JSON
    #   payload, which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your ResendConfirmationCode
    #   request. In your function code in Lambda, you can process the
    #   `clientMetadata` value to enhance your workflow for your specific
    #   needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::ResendConfirmationCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResendConfirmationCodeResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resend_confirmation_code({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     username: "UsernameType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ResendConfirmationCode AWS API Documentation
    #
    # @overload resend_confirmation_code(params = {})
    # @param [Hash] params ({})
    def resend_confirmation_code(params = {}, options = {})
      req = build_request(:resend_confirmation_code, params)
      req.send_request(options)
    end

    # Some API operations in a user pool generate a challenge, like a prompt
    # for an MFA code, for device authentication that bypasses MFA, or for a
    # custom authentication challenge. A `RespondToAuthChallenge` API
    # request provides the answer to that challenge, like a code or a secure
    # remote password (SRP). The parameters of a response to an
    # authentication challenge vary with the type of challenge.
    #
    # For more information about custom authentication challenges, see
    # [Custom authentication challenge Lambda triggers][1].
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][3]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][4] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [3]: https://console.aws.amazon.com/pinpoint/home/
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :client_id
    #   The ID of the app client where the user is signing in.
    #
    # @option params [required, String] :challenge_name
    #   The name of the challenge that you are responding to.
    #
    #   <note markdown="1"> You can't respond to an `ADMIN_NO_SRP_AUTH` challenge with this
    #   operation.
    #
    #    </note>
    #
    #   Possible challenges include the following:
    #
    #   <note markdown="1"> All of the following challenges require `USERNAME` and, when the app
    #   client has a client secret, `SECRET_HASH` in the parameters.
    #
    #    </note>
    #
    #   * `WEB_AUTHN`: Respond to the challenge with the results of a
    #     successful authentication with a WebAuthn authenticator, or passkey.
    #     Examples of WebAuthn authenticators include biometric devices and
    #     security keys.
    #
    #   * `PASSWORD`: Respond with `USER_PASSWORD_AUTH` parameters: `USERNAME`
    #     (required), `PASSWORD` (required), `SECRET_HASH` (required if the
    #     app client is configured with a client secret), `DEVICE_KEY`.
    #
    #   * `PASSWORD_SRP`: Respond with `USER_SRP_AUTH` parameters: `USERNAME`
    #     (required), `SRP_A` (required), `SECRET_HASH` (required if the app
    #     client is configured with a client secret), `DEVICE_KEY`.
    #
    #   * `SELECT_CHALLENGE`: Respond to the challenge with `USERNAME` and an
    #     `ANSWER` that matches one of the challenge types in the
    #     `AvailableChallenges` response parameter.
    #
    #   * `SMS_MFA`: Respond with an `SMS_MFA_CODE` that your user pool
    #     delivered in an SMS message.
    #
    #   * `EMAIL_OTP`: Respond with an `EMAIL_OTP_CODE` that your user pool
    #     delivered in an email message.
    #
    #   * `PASSWORD_VERIFIER`: Respond with `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, and `TIMESTAMP` after client-side SRP
    #     calculations.
    #
    #   * `CUSTOM_CHALLENGE`: This is returned if your custom authentication
    #     flow determines that the user should pass another challenge before
    #     tokens are issued. The parameters of the challenge are determined by
    #     your Lambda function.
    #
    #   * `DEVICE_SRP_AUTH`: Respond with the initial parameters of device SRP
    #     authentication. For more information, see [Signing in with a
    #     device][1].
    #
    #   * `DEVICE_PASSWORD_VERIFIER`: Respond with `PASSWORD_CLAIM_SIGNATURE`,
    #     `PASSWORD_CLAIM_SECRET_BLOCK`, and `TIMESTAMP` after client-side SRP
    #     calculations. For more information, see [Signing in with a
    #     device][1].
    #
    #   * `NEW_PASSWORD_REQUIRED`: For users who are required to change their
    #     passwords after successful first login. Respond to this challenge
    #     with `NEW_PASSWORD` and any required attributes that Amazon Cognito
    #     returned in the `requiredAttributes` parameter. You can also set
    #     values for attributes that aren't required by your user pool and
    #     that your app client can write.
    #
    #     Amazon Cognito only returns this challenge for users who have
    #     temporary passwords. When you create passwordless users, you must
    #     provide values for all required attributes.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify a
    #     required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API operation
    #     to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   * `MFA_SETUP`: For users who are required to setup an MFA factor
    #     before they can sign in. The MFA types activated for the user pool
    #     will be listed in the challenge parameters `MFAS_CAN_SETUP` value.
    #
    #     To set up time-based one-time password (TOTP) MFA, use the session
    #     returned in this challenge from `InitiateAuth` or
    #     `AdminInitiateAuth` as an input to `AssociateSoftwareToken`. Then,
    #     use the session returned by `VerifySoftwareToken` as an input to
    #     `RespondToAuthChallenge` or `AdminRespondToAuthChallenge` with
    #     challenge name `MFA_SETUP` to complete sign-in.
    #
    #     To set up SMS or email MFA, collect a `phone_number` or `email`
    #     attribute for the user. Then restart the authentication flow with an
    #     `InitiateAuth` or `AdminInitiateAuth` request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device
    #
    # @option params [String] :session
    #   The session identifier that maintains the state of authentication
    #   requests and challenge responses. If an `AdminInitiateAuth` or
    #   `AdminRespondToAuthChallenge` API request results in a determination
    #   that your application must pass another challenge, Amazon Cognito
    #   returns a session with other challenge parameters. Send this session
    #   identifier, unmodified, to the next `AdminRespondToAuthChallenge`
    #   request.
    #
    # @option params [Hash<String,String>] :challenge_responses
    #   The responses to the challenge that you received in the previous
    #   request. Each challenge has its own required response parameters. The
    #   following examples are partial JSON request bodies that highlight
    #   challenge-response parameters.
    #
    #   You must provide a SECRET\_HASH parameter in all challenge responses
    #   to an app client that has a client secret. Include a `DEVICE_KEY` for
    #   device authentication.
    #
    #   SELECT\_CHALLENGE
    #
    #   : `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #     "USERNAME": "[username]", "ANSWER": "[Challenge name]"}`
    #
    #     Available challenges are `PASSWORD`, `PASSWORD_SRP`, `EMAIL_OTP`,
    #     `SMS_OTP`, and `WEB_AUTHN`.
    #
    #     Complete authentication in the `SELECT_CHALLENGE` response for
    #     `PASSWORD`, `PASSWORD_SRP`, and `WEB_AUTHN`:
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "WEB_AUTHN", "USERNAME": "[username]", "CREDENTIAL":
    #       "[AuthenticationResponseJSON]"}`
    #
    #       See [ AuthenticationResponseJSON][1].
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "PASSWORD", "USERNAME": "[username]", "PASSWORD":
    #       "[password]"}`
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "PASSWORD_SRP", "USERNAME": "[username]", "SRP_A":
    #       "[SRP_A]"}`
    #
    #     For `SMS_OTP` and `EMAIL_OTP`, respond with the username and answer.
    #     Your user pool will send a code for the user to submit in the next
    #     challenge response.
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "SMS_OTP", "USERNAME": "[username]"}`
    #
    #     * `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #       "ANSWER": "EMAIL_OTP", "USERNAME": "[username]"}`
    #
    #   SMS\_OTP
    #
    #   : `"ChallengeName": "SMS_OTP", "ChallengeResponses": {"SMS_OTP_CODE":
    #     "[code]", "USERNAME": "[username]"}`
    #
    #   EMAIL\_OTP
    #
    #   : `"ChallengeName": "EMAIL_OTP", "ChallengeResponses":
    #     {"EMAIL_OTP_CODE": "[code]", "USERNAME": "[username]"}`
    #
    #   SMS\_MFA
    #
    #   : `"ChallengeName": "SMS_MFA", "ChallengeResponses": {"SMS_MFA_CODE":
    #     "[code]", "USERNAME": "[username]"}`
    #
    #   PASSWORD\_VERIFIER
    #
    #   : This challenge response is part of the SRP flow. Amazon Cognito
    #     requires that your application respond to this challenge within a
    #     few seconds. When the response time exceeds this period, your user
    #     pool returns a `NotAuthorizedException` error.
    #
    #     `"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #     {"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #     "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #     [timestamp], "USERNAME": "[username]"}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   CUSTOM\_CHALLENGE
    #
    #   : `"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #     {"USERNAME": "[username]", "ANSWER": "[challenge_answer]"}`
    #
    #     Add `"DEVICE_KEY"` when you sign in with a remembered device.
    #
    #   NEW\_PASSWORD\_REQUIRED
    #
    #   : `"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #     {"NEW_PASSWORD": "[new_password]", "USERNAME": "[username]"}`
    #
    #     To set any required attributes that `InitiateAuth` returned in an
    #     `requiredAttributes` parameter, add
    #     `"userAttributes.[attribute_name]": "[attribute_value]"`. This
    #     parameter can also set values for writable attributes that aren't
    #     required by your user pool.
    #
    #     <note markdown="1"> In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify a
    #     required attribute that already has a value. In
    #     `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a
    #     value for any keys that Amazon Cognito returned in the
    #     `requiredAttributes` parameter, then use the
    #     `AdminUpdateUserAttributes` or `UpdateUserAttributes` API operation
    #     to modify the value of any additional attributes.
    #
    #      </note>
    #
    #   SOFTWARE\_TOKEN\_MFA
    #
    #   : `"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #     {"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #     [authenticator_code]}`
    #
    #   DEVICE\_SRP\_AUTH
    #
    #   : `"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses":
    #     {"USERNAME": "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #     "[srp_a]"}`
    #
    #   DEVICE\_PASSWORD\_VERIFIER
    #
    #   : `"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses":
    #     {"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE":
    #     "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK":
    #     "[secret_block]", "TIMESTAMP": [timestamp], "USERNAME":
    #     "[username]"}`
    #
    #   MFA\_SETUP
    #
    #   : `"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME":
    #     "[username]"}, "SESSION": "[Session ID from VerifySoftwareToken]"`
    #
    #   SELECT\_MFA\_TYPE
    #
    #   : `"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses":
    #     {"USERNAME": "[username]", "ANSWER": "[SMS_MFA or
    #     SOFTWARE_TOKEN_MFA]"}`
    #
    #   For more information about `SECRET_HASH`, see [Computing secret hash
    #   values][2]. For information about `DEVICE_KEY`, see [Working with user
    #   devices in your user pool][3].
    #
    #
    #
    #   [1]: https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #   [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your app
    #   generates and passes to Amazon Cognito when it makes API requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the RespondToAuthChallenge API action, Amazon
    #   Cognito invokes any functions that are assigned to the following
    #   triggers: *post authentication*, *pre token generation*, *define auth
    #   challenge*, *create auth challenge*, and *verify auth challenge*. When
    #   Amazon Cognito invokes any of these functions, it passes a JSON
    #   payload, which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your RespondToAuthChallenge
    #   request. In your function code in Lambda, you can process the
    #   `clientMetadata` value to enhance your workflow for your specific
    #   needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::RespondToAuthChallengeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RespondToAuthChallengeResponse#challenge_name #challenge_name} => String
    #   * {Types::RespondToAuthChallengeResponse#session #session} => String
    #   * {Types::RespondToAuthChallengeResponse#challenge_parameters #challenge_parameters} => Hash&lt;String,String&gt;
    #   * {Types::RespondToAuthChallengeResponse#authentication_result #authentication_result} => Types::AuthenticationResultType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.respond_to_auth_challenge({
    #     client_id: "ClientIdType", # required
    #     challenge_name: "SMS_MFA", # required, accepts SMS_MFA, EMAIL_OTP, SOFTWARE_TOKEN_MFA, SELECT_MFA_TYPE, MFA_SETUP, PASSWORD_VERIFIER, CUSTOM_CHALLENGE, SELECT_CHALLENGE, DEVICE_SRP_AUTH, DEVICE_PASSWORD_VERIFIER, ADMIN_NO_SRP_AUTH, NEW_PASSWORD_REQUIRED, SMS_OTP, PASSWORD, WEB_AUTHN, PASSWORD_SRP
    #     session: "SessionType",
    #     challenge_responses: {
    #       "StringType" => "StringType",
    #     },
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.challenge_name #=> String, one of "SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"
    #   resp.session #=> String
    #   resp.challenge_parameters #=> Hash
    #   resp.challenge_parameters["StringType"] #=> String
    #   resp.authentication_result.access_token #=> String
    #   resp.authentication_result.expires_in #=> Integer
    #   resp.authentication_result.token_type #=> String
    #   resp.authentication_result.refresh_token #=> String
    #   resp.authentication_result.id_token #=> String
    #   resp.authentication_result.new_device_metadata.device_key #=> String
    #   resp.authentication_result.new_device_metadata.device_group_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RespondToAuthChallenge AWS API Documentation
    #
    # @overload respond_to_auth_challenge(params = {})
    # @param [Hash] params ({})
    def respond_to_auth_challenge(params = {}, options = {})
      req = build_request(:respond_to_auth_challenge, params)
      req.send_request(options)
    end

    # Revokes all of the access tokens generated by, and at the same time
    # as, the specified refresh token. After a token is revoked, you can't
    # use the revoked token to access Amazon Cognito user APIs, or to
    # authorize access to your resource server.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :token
    #   The refresh token that you want to revoke.
    #
    # @option params [required, String] :client_id
    #   The ID of the app client where the token that you want to revoke was
    #   issued.
    #
    # @option params [String] :client_secret
    #   The client secret of the requested app client, if the client has a
    #   secret.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_token({
    #     token: "TokenModelType", # required
    #     client_id: "ClientIdType", # required
    #     client_secret: "ClientSecretType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RevokeToken AWS API Documentation
    #
    # @overload revoke_token(params = {})
    # @param [Hash] params ({})
    def revoke_token(params = {}, options = {})
      req = build_request(:revoke_token, params)
      req.send_request(options)
    end

    # Sets up or modifies the logging configuration of a user pool. User
    # pools can export user notification logs and, when threat protection is
    # active, user-activity logs. For more information, see [Exporting user
    # pool logs][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/exporting-quotas-and-usage.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to configure logging.
    #
    # @option params [required, Array<Types::LogConfigurationType>] :log_configurations
    #   A collection of the logging configurations for a user pool.
    #
    # @return [Types::SetLogDeliveryConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetLogDeliveryConfigurationResponse#log_delivery_configuration #log_delivery_configuration} => Types::LogDeliveryConfigurationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_log_delivery_configuration({
    #     user_pool_id: "UserPoolIdType", # required
    #     log_configurations: [ # required
    #       {
    #         log_level: "ERROR", # required, accepts ERROR, INFO
    #         event_source: "userNotification", # required, accepts userNotification, userAuthEvents
    #         cloud_watch_logs_configuration: {
    #           log_group_arn: "ArnType",
    #         },
    #         s3_configuration: {
    #           bucket_arn: "S3ArnType",
    #         },
    #         firehose_configuration: {
    #           stream_arn: "ArnType",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.log_delivery_configuration.user_pool_id #=> String
    #   resp.log_delivery_configuration.log_configurations #=> Array
    #   resp.log_delivery_configuration.log_configurations[0].log_level #=> String, one of "ERROR", "INFO"
    #   resp.log_delivery_configuration.log_configurations[0].event_source #=> String, one of "userNotification", "userAuthEvents"
    #   resp.log_delivery_configuration.log_configurations[0].cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.log_delivery_configuration.log_configurations[0].s3_configuration.bucket_arn #=> String
    #   resp.log_delivery_configuration.log_configurations[0].firehose_configuration.stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetLogDeliveryConfiguration AWS API Documentation
    #
    # @overload set_log_delivery_configuration(params = {})
    # @param [Hash] params ({})
    def set_log_delivery_configuration(params = {}, options = {})
      req = build_request(:set_log_delivery_configuration, params)
      req.send_request(options)
    end

    # Configures threat protection for a user pool or app client. Sets
    # configuration for the following.
    #
    # * Responses to risks with adaptive authentication
    #
    # * Responses to vulnerable passwords with compromised-credentials
    #   detection
    #
    # * Notifications to users who have had risky activity detected
    #
    # * IP-address denylist and allowlist
    #
    # To set the risk configuration for the user pool to defaults, send this
    # request with only the `UserPoolId` parameter. To reset the threat
    # protection settings of an app client to be inherited from the user
    # pool, send `UserPoolId` and `ClientId` parameters only. To change
    # threat protection to audit-only or off, update the value of
    # `UserPoolAddOns` in an `UpdateUserPool` request. To activate this
    # setting, your user pool must be on the [ Plus tier][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to set a risk configuration. If
    #   you include `UserPoolId` in your request, don't include `ClientId`.
    #   When the client ID is null, the same risk configuration is applied to
    #   all the clients in the userPool. When you include both `ClientId` and
    #   `UserPoolId`, Amazon Cognito maps the configuration to the app client
    #   only.
    #
    # @option params [String] :client_id
    #   The ID of the app client where you want to set a risk configuration.
    #   If `ClientId` is null, then the risk configuration is mapped to
    #   `UserPoolId`. When the client ID is null, the same risk configuration
    #   is applied to all the clients in the userPool.
    #
    #   When you include a `ClientId` parameter, Amazon Cognito maps the
    #   configuration to the app client. When you include both `ClientId` and
    #   `UserPoolId`, Amazon Cognito maps the configuration to the app client
    #   only.
    #
    # @option params [Types::CompromisedCredentialsRiskConfigurationType] :compromised_credentials_risk_configuration
    #   The configuration of automated reactions to detected compromised
    #   credentials. Includes settings for blocking future sign-in requests
    #   and for the types of password-submission events you want to monitor.
    #
    # @option params [Types::AccountTakeoverRiskConfigurationType] :account_takeover_risk_configuration
    #   The settings for automated responses and notification templates for
    #   adaptive authentication with threat protection.
    #
    # @option params [Types::RiskExceptionConfigurationType] :risk_exception_configuration
    #   A set of IP-address overrides to threat protection. You can set up
    #   IP-address always-block and always-allow lists.
    #
    # @return [Types::SetRiskConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetRiskConfigurationResponse#risk_configuration #risk_configuration} => Types::RiskConfigurationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_risk_configuration({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType",
    #     compromised_credentials_risk_configuration: {
    #       event_filter: ["SIGN_IN"], # accepts SIGN_IN, PASSWORD_CHANGE, SIGN_UP
    #       actions: { # required
    #         event_action: "BLOCK", # required, accepts BLOCK, NO_ACTION
    #       },
    #     },
    #     account_takeover_risk_configuration: {
    #       notify_configuration: {
    #         from: "StringType",
    #         reply_to: "StringType",
    #         source_arn: "ArnType", # required
    #         block_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType",
    #         },
    #         no_action_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType",
    #         },
    #         mfa_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType",
    #         },
    #       },
    #       actions: { # required
    #         low_action: {
    #           notify: false, # required
    #           event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #         },
    #         medium_action: {
    #           notify: false, # required
    #           event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #         },
    #         high_action: {
    #           notify: false, # required
    #           event_action: "BLOCK", # required, accepts BLOCK, MFA_IF_CONFIGURED, MFA_REQUIRED, NO_ACTION
    #         },
    #       },
    #     },
    #     risk_exception_configuration: {
    #       blocked_ip_range_list: ["StringType"],
    #       skipped_ip_range_list: ["StringType"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.risk_configuration.user_pool_id #=> String
    #   resp.risk_configuration.client_id #=> String
    #   resp.risk_configuration.compromised_credentials_risk_configuration.event_filter #=> Array
    #   resp.risk_configuration.compromised_credentials_risk_configuration.event_filter[0] #=> String, one of "SIGN_IN", "PASSWORD_CHANGE", "SIGN_UP"
    #   resp.risk_configuration.compromised_credentials_risk_configuration.actions.event_action #=> String, one of "BLOCK", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.from #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.reply_to #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.source_arn #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.block_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.no_action_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.subject #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.html_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.notify_configuration.mfa_email.text_body #=> String
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.low_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.low_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.medium_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.medium_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.high_action.notify #=> Boolean
    #   resp.risk_configuration.account_takeover_risk_configuration.actions.high_action.event_action #=> String, one of "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"
    #   resp.risk_configuration.risk_exception_configuration.blocked_ip_range_list #=> Array
    #   resp.risk_configuration.risk_exception_configuration.blocked_ip_range_list[0] #=> String
    #   resp.risk_configuration.risk_exception_configuration.skipped_ip_range_list #=> Array
    #   resp.risk_configuration.risk_exception_configuration.skipped_ip_range_list[0] #=> String
    #   resp.risk_configuration.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetRiskConfiguration AWS API Documentation
    #
    # @overload set_risk_configuration(params = {})
    # @param [Hash] params ({})
    def set_risk_configuration(params = {}, options = {})
      req = build_request(:set_risk_configuration, params)
      req.send_request(options)
    end

    # Configures UI branding settings for domains with the hosted UI
    # (classic) branding version. Your user pool must have a domain.
    # Configure a domain with .
    #
    # Set the default configuration for all clients with a `ClientId` of
    # `ALL`. When the `ClientId` value is an app client ID, the settings you
    # pass in this request apply to that app client and override the default
    # `ALL` configuration.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to apply branding to the
    #   classic hosted UI.
    #
    # @option params [String] :client_id
    #   The ID of the app client that you want to customize. To apply a
    #   default style to all app clients not configured with client-level
    #   branding, set this parameter value to `ALL`.
    #
    # @option params [String] :css
    #   A plaintext CSS file that contains the custom fields that you want to
    #   apply to your user pool or app client. To download a template, go to
    #   the Amazon Cognito console. Navigate to your user pool *App clients*
    #   tab, select *Login pages*, edit *Hosted UI (classic) style*, and
    #   select the link to `CSS template.css`.
    #
    # @option params [String, StringIO, File] :image_file
    #   The image that you want to set as your login in the classic hosted UI,
    #   as a Base64-formatted binary object.
    #
    # @return [Types::SetUICustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetUICustomizationResponse#ui_customization #ui_customization} => Types::UICustomizationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_ui_customization({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType",
    #     css: "CSSType",
    #     image_file: "data",
    #   })
    #
    # @example Response structure
    #
    #   resp.ui_customization.user_pool_id #=> String
    #   resp.ui_customization.client_id #=> String
    #   resp.ui_customization.image_url #=> String
    #   resp.ui_customization.css #=> String
    #   resp.ui_customization.css_version #=> String
    #   resp.ui_customization.last_modified_date #=> Time
    #   resp.ui_customization.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUICustomization AWS API Documentation
    #
    # @overload set_ui_customization(params = {})
    # @param [Hash] params ({})
    def set_ui_customization(params = {}, options = {})
      req = build_request(:set_ui_customization, params)
      req.send_request(options)
    end

    # Set the user's multi-factor authentication (MFA) method preference,
    # including which MFA factors are activated and if any are preferred.
    # Only one factor can be set as preferred. The preferred MFA factor will
    # be used to authenticate a user if multiple factors are activated. If
    # multiple options are activated and no preference is set, a challenge
    # to choose an MFA option will be returned during sign-in. If an MFA
    # type is activated for a user, the user will be prompted for MFA during
    # all sign-in attempts unless device tracking is turned on and the
    # device has been trusted. If you want MFA to be applied selectively
    # based on the assessed risk level of sign-in attempts, deactivate MFA
    # for users and turn on Adaptive Authentication for the user pool.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [Types::SMSMfaSettingsType] :sms_mfa_settings
    #   User preferences for SMS message MFA. Activates or deactivates SMS MFA
    #   and sets it as the preferred MFA method when multiple methods are
    #   available.
    #
    # @option params [Types::SoftwareTokenMfaSettingsType] :software_token_mfa_settings
    #   User preferences for time-based one-time password (TOTP) MFA.
    #   Activates or deactivates TOTP MFA and sets it as the preferred MFA
    #   method when multiple methods are available. Users must register a TOTP
    #   authenticator before they set this as their preferred MFA method.
    #
    # @option params [Types::EmailMfaSettingsType] :email_mfa_settings
    #   User preferences for email message MFA. Activates or deactivates email
    #   MFA and sets it as the preferred MFA method when multiple methods are
    #   available. To activate this setting, your user pool must be in the [
    #   Essentials tier][1] or higher.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_user_mfa_preference({
    #     sms_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false,
    #     },
    #     software_token_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false,
    #     },
    #     email_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false,
    #     },
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserMFAPreference AWS API Documentation
    #
    # @overload set_user_mfa_preference(params = {})
    # @param [Hash] params ({})
    def set_user_mfa_preference(params = {}, options = {})
      req = build_request(:set_user_mfa_preference, params)
      req.send_request(options)
    end

    # Sets user pool multi-factor authentication (MFA) and passkey
    # configuration. For more information about user pool MFA, see [Adding
    # MFA][1]. For more information about WebAuthn passkeys see
    # [Authentication flows][2].
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][3]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][4] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-mfa.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html#amazon-cognito-user-pools-authentication-flow-methods-passkey
    # [3]: https://console.aws.amazon.com/pinpoint/home/
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :user_pool_id
    #   The user pool ID.
    #
    # @option params [Types::SmsMfaConfigType] :sms_mfa_configuration
    #   Configures user pool SMS messages for MFA. Sets the message template
    #   and the SMS message sending configuration for Amazon SNS.
    #
    # @option params [Types::SoftwareTokenMfaConfigType] :software_token_mfa_configuration
    #   Configures a user pool for time-based one-time password (TOTP) MFA.
    #   Enables or disables TOTP.
    #
    # @option params [Types::EmailMfaConfigType] :email_mfa_configuration
    #   Sets configuration for user pool email message MFA and sign-in with
    #   one-time passwords (OTPs). Includes the subject and body of the email
    #   message template for sign-in and MFA messages. To activate this
    #   setting, your user pool must be in the [ Essentials tier][1] or
    #   higher.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #
    # @option params [String] :mfa_configuration
    #   Sets multi-factor authentication (MFA) to be on, off, or optional.
    #   When `ON`, all users must set up MFA before they can sign in. When
    #   `OPTIONAL`, your application must make a client-side determination of
    #   whether a user wants to register an MFA device. For user pools with
    #   adaptive authentication with threat protection, choose `OPTIONAL`.
    #
    #   When `MfaConfiguration` is `OPTIONAL`, managed login doesn't
    #   automatically prompt users to set up MFA. Amazon Cognito generates MFA
    #   prompts in API responses and in managed login for users who have
    #   chosen and configured a preferred MFA factor.
    #
    # @option params [Types::WebAuthnConfigurationType] :web_authn_configuration
    #   The configuration of your user pool for passkey, or WebAuthn,
    #   authentication and registration. You can set this configuration
    #   independent of the MFA configuration options in this operation.
    #
    # @return [Types::SetUserPoolMfaConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetUserPoolMfaConfigResponse#sms_mfa_configuration #sms_mfa_configuration} => Types::SmsMfaConfigType
    #   * {Types::SetUserPoolMfaConfigResponse#software_token_mfa_configuration #software_token_mfa_configuration} => Types::SoftwareTokenMfaConfigType
    #   * {Types::SetUserPoolMfaConfigResponse#email_mfa_configuration #email_mfa_configuration} => Types::EmailMfaConfigType
    #   * {Types::SetUserPoolMfaConfigResponse#mfa_configuration #mfa_configuration} => String
    #   * {Types::SetUserPoolMfaConfigResponse#web_authn_configuration #web_authn_configuration} => Types::WebAuthnConfigurationType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_user_pool_mfa_config({
    #     user_pool_id: "UserPoolIdType", # required
    #     sms_mfa_configuration: {
    #       sms_authentication_message: "SmsVerificationMessageType",
    #       sms_configuration: {
    #         sns_caller_arn: "ArnType", # required
    #         external_id: "StringType",
    #         sns_region: "RegionCodeType",
    #       },
    #     },
    #     software_token_mfa_configuration: {
    #       enabled: false,
    #     },
    #     email_mfa_configuration: {
    #       message: "EmailMfaMessageType",
    #       subject: "EmailMfaSubjectType",
    #     },
    #     mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
    #     web_authn_configuration: {
    #       relying_party_id: "RelyingPartyIdType",
    #       user_verification: "required", # accepts required, preferred
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.sms_mfa_configuration.sms_authentication_message #=> String
    #   resp.sms_mfa_configuration.sms_configuration.sns_caller_arn #=> String
    #   resp.sms_mfa_configuration.sms_configuration.external_id #=> String
    #   resp.sms_mfa_configuration.sms_configuration.sns_region #=> String
    #   resp.software_token_mfa_configuration.enabled #=> Boolean
    #   resp.email_mfa_configuration.message #=> String
    #   resp.email_mfa_configuration.subject #=> String
    #   resp.mfa_configuration #=> String, one of "OFF", "ON", "OPTIONAL"
    #   resp.web_authn_configuration.relying_party_id #=> String
    #   resp.web_authn_configuration.user_verification #=> String, one of "required", "preferred"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserPoolMfaConfig AWS API Documentation
    #
    # @overload set_user_pool_mfa_config(params = {})
    # @param [Hash] params ({})
    def set_user_pool_mfa_config(params = {}, options = {})
      req = build_request(:set_user_pool_mfa_config, params)
      req.send_request(options)
    end

    # *This action is no longer supported.* You can use it to configure only
    # SMS MFA. You can't use it to configure time-based one-time password
    # (TOTP) software token or email MFA.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [required, Array<Types::MFAOptionType>] :mfa_options
    #   You can use this parameter only to set an SMS configuration that uses
    #   SMS for delivery.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_user_settings({
    #     access_token: "TokenModelType", # required
    #     mfa_options: [ # required
    #       {
    #         delivery_medium: "SMS", # accepts SMS, EMAIL
    #         attribute_name: "AttributeNameType",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserSettings AWS API Documentation
    #
    # @overload set_user_settings(params = {})
    # @param [Hash] params ({})
    def set_user_settings(params = {}, options = {})
      req = build_request(:set_user_settings, params)
      req.send_request(options)
    end

    # Registers a user with an app client and requests a user name,
    # password, and user attributes in the user pool.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # You might receive a `LimitExceeded` exception in response to this
    # request if you have exceeded a rate quota for email or SMS messages,
    # and if your user pool automatically verifies email addresses or phone
    # numbers. When you get this exception in the response, the user is
    # successfully created and is in an `UNCONFIRMED` state.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, String] :client_id
    #   The ID of the app client where the user wants to sign up.
    #
    # @option params [String] :secret_hash
    #   A keyed-hash message authentication code (HMAC) calculated using the
    #   secret key of a user pool client and username plus the client ID in
    #   the message. For more information about `SecretHash`, see [Computing
    #   secret hash values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash
    #
    # @option params [required, String] :username
    #   The username of the user that you want to sign up. The value of this
    #   parameter is typically a username, but can be any alias attribute in
    #   your user pool.
    #
    # @option params [String] :password
    #   The user's proposed password. The password must comply with the
    #   [password requirements][1] of your user pool.
    #
    #   Users can sign up without a password when your user pool supports
    #   passwordless sign-in with email or SMS OTPs. To create a user with no
    #   password, omit this parameter or submit a blank value. You can only
    #   create a passwordless user when passwordless sign-in is available.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/managing-users-passwords.html
    #
    # @option params [Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, include a `custom:` prefix in the attribute
    #   name, for example `custom:department`.
    #
    # @option params [Array<Types::AttributeType>] :validation_data
    #   Temporary user attributes that contribute to the outcomes of your pre
    #   sign-up Lambda trigger. This set of key-value pairs are for custom
    #   validation of information that you collect from your users but don't
    #   need to retain.
    #
    #   Your Lambda function can analyze this additional data and act on it.
    #   Your function can automatically confirm and verify select users or
    #   perform external API operations like logging user attributes and
    #   validation data to Amazon CloudWatch Logs.
    #
    #   For more information about the pre sign-up Lambda trigger, see [Pre
    #   sign-up Lambda trigger][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html
    #
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   Information that supports analytics outcomes with Amazon Pinpoint,
    #   including the user's endpoint ID. The endpoint ID is a destination
    #   for Amazon Pinpoint push notifications, for example a device
    #   identifier, email address, or phone number.
    #
    # @option params [Types::UserContextDataType] :user_context_data
    #   Contextual data about your user session like the device fingerprint,
    #   IP address, or location. Amazon Cognito threat protection evaluates
    #   the risk of an authentication event based on the context that your app
    #   generates and passes to Amazon Cognito when it makes API requests.
    #
    #   For more information, see [Collecting data for threat protection in
    #   applications][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action triggers.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the SignUp API action, Amazon Cognito invokes
    #   any functions that are assigned to the following triggers: *pre
    #   sign-up*, *custom message*, and *post confirmation*. When Amazon
    #   Cognito invokes any of these functions, it passes a JSON payload,
    #   which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your SignUp request. In your
    #   function code in Lambda, you can process the `clientMetadata` value to
    #   enhance your workflow for your specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::SignUpResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SignUpResponse#user_confirmed #user_confirmed} => Boolean
    #   * {Types::SignUpResponse#code_delivery_details #code_delivery_details} => Types::CodeDeliveryDetailsType
    #   * {Types::SignUpResponse#user_sub #user_sub} => String
    #   * {Types::SignUpResponse#session #session} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sign_up({
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #     password: "PasswordType",
    #     user_attributes: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     validation_data: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType",
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType",
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_confirmed #=> Boolean
    #   resp.code_delivery_details.destination #=> String
    #   resp.code_delivery_details.delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details.attribute_name #=> String
    #   resp.user_sub #=> String
    #   resp.session #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SignUp AWS API Documentation
    #
    # @overload sign_up(params = {})
    # @param [Hash] params ({})
    def sign_up(params = {}, options = {})
      req = build_request(:sign_up, params)
      req.send_request(options)
    end

    # Instructs your user pool to start importing users from a CSV file that
    # contains their usernames and attributes. For more information about
    # importing users from a CSV file, see [Importing users from a CSV
    # file][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that you want to start importing users into.
    #
    # @option params [required, String] :job_id
    #   The ID of a user import job that you previously created.
    #
    # @return [Types::StartUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_user_import_job({
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StartUserImportJob AWS API Documentation
    #
    # @overload start_user_import_job(params = {})
    # @param [Hash] params ({})
    def start_user_import_job(params = {}, options = {})
      req = build_request(:start_user_import_job, params)
      req.send_request(options)
    end

    # Requests credential creation options from your user pool for the
    # currently signed-in user. Returns information about the user pool, the
    # user profile, and authentication requirements. Users must provide this
    # information in their request to enroll your application with their
    # passkey provider.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @return [Types::StartWebAuthnRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartWebAuthnRegistrationResponse#credential_creation_options #credential_creation_options} => Hash,Array,String,Numeric,Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_web_authn_registration({
    #     access_token: "TokenModelType", # required
    #   })
    #
    # @example Response structure
    #
    #
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StartWebAuthnRegistration AWS API Documentation
    #
    # @overload start_web_authn_registration(params = {})
    # @param [Hash] params ({})
    def start_web_authn_registration(params = {}, options = {})
      req = build_request(:start_web_authn_registration, params)
      req.send_request(options)
    end

    # Instructs your user pool to stop a running job that's importing users
    # from a CSV file that contains their usernames and attributes. For more
    # information about importing users from a CSV file, see [Importing
    # users from a CSV file][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that you want to stop.
    #
    # @option params [required, String] :job_id
    #   The ID of a running user import job.
    #
    # @return [Types::StopUserImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopUserImportJobResponse#user_import_job #user_import_job} => Types::UserImportJobType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_user_import_job({
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_import_job.job_name #=> String
    #   resp.user_import_job.job_id #=> String
    #   resp.user_import_job.user_pool_id #=> String
    #   resp.user_import_job.pre_signed_url #=> String
    #   resp.user_import_job.creation_date #=> Time
    #   resp.user_import_job.start_date #=> Time
    #   resp.user_import_job.completion_date #=> Time
    #   resp.user_import_job.status #=> String, one of "Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"
    #   resp.user_import_job.cloud_watch_logs_role_arn #=> String
    #   resp.user_import_job.imported_users #=> Integer
    #   resp.user_import_job.skipped_users #=> Integer
    #   resp.user_import_job.failed_users #=> Integer
    #   resp.user_import_job.completion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StopUserImportJob AWS API Documentation
    #
    # @overload stop_user_import_job(params = {})
    # @param [Hash] params ({})
    def stop_user_import_job(params = {}, options = {})
      req = build_request(:stop_user_import_job, params)
      req.send_request(options)
    end

    # Assigns a set of tags to an Amazon Cognito user pool. A tag is a label
    # that you can use to categorize and manage user pools in different
    # ways, such as by purpose, owner, environment, or other criteria.
    #
    # Each tag consists of a key and value, both of which you define. A key
    # is a general category for more specific values. For example, if you
    # have two versions of a user pool, one for testing and another for
    # production, you might assign an `Environment` tag key to both user
    # pools. The value of this key might be `Test` for one user pool, and
    # `Production` for the other.
    #
    # Tags are useful for cost tracking and access control. You can activate
    # your tags so that they appear on the Billing and Cost Management
    # console, where you can track the costs associated with your user
    # pools. In an Identity and Access Management policy, you can constrain
    # permissions for user pools based on specific tags or tag values.
    #
    # You can use this action up to 5 times per second, per account. A user
    # pool can have as many as 50 tags.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the user pool to assign the tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   An array of tag keys and values that you want to assign to the user
    #   pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ArnType", # required
    #     tags: { # required
    #       "TagKeysType" => "TagValueType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Given tag IDs that you previously assigned to a user pool, removes
    # them.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the user pool that the tags are
    #   assigned to.
    #
    # @option params [required, Array<String>] :tag_keys
    #   An array of tag keys that you want to remove from the user pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ArnType", # required
    #     tag_keys: ["TagKeysType"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Provides the feedback for an authentication event generated by threat
    # protection features. The user's response indicates that you think
    # that the event either was from a valid user or was an unwanted
    # authentication attempt. This feedback improves the risk evaluation
    # decision for the user pool as part of Amazon Cognito threat
    # protection. To activate this setting, your user pool must be on the [
    # Plus tier][1].
    #
    # This operation requires a `FeedbackToken` that Amazon Cognito
    # generates and adds to notification emails when users have potentially
    # suspicious authentication events. Users invoke this operation when
    # they select the link that corresponds to `{one-click-link-valid}` or
    # `{one-click-link-invalid}` in your notification template. Because
    # `FeedbackToken` is a required parameter, you can' make requests to
    # `UpdateAuthEventFeedback` without the contents of the notification
    # email message.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to update auth event feedback.
    #
    # @option params [required, String] :username
    #   The name of the user that you want to query or modify. The value of
    #   this parameter is typically your user's username, but it can be any
    #   of their alias attributes. If `username` isn't an alias attribute in
    #   your user pool, this value must be the `sub` of a local user or the
    #   username of a user from a third-party IdP.
    #
    # @option params [required, String] :event_id
    #   The ID of the authentication event that you want to submit feedback
    #   for.
    #
    # @option params [required, String] :feedback_token
    #   The feedback token, an encrypted object generated by Amazon Cognito
    #   and passed to your user in the notification email message from the
    #   event.
    #
    # @option params [required, String] :feedback_value
    #   Your feedback to the authentication event. When you provide a
    #   `FeedbackValue` value of `valid`, you tell Amazon Cognito that you
    #   trust a user session where Amazon Cognito has evaluated some level of
    #   risk. When you provide a `FeedbackValue` value of `invalid`, you tell
    #   Amazon Cognito that you don't trust a user session, or you don't
    #   believe that Amazon Cognito evaluated a high-enough risk level.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_auth_event_feedback({
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     event_id: "EventIdType", # required
    #     feedback_token: "TokenModelType", # required
    #     feedback_value: "Valid", # required, accepts Valid, Invalid
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateAuthEventFeedback AWS API Documentation
    #
    # @overload update_auth_event_feedback(params = {})
    # @param [Hash] params ({})
    def update_auth_event_feedback(params = {}, options = {})
      req = build_request(:update_auth_event_feedback, params)
      req.send_request(options)
    end

    # Updates the status of a the currently signed-in user's device so that
    # it is marked as remembered or not remembered for the purpose of device
    # authentication. Device authentication is a "remember me" mechanism
    # that silently completes sign-in from trusted devices with a device key
    # instead of a user-provided MFA code. This operation changes the status
    # of a device without deleting it, so you can enable it again later. For
    # more information about device authentication, see [Working with
    # devices][1].
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [required, String] :device_key
    #   The device key of the device you want to update, for example
    #   `us-west-2_a1b2c3d4-5678-90ab-cdef-EXAMPLE11111`.
    #
    # @option params [String] :device_remembered_status
    #   To enable device authentication with the specified device, set to
    #   `remembered`.To disable, set to `not_remembered`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_status({
    #     access_token: "TokenModelType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_remembered_status: "remembered", # accepts remembered, not_remembered
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateDeviceStatus AWS API Documentation
    #
    # @overload update_device_status(params = {})
    # @param [Hash] params ({})
    def update_device_status(params = {}, options = {})
      req = build_request(:update_device_status, params)
      req.send_request(options)
    end

    # Given the name of a user pool group, updates any of the properties for
    # precedence, IAM role, or description. For more information about user
    # pool groups, see [Adding groups to a user pool][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to update.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that contains the group you want to update.
    #
    # @option params [String] :description
    #   A new description of the existing group.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that you want to
    #   associate with the group. The role assignment contributes to the
    #   `cognito:roles` and `cognito:preferred_role` claims in group members'
    #   tokens.
    #
    # @option params [Integer] :precedence
    #   A non-negative integer value that specifies the precedence of this
    #   group relative to the other groups that a user can belong to in the
    #   user pool. Zero is the highest precedence value. Groups with lower
    #   `Precedence` values take precedence over groups with higher or null
    #   `Precedence` values. If a user belongs to two or more groups, it is
    #   the group with the lowest precedence value whose role ARN is given in
    #   the user's tokens for the `cognito:roles` and
    #   `cognito:preferred_role` claims.
    #
    #   Two groups can have the same `Precedence` value. If this happens,
    #   neither group takes precedence over the other. If two groups with the
    #   same `Precedence` have the same role ARN, that role is used in the
    #   `cognito:preferred_role` claim in tokens for users in each group. If
    #   the two groups have different role ARNs, the `cognito:preferred_role`
    #   claim isn't set in users' tokens.
    #
    #   The default `Precedence` value is null. The maximum `Precedence` value
    #   is `2^31-1`.
    #
    # @return [Types::UpdateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupResponse#group #group} => Types::GroupType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     description: "DescriptionType",
    #     role_arn: "ArnType",
    #     precedence: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.user_pool_id #=> String
    #   resp.group.description #=> String
    #   resp.group.role_arn #=> String
    #   resp.group.precedence #=> Integer
    #   resp.group.last_modified_date #=> Time
    #   resp.group.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Modifies the configuration and trust relationship between a
    # third-party identity provider (IdP) and a user pool. Amazon Cognito
    # accepts sign-in with third-party identity providers through managed
    # login and OIDC relying-party libraries. For more information, see
    # [Third-party IdP sign-in][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The Id of the user pool where you want to update your IdP.
    #
    # @option params [required, String] :provider_name
    #   The name of the IdP that you want to update. You can pass the identity
    #   provider name in the `identity_provider` query parameter of requests
    #   to the [Authorize endpoint][1] to silently redirect to sign-in with
    #   the associated IdP.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html
    #
    # @option params [Hash<String,String>] :provider_details
    #   The scopes, URLs, and identifiers for your external identity provider.
    #   The following examples describe the provider detail keys for each IdP
    #   type. These values and their schema are subject to change. Social IdP
    #   `authorize_scopes` values must match the values listed here.
    #
    #   OpenID Connect (OIDC)
    #
    #   : Amazon Cognito accepts the following elements when it can't
    #     discover endpoint URLs from `oidc_issuer`: `attributes_url`,
    #     `authorize_url`, `jwks_uri`, `token_url`.
    #
    #     Create or update request: `"ProviderDetails": {
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo", "authorize_scopes": "openid
    #     profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" }`
    #
    #     Describe response: `"ProviderDetails": {
    #     "attributes_request_method": "GET", "attributes_url":
    #     "https://auth.example.com/userInfo",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "openid profile email", "authorize_url":
    #     "https://auth.example.com/authorize", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "jwks_uri": "https://auth.example.com/.well-known/jwks.json",
    #     "oidc_issuer": "https://auth.example.com", "token_url":
    #     "https://example.com/token" }`
    #
    #   SAML
    #
    #   : Create or update request with Metadata URL: `"ProviderDetails": {
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataURL": "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256" }`
    #
    #     Create or update request with Metadata file: `"ProviderDetails": {
    #     "IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" :
    #     "true", "MetadataFile": "[metadata XML]", "RequestSigningAlgorithm":
    #     "rsa-sha256" }`
    #
    #     The value of `MetadataFile` must be the plaintext metadata document
    #     with all quote (") characters escaped by backslashes.
    #
    #     Describe response: `"ProviderDetails": { "IDPInit": "true",
    #     "IDPSignout": "true", "EncryptedResponses" : "true",
    #     "ActiveEncryptionCertificate": "[certificate]", "MetadataURL":
    #     "https://auth.example.com/sso/saml/metadata",
    #     "RequestSigningAlgorithm": "rsa-sha256", "SLORedirectBindingURI":
    #     "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #     "https://auth.example.com/sso/saml" }`
    #
    #   LoginWithAmazon
    #
    #   : Create or update request: `"ProviderDetails": { "authorize_scopes":
    #     "profile postal_code", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret"`
    #
    #     Describe response: `"ProviderDetails": { "attributes_url":
    #     "https://api.amazon.com/user/profile",
    #     "attributes_url_add_attributes": "false", "authorize_scopes":
    #     "profile postal_code", "authorize_url":
    #     "https://www.amazon.com/ap/oa", "client_id":
    #     "amzn1.application-oa2-client.1example23456789", "client_secret":
    #     "provider-app-client-secret", "token_request_method": "POST",
    #     "token_url": "https://api.amazon.com/auth/o2/token" }`
    #
    #   Google
    #
    #   : Create or update request: `"ProviderDetails": { "authorize_scopes":
    #     "email profile openid", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret" }`
    #
    #     Describe response: `"ProviderDetails": { "attributes_url":
    #     "https://people.googleapis.com/v1/people/me?personFields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes": "email
    #     profile openid", "authorize_url":
    #     "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #     "1example23456789.apps.googleusercontent.com", "client_secret":
    #     "provider-app-client-secret", "oidc_issuer":
    #     "https://accounts.google.com", "token_request_method": "POST",
    #     "token_url": "https://www.googleapis.com/oauth2/v4/token" }`
    #
    #   SignInWithApple
    #
    #   : Create or update request: `"ProviderDetails": { "authorize_scopes":
    #     "email name", "client_id": "com.example.cognito", "private_key":
    #     "1EXAMPLE", "key_id": "2EXAMPLE", "team_id": "3EXAMPLE" }`
    #
    #     Describe response: `"ProviderDetails": {
    #     "attributes_url_add_attributes": "false", "authorize_scopes": "email
    #     name", "authorize_url": "https://appleid.apple.com/auth/authorize",
    #     "client_id": "com.example.cognito", "key_id": "1EXAMPLE",
    #     "oidc_issuer": "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #     "token_request_method": "POST", "token_url":
    #     "https://appleid.apple.com/auth/token" }`
    #
    #   Facebook
    #
    #   : Create or update request: `"ProviderDetails": { "api_version":
    #     "v17.0", "authorize_scopes": "public_profile, email", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret" }`
    #
    #     Describe response: `"ProviderDetails": { "api_version": "v17.0",
    #     "attributes_url": "https://graph.facebook.com/v17.0/me?fields=",
    #     "attributes_url_add_attributes": "true", "authorize_scopes":
    #     "public_profile, email", "authorize_url":
    #     "https://www.facebook.com/v17.0/dialog/oauth", "client_id":
    #     "1example23456789", "client_secret": "provider-app-client-secret",
    #     "token_request_method": "GET", "token_url":
    #     "https://graph.facebook.com/v17.0/oauth/access_token" }`
    #
    # @option params [Hash<String,String>] :attribute_mapping
    #   A mapping of IdP attributes to standard and custom user pool
    #   attributes. Specify a user pool attribute as the key of the key-value
    #   pair, and the IdP attribute claim name as the value.
    #
    # @option params [Array<String>] :idp_identifiers
    #   An array of IdP identifiers, for example `"IdPIdentifiers": [ "MyIdP",
    #   "MyIdP2" ]`. Identifiers are friendly names that you can pass in the
    #   `idp_identifier` query parameter of requests to the [Authorize
    #   endpoint][1] to silently redirect to sign-in with the associated IdP.
    #   Identifiers in a domain format also enable the use of [email-address
    #   matching with SAML providers][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managing-saml-idp-naming.html
    #
    # @return [Types::UpdateIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdentityProviderResponse#identity_provider #identity_provider} => Types::IdentityProviderType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_provider({
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #     provider_details: {
    #       "StringType" => "StringType",
    #     },
    #     attribute_mapping: {
    #       "AttributeMappingKeyType" => "StringType",
    #     },
    #     idp_identifiers: ["IdpIdentifierType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider.user_pool_id #=> String
    #   resp.identity_provider.provider_name #=> String
    #   resp.identity_provider.provider_type #=> String, one of "SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"
    #   resp.identity_provider.provider_details #=> Hash
    #   resp.identity_provider.provider_details["StringType"] #=> String
    #   resp.identity_provider.attribute_mapping #=> Hash
    #   resp.identity_provider.attribute_mapping["AttributeMappingKeyType"] #=> String
    #   resp.identity_provider.idp_identifiers #=> Array
    #   resp.identity_provider.idp_identifiers[0] #=> String
    #   resp.identity_provider.last_modified_date #=> Time
    #   resp.identity_provider.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateIdentityProvider AWS API Documentation
    #
    # @overload update_identity_provider(params = {})
    # @param [Hash] params ({})
    def update_identity_provider(params = {}, options = {})
      req = build_request(:update_identity_provider, params)
      req.send_request(options)
    end

    # Configures the branding settings for a user pool style. This operation
    # is the programmatic option for the configuration of a style in the
    # branding designer.
    #
    # Provides values for UI customization in a `Settings` JSON object and
    # image files in an `Assets` array.
    #
    # This operation has a 2-megabyte request-size limit and include the CSS
    # settings and image assets for your app client. Your branding settings
    # might exceed 2MB in size. Amazon Cognito doesn't require that you
    # pass all parameters in one request and preserves existing style
    # settings that you don't specify. If your request is larger than 2MB,
    # separate it into multiple requests, each with a size smaller than the
    # limit.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [String] :user_pool_id
    #   The ID of the user pool that contains the managed login branding style
    #   that you want to update.
    #
    # @option params [String] :managed_login_branding_id
    #   The ID of the managed login branding style that you want to update.
    #
    # @option params [Boolean] :use_cognito_provided_values
    #   When `true`, applies the default branding style options. This option
    #   reverts to default style options that are managed by Amazon Cognito.
    #   You can modify them later in the branding designer.
    #
    #   When you specify `true` for this option, you must also omit values for
    #   `Settings` and `Assets` in the request.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :settings
    #   A JSON file, encoded as a `Document` type, with the the settings that
    #   you want to apply to your style.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Array<Types::AssetType>] :assets
    #   An array of image files that you want to apply to roles like
    #   backgrounds, logos, and icons. Each object must also indicate whether
    #   it is for dark mode, light mode, or browser-adaptive mode.
    #
    # @return [Types::UpdateManagedLoginBrandingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateManagedLoginBrandingResponse#managed_login_branding #managed_login_branding} => Types::ManagedLoginBrandingType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_managed_login_branding({
    #     user_pool_id: "UserPoolIdType",
    #     managed_login_branding_id: "ManagedLoginBrandingIdType",
    #     use_cognito_provided_values: false,
    #     settings: {
    #     },
    #     assets: [
    #       {
    #         category: "FAVICON_ICO", # required, accepts FAVICON_ICO, FAVICON_SVG, EMAIL_GRAPHIC, SMS_GRAPHIC, AUTH_APP_GRAPHIC, PASSWORD_GRAPHIC, PASSKEY_GRAPHIC, PAGE_HEADER_LOGO, PAGE_HEADER_BACKGROUND, PAGE_FOOTER_LOGO, PAGE_FOOTER_BACKGROUND, PAGE_BACKGROUND, FORM_BACKGROUND, FORM_LOGO, IDP_BUTTON_ICON
    #         color_mode: "LIGHT", # required, accepts LIGHT, DARK, DYNAMIC
    #         extension: "ICO", # required, accepts ICO, JPEG, PNG, SVG, WEBP
    #         bytes: "data",
    #         resource_id: "ResourceIdType",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_login_branding.managed_login_branding_id #=> String
    #   resp.managed_login_branding.user_pool_id #=> String
    #   resp.managed_login_branding.use_cognito_provided_values #=> Boolean
    #   resp.managed_login_branding.assets #=> Array
    #   resp.managed_login_branding.assets[0].category #=> String, one of "FAVICON_ICO", "FAVICON_SVG", "EMAIL_GRAPHIC", "SMS_GRAPHIC", "AUTH_APP_GRAPHIC", "PASSWORD_GRAPHIC", "PASSKEY_GRAPHIC", "PAGE_HEADER_LOGO", "PAGE_HEADER_BACKGROUND", "PAGE_FOOTER_LOGO", "PAGE_FOOTER_BACKGROUND", "PAGE_BACKGROUND", "FORM_BACKGROUND", "FORM_LOGO", "IDP_BUTTON_ICON"
    #   resp.managed_login_branding.assets[0].color_mode #=> String, one of "LIGHT", "DARK", "DYNAMIC"
    #   resp.managed_login_branding.assets[0].extension #=> String, one of "ICO", "JPEG", "PNG", "SVG", "WEBP"
    #   resp.managed_login_branding.assets[0].bytes #=> String
    #   resp.managed_login_branding.assets[0].resource_id #=> String
    #   resp.managed_login_branding.creation_date #=> Time
    #   resp.managed_login_branding.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateManagedLoginBranding AWS API Documentation
    #
    # @overload update_managed_login_branding(params = {})
    # @param [Hash] params ({})
    def update_managed_login_branding(params = {}, options = {})
      req = build_request(:update_managed_login_branding, params)
      req.send_request(options)
    end

    # Updates the name and scopes of a resource server. All other fields are
    # read-only. For more information about resource servers, see [Access
    # control with resource servers][1].
    #
    # If you don't provide a value for an attribute, it is set to the
    # default value.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that contains the resource server that you
    #   want to update.
    #
    # @option params [required, String] :identifier
    #   A unique resource server identifier for the resource server. The
    #   identifier can be an API friendly name like `solar-system-data`. You
    #   can also set an API URL like
    #   `https://solar-system-data-api.example.com` as your identifier.
    #
    #   Amazon Cognito represents scopes in the access token in the format
    #   `$resource-server-identifier/$scope`. Longer scope-identifier strings
    #   increase the size of your access tokens.
    #
    # @option params [required, String] :name
    #   The updated name of the resource server.
    #
    # @option params [Array<Types::ResourceServerScopeType>] :scopes
    #   An array of updated custom scope names and descriptions that you want
    #   to associate with your resource server.
    #
    # @return [Types::UpdateResourceServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResourceServerResponse#resource_server #resource_server} => Types::ResourceServerType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_server({
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #     name: "ResourceServerNameType", # required
    #     scopes: [
    #       {
    #         scope_name: "ResourceServerScopeNameType", # required
    #         scope_description: "ResourceServerScopeDescriptionType", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_server.user_pool_id #=> String
    #   resp.resource_server.identifier #=> String
    #   resp.resource_server.name #=> String
    #   resp.resource_server.scopes #=> Array
    #   resp.resource_server.scopes[0].scope_name #=> String
    #   resp.resource_server.scopes[0].scope_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateResourceServer AWS API Documentation
    #
    # @overload update_resource_server(params = {})
    # @param [Hash] params ({})
    def update_resource_server(params = {}, options = {})
      req = build_request(:update_resource_server, params)
      req.send_request(options)
    end

    # Updates the currently signed-in user's attributes. To delete an
    # attribute from the user, submit the attribute in your API request with
    # a blank value.
    #
    # For custom attributes, you must add a `custom:` prefix to the
    # attribute name, for example `custom:department`.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][2]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][3] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    # [2]: https://console.aws.amazon.com/pinpoint/home/
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [required, Array<Types::AttributeType>] :user_attributes
    #   An array of name-value pairs representing user attributes.
    #
    #   For custom attributes, you must add a `custom:` prefix to the
    #   attribute name.
    #
    #   If you have set an attribute to require verification before Amazon
    #   Cognito updates its value, this request doesn’t immediately update the
    #   value of that attribute. After your user receives and responds to a
    #   verification message to verify the new value, Amazon Cognito updates
    #   the attribute value. Your user can sign in and receive messages with
    #   the original attribute value until they verify the new value.
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [Hash<String,String>] :client_metadata
    #   A map of custom key-value pairs that you can provide as input for any
    #   custom workflows that this action initiates.
    #
    #   You create custom workflows by assigning Lambda functions to user pool
    #   triggers. When you use the UpdateUserAttributes API action, Amazon
    #   Cognito invokes the function that is assigned to the *custom message*
    #   trigger. When Amazon Cognito invokes this function, it passes a JSON
    #   payload, which the function receives as input. This payload contains a
    #   `clientMetadata` attribute, which provides the data that you assigned
    #   to the ClientMetadata parameter in your UpdateUserAttributes request.
    #   In your function code in Lambda, you can process the `clientMetadata`
    #   value to enhance your workflow for your specific needs.
    #
    #   For more information, see [ Using Lambda triggers][1] in the *Amazon
    #   Cognito Developer Guide*.
    #
    #   <note markdown="1"> When you use the `ClientMetadata` parameter, note that Amazon Cognito
    #   won't do the following:
    #
    #    * Store the `ClientMetadata` value. This data is available only to
    #     Lambda triggers that are assigned to a user pool to support custom
    #     workflows. If your user pool configuration doesn't include
    #     triggers, the `ClientMetadata` parameter serves no purpose.
    #
    #   * Validate the `ClientMetadata` value.
    #
    #   * Encrypt the `ClientMetadata` value. Don't send sensitive
    #     information in this parameter.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html
    #
    # @return [Types::UpdateUserAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserAttributesResponse#code_delivery_details_list #code_delivery_details_list} => Array&lt;Types::CodeDeliveryDetailsType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_attributes({
    #     user_attributes: [ # required
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType",
    #       },
    #     ],
    #     access_token: "TokenModelType", # required
    #     client_metadata: {
    #       "StringType" => "StringType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.code_delivery_details_list #=> Array
    #   resp.code_delivery_details_list[0].destination #=> String
    #   resp.code_delivery_details_list[0].delivery_medium #=> String, one of "SMS", "EMAIL"
    #   resp.code_delivery_details_list[0].attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserAttributes AWS API Documentation
    #
    # @overload update_user_attributes(params = {})
    # @param [Hash] params ({})
    def update_user_attributes(params = {}, options = {})
      req = build_request(:update_user_attributes, params)
      req.send_request(options)
    end

    # Updates the configuration of a user pool. To avoid setting parameters
    # to Amazon Cognito defaults, construct this API request to pass the
    # existing configuration of your user pool, modified to include the
    # changes that you want to make.
    #
    # If you don't provide a value for an attribute, Amazon Cognito sets it
    # to its default value.
    #
    # <note markdown="1"> This action might generate an SMS text message. Starting June 1, 2021,
    # US telecom carriers require you to register an origination phone
    # number before you can send SMS messages to US phone numbers. If you
    # use SMS text messages in Amazon Cognito, you must register a phone
    # number with [Amazon Pinpoint][1]. Amazon Cognito uses the registered
    # number automatically. Otherwise, Amazon Cognito users who must receive
    # SMS messages might not be able to sign up, activate their accounts, or
    # sign in.
    #
    #  If you have never used SMS text messages with Amazon Cognito or any
    # other Amazon Web Services service, Amazon Simple Notification Service
    # might place your account in the SMS sandbox. In <i> <a
    # href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    # mode</a> </i>, you can send messages only to verified phone numbers.
    # After you test your app while in the sandbox environment, you can move
    # out of the sandbox and into production. For more information, see [
    # SMS message settings for Amazon Cognito user pools][2] in the *Amazon
    # Cognito Developer Guide*.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][3]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][4]
    #
    #  </note>
    #
    #
    #
    # [1]: https://console.aws.amazon.com/pinpoint/home/
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [4]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool you want to update.
    #
    # @option params [Types::UserPoolPolicyType] :policies
    #   The password policy and sign-in policy in the user pool. The password
    #   policy sets options like password complexity requirements and password
    #   history. The sign-in policy sets the options available to applications
    #   in [choice-based authentication][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice
    #
    # @option params [String] :deletion_protection
    #   When active, `DeletionProtection` prevents accidental deletion of your
    #   user pool. Before you can delete a user pool that you have protected
    #   against deletion, you must deactivate this feature.
    #
    #   When you try to delete a protected user pool in a `DeleteUserPool` API
    #   request, Amazon Cognito returns an `InvalidParameterException` error.
    #   To delete a protected user pool, send a new `DeleteUserPool` request
    #   after you deactivate deletion protection in an `UpdateUserPool` API
    #   request.
    #
    # @option params [Types::LambdaConfigType] :lambda_config
    #   A collection of user pool Lambda triggers. Amazon Cognito invokes
    #   triggers at several possible stages of authentication operations.
    #   Triggers can modify the outcome of the operations that invoked them.
    #
    # @option params [Array<String>] :auto_verified_attributes
    #   The attributes that you want your user pool to automatically verify.
    #   Possible values: **email**, **phone\_number**. For more information
    #   see [Verifying contact information at sign-up][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#allowing-users-to-sign-up-and-confirm-themselves
    #
    # @option params [String] :sms_verification_message
    #   This parameter is no longer used.
    #
    # @option params [String] :email_verification_message
    #   This parameter is no longer used.
    #
    # @option params [String] :email_verification_subject
    #   This parameter is no longer used.
    #
    # @option params [Types::VerificationMessageTemplateType] :verification_message_template
    #   The template for the verification message that your user pool delivers
    #   to users who set an email address or phone number attribute.
    #
    #   Set the email message type that corresponds to your
    #   `DefaultEmailOption` selection. For `CONFIRM_WITH_LINK`, specify an
    #   `EmailMessageByLink` and leave `EmailMessage` blank. For
    #   `CONFIRM_WITH_CODE`, specify an `EmailMessage` and leave
    #   `EmailMessageByLink` blank. When you supply both parameters with
    #   either choice, Amazon Cognito returns an error.
    #
    # @option params [String] :sms_authentication_message
    #   The contents of the SMS message that your user pool sends to users in
    #   SMS authentication.
    #
    # @option params [Types::UserAttributeUpdateSettingsType] :user_attribute_update_settings
    #   The settings for updates to user attributes. These settings include
    #   the property `AttributesRequireVerificationBeforeUpdate`, a user-pool
    #   setting that tells Amazon Cognito how to handle changes to the value
    #   of your users' email address and phone number attributes. For more
    #   information, see [ Verifying updates to email addresses and phone
    #   numbers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates
    #
    # @option params [String] :mfa_configuration
    #   Sets multi-factor authentication (MFA) to be on, off, or optional.
    #   When `ON`, all users must set up MFA before they can sign in. When
    #   `OPTIONAL`, your application must make a client-side determination of
    #   whether a user wants to register an MFA device. For user pools with
    #   adaptive authentication with threat protection, choose `OPTIONAL`.
    #
    #   When `MfaConfiguration` is `OPTIONAL`, managed login doesn't
    #   automatically prompt users to set up MFA. Amazon Cognito generates MFA
    #   prompts in API responses and in managed login for users who have
    #   chosen and configured a preferred MFA factor.
    #
    # @option params [Types::DeviceConfigurationType] :device_configuration
    #   The device-remembering configuration for a user pool. Device
    #   remembering or device tracking is a "Remember me on this device"
    #   option for user pools that perform authentication with the device key
    #   of a trusted device in the back end, instead of a user-provided MFA
    #   code. For more information about device authentication, see [Working
    #   with user devices in your user pool][1]. A null value indicates that
    #   you have deactivated device remembering in your user pool.
    #
    #   <note markdown="1"> When you provide a value for any `DeviceConfiguration` field, you
    #   activate the Amazon Cognito device-remembering feature. For more
    #   information, see [Working with devices][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html
    #
    # @option params [Types::EmailConfigurationType] :email_configuration
    #   The email configuration of your user pool. The email configuration
    #   type sets your preferred sending method, Amazon Web Services Region,
    #   and sender for email invitation and verification messages from your
    #   user pool.
    #
    # @option params [Types::SmsConfigurationType] :sms_configuration
    #   The SMS configuration with the settings for your Amazon Cognito user
    #   pool to send SMS message with Amazon Simple Notification Service. To
    #   send SMS messages with Amazon SNS in the Amazon Web Services Region
    #   that you want, the Amazon Cognito user pool uses an Identity and
    #   Access Management (IAM) role in your Amazon Web Services account. For
    #   more information see [SMS message settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html
    #
    # @option params [Hash<String,String>] :user_pool_tags
    #   The tag keys and values to assign to the user pool. A tag is a label
    #   that you can use to categorize and manage user pools in different
    #   ways, such as by purpose, owner, environment, or other criteria.
    #
    # @option params [Types::AdminCreateUserConfigType] :admin_create_user_config
    #   The configuration for administrative creation of users. Includes the
    #   template for the invitation message for new users, the duration of
    #   temporary passwords, and permitting self-service sign-up.
    #
    # @option params [Types::UserPoolAddOnsType] :user_pool_add_ons
    #   Contains settings for activation of threat protection, including the
    #   operating mode and additional authentication types. To log user
    #   security information but take no action, set to `AUDIT`. To configure
    #   automatic security responses to potentially unwanted traffic to your
    #   user pool, set to `ENFORCED`.
    #
    #   For more information, see [Adding advanced security to a user
    #   pool][1]. To activate this setting, your user pool must be on the [
    #   Plus tier][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html
    #
    # @option params [Types::AccountRecoverySettingType] :account_recovery_setting
    #   The available verified method a user can use to recover their password
    #   when they call `ForgotPassword`. You can use this setting to define a
    #   preferred method when a user has more than one method available. With
    #   this setting, SMS doesn't qualify for a valid password recovery
    #   mechanism if the user also has SMS multi-factor authentication (MFA)
    #   activated. In the absence of this setting, Amazon Cognito uses the
    #   legacy behavior to determine the recovery method where SMS is
    #   preferred through email.
    #
    # @option params [String] :pool_name
    #   The updated name of your user pool.
    #
    # @option params [String] :user_pool_tier
    #   The user pool [feature plan][1], or tier. This parameter determines
    #   the eligibility of the user pool for features like managed login,
    #   access-token customization, and threat protection. Defaults to
    #   `ESSENTIALS`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_pool({
    #     user_pool_id: "UserPoolIdType", # required
    #     policies: {
    #       password_policy: {
    #         minimum_length: 1,
    #         require_uppercase: false,
    #         require_lowercase: false,
    #         require_numbers: false,
    #         require_symbols: false,
    #         password_history_size: 1,
    #         temporary_password_validity_days: 1,
    #       },
    #       sign_in_policy: {
    #         allowed_first_auth_factors: ["PASSWORD"], # accepts PASSWORD, EMAIL_OTP, SMS_OTP, WEB_AUTHN
    #       },
    #     },
    #     deletion_protection: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     lambda_config: {
    #       pre_sign_up: "ArnType",
    #       custom_message: "ArnType",
    #       post_confirmation: "ArnType",
    #       pre_authentication: "ArnType",
    #       post_authentication: "ArnType",
    #       define_auth_challenge: "ArnType",
    #       create_auth_challenge: "ArnType",
    #       verify_auth_challenge_response: "ArnType",
    #       pre_token_generation: "ArnType",
    #       user_migration: "ArnType",
    #       pre_token_generation_config: {
    #         lambda_version: "V1_0", # required, accepts V1_0, V2_0, V3_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_sms_sender: {
    #         lambda_version: "V1_0", # required, accepts V1_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_email_sender: {
    #         lambda_version: "V1_0", # required, accepts V1_0
    #         lambda_arn: "ArnType", # required
    #       },
    #       kms_key_id: "ArnType",
    #     },
    #     auto_verified_attributes: ["phone_number"], # accepts phone_number, email
    #     sms_verification_message: "SmsVerificationMessageType",
    #     email_verification_message: "EmailVerificationMessageType",
    #     email_verification_subject: "EmailVerificationSubjectType",
    #     verification_message_template: {
    #       sms_message: "SmsVerificationMessageType",
    #       email_message: "EmailVerificationMessageType",
    #       email_subject: "EmailVerificationSubjectType",
    #       email_message_by_link: "EmailVerificationMessageByLinkType",
    #       email_subject_by_link: "EmailVerificationSubjectByLinkType",
    #       default_email_option: "CONFIRM_WITH_LINK", # accepts CONFIRM_WITH_LINK, CONFIRM_WITH_CODE
    #     },
    #     sms_authentication_message: "SmsVerificationMessageType",
    #     user_attribute_update_settings: {
    #       attributes_require_verification_before_update: ["phone_number"], # accepts phone_number, email
    #     },
    #     mfa_configuration: "OFF", # accepts OFF, ON, OPTIONAL
    #     device_configuration: {
    #       challenge_required_on_new_device: false,
    #       device_only_remembered_on_user_prompt: false,
    #     },
    #     email_configuration: {
    #       source_arn: "ArnType",
    #       reply_to_email_address: "EmailAddressType",
    #       email_sending_account: "COGNITO_DEFAULT", # accepts COGNITO_DEFAULT, DEVELOPER
    #       from: "StringType",
    #       configuration_set: "SESConfigurationSet",
    #     },
    #     sms_configuration: {
    #       sns_caller_arn: "ArnType", # required
    #       external_id: "StringType",
    #       sns_region: "RegionCodeType",
    #     },
    #     user_pool_tags: {
    #       "TagKeysType" => "TagValueType",
    #     },
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false,
    #       unused_account_validity_days: 1,
    #       invite_message_template: {
    #         sms_message: "SmsInviteMessageType",
    #         email_message: "EmailInviteMessageType",
    #         email_subject: "EmailVerificationSubjectType",
    #       },
    #     },
    #     user_pool_add_ons: {
    #       advanced_security_mode: "OFF", # required, accepts OFF, AUDIT, ENFORCED
    #       advanced_security_additional_flows: {
    #         custom_auth_mode: "AUDIT", # accepts AUDIT, ENFORCED
    #       },
    #     },
    #     account_recovery_setting: {
    #       recovery_mechanisms: [
    #         {
    #           priority: 1, # required
    #           name: "verified_email", # required, accepts verified_email, verified_phone_number, admin_only
    #         },
    #       ],
    #     },
    #     pool_name: "UserPoolNameType",
    #     user_pool_tier: "LITE", # accepts LITE, ESSENTIALS, PLUS
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPool AWS API Documentation
    #
    # @overload update_user_pool(params = {})
    # @param [Hash] params ({})
    def update_user_pool(params = {}, options = {})
      req = build_request(:update_user_pool, params)
      req.send_request(options)
    end

    # Given a user pool app client ID, updates the configuration. To avoid
    # setting parameters to Amazon Cognito defaults, construct this API
    # request to pass the existing configuration of your app client,
    # modified to include the changes that you want to make.
    #
    # If you don't provide a value for an attribute, Amazon Cognito sets it
    # to its default value.
    #
    # Unlike app clients created in the console, Amazon Cognito doesn't
    # automatically assign a branding style to app clients that you
    # configure with this API operation. Managed login and classic hosted UI
    # pages aren't available for your client until after you apply a
    # branding style.
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][1]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][2]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool where you want to update the app client.
    #
    # @option params [required, String] :client_id
    #   The ID of the app client that you want to update.
    #
    # @option params [String] :client_name
    #   A friendly name for the app client.
    #
    # @option params [Integer] :refresh_token_validity
    #   The refresh token time limit. After this limit expires, your user
    #   can't use their refresh token. To specify the time unit for
    #   `RefreshTokenValidity` as `seconds`, `minutes`, `hours`, or `days`,
    #   set a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `RefreshTokenValidity` as `10` and
    #   `TokenValidityUnits` as `days`, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.
    #
    #   The default time unit for `RefreshTokenValidity` in an API request is
    #   days. You can't set `RefreshTokenValidity` to 0. If you do, Amazon
    #   Cognito overrides the value with the default value of 30 days. *Valid
    #   range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your refresh tokens are valid for 30 days.
    #
    # @option params [Integer] :access_token_validity
    #   The access token time limit. After this limit expires, your user
    #   can't use their access token. To specify the time unit for
    #   `AccessTokenValidity` as `seconds`, `minutes`, `hours`, or `days`, set
    #   a `TokenValidityUnits` value in your API request.
    #
    #   For example, when you set `AccessTokenValidity` to `10` and
    #   `TokenValidityUnits` to `hours`, your user can authorize access with
    #   their access token for 10 hours.
    #
    #   The default time unit for `AccessTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your access tokens are valid for one hour.
    #
    # @option params [Integer] :id_token_validity
    #   The ID token time limit. After this limit expires, your user can't
    #   use their ID token. To specify the time unit for `IdTokenValidity` as
    #   `seconds`, `minutes`, `hours`, or `days`, set a `TokenValidityUnits`
    #   value in your API request.
    #
    #   For example, when you set `IdTokenValidity` as `10` and
    #   `TokenValidityUnits` as `hours`, your user can authenticate their
    #   session with their ID token for 10 hours.
    #
    #   The default time unit for `IdTokenValidity` in an API request is
    #   hours. *Valid range* is displayed below in seconds.
    #
    #   If you don't specify otherwise in the configuration of your app
    #   client, your ID tokens are valid for one hour.
    #
    # @option params [Types::TokenValidityUnitsType] :token_validity_units
    #   The units that validity times are represented in. The default unit for
    #   refresh tokens is days, and the default for ID and access tokens are
    #   hours.
    #
    # @option params [Array<String>] :read_attributes
    #   The list of user attributes that you want your app client to have read
    #   access to. After your user authenticates in your app, their access
    #   token authorizes them to read their own attribute value for any
    #   attribute in this list.
    #
    #   When you don't specify the `ReadAttributes` for your app client, your
    #   app can read the values of `email_verified`, `phone_number_verified`,
    #   and the standard attributes of your user pool. When your user pool app
    #   client has read access to these default attributes, `ReadAttributes`
    #   doesn't return any information. Amazon Cognito only populates
    #   `ReadAttributes` in the API response if you have specified your own
    #   custom set of read attributes.
    #
    # @option params [Array<String>] :write_attributes
    #   The list of user attributes that you want your app client to have
    #   write access to. After your user authenticates in your app, their
    #   access token authorizes them to set or modify their own attribute
    #   value for any attribute in this list.
    #
    #   When you don't specify the `WriteAttributes` for your app client,
    #   your app can write the values of the Standard attributes of your user
    #   pool. When your user pool has write access to these default
    #   attributes, `WriteAttributes` doesn't return any information. Amazon
    #   Cognito only populates `WriteAttributes` in the API response if you
    #   have specified your own custom set of write attributes.
    #
    #   If your app client allows users to sign in through an IdP, this array
    #   must include all attributes that you have mapped to IdP attributes.
    #   Amazon Cognito updates mapped attributes when users sign in to your
    #   application through an IdP. If your app client does not have write
    #   access to a mapped attribute, Amazon Cognito throws an error when it
    #   tries to update the attribute. For more information, see [Specifying
    #   IdP Attribute Mappings for Your user pool][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html
    #
    # @option params [Array<String>] :explicit_auth_flows
    #   The [authentication flows][1] that you want your user pool client to
    #   support. For each app client in your user pool, you can sign in your
    #   users with any combination of one or more flows, including with a user
    #   name and Secure Remote Password (SRP), a user name and password, or a
    #   custom authentication process that you define with Lambda functions.
    #
    #   <note markdown="1"> If you don't specify a value for `ExplicitAuthFlows`, your app client
    #   supports `ALLOW_REFRESH_TOKEN_AUTH`, `ALLOW_USER_SRP_AUTH`, and
    #   `ALLOW_CUSTOM_AUTH`.
    #
    #    </note>
    #
    #   The values for authentication flow options include the following.
    #
    #   * `ALLOW_USER_AUTH`: Enable selection-based sign-in with `USER_AUTH`.
    #     This setting covers username-password, secure remote password (SRP),
    #     passwordless, and passkey authentication. This authentiation flow
    #     can do username-password and SRP authentication without other
    #     `ExplicitAuthFlows` permitting them. For example users can complete
    #     an SRP challenge through `USER_AUTH` without the flow
    #     `USER_SRP_AUTH` being active for the app client. This flow doesn't
    #     include `CUSTOM_AUTH`.
    #
    #     To activate this setting, your user pool must be in the [ Essentials
    #     tier][2] or higher.
    #
    #   * `ALLOW_ADMIN_USER_PASSWORD_AUTH`: Enable admin based user password
    #     authentication flow `ADMIN_USER_PASSWORD_AUTH`. This setting
    #     replaces the `ADMIN_NO_SRP_AUTH` setting. With this authentication
    #     flow, your app passes a user name and password to Amazon Cognito in
    #     the request, instead of using the Secure Remote Password (SRP)
    #     protocol to securely transmit the password.
    #
    #   * `ALLOW_CUSTOM_AUTH`: Enable Lambda trigger based authentication.
    #
    #   * `ALLOW_USER_PASSWORD_AUTH`: Enable user password-based
    #     authentication. In this flow, Amazon Cognito receives the password
    #     in the request instead of using the SRP protocol to verify
    #     passwords.
    #
    #   * `ALLOW_USER_SRP_AUTH`: Enable SRP-based authentication.
    #
    #   * `ALLOW_REFRESH_TOKEN_AUTH`: Enable authflow to refresh tokens.
    #
    #   In some environments, you will see the values `ADMIN_NO_SRP_AUTH`,
    #   `CUSTOM_AUTH_FLOW_ONLY`, or `USER_PASSWORD_AUTH`. You can't assign
    #   these legacy `ExplicitAuthFlows` values to user pool clients at the
    #   same time as values that begin with `ALLOW_`, like
    #   `ALLOW_USER_SRP_AUTH`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html
    #
    # @option params [Array<String>] :supported_identity_providers
    #   A list of provider names for the identity providers (IdPs) that are
    #   supported on this client. The following are supported: `COGNITO`,
    #   `Facebook`, `Google`, `SignInWithApple`, and `LoginWithAmazon`. You
    #   can also specify the names that you configured for the SAML and OIDC
    #   IdPs in your user pool, for example `MySAMLIdP` or `MyOIDCIdP`.
    #
    #   This parameter sets the IdPs that [managed login][1] will display on
    #   the login page for your app client. The removal of `COGNITO` from this
    #   list doesn't prevent authentication operations for local users with
    #   the user pools API in an Amazon Web Services SDK. The only way to
    #   prevent SDK-based authentication is to block access with a [WAF
    #   rule][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
    #   [2]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html
    #
    # @option params [Array<String>] :callback_urls
    #   A list of allowed redirect, or callback, URLs for managed login
    #   authentication. These URLs are the paths where you want to send your
    #   users' browsers after they complete authentication with managed login
    #   or a third-party IdP. Typically, callback URLs are the home of an
    #   application that uses OAuth or OIDC libraries to process
    #   authentication outcomes.
    #
    #   A redirect URI must meet the following requirements:
    #
    #   * Be an absolute URI.
    #
    #   * Be registered with the authorization server. Amazon Cognito doesn't
    #     accept authorization requests with `redirect_uri` values that
    #     aren't in the list of `CallbackURLs` that you provide in this
    #     parameter.
    #
    #   * Not include a fragment component.
    #
    #   See [OAuth 2.0 - Redirection Endpoint][1].
    #
    #   Amazon Cognito requires HTTPS over HTTP except for http://localhost
    #   for testing purposes only.
    #
    #   App callback URLs such as `myapp://example` are also supported.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6749#section-3.1.2
    #
    # @option params [Array<String>] :logout_urls
    #   A list of allowed logout URLs for managed login authentication. When
    #   you pass `logout_uri` and `client_id` parameters to `/logout`, Amazon
    #   Cognito signs out your user and redirects them to the logout URL. This
    #   parameter describes the URLs that you want to be the permitted targets
    #   of `logout_uri`. A typical use of these URLs is when a user selects
    #   "Sign out" and you redirect them to your public homepage. For more
    #   information, see [Logout endpoint][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html
    #
    # @option params [String] :default_redirect_uri
    #   The default redirect URI. In app clients with one assigned IdP,
    #   replaces `redirect_uri` in authentication requests. Must be in the
    #   `CallbackURLs` list.
    #
    # @option params [Array<String>] :allowed_o_auth_flows
    #   The OAuth grant types that you want your app client to generate. To
    #   create an app client that generates client credentials grants, you
    #   must add `client_credentials` as the only allowed OAuth flow.
    #
    #   code
    #
    #   : Use a code grant flow, which provides an authorization code as the
    #     response. This code can be exchanged for access tokens with the
    #     `/oauth2/token` endpoint.
    #
    #   implicit
    #
    #   : Issue the access token (and, optionally, ID token, based on scopes)
    #     directly to your user.
    #
    #   client\_credentials
    #
    #   : Issue the access token from the `/oauth2/token` endpoint directly to
    #     a non-person user using a combination of the client ID and client
    #     secret.
    #
    # @option params [Array<String>] :allowed_o_auth_scopes
    #   The OAuth, OpenID Connect (OIDC), and custom scopes that you want to
    #   permit your app client to authorize access with. Scopes govern access
    #   control to user pool self-service API operations, user data from the
    #   `userInfo` endpoint, and third-party APIs. Scope values include
    #   `phone`, `email`, `openid`, and `profile`. The
    #   `aws.cognito.signin.user.admin` scope authorizes user self-service
    #   operations. Custom scopes with resource servers authorize access to
    #   external APIs.
    #
    # @option params [Boolean] :allowed_o_auth_flows_user_pool_client
    #   Set to `true` to use OAuth 2.0 authorization server features in your
    #   app client.
    #
    #   This parameter must have a value of `true` before you can configure
    #   the following features in your app client.
    #
    #   * `CallBackURLs`: Callback URLs.
    #
    #   * `LogoutURLs`: Sign-out redirect URLs.
    #
    #   * `AllowedOAuthScopes`: OAuth 2.0 scopes.
    #
    #   * `AllowedOAuthFlows`: Support for authorization code, implicit, and
    #     client credentials OAuth 2.0 grants.
    #
    #   To use authorization server features, configure one of these features
    #   in the Amazon Cognito console or set `AllowedOAuthFlowsUserPoolClient`
    #   to `true` in a `CreateUserPoolClient` or `UpdateUserPoolClient` API
    #   request. If you don't set a value for
    #   `AllowedOAuthFlowsUserPoolClient` in a request with the CLI or SDKs,
    #   it defaults to `false`. When `false`, only SDK-based API sign-in is
    #   permitted.
    #
    # @option params [Types::AnalyticsConfigurationType] :analytics_configuration
    #   The user pool analytics configuration for collecting metrics and
    #   sending them to your Amazon Pinpoint campaign.
    #
    #   In Amazon Web Services Regions where Amazon Pinpoint isn't available,
    #   user pools might not have access to analytics or might be configurable
    #   with campaigns in the US East (N. Virginia) Region. For more
    #   information, see [Using Amazon Pinpoint analytics][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html
    #
    # @option params [String] :prevent_user_existence_errors
    #   When `ENABLED`, suppresses messages that might indicate a valid user
    #   exists when someone attempts sign-in. This parameters sets your
    #   preference for the errors and responses that you want Amazon Cognito
    #   APIs to return during authentication, account confirmation, and
    #   password recovery when the user doesn't exist in the user pool. When
    #   set to `ENABLED` and the user doesn't exist, authentication returns
    #   an error indicating either the username or password was incorrect.
    #   Account confirmation and password recovery return a response
    #   indicating a code was sent to a simulated destination. When set to
    #   `LEGACY`, those APIs return a `UserNotFoundException` exception if the
    #   user doesn't exist in the user pool.
    #
    #   Defaults to `LEGACY`.
    #
    # @option params [Boolean] :enable_token_revocation
    #   Activates or deactivates [token revocation][1] in the target app
    #   client.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/token-revocation.html
    #
    # @option params [Boolean] :enable_propagate_additional_user_context_data
    #   When `true`, your application can include additional `UserContextData`
    #   in authentication requests. This data includes the IP address, and
    #   contributes to analysis by threat protection features. For more
    #   information about propagation of user context data, see [Adding
    #   session data to API requests][1]. If you don’t include this parameter,
    #   you can't send the source IP address to Amazon Cognito threat
    #   protection features. You can only activate
    #   `EnablePropagateAdditionalUserContextData` in an app client that has a
    #   client secret.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint
    #
    # @option params [Integer] :auth_session_validity
    #   Amazon Cognito creates a session token for each API request in an
    #   authentication flow. `AuthSessionValidity` is the duration, in
    #   minutes, of that session token. Your user pool native user must
    #   respond to each authentication challenge before the session expires.
    #
    # @option params [Types::RefreshTokenRotationType] :refresh_token_rotation
    #   The configuration of your app client for refresh token rotation. When
    #   enabled, your app client issues new ID, access, and refresh tokens
    #   when users renew their sessions with refresh tokens. When disabled,
    #   token refresh issues only ID and access tokens.
    #
    # @return [Types::UpdateUserPoolClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserPoolClientResponse#user_pool_client #user_pool_client} => Types::UserPoolClientType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_pool_client({
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     client_name: "ClientNameType",
    #     refresh_token_validity: 1,
    #     access_token_validity: 1,
    #     id_token_validity: 1,
    #     token_validity_units: {
    #       access_token: "seconds", # accepts seconds, minutes, hours, days
    #       id_token: "seconds", # accepts seconds, minutes, hours, days
    #       refresh_token: "seconds", # accepts seconds, minutes, hours, days
    #     },
    #     read_attributes: ["ClientPermissionType"],
    #     write_attributes: ["ClientPermissionType"],
    #     explicit_auth_flows: ["ADMIN_NO_SRP_AUTH"], # accepts ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH, ALLOW_USER_AUTH
    #     supported_identity_providers: ["ProviderNameType"],
    #     callback_urls: ["RedirectUrlType"],
    #     logout_urls: ["RedirectUrlType"],
    #     default_redirect_uri: "RedirectUrlType",
    #     allowed_o_auth_flows: ["code"], # accepts code, implicit, client_credentials
    #     allowed_o_auth_scopes: ["ScopeType"],
    #     allowed_o_auth_flows_user_pool_client: false,
    #     analytics_configuration: {
    #       application_id: "HexStringType",
    #       application_arn: "ArnType",
    #       role_arn: "ArnType",
    #       external_id: "StringType",
    #       user_data_shared: false,
    #     },
    #     prevent_user_existence_errors: "LEGACY", # accepts LEGACY, ENABLED
    #     enable_token_revocation: false,
    #     enable_propagate_additional_user_context_data: false,
    #     auth_session_validity: 1,
    #     refresh_token_rotation: {
    #       feature: "ENABLED", # required, accepts ENABLED, DISABLED
    #       retry_grace_period_seconds: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_pool_client.user_pool_id #=> String
    #   resp.user_pool_client.client_name #=> String
    #   resp.user_pool_client.client_id #=> String
    #   resp.user_pool_client.client_secret #=> String
    #   resp.user_pool_client.last_modified_date #=> Time
    #   resp.user_pool_client.creation_date #=> Time
    #   resp.user_pool_client.refresh_token_validity #=> Integer
    #   resp.user_pool_client.access_token_validity #=> Integer
    #   resp.user_pool_client.id_token_validity #=> Integer
    #   resp.user_pool_client.token_validity_units.access_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.id_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.token_validity_units.refresh_token #=> String, one of "seconds", "minutes", "hours", "days"
    #   resp.user_pool_client.read_attributes #=> Array
    #   resp.user_pool_client.read_attributes[0] #=> String
    #   resp.user_pool_client.write_attributes #=> Array
    #   resp.user_pool_client.write_attributes[0] #=> String
    #   resp.user_pool_client.explicit_auth_flows #=> Array
    #   resp.user_pool_client.explicit_auth_flows[0] #=> String, one of "ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH"
    #   resp.user_pool_client.supported_identity_providers #=> Array
    #   resp.user_pool_client.supported_identity_providers[0] #=> String
    #   resp.user_pool_client.callback_urls #=> Array
    #   resp.user_pool_client.callback_urls[0] #=> String
    #   resp.user_pool_client.logout_urls #=> Array
    #   resp.user_pool_client.logout_urls[0] #=> String
    #   resp.user_pool_client.default_redirect_uri #=> String
    #   resp.user_pool_client.allowed_o_auth_flows #=> Array
    #   resp.user_pool_client.allowed_o_auth_flows[0] #=> String, one of "code", "implicit", "client_credentials"
    #   resp.user_pool_client.allowed_o_auth_scopes #=> Array
    #   resp.user_pool_client.allowed_o_auth_scopes[0] #=> String
    #   resp.user_pool_client.allowed_o_auth_flows_user_pool_client #=> Boolean
    #   resp.user_pool_client.analytics_configuration.application_id #=> String
    #   resp.user_pool_client.analytics_configuration.application_arn #=> String
    #   resp.user_pool_client.analytics_configuration.role_arn #=> String
    #   resp.user_pool_client.analytics_configuration.external_id #=> String
    #   resp.user_pool_client.analytics_configuration.user_data_shared #=> Boolean
    #   resp.user_pool_client.prevent_user_existence_errors #=> String, one of "LEGACY", "ENABLED"
    #   resp.user_pool_client.enable_token_revocation #=> Boolean
    #   resp.user_pool_client.enable_propagate_additional_user_context_data #=> Boolean
    #   resp.user_pool_client.auth_session_validity #=> Integer
    #   resp.user_pool_client.refresh_token_rotation.feature #=> String, one of "ENABLED", "DISABLED"
    #   resp.user_pool_client.refresh_token_rotation.retry_grace_period_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolClient AWS API Documentation
    #
    # @overload update_user_pool_client(params = {})
    # @param [Hash] params ({})
    def update_user_pool_client(params = {}, options = {})
      req = build_request(:update_user_pool_client, params)
      req.send_request(options)
    end

    # A user pool domain hosts managed login, an authorization server and
    # web server for authentication in your application. This operation
    # updates the branding version for user pool domains between `1` for
    # hosted UI (classic) and `2` for managed login. It also updates the SSL
    # certificate for user pool custom domains.
    #
    # Changes to the domain branding version take up to one minute to take
    # effect for a prefix domain and up to five minutes for a custom domain.
    #
    # This operation doesn't change the name of your user pool domain. To
    # change your domain, delete it with `DeleteUserPoolDomain` and create a
    # new domain with `CreateUserPoolDomain`.
    #
    # You can pass the ARN of a new Certificate Manager certificate in this
    # request. Typically, ACM certificates automatically renew and you user
    # pool can continue to use the same ARN. But if you generate a new
    # certificate for your custom domain name, replace the original
    # configuration with the new ARN in this request.
    #
    # ACM certificates for custom domains must be in the US East (N.
    # Virginia) Amazon Web Services Region. After you submit your request,
    # Amazon Cognito requires up to 1 hour to distribute your new
    # certificate to your custom domain.
    #
    # For more information about adding a custom domain to your user pool,
    # see [Configuring a user pool domain][1].
    #
    # <note markdown="1"> Amazon Cognito evaluates Identity and Access Management (IAM) policies
    # in requests for this API operation. For this operation, you must use
    # IAM credentials to authorize requests, and you must grant yourself the
    # corresponding IAM permission in a policy.
    #
    #  **Learn more**
    #
    #  * [Signing Amazon Web Services API Requests][2]
    #
    # * [Using the Amazon Cognito user pools API and user pool endpoints][3]
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html
    # [3]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that you want to update. For custom domains,
    #   this is the fully-qualified domain name, for example
    #   `auth.example.com`. For prefix domains, this is the prefix alone, such
    #   as `myprefix`.
    #
    # @option params [required, String] :user_pool_id
    #   The ID of the user pool that is associated with the domain you're
    #   updating.
    #
    # @option params [Integer] :managed_login_version
    #   A version number that indicates the state of managed login for your
    #   domain. Version `1` is hosted UI (classic). Version `2` is the newer
    #   managed login with the branding designer. For more information, see
    #   [Managed login][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html
    #
    # @option params [Types::CustomDomainConfigType] :custom_domain_config
    #   The configuration for a custom domain that hosts managed login for
    #   your application. In an `UpdateUserPoolDomain` request, this parameter
    #   specifies an SSL certificate for the managed login hosted webserver.
    #   The certificate must be an ACM ARN in `us-east-1`.
    #
    #   When you create a custom domain, the passkey RP ID defaults to the
    #   custom domain. If you had a prefix domain active, this will cause
    #   passkey integration for your prefix domain to stop working due to a
    #   mismatch in RP ID. To keep the prefix domain passkey integration
    #   working, you can explicitly set RP ID to the prefix domain.
    #
    # @return [Types::UpdateUserPoolDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserPoolDomainResponse#managed_login_version #managed_login_version} => Integer
    #   * {Types::UpdateUserPoolDomainResponse#cloud_front_domain #cloud_front_domain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_pool_domain({
    #     domain: "DomainType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     managed_login_version: 1,
    #     custom_domain_config: {
    #       certificate_arn: "ArnType", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_login_version #=> Integer
    #   resp.cloud_front_domain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolDomain AWS API Documentation
    #
    # @overload update_user_pool_domain(params = {})
    # @param [Hash] params ({})
    def update_user_pool_domain(params = {}, options = {})
      req = build_request(:update_user_pool_domain, params)
      req.send_request(options)
    end

    # Registers the current user's time-based one-time password (TOTP)
    # authenticator with a code generated in their authenticator app from a
    # private key that's supplied by your user pool. Marks the user's
    # software token MFA status as "verified" if successful. The request
    # takes an access token or a session string, but not both.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [String] :session
    #   The session ID from an `AssociateSoftwareToken` request.
    #
    # @option params [required, String] :user_code
    #   A TOTP that the user generated in their configured authenticator app.
    #
    # @option params [String] :friendly_device_name
    #   A friendly name for the device that's running the TOTP authenticator.
    #
    # @return [Types::VerifySoftwareTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifySoftwareTokenResponse#status #status} => String
    #   * {Types::VerifySoftwareTokenResponse#session #session} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_software_token({
    #     access_token: "TokenModelType",
    #     session: "SessionType",
    #     user_code: "SoftwareTokenMFAUserCodeType", # required
    #     friendly_device_name: "StringType",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "SUCCESS", "ERROR"
    #   resp.session #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifySoftwareToken AWS API Documentation
    #
    # @overload verify_software_token(params = {})
    # @param [Hash] params ({})
    def verify_software_token(params = {}, options = {})
      req = build_request(:verify_software_token, params)
      req.send_request(options)
    end

    # Submits a verification code for a signed-in user who has added or
    # changed a value of an auto-verified attribute. When successful, the
    # user's attribute becomes verified and the attribute `email_verified`
    # or `phone_number_verified` becomes `true`.
    #
    # If your user pool requires verification before Amazon Cognito updates
    # the attribute value, this operation updates the affected attribute to
    # its pending value.
    #
    # Authorize this action with a signed-in user's access token. It must
    # include the scope `aws.cognito.signin.user.admin`.
    #
    # <note markdown="1"> Amazon Cognito doesn't evaluate Identity and Access Management (IAM)
    # policies in requests for this API operation. For this operation, you
    # can't use IAM credentials to authorize requests, and you can't grant
    # IAM permissions in policies. For more information about authorization
    # models in Amazon Cognito, see [Using the Amazon Cognito user pools API
    # and user pool endpoints][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html
    #
    # @option params [required, String] :access_token
    #   A valid access token that Amazon Cognito issued to the currently
    #   signed-in user. Must include a scope claim for
    #   `aws.cognito.signin.user.admin`.
    #
    # @option params [required, String] :attribute_name
    #   The name of the attribute that you want to verify.
    #
    # @option params [required, String] :code
    #   The verification code that your user pool sent to the added or changed
    #   attribute, for example the user's email address.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_user_attribute({
    #     access_token: "TokenModelType", # required
    #     attribute_name: "AttributeNameType", # required
    #     code: "ConfirmationCodeType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifyUserAttribute AWS API Documentation
    #
    # @overload verify_user_attribute(params = {})
    # @param [Hash] params ({})
    def verify_user_attribute(params = {}, options = {})
      req = build_request(:verify_user_attribute, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CognitoIdentityProvider')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-cognitoidentityprovider'
      context[:gem_version] = '1.125.0'
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
