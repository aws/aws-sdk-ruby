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

module Aws::ConnectWisdomService
  # An API client for ConnectWisdomService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ConnectWisdomService::Client.new(
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

    @identifier = :connectwisdomservice

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
    add_plugin(Aws::ConnectWisdomService::Plugins::Endpoints)

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
    #   @option options [Aws::ConnectWisdomService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ConnectWisdomService::EndpointParameters`.
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

    # Creates an Amazon Connect Wisdom assistant.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [String] :description
    #   The description of the assistant.
    #
    # @option params [required, String] :name
    #   The name of the assistant.
    #
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   The configuration information for the customer managed key used for
    #   encryption.
    #
    #   The customer managed key must have a policy that allows
    #   `kms:CreateGrant`, ` kms:DescribeKey`, and
    #   `kms:Decrypt/kms:GenerateDataKey` permissions to the IAM identity
    #   using the key to invoke Wisdom. To use Wisdom with chat, the key
    #   policy must also allow `kms:Decrypt`, `kms:GenerateDataKey*`, and
    #   `kms:DescribeKey` permissions to the `connect.amazonaws.com` service
    #   principal.
    #
    #   For more information about setting up a customer managed key for
    #   Wisdom, see [Enable Amazon Connect Wisdom for your instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @option params [required, String] :type
    #   The type of assistant.
    #
    # @return [Types::CreateAssistantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssistantResponse#assistant #assistant} => Types::AssistantData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assistant({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     name: "Name", # required
    #     server_side_encryption_configuration: {
    #       kms_key_id: "NonEmptyString",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     type: "AGENT", # required, accepts AGENT
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant.assistant_arn #=> String
    #   resp.assistant.assistant_id #=> String
    #   resp.assistant.description #=> String
    #   resp.assistant.integration_configuration.topic_integration_arn #=> String
    #   resp.assistant.name #=> String
    #   resp.assistant.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.assistant.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.assistant.tags #=> Hash
    #   resp.assistant.tags["TagKey"] #=> String
    #   resp.assistant.type #=> String, one of "AGENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateAssistant AWS API Documentation
    #
    # @overload create_assistant(params = {})
    # @param [Hash] params ({})
    def create_assistant(params = {}, options = {})
      req = build_request(:create_assistant, params)
      req.send_request(options)
    end

    # Creates an association between an Amazon Connect Wisdom assistant and
    # another resource. Currently, the only supported association is with a
    # knowledge base. An assistant can have only a single association.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @option params [required, Types::AssistantAssociationInputData] :association
    #   The identifier of the associated resource.
    #
    # @option params [required, String] :association_type
    #   The type of association.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateAssistantAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssistantAssociationResponse#assistant_association #assistant_association} => Types::AssistantAssociationData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assistant_association({
    #     assistant_id: "UuidOrArn", # required
    #     association: { # required
    #       knowledge_base_id: "Uuid",
    #     },
    #     association_type: "KNOWLEDGE_BASE", # required, accepts KNOWLEDGE_BASE
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant_association.assistant_arn #=> String
    #   resp.assistant_association.assistant_association_arn #=> String
    #   resp.assistant_association.assistant_association_id #=> String
    #   resp.assistant_association.assistant_id #=> String
    #   resp.assistant_association.association_data.knowledge_base_association.knowledge_base_arn #=> String
    #   resp.assistant_association.association_data.knowledge_base_association.knowledge_base_id #=> String
    #   resp.assistant_association.association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.assistant_association.tags #=> Hash
    #   resp.assistant_association.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateAssistantAssociation AWS API Documentation
    #
    # @overload create_assistant_association(params = {})
    # @param [Hash] params ({})
    def create_assistant_association(params = {}, options = {})
      req = build_request(:create_assistant_association, params)
      req.send_request(options)
    end

    # Creates Wisdom content. Before to calling this API, use
    # [StartContentUpload][1] to upload an asset.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @option params [Hash<String,String>] :metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Wisdom, you can store an external version
    #   identifier as metadata to utilize for determining drift.
    #
    # @option params [required, String] :name
    #   The name of the content. Each piece of content in a knowledge base
    #   must have a unique name. You can retrieve a piece of content using
    #   only its knowledge base and its name with the [SearchContent][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_SearchContent.html
    #
    # @option params [String] :override_link_out_uri
    #   The URI you want to use for the article. If the knowledge base has a
    #   templateUri, setting this argument overrides it for this piece of
    #   content.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @option params [String] :title
    #   The title of the content. If not set, the title is equal to the name.
    #
    # @option params [required, String] :upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    #
    # @return [Types::CreateContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContentResponse#content #content} => Types::ContentData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_content({
    #     client_token: "NonEmptyString",
    #     knowledge_base_id: "UuidOrArn", # required
    #     metadata: {
    #       "NonEmptyString" => "NonEmptyString",
    #     },
    #     name: "Name", # required
    #     override_link_out_uri: "Uri",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     title: "ContentTitle",
    #     upload_id: "UploadId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content.content_arn #=> String
    #   resp.content.content_id #=> String
    #   resp.content.content_type #=> String
    #   resp.content.knowledge_base_arn #=> String
    #   resp.content.knowledge_base_id #=> String
    #   resp.content.link_out_uri #=> String
    #   resp.content.metadata #=> Hash
    #   resp.content.metadata["NonEmptyString"] #=> String
    #   resp.content.name #=> String
    #   resp.content.revision_id #=> String
    #   resp.content.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content.tags #=> Hash
    #   resp.content.tags["TagKey"] #=> String
    #   resp.content.title #=> String
    #   resp.content.url #=> String
    #   resp.content.url_expiry #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateContent AWS API Documentation
    #
    # @overload create_content(params = {})
    # @param [Hash] params ({})
    def create_content(params = {}, options = {})
      req = build_request(:create_content, params)
      req.send_request(options)
    end

    # Creates a knowledge base.
    #
    # <note markdown="1"> When using this API, you cannot reuse [Amazon AppIntegrations][1]
    # DataIntegrations with external knowledge bases such as Salesforce and
    # ServiceNow. If you do, you'll get an `InvalidRequestException` error.
    #
    #  For example, you're programmatically managing your external knowledge
    # base, and you want to add or remove one of the fields that is being
    # ingested from Salesforce. Do the following:
    #
    #  1.  Call [DeleteKnowledgeBase][2].
    #
    # 2.  Call [DeleteDataIntegration][3].
    #
    # 3.  Call [CreateDataIntegration][4] to recreate the DataIntegration or
    #     a create different one.
    #
    # 4.  Call CreateKnowledgeBase.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html
    # [2]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html
    # [3]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html
    # [4]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [required, String] :knowledge_base_type
    #   The type of knowledge base. Only CUSTOM knowledge bases allow you to
    #   upload your own content. EXTERNAL knowledge bases support integrations
    #   with third-party systems whose content is synchronized automatically.
    #
    # @option params [required, String] :name
    #   The name of the knowledge base.
    #
    # @option params [Types::RenderingConfiguration] :rendering_configuration
    #   Information about how to render the content.
    #
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   The configuration information for the customer managed key used for
    #   encryption.
    #
    #   This KMS key must have a policy that allows `kms:CreateGrant`,
    #   `kms:DescribeKey`, and `kms:Decrypt/kms:GenerateDataKey` permissions
    #   to the IAM identity using the key to invoke Wisdom.
    #
    #   For more information about setting up a customer managed key for
    #   Wisdom, see [Enable Amazon Connect Wisdom for your instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html
    #
    # @option params [Types::SourceConfiguration] :source_configuration
    #   The source of the knowledge base content. Only set this argument for
    #   EXTERNAL knowledge bases.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKnowledgeBaseResponse#knowledge_base #knowledge_base} => Types::KnowledgeBaseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_knowledge_base({
    #     client_token: "NonEmptyString",
    #     description: "Description",
    #     knowledge_base_type: "EXTERNAL", # required, accepts EXTERNAL, CUSTOM, QUICK_RESPONSES
    #     name: "Name", # required
    #     rendering_configuration: {
    #       template_uri: "Uri",
    #     },
    #     server_side_encryption_configuration: {
    #       kms_key_id: "NonEmptyString",
    #     },
    #     source_configuration: {
    #       app_integrations: {
    #         app_integration_arn: "GenericArn", # required
    #         object_fields: ["NonEmptyString"],
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.knowledge_base_type #=> String, one of "EXTERNAL", "CUSTOM", "QUICK_RESPONSES"
    #   resp.knowledge_base.last_content_modification_time #=> Time
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.rendering_configuration.template_uri #=> String
    #   resp.knowledge_base.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields #=> Array
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.knowledge_base.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.knowledge_base.tags #=> Hash
    #   resp.knowledge_base.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateKnowledgeBase AWS API Documentation
    #
    # @overload create_knowledge_base(params = {})
    # @param [Hash] params ({})
    def create_knowledge_base(params = {}, options = {})
      req = build_request(:create_knowledge_base, params)
      req.send_request(options)
    end

    # Creates a Wisdom quick response.
    #
    # @option params [Array<String>] :channels
    #   The Amazon Connect channels this quick response applies to.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, Types::QuickResponseDataProvider] :content
    #   The content of the quick response.
    #
    # @option params [String] :content_type
    #   The media type of the quick response content.
    #
    #   * Use `application/x.quickresponse;format=plain` for a quick response
    #     written in plain text.
    #
    #   * Use `application/x.quickresponse;format=markdown` for a quick
    #     response written in richtext.
    #
    # @option params [String] :description
    #   The description of the quick response.
    #
    # @option params [Types::GroupingConfiguration] :grouping_configuration
    #   The configuration information of the user groups that the quick
    #   response is accessible to.
    #
    # @option params [Boolean] :is_active
    #   Whether the quick response is active.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @option params [String] :language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #
    # @option params [required, String] :name
    #   The name of the quick response.
    #
    # @option params [String] :shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateQuickResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQuickResponseResponse#quick_response #quick_response} => Types::QuickResponseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_quick_response({
    #     channels: ["Channel"],
    #     client_token: "NonEmptyString",
    #     content: { # required
    #       content: "QuickResponseContent",
    #     },
    #     content_type: "QuickResponseType",
    #     description: "QuickResponseDescription",
    #     grouping_configuration: {
    #       criteria: "GroupingCriteria",
    #       values: ["GroupingValue"],
    #     },
    #     is_active: false,
    #     knowledge_base_id: "UuidOrArn", # required
    #     language: "LanguageCode",
    #     name: "QuickResponseName", # required
    #     shortcut_key: "ShortCutKey",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_response.channels #=> Array
    #   resp.quick_response.channels[0] #=> String
    #   resp.quick_response.content_type #=> String
    #   resp.quick_response.contents.markdown.content #=> String
    #   resp.quick_response.contents.plain_text.content #=> String
    #   resp.quick_response.created_time #=> Time
    #   resp.quick_response.description #=> String
    #   resp.quick_response.grouping_configuration.criteria #=> String
    #   resp.quick_response.grouping_configuration.values #=> Array
    #   resp.quick_response.grouping_configuration.values[0] #=> String
    #   resp.quick_response.is_active #=> Boolean
    #   resp.quick_response.knowledge_base_arn #=> String
    #   resp.quick_response.knowledge_base_id #=> String
    #   resp.quick_response.language #=> String
    #   resp.quick_response.last_modified_by #=> String
    #   resp.quick_response.last_modified_time #=> Time
    #   resp.quick_response.name #=> String
    #   resp.quick_response.quick_response_arn #=> String
    #   resp.quick_response.quick_response_id #=> String
    #   resp.quick_response.shortcut_key #=> String
    #   resp.quick_response.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.quick_response.tags #=> Hash
    #   resp.quick_response.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateQuickResponse AWS API Documentation
    #
    # @overload create_quick_response(params = {})
    # @param [Hash] params ({})
    def create_quick_response(params = {}, options = {})
      req = build_request(:create_quick_response, params)
      req.send_request(options)
    end

    # Creates a session. A session is a contextual container used for
    # generating recommendations. Amazon Connect creates a new Wisdom
    # session for each contact on which Wisdom is enabled.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [required, String] :name
    #   The name of the session.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSessionResponse#session #session} => Types::SessionData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_session({
    #     assistant_id: "UuidOrArn", # required
    #     client_token: "ClientToken",
    #     description: "Description",
    #     name: "Name", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session.description #=> String
    #   resp.session.integration_configuration.topic_integration_arn #=> String
    #   resp.session.name #=> String
    #   resp.session.session_arn #=> String
    #   resp.session.session_id #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/CreateSession AWS API Documentation
    #
    # @overload create_session(params = {})
    # @param [Hash] params ({})
    def create_session(params = {}, options = {})
      req = build_request(:create_session, params)
      req.send_request(options)
    end

    # Deletes an assistant.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assistant({
    #     assistant_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteAssistant AWS API Documentation
    #
    # @overload delete_assistant(params = {})
    # @param [Hash] params ({})
    def delete_assistant(params = {}, options = {})
      req = build_request(:delete_assistant, params)
      req.send_request(options)
    end

    # Deletes an assistant association.
    #
    # @option params [required, String] :assistant_association_id
    #   The identifier of the assistant association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assistant_association({
    #     assistant_association_id: "UuidOrArn", # required
    #     assistant_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteAssistantAssociation AWS API Documentation
    #
    # @overload delete_assistant_association(params = {})
    # @param [Hash] params ({})
    def delete_assistant_association(params = {}, options = {})
      req = build_request(:delete_assistant_association, params)
      req.send_request(options)
    end

    # Deletes the content.
    #
    # @option params [required, String] :content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_content({
    #     content_id: "UuidOrArn", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteContent AWS API Documentation
    #
    # @overload delete_content(params = {})
    # @param [Hash] params ({})
    def delete_content(params = {}, options = {})
      req = build_request(:delete_content, params)
      req.send_request(options)
    end

    # Deletes the quick response import job.
    #
    # @option params [required, String] :import_job_id
    #   The identifier of the import job to be deleted.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_import_job({
    #     import_job_id: "Uuid", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteImportJob AWS API Documentation
    #
    # @overload delete_import_job(params = {})
    # @param [Hash] params ({})
    def delete_import_job(params = {}, options = {})
      req = build_request(:delete_import_job, params)
      req.send_request(options)
    end

    # Deletes the knowledge base.
    #
    # <note markdown="1"> When you use this API to delete an external knowledge base such as
    # Salesforce or ServiceNow, you must also delete the [Amazon
    # AppIntegrations][1] DataIntegration. This is because you can't reuse
    # the DataIntegration after it's been associated with an external
    # knowledge base. However, you can delete and recreate it. See
    # [DeleteDataIntegration][2] and [CreateDataIntegration][3] in the
    # *Amazon AppIntegrations API Reference*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html
    # [2]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html
    # [3]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [required, String] :knowledge_base_id
    #   The knowledge base to delete content from. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_knowledge_base({
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteKnowledgeBase AWS API Documentation
    #
    # @overload delete_knowledge_base(params = {})
    # @param [Hash] params ({})
    def delete_knowledge_base(params = {}, options = {})
      req = build_request(:delete_knowledge_base, params)
      req.send_request(options)
    end

    # Deletes a quick response.
    #
    # @option params [required, String] :knowledge_base_id
    #   The knowledge base from which the quick response is deleted. The
    #   identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it.
    #
    # @option params [required, String] :quick_response_id
    #   The identifier of the quick response to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_quick_response({
    #     knowledge_base_id: "UuidOrArn", # required
    #     quick_response_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/DeleteQuickResponse AWS API Documentation
    #
    # @overload delete_quick_response(params = {})
    # @param [Hash] params ({})
    def delete_quick_response(params = {}, options = {})
      req = build_request(:delete_quick_response, params)
      req.send_request(options)
    end

    # Retrieves information about an assistant.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @return [Types::GetAssistantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssistantResponse#assistant #assistant} => Types::AssistantData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assistant({
    #     assistant_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant.assistant_arn #=> String
    #   resp.assistant.assistant_id #=> String
    #   resp.assistant.description #=> String
    #   resp.assistant.integration_configuration.topic_integration_arn #=> String
    #   resp.assistant.name #=> String
    #   resp.assistant.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.assistant.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.assistant.tags #=> Hash
    #   resp.assistant.tags["TagKey"] #=> String
    #   resp.assistant.type #=> String, one of "AGENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetAssistant AWS API Documentation
    #
    # @overload get_assistant(params = {})
    # @param [Hash] params ({})
    def get_assistant(params = {}, options = {})
      req = build_request(:get_assistant, params)
      req.send_request(options)
    end

    # Retrieves information about an assistant association.
    #
    # @option params [required, String] :assistant_association_id
    #   The identifier of the assistant association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @return [Types::GetAssistantAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssistantAssociationResponse#assistant_association #assistant_association} => Types::AssistantAssociationData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assistant_association({
    #     assistant_association_id: "UuidOrArn", # required
    #     assistant_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant_association.assistant_arn #=> String
    #   resp.assistant_association.assistant_association_arn #=> String
    #   resp.assistant_association.assistant_association_id #=> String
    #   resp.assistant_association.assistant_id #=> String
    #   resp.assistant_association.association_data.knowledge_base_association.knowledge_base_arn #=> String
    #   resp.assistant_association.association_data.knowledge_base_association.knowledge_base_id #=> String
    #   resp.assistant_association.association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.assistant_association.tags #=> Hash
    #   resp.assistant_association.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetAssistantAssociation AWS API Documentation
    #
    # @overload get_assistant_association(params = {})
    # @param [Hash] params ({})
    def get_assistant_association(params = {}, options = {})
      req = build_request(:get_assistant_association, params)
      req.send_request(options)
    end

    # Retrieves content, including a pre-signed URL to download the content.
    #
    # @option params [required, String] :content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @return [Types::GetContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContentResponse#content #content} => Types::ContentData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_content({
    #     content_id: "UuidOrArn", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content.content_arn #=> String
    #   resp.content.content_id #=> String
    #   resp.content.content_type #=> String
    #   resp.content.knowledge_base_arn #=> String
    #   resp.content.knowledge_base_id #=> String
    #   resp.content.link_out_uri #=> String
    #   resp.content.metadata #=> Hash
    #   resp.content.metadata["NonEmptyString"] #=> String
    #   resp.content.name #=> String
    #   resp.content.revision_id #=> String
    #   resp.content.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content.tags #=> Hash
    #   resp.content.tags["TagKey"] #=> String
    #   resp.content.title #=> String
    #   resp.content.url #=> String
    #   resp.content.url_expiry #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetContent AWS API Documentation
    #
    # @overload get_content(params = {})
    # @param [Hash] params ({})
    def get_content(params = {}, options = {})
      req = build_request(:get_content, params)
      req.send_request(options)
    end

    # Retrieves summary information about the content.
    #
    # @option params [required, String] :content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @return [Types::GetContentSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContentSummaryResponse#content_summary #content_summary} => Types::ContentSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_content_summary({
    #     content_id: "UuidOrArn", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_summary.content_arn #=> String
    #   resp.content_summary.content_id #=> String
    #   resp.content_summary.content_type #=> String
    #   resp.content_summary.knowledge_base_arn #=> String
    #   resp.content_summary.knowledge_base_id #=> String
    #   resp.content_summary.metadata #=> Hash
    #   resp.content_summary.metadata["NonEmptyString"] #=> String
    #   resp.content_summary.name #=> String
    #   resp.content_summary.revision_id #=> String
    #   resp.content_summary.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content_summary.tags #=> Hash
    #   resp.content_summary.tags["TagKey"] #=> String
    #   resp.content_summary.title #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetContentSummary AWS API Documentation
    #
    # @overload get_content_summary(params = {})
    # @param [Hash] params ({})
    def get_content_summary(params = {}, options = {})
      req = build_request(:get_content_summary, params)
      req.send_request(options)
    end

    # Retrieves the started import job.
    #
    # @option params [required, String] :import_job_id
    #   The identifier of the import job to retrieve.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base that the import job belongs to.
    #
    # @return [Types::GetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportJobResponse#import_job #import_job} => Types::ImportJobData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_job({
    #     import_job_id: "Uuid", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job.created_time #=> Time
    #   resp.import_job.external_source_configuration.configuration.connect_configuration.instance_id #=> String
    #   resp.import_job.external_source_configuration.source #=> String, one of "AMAZON_CONNECT"
    #   resp.import_job.failed_record_report #=> String
    #   resp.import_job.import_job_id #=> String
    #   resp.import_job.import_job_type #=> String, one of "QUICK_RESPONSES"
    #   resp.import_job.knowledge_base_arn #=> String
    #   resp.import_job.knowledge_base_id #=> String
    #   resp.import_job.last_modified_time #=> Time
    #   resp.import_job.metadata #=> Hash
    #   resp.import_job.metadata["NonEmptyString"] #=> String
    #   resp.import_job.status #=> String, one of "START_IN_PROGRESS", "FAILED", "COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.import_job.upload_id #=> String
    #   resp.import_job.url #=> String
    #   resp.import_job.url_expiry #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetImportJob AWS API Documentation
    #
    # @overload get_import_job(params = {})
    # @param [Hash] params ({})
    def get_import_job(params = {}, options = {})
      req = build_request(:get_import_job, params)
      req.send_request(options)
    end

    # Retrieves information about the knowledge base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @return [Types::GetKnowledgeBaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKnowledgeBaseResponse#knowledge_base #knowledge_base} => Types::KnowledgeBaseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_knowledge_base({
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.knowledge_base_type #=> String, one of "EXTERNAL", "CUSTOM", "QUICK_RESPONSES"
    #   resp.knowledge_base.last_content_modification_time #=> Time
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.rendering_configuration.template_uri #=> String
    #   resp.knowledge_base.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields #=> Array
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.knowledge_base.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.knowledge_base.tags #=> Hash
    #   resp.knowledge_base.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetKnowledgeBase AWS API Documentation
    #
    # @overload get_knowledge_base(params = {})
    # @param [Hash] params ({})
    def get_knowledge_base(params = {}, options = {})
      req = build_request(:get_knowledge_base, params)
      req.send_request(options)
    end

    # Retrieves the quick response.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should be a
    #   QUICK\_RESPONSES type knowledge base.
    #
    # @option params [required, String] :quick_response_id
    #   The identifier of the quick response.
    #
    # @return [Types::GetQuickResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQuickResponseResponse#quick_response #quick_response} => Types::QuickResponseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_quick_response({
    #     knowledge_base_id: "UuidOrArn", # required
    #     quick_response_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_response.channels #=> Array
    #   resp.quick_response.channels[0] #=> String
    #   resp.quick_response.content_type #=> String
    #   resp.quick_response.contents.markdown.content #=> String
    #   resp.quick_response.contents.plain_text.content #=> String
    #   resp.quick_response.created_time #=> Time
    #   resp.quick_response.description #=> String
    #   resp.quick_response.grouping_configuration.criteria #=> String
    #   resp.quick_response.grouping_configuration.values #=> Array
    #   resp.quick_response.grouping_configuration.values[0] #=> String
    #   resp.quick_response.is_active #=> Boolean
    #   resp.quick_response.knowledge_base_arn #=> String
    #   resp.quick_response.knowledge_base_id #=> String
    #   resp.quick_response.language #=> String
    #   resp.quick_response.last_modified_by #=> String
    #   resp.quick_response.last_modified_time #=> Time
    #   resp.quick_response.name #=> String
    #   resp.quick_response.quick_response_arn #=> String
    #   resp.quick_response.quick_response_id #=> String
    #   resp.quick_response.shortcut_key #=> String
    #   resp.quick_response.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.quick_response.tags #=> Hash
    #   resp.quick_response.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetQuickResponse AWS API Documentation
    #
    # @overload get_quick_response(params = {})
    # @param [Hash] params ({})
    def get_quick_response(params = {}, options = {})
      req = build_request(:get_quick_response, params)
      req.send_request(options)
    end

    # Retrieves recommendations for the specified session. To avoid
    # retrieving the same recommendations in subsequent calls, use
    # [NotifyRecommendationsReceived][1]. This API supports long-polling
    # behavior with the `waitTimeSeconds` parameter. Short poll is the
    # default behavior and only returns recommendations already available.
    # To perform a manual query against an assistant, use
    # [QueryAssistant][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_NotifyRecommendationsReceived.html
    # [2]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_QueryAssistant.html
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [Integer] :wait_time_seconds
    #   The duration (in seconds) for which the call waits for a
    #   recommendation to be made available before returning. If a
    #   recommendation is available, the call returns sooner than
    #   `WaitTimeSeconds`. If no messages are available and the wait time
    #   expires, the call returns successfully with an empty list.
    #
    # @return [Types::GetRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationsResponse#recommendations #recommendations} => Array&lt;Types::RecommendationData&gt;
    #   * {Types::GetRecommendationsResponse#triggers #triggers} => Array&lt;Types::RecommendationTrigger&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendations({
    #     assistant_id: "UuidOrArn", # required
    #     max_results: 1,
    #     session_id: "UuidOrArn", # required
    #     wait_time_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendations #=> Array
    #   resp.recommendations[0].document.content_reference.content_arn #=> String
    #   resp.recommendations[0].document.content_reference.content_id #=> String
    #   resp.recommendations[0].document.content_reference.knowledge_base_arn #=> String
    #   resp.recommendations[0].document.content_reference.knowledge_base_id #=> String
    #   resp.recommendations[0].document.excerpt.highlights #=> Array
    #   resp.recommendations[0].document.excerpt.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.recommendations[0].document.excerpt.highlights[0].end_offset_exclusive #=> Integer
    #   resp.recommendations[0].document.excerpt.text #=> String
    #   resp.recommendations[0].document.title.highlights #=> Array
    #   resp.recommendations[0].document.title.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.recommendations[0].document.title.highlights[0].end_offset_exclusive #=> Integer
    #   resp.recommendations[0].document.title.text #=> String
    #   resp.recommendations[0].recommendation_id #=> String
    #   resp.recommendations[0].relevance_level #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.recommendations[0].relevance_score #=> Float
    #   resp.recommendations[0].type #=> String, one of "KNOWLEDGE_CONTENT"
    #   resp.triggers #=> Array
    #   resp.triggers[0].data.query.text #=> String
    #   resp.triggers[0].id #=> String
    #   resp.triggers[0].recommendation_ids #=> Array
    #   resp.triggers[0].recommendation_ids[0] #=> String
    #   resp.triggers[0].source #=> String, one of "ISSUE_DETECTION", "RULE_EVALUATION", "OTHER"
    #   resp.triggers[0].type #=> String, one of "QUERY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetRecommendations AWS API Documentation
    #
    # @overload get_recommendations(params = {})
    # @param [Hash] params ({})
    def get_recommendations(params = {}, options = {})
      req = build_request(:get_recommendations, params)
      req.send_request(options)
    end

    # Retrieves information for a specified session.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @return [Types::GetSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionResponse#session #session} => Types::SessionData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session({
    #     assistant_id: "UuidOrArn", # required
    #     session_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session.description #=> String
    #   resp.session.integration_configuration.topic_integration_arn #=> String
    #   resp.session.name #=> String
    #   resp.session.session_arn #=> String
    #   resp.session.session_id #=> String
    #   resp.session.tags #=> Hash
    #   resp.session.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/GetSession AWS API Documentation
    #
    # @overload get_session(params = {})
    # @param [Hash] params ({})
    def get_session(params = {}, options = {})
      req = build_request(:get_session, params)
      req.send_request(options)
    end

    # Lists information about assistant associations.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListAssistantAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssistantAssociationsResponse#assistant_association_summaries #assistant_association_summaries} => Array&lt;Types::AssistantAssociationSummary&gt;
    #   * {Types::ListAssistantAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assistant_associations({
    #     assistant_id: "UuidOrArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant_association_summaries #=> Array
    #   resp.assistant_association_summaries[0].assistant_arn #=> String
    #   resp.assistant_association_summaries[0].assistant_association_arn #=> String
    #   resp.assistant_association_summaries[0].assistant_association_id #=> String
    #   resp.assistant_association_summaries[0].assistant_id #=> String
    #   resp.assistant_association_summaries[0].association_data.knowledge_base_association.knowledge_base_arn #=> String
    #   resp.assistant_association_summaries[0].association_data.knowledge_base_association.knowledge_base_id #=> String
    #   resp.assistant_association_summaries[0].association_type #=> String, one of "KNOWLEDGE_BASE"
    #   resp.assistant_association_summaries[0].tags #=> Hash
    #   resp.assistant_association_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListAssistantAssociations AWS API Documentation
    #
    # @overload list_assistant_associations(params = {})
    # @param [Hash] params ({})
    def list_assistant_associations(params = {}, options = {})
      req = build_request(:list_assistant_associations, params)
      req.send_request(options)
    end

    # Lists information about assistants.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListAssistantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssistantsResponse#assistant_summaries #assistant_summaries} => Array&lt;Types::AssistantSummary&gt;
    #   * {Types::ListAssistantsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assistants({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.assistant_summaries #=> Array
    #   resp.assistant_summaries[0].assistant_arn #=> String
    #   resp.assistant_summaries[0].assistant_id #=> String
    #   resp.assistant_summaries[0].description #=> String
    #   resp.assistant_summaries[0].integration_configuration.topic_integration_arn #=> String
    #   resp.assistant_summaries[0].name #=> String
    #   resp.assistant_summaries[0].server_side_encryption_configuration.kms_key_id #=> String
    #   resp.assistant_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.assistant_summaries[0].tags #=> Hash
    #   resp.assistant_summaries[0].tags["TagKey"] #=> String
    #   resp.assistant_summaries[0].type #=> String, one of "AGENT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListAssistants AWS API Documentation
    #
    # @overload list_assistants(params = {})
    # @param [Hash] params ({})
    def list_assistants(params = {}, options = {})
      req = build_request(:list_assistants, params)
      req.send_request(options)
    end

    # Lists the content.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListContentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContentsResponse#content_summaries #content_summaries} => Array&lt;Types::ContentSummary&gt;
    #   * {Types::ListContentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contents({
    #     knowledge_base_id: "UuidOrArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.content_summaries #=> Array
    #   resp.content_summaries[0].content_arn #=> String
    #   resp.content_summaries[0].content_id #=> String
    #   resp.content_summaries[0].content_type #=> String
    #   resp.content_summaries[0].knowledge_base_arn #=> String
    #   resp.content_summaries[0].knowledge_base_id #=> String
    #   resp.content_summaries[0].metadata #=> Hash
    #   resp.content_summaries[0].metadata["NonEmptyString"] #=> String
    #   resp.content_summaries[0].name #=> String
    #   resp.content_summaries[0].revision_id #=> String
    #   resp.content_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content_summaries[0].tags #=> Hash
    #   resp.content_summaries[0].tags["TagKey"] #=> String
    #   resp.content_summaries[0].title #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListContents AWS API Documentation
    #
    # @overload list_contents(params = {})
    # @param [Hash] params ({})
    def list_contents(params = {}, options = {})
      req = build_request(:list_contents, params)
      req.send_request(options)
    end

    # Lists information about import jobs.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportJobsResponse#import_job_summaries #import_job_summaries} => Array&lt;Types::ImportJobSummary&gt;
    #   * {Types::ListImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_import_jobs({
    #     knowledge_base_id: "UuidOrArn", # required
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job_summaries #=> Array
    #   resp.import_job_summaries[0].created_time #=> Time
    #   resp.import_job_summaries[0].external_source_configuration.configuration.connect_configuration.instance_id #=> String
    #   resp.import_job_summaries[0].external_source_configuration.source #=> String, one of "AMAZON_CONNECT"
    #   resp.import_job_summaries[0].import_job_id #=> String
    #   resp.import_job_summaries[0].import_job_type #=> String, one of "QUICK_RESPONSES"
    #   resp.import_job_summaries[0].knowledge_base_arn #=> String
    #   resp.import_job_summaries[0].knowledge_base_id #=> String
    #   resp.import_job_summaries[0].last_modified_time #=> Time
    #   resp.import_job_summaries[0].metadata #=> Hash
    #   resp.import_job_summaries[0].metadata["NonEmptyString"] #=> String
    #   resp.import_job_summaries[0].status #=> String, one of "START_IN_PROGRESS", "FAILED", "COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.import_job_summaries[0].upload_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListImportJobs AWS API Documentation
    #
    # @overload list_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_import_jobs(params = {}, options = {})
      req = build_request(:list_import_jobs, params)
      req.send_request(options)
    end

    # Lists the knowledge bases.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListKnowledgeBasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKnowledgeBasesResponse#knowledge_base_summaries #knowledge_base_summaries} => Array&lt;Types::KnowledgeBaseSummary&gt;
    #   * {Types::ListKnowledgeBasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_knowledge_bases({
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base_summaries #=> Array
    #   resp.knowledge_base_summaries[0].description #=> String
    #   resp.knowledge_base_summaries[0].knowledge_base_arn #=> String
    #   resp.knowledge_base_summaries[0].knowledge_base_id #=> String
    #   resp.knowledge_base_summaries[0].knowledge_base_type #=> String, one of "EXTERNAL", "CUSTOM", "QUICK_RESPONSES"
    #   resp.knowledge_base_summaries[0].name #=> String
    #   resp.knowledge_base_summaries[0].rendering_configuration.template_uri #=> String
    #   resp.knowledge_base_summaries[0].server_side_encryption_configuration.kms_key_id #=> String
    #   resp.knowledge_base_summaries[0].source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.knowledge_base_summaries[0].source_configuration.app_integrations.object_fields #=> Array
    #   resp.knowledge_base_summaries[0].source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.knowledge_base_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.knowledge_base_summaries[0].tags #=> Hash
    #   resp.knowledge_base_summaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListKnowledgeBases AWS API Documentation
    #
    # @overload list_knowledge_bases(params = {})
    # @param [Hash] params ({})
    def list_knowledge_bases(params = {}, options = {})
      req = build_request(:list_knowledge_bases, params)
      req.send_request(options)
    end

    # Lists information about quick response.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListQuickResponsesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQuickResponsesResponse#next_token #next_token} => String
    #   * {Types::ListQuickResponsesResponse#quick_response_summaries #quick_response_summaries} => Array&lt;Types::QuickResponseSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_quick_responses({
    #     knowledge_base_id: "UuidOrArn", # required
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.quick_response_summaries #=> Array
    #   resp.quick_response_summaries[0].channels #=> Array
    #   resp.quick_response_summaries[0].channels[0] #=> String
    #   resp.quick_response_summaries[0].content_type #=> String
    #   resp.quick_response_summaries[0].created_time #=> Time
    #   resp.quick_response_summaries[0].description #=> String
    #   resp.quick_response_summaries[0].is_active #=> Boolean
    #   resp.quick_response_summaries[0].knowledge_base_arn #=> String
    #   resp.quick_response_summaries[0].knowledge_base_id #=> String
    #   resp.quick_response_summaries[0].last_modified_by #=> String
    #   resp.quick_response_summaries[0].last_modified_time #=> Time
    #   resp.quick_response_summaries[0].name #=> String
    #   resp.quick_response_summaries[0].quick_response_arn #=> String
    #   resp.quick_response_summaries[0].quick_response_id #=> String
    #   resp.quick_response_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.quick_response_summaries[0].tags #=> Hash
    #   resp.quick_response_summaries[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListQuickResponses AWS API Documentation
    #
    # @overload list_quick_responses(params = {})
    # @param [Hash] params ({})
    def list_quick_responses(params = {}, options = {})
      req = build_request(:list_quick_responses, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Removes the specified recommendations from the specified assistant's
    # queue of newly available recommendations. You can use this API in
    # conjunction with [GetRecommendations][1] and a `waitTimeSeconds` input
    # for long-polling behavior and avoiding duplicate recommendations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @option params [required, Array<String>] :recommendation_ids
    #   The identifiers of the recommendations.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @return [Types::NotifyRecommendationsReceivedResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::NotifyRecommendationsReceivedResponse#errors #errors} => Array&lt;Types::NotifyRecommendationsReceivedError&gt;
    #   * {Types::NotifyRecommendationsReceivedResponse#recommendation_ids #recommendation_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_recommendations_received({
    #     assistant_id: "UuidOrArn", # required
    #     recommendation_ids: ["String"], # required
    #     session_id: "UuidOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].message #=> String
    #   resp.errors[0].recommendation_id #=> String
    #   resp.recommendation_ids #=> Array
    #   resp.recommendation_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/NotifyRecommendationsReceived AWS API Documentation
    #
    # @overload notify_recommendations_received(params = {})
    # @param [Hash] params ({})
    def notify_recommendations_received(params = {}, options = {})
      req = build_request(:notify_recommendations_received, params)
      req.send_request(options)
    end

    # Performs a manual search against the specified assistant. To retrieve
    # recommendations for an assistant, use [GetRecommendations][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [required, String] :query_text
    #   The text to search for.
    #
    # @return [Types::QueryAssistantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QueryAssistantResponse#next_token #next_token} => String
    #   * {Types::QueryAssistantResponse#results #results} => Array&lt;Types::ResultData&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query_assistant({
    #     assistant_id: "UuidOrArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     query_text: "QueryText", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.results #=> Array
    #   resp.results[0].document.content_reference.content_arn #=> String
    #   resp.results[0].document.content_reference.content_id #=> String
    #   resp.results[0].document.content_reference.knowledge_base_arn #=> String
    #   resp.results[0].document.content_reference.knowledge_base_id #=> String
    #   resp.results[0].document.excerpt.highlights #=> Array
    #   resp.results[0].document.excerpt.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.results[0].document.excerpt.highlights[0].end_offset_exclusive #=> Integer
    #   resp.results[0].document.excerpt.text #=> String
    #   resp.results[0].document.title.highlights #=> Array
    #   resp.results[0].document.title.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.results[0].document.title.highlights[0].end_offset_exclusive #=> Integer
    #   resp.results[0].document.title.text #=> String
    #   resp.results[0].relevance_score #=> Float
    #   resp.results[0].result_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/QueryAssistant AWS API Documentation
    #
    # @overload query_assistant(params = {})
    # @param [Hash] params ({})
    def query_assistant(params = {}, options = {})
      req = build_request(:query_assistant, params)
      req.send_request(options)
    end

    # Removes a URI template from a knowledge base.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_knowledge_base_template_uri({
    #     knowledge_base_id: "UuidOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/RemoveKnowledgeBaseTemplateUri AWS API Documentation
    #
    # @overload remove_knowledge_base_template_uri(params = {})
    # @param [Hash] params ({})
    def remove_knowledge_base_template_uri(params = {}, options = {})
      req = build_request(:remove_knowledge_base_template_uri, params)
      req.send_request(options)
    end

    # Searches for content in a specified knowledge base. Can be used to get
    # a specific content resource by its name.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [required, Types::SearchExpression] :search_expression
    #   The search expression to filter results.
    #
    # @return [Types::SearchContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchContentResponse#content_summaries #content_summaries} => Array&lt;Types::ContentSummary&gt;
    #   * {Types::SearchContentResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_content({
    #     knowledge_base_id: "UuidOrArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     search_expression: { # required
    #       filters: [ # required
    #         {
    #           field: "NAME", # required, accepts NAME
    #           operator: "EQUALS", # required, accepts EQUALS
    #           value: "NonEmptyString", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.content_summaries #=> Array
    #   resp.content_summaries[0].content_arn #=> String
    #   resp.content_summaries[0].content_id #=> String
    #   resp.content_summaries[0].content_type #=> String
    #   resp.content_summaries[0].knowledge_base_arn #=> String
    #   resp.content_summaries[0].knowledge_base_id #=> String
    #   resp.content_summaries[0].metadata #=> Hash
    #   resp.content_summaries[0].metadata["NonEmptyString"] #=> String
    #   resp.content_summaries[0].name #=> String
    #   resp.content_summaries[0].revision_id #=> String
    #   resp.content_summaries[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content_summaries[0].tags #=> Hash
    #   resp.content_summaries[0].tags["TagKey"] #=> String
    #   resp.content_summaries[0].title #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/SearchContent AWS API Documentation
    #
    # @overload search_content(params = {})
    # @param [Hash] params ({})
    def search_content(params = {}, options = {})
      req = build_request(:search_content, params)
      req.send_request(options)
    end

    # Searches existing Wisdom quick responses in a Wisdom knowledge base.
    #
    # @option params [Hash<String,String>] :attributes
    #   The [user-defined Amazon Connect contact attributes][1] to be resolved
    #   when search results are returned.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-attrib-list.html#user-defined-attributes
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the ARN.
    #   URLs cannot contain the ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [required, Types::QuickResponseSearchExpression] :search_expression
    #   The search expression for querying the quick response.
    #
    # @return [Types::SearchQuickResponsesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchQuickResponsesResponse#next_token #next_token} => String
    #   * {Types::SearchQuickResponsesResponse#results #results} => Array&lt;Types::QuickResponseSearchResultData&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_quick_responses({
    #     attributes: {
    #       "ContactAttributeKey" => "ContactAttributeValue",
    #     },
    #     knowledge_base_id: "UuidOrArn", # required
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #     search_expression: { # required
    #       filters: [
    #         {
    #           include_no_existence: false,
    #           name: "NonEmptyString", # required
    #           operator: "EQUALS", # required, accepts EQUALS, PREFIX
    #           values: ["QuickResponseFilterValue"],
    #         },
    #       ],
    #       order_on_field: {
    #         name: "NonEmptyString", # required
    #         order: "ASC", # accepts ASC, DESC
    #       },
    #       queries: [
    #         {
    #           allow_fuzziness: false,
    #           name: "NonEmptyString", # required
    #           operator: "CONTAINS", # required, accepts CONTAINS, CONTAINS_AND_PREFIX
    #           priority: "HIGH", # accepts HIGH, MEDIUM, LOW
    #           values: ["QuickResponseQueryValue"], # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.results #=> Array
    #   resp.results[0].attributes_interpolated #=> Array
    #   resp.results[0].attributes_interpolated[0] #=> String
    #   resp.results[0].attributes_not_interpolated #=> Array
    #   resp.results[0].attributes_not_interpolated[0] #=> String
    #   resp.results[0].channels #=> Array
    #   resp.results[0].channels[0] #=> String
    #   resp.results[0].content_type #=> String
    #   resp.results[0].contents.markdown.content #=> String
    #   resp.results[0].contents.plain_text.content #=> String
    #   resp.results[0].created_time #=> Time
    #   resp.results[0].description #=> String
    #   resp.results[0].grouping_configuration.criteria #=> String
    #   resp.results[0].grouping_configuration.values #=> Array
    #   resp.results[0].grouping_configuration.values[0] #=> String
    #   resp.results[0].is_active #=> Boolean
    #   resp.results[0].knowledge_base_arn #=> String
    #   resp.results[0].knowledge_base_id #=> String
    #   resp.results[0].language #=> String
    #   resp.results[0].last_modified_by #=> String
    #   resp.results[0].last_modified_time #=> Time
    #   resp.results[0].name #=> String
    #   resp.results[0].quick_response_arn #=> String
    #   resp.results[0].quick_response_id #=> String
    #   resp.results[0].shortcut_key #=> String
    #   resp.results[0].status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.results[0].tags #=> Hash
    #   resp.results[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/SearchQuickResponses AWS API Documentation
    #
    # @overload search_quick_responses(params = {})
    # @param [Hash] params ({})
    def search_quick_responses(params = {}, options = {})
      req = build_request(:search_quick_responses, params)
      req.send_request(options)
    end

    # Searches for sessions.
    #
    # @option params [required, String] :assistant_id
    #   The identifier of the Wisdom assistant. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [required, Types::SearchExpression] :search_expression
    #   The search expression to filter results.
    #
    # @return [Types::SearchSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchSessionsResponse#next_token #next_token} => String
    #   * {Types::SearchSessionsResponse#session_summaries #session_summaries} => Array&lt;Types::SessionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_sessions({
    #     assistant_id: "UuidOrArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     search_expression: { # required
    #       filters: [ # required
    #         {
    #           field: "NAME", # required, accepts NAME
    #           operator: "EQUALS", # required, accepts EQUALS
    #           value: "NonEmptyString", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.session_summaries #=> Array
    #   resp.session_summaries[0].assistant_arn #=> String
    #   resp.session_summaries[0].assistant_id #=> String
    #   resp.session_summaries[0].session_arn #=> String
    #   resp.session_summaries[0].session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/SearchSessions AWS API Documentation
    #
    # @overload search_sessions(params = {})
    # @param [Hash] params ({})
    def search_sessions(params = {}, options = {})
      req = build_request(:search_sessions, params)
      req.send_request(options)
    end

    # Get a URL to upload content to a knowledge base. To upload content,
    # first make a PUT request to the returned URL with your file, making
    # sure to include the required headers. Then use [CreateContent][1] to
    # finalize the content creation process or [UpdateContent][2] to modify
    # an existing resource. You can only upload content to a knowledge base
    # of type CUSTOM.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_CreateContent.html
    # [2]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_UpdateContent.html
    #
    # @option params [required, String] :content_type
    #   The type of content to upload.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @option params [Integer] :presigned_url_time_to_live
    #   The expected expiration time of the generated presigned URL, specified
    #   in minutes.
    #
    # @return [Types::StartContentUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartContentUploadResponse#headers_to_include #headers_to_include} => Hash&lt;String,String&gt;
    #   * {Types::StartContentUploadResponse#upload_id #upload_id} => String
    #   * {Types::StartContentUploadResponse#url #url} => String
    #   * {Types::StartContentUploadResponse#url_expiry #url_expiry} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_content_upload({
    #     content_type: "ContentType", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #     presigned_url_time_to_live: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.headers_to_include #=> Hash
    #   resp.headers_to_include["NonEmptyString"] #=> String
    #   resp.upload_id #=> String
    #   resp.url #=> String
    #   resp.url_expiry #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/StartContentUpload AWS API Documentation
    #
    # @overload start_content_upload(params = {})
    # @param [Hash] params ({})
    def start_content_upload(params = {}, options = {})
      req = build_request(:start_content_upload, params)
      req.send_request(options)
    end

    # Start an asynchronous job to import Wisdom resources from an uploaded
    # source file. Before calling this API, use [StartContentUpload][1] to
    # upload an asset that contains the resource data.
    #
    # * For importing Wisdom quick responses, you need to upload a csv file
    #   including the quick responses. For information about how to format
    #   the csv file for importing quick responses, see [Import quick
    #   responses][2].
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    # [2]: https://docs.aws.amazon.com/console/connect/quick-responses/add-data
    #
    # @option params [String] :client_token
    #   The tags used to organize, track, or control access for this resource.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::ExternalSourceConfiguration] :external_source_configuration
    #   The configuration information of the external source that the resource
    #   data are imported from.
    #
    # @option params [required, String] :import_job_type
    #   The type of the import job.
    #
    #   * For importing quick response resource, set the value to
    #     `QUICK_RESPONSES`.
    #
    #   ^
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    #   * For importing Wisdom quick responses, this should be a
    #     `QUICK_RESPONSES` type knowledge base.
    #
    #   ^
    #
    # @option params [Hash<String,String>] :metadata
    #   The metadata fields of the imported Wisdom resources.
    #
    # @option params [required, String] :upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    #
    # @return [Types::StartImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImportJobResponse#import_job #import_job} => Types::ImportJobData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import_job({
    #     client_token: "NonEmptyString",
    #     external_source_configuration: {
    #       configuration: { # required
    #         connect_configuration: {
    #           instance_id: "NonEmptyString",
    #         },
    #       },
    #       source: "AMAZON_CONNECT", # required, accepts AMAZON_CONNECT
    #     },
    #     import_job_type: "QUICK_RESPONSES", # required, accepts QUICK_RESPONSES
    #     knowledge_base_id: "UuidOrArn", # required
    #     metadata: {
    #       "NonEmptyString" => "NonEmptyString",
    #     },
    #     upload_id: "UploadId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job.created_time #=> Time
    #   resp.import_job.external_source_configuration.configuration.connect_configuration.instance_id #=> String
    #   resp.import_job.external_source_configuration.source #=> String, one of "AMAZON_CONNECT"
    #   resp.import_job.failed_record_report #=> String
    #   resp.import_job.import_job_id #=> String
    #   resp.import_job.import_job_type #=> String, one of "QUICK_RESPONSES"
    #   resp.import_job.knowledge_base_arn #=> String
    #   resp.import_job.knowledge_base_id #=> String
    #   resp.import_job.last_modified_time #=> Time
    #   resp.import_job.metadata #=> Hash
    #   resp.import_job.metadata["NonEmptyString"] #=> String
    #   resp.import_job.status #=> String, one of "START_IN_PROGRESS", "FAILED", "COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.import_job.upload_id #=> String
    #   resp.import_job.url #=> String
    #   resp.import_job.url_expiry #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/StartImportJob AWS API Documentation
    #
    # @overload start_import_job(params = {})
    # @param [Hash] params ({})
    def start_import_job(params = {}, options = {})
      req = build_request(:start_import_job, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates information about the content.
    #
    # @option params [required, String] :content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN
    #
    # @option params [Hash<String,String>] :metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Wisdom, you can store an external version
    #   identifier as metadata to utilize for determining drift.
    #
    # @option params [String] :override_link_out_uri
    #   The URI for the article. If the knowledge base has a templateUri,
    #   setting this argument overrides it for this piece of content. To
    #   remove an existing `overrideLinkOurUri`, exclude this argument and set
    #   `removeOverrideLinkOutUri` to true.
    #
    # @option params [Boolean] :remove_override_link_out_uri
    #   Unset the existing `overrideLinkOutUri` if it exists.
    #
    # @option params [String] :revision_id
    #   The `revisionId` of the content resource to update, taken from an
    #   earlier call to `GetContent`, `GetContentSummary`, `SearchContent`, or
    #   `ListContents`. If included, this argument acts as an optimistic lock
    #   to ensure content was not modified since it was last read. If it has
    #   been modified, this API throws a `PreconditionFailedException`.
    #
    # @option params [String] :title
    #   The title of the content.
    #
    # @option params [String] :upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    #
    # @return [Types::UpdateContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContentResponse#content #content} => Types::ContentData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_content({
    #     content_id: "UuidOrArn", # required
    #     knowledge_base_id: "UuidOrArn", # required
    #     metadata: {
    #       "NonEmptyString" => "NonEmptyString",
    #     },
    #     override_link_out_uri: "Uri",
    #     remove_override_link_out_uri: false,
    #     revision_id: "NonEmptyString",
    #     title: "ContentTitle",
    #     upload_id: "UploadId",
    #   })
    #
    # @example Response structure
    #
    #   resp.content.content_arn #=> String
    #   resp.content.content_id #=> String
    #   resp.content.content_type #=> String
    #   resp.content.knowledge_base_arn #=> String
    #   resp.content.knowledge_base_id #=> String
    #   resp.content.link_out_uri #=> String
    #   resp.content.metadata #=> Hash
    #   resp.content.metadata["NonEmptyString"] #=> String
    #   resp.content.name #=> String
    #   resp.content.revision_id #=> String
    #   resp.content.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"
    #   resp.content.tags #=> Hash
    #   resp.content.tags["TagKey"] #=> String
    #   resp.content.title #=> String
    #   resp.content.url #=> String
    #   resp.content.url_expiry #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/UpdateContent AWS API Documentation
    #
    # @overload update_content(params = {})
    # @param [Hash] params ({})
    def update_content(params = {}, options = {})
      req = build_request(:update_content, params)
      req.send_request(options)
    end

    # Updates the template URI of a knowledge base. This is only supported
    # for knowledge bases of type EXTERNAL. Include a single variable in
    # `${variable}` format; this interpolated by Wisdom using ingested
    # content. For example, if you ingest a Salesforce article, it has an
    # `Id` value, and you can set the template URI to
    # `https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view`.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @option params [required, String] :template_uri
    #   The template URI to update.
    #
    # @return [Types::UpdateKnowledgeBaseTemplateUriResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKnowledgeBaseTemplateUriResponse#knowledge_base #knowledge_base} => Types::KnowledgeBaseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_knowledge_base_template_uri({
    #     knowledge_base_id: "UuidOrArn", # required
    #     template_uri: "Uri", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.knowledge_base.description #=> String
    #   resp.knowledge_base.knowledge_base_arn #=> String
    #   resp.knowledge_base.knowledge_base_id #=> String
    #   resp.knowledge_base.knowledge_base_type #=> String, one of "EXTERNAL", "CUSTOM", "QUICK_RESPONSES"
    #   resp.knowledge_base.last_content_modification_time #=> Time
    #   resp.knowledge_base.name #=> String
    #   resp.knowledge_base.rendering_configuration.template_uri #=> String
    #   resp.knowledge_base.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields #=> Array
    #   resp.knowledge_base.source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.knowledge_base.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"
    #   resp.knowledge_base.tags #=> Hash
    #   resp.knowledge_base.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/UpdateKnowledgeBaseTemplateUri AWS API Documentation
    #
    # @overload update_knowledge_base_template_uri(params = {})
    # @param [Hash] params ({})
    def update_knowledge_base_template_uri(params = {}, options = {})
      req = build_request(:update_knowledge_base_template_uri, params)
      req.send_request(options)
    end

    # Updates an existing Wisdom quick response.
    #
    # @option params [Array<String>] :channels
    #   The Amazon Connect contact channels this quick response applies to.
    #   The supported contact channel types include `Chat`.
    #
    # @option params [Types::QuickResponseDataProvider] :content
    #   The updated content of the quick response.
    #
    # @option params [String] :content_type
    #   The media type of the quick response content.
    #
    #   * Use `application/x.quickresponse;format=plain` for quick response
    #     written in plain text.
    #
    #   * Use `application/x.quickresponse;format=markdown` for quick response
    #     written in richtext.
    #
    # @option params [String] :description
    #   The updated description of the quick response.
    #
    # @option params [Types::GroupingConfiguration] :grouping_configuration
    #   The updated grouping configuration of the quick response.
    #
    # @option params [Boolean] :is_active
    #   Whether the quick response is active.
    #
    # @option params [required, String] :knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base if you're storing Wisdom Content
    #   resource to it. Can be either the ID or the ARN. URLs cannot contain
    #   the ARN.
    #
    # @option params [String] :language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #
    # @option params [String] :name
    #   The name of the quick response.
    #
    # @option params [required, String] :quick_response_id
    #   The identifier of the quick response.
    #
    # @option params [Boolean] :remove_description
    #   Whether to remove the description from the quick response.
    #
    # @option params [Boolean] :remove_grouping_configuration
    #   Whether to remove the grouping configuration of the quick response.
    #
    # @option params [Boolean] :remove_shortcut_key
    #   Whether to remove the shortcut key of the quick response.
    #
    # @option params [String] :shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #
    # @return [Types::UpdateQuickResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQuickResponseResponse#quick_response #quick_response} => Types::QuickResponseData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_quick_response({
    #     channels: ["Channel"],
    #     content: {
    #       content: "QuickResponseContent",
    #     },
    #     content_type: "QuickResponseType",
    #     description: "QuickResponseDescription",
    #     grouping_configuration: {
    #       criteria: "GroupingCriteria",
    #       values: ["GroupingValue"],
    #     },
    #     is_active: false,
    #     knowledge_base_id: "UuidOrArn", # required
    #     language: "LanguageCode",
    #     name: "QuickResponseName",
    #     quick_response_id: "UuidOrArn", # required
    #     remove_description: false,
    #     remove_grouping_configuration: false,
    #     remove_shortcut_key: false,
    #     shortcut_key: "ShortCutKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_response.channels #=> Array
    #   resp.quick_response.channels[0] #=> String
    #   resp.quick_response.content_type #=> String
    #   resp.quick_response.contents.markdown.content #=> String
    #   resp.quick_response.contents.plain_text.content #=> String
    #   resp.quick_response.created_time #=> Time
    #   resp.quick_response.description #=> String
    #   resp.quick_response.grouping_configuration.criteria #=> String
    #   resp.quick_response.grouping_configuration.values #=> Array
    #   resp.quick_response.grouping_configuration.values[0] #=> String
    #   resp.quick_response.is_active #=> Boolean
    #   resp.quick_response.knowledge_base_arn #=> String
    #   resp.quick_response.knowledge_base_id #=> String
    #   resp.quick_response.language #=> String
    #   resp.quick_response.last_modified_by #=> String
    #   resp.quick_response.last_modified_time #=> Time
    #   resp.quick_response.name #=> String
    #   resp.quick_response.quick_response_arn #=> String
    #   resp.quick_response.quick_response_id #=> String
    #   resp.quick_response.shortcut_key #=> String
    #   resp.quick_response.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.quick_response.tags #=> Hash
    #   resp.quick_response.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19/UpdateQuickResponse AWS API Documentation
    #
    # @overload update_quick_response(params = {})
    # @param [Hash] params ({})
    def update_quick_response(params = {}, options = {})
      req = build_request(:update_quick_response, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ConnectWisdomService')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-connectwisdomservice'
      context[:gem_version] = '1.56.0'
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
