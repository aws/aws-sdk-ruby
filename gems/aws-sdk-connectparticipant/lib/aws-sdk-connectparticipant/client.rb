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

module Aws::ConnectParticipant
  # An API client for ConnectParticipant.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ConnectParticipant::Client.new(
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

    @identifier = :connectparticipant

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
    add_plugin(Aws::ConnectParticipant::Plugins::Endpoints)

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
    #   @option options [Aws::ConnectParticipant::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ConnectParticipant::EndpointParameters`.
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

    # Cancels the authentication session. The opted out branch of the
    # Authenticate Customer flow block will be taken.
    #
    # <note markdown="1"> The current supported channel is chat. This API is not supported for
    # Apple Messages for Business, WhatsApp, or SMS chats.
    #
    #  </note>
    #
    # @option params [required, String] :session_id
    #   The `sessionId` provided in the `authenticationInitiated` event.
    #
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_participant_authentication({
    #     session_id: "SessionId", # required
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CancelParticipantAuthentication AWS API Documentation
    #
    # @overload cancel_participant_authentication(params = {})
    # @param [Hash] params ({})
    def cancel_participant_authentication(params = {}, options = {})
      req = build_request(:cancel_participant_authentication, params)
      req.send_request(options)
    end

    # Allows you to confirm that the attachment has been uploaded using the
    # pre-signed URL provided in StartAttachmentUpload API. A conflict
    # exception is thrown when an attachment with that identifier is already
    # being uploaded.
    #
    # For security recommendations, see [Amazon Connect Chat security best
    # practices][1].
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    # [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, Array<String>] :attachment_ids
    #   A list of unique identifiers for the attachments.
    #
    # @option params [required, String] :client_token
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
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_attachment_upload({
    #     attachment_ids: ["ArtifactId"], # required
    #     client_token: "NonEmptyClientToken", # required
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CompleteAttachmentUpload AWS API Documentation
    #
    # @overload complete_attachment_upload(params = {})
    # @param [Hash] params ({})
    def complete_attachment_upload(params = {}, options = {})
      req = build_request(:complete_attachment_upload, params)
      req.send_request(options)
    end

    # Creates the participant's connection.
    #
    # For security recommendations, see [Amazon Connect Chat security best
    # practices][1].
    #
    # <note markdown="1"> `ParticipantToken` is used for invoking this API instead of
    # `ConnectionToken`.
    #
    #  </note>
    #
    # The participant token is valid for the lifetime of the participant –
    # until they are part of a contact.
    #
    # The response URL for `WEBSOCKET` Type has a connect expiry timeout of
    # 100s. Clients must manually connect to the returned websocket URL and
    # subscribe to the desired topic.
    #
    # For chat, you need to publish the following on the established
    # websocket connection:
    #
    # `{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}`
    #
    # Upon websocket URL expiry, as specified in the response
    # ConnectionExpiry parameter, clients need to call this API again to
    # obtain a new websocket URL and perform the same steps as before.
    #
    # **Message streaming support**: This API can also be used together with
    # the [StartContactStreaming][2] API to create a participant connection
    # for chat contacts that are not using a websocket. For more information
    # about message streaming, [Enable real-time chat message streaming][3]
    # in the *Amazon Connect Administrator Guide*.
    #
    # **Feature specifications**: For information about feature
    # specifications, such as the allowed number of open websocket
    # connections per participant, see [Feature specifications][4] in the
    # *Amazon Connect Administrator Guide*.
    #
    # <note markdown="1"> The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][5].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html
    # [4]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits
    # [5]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [Array<String>] :type
    #   Type of connection information required. If you need
    #   `CONNECTION_CREDENTIALS` along with marking participant as connected,
    #   pass `CONNECTION_CREDENTIALS` in `Type`.
    #
    # @option params [required, String] :participant_token
    #   This is a header parameter.
    #
    #   The ParticipantToken as obtained from [StartChatContact][1] API
    #   response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html
    #
    # @option params [Boolean] :connect_participant
    #   Amazon Connect Participant is used to mark the participant as
    #   connected for customer participant in message streaming, as well as
    #   for agent or manager participant in non-streaming chats.
    #
    # @return [Types::CreateParticipantConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateParticipantConnectionResponse#websocket #websocket} => Types::Websocket
    #   * {Types::CreateParticipantConnectionResponse#connection_credentials #connection_credentials} => Types::ConnectionCredentials
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_participant_connection({
    #     type: ["WEBSOCKET"], # accepts WEBSOCKET, CONNECTION_CREDENTIALS
    #     participant_token: "ParticipantToken", # required
    #     connect_participant: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.websocket.url #=> String
    #   resp.websocket.connection_expiry #=> String
    #   resp.connection_credentials.connection_token #=> String
    #   resp.connection_credentials.expiry #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CreateParticipantConnection AWS API Documentation
    #
    # @overload create_participant_connection(params = {})
    # @param [Hash] params ({})
    def create_participant_connection(params = {}, options = {})
      req = build_request(:create_participant_connection, params)
      req.send_request(options)
    end

    # Retrieves the view for the specified view token.
    #
    # For security recommendations, see [Amazon Connect Chat security best
    # practices][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    #
    # @option params [required, String] :view_token
    #   An encrypted token originating from the interactive message of a
    #   ShowView block operation. Represents the desired view.
    #
    # @option params [required, String] :connection_token
    #   The connection token.
    #
    # @return [Types::DescribeViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeViewResponse#view #view} => Types::View
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_view({
    #     view_token: "ViewToken", # required
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.view.id #=> String
    #   resp.view.arn #=> String
    #   resp.view.name #=> String
    #   resp.view.version #=> Integer
    #   resp.view.content.input_schema #=> String
    #   resp.view.content.template #=> String
    #   resp.view.content.actions #=> Array
    #   resp.view.content.actions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/DescribeView AWS API Documentation
    #
    # @overload describe_view(params = {})
    # @param [Hash] params ({})
    def describe_view(params = {}, options = {})
      req = build_request(:describe_view, params)
      req.send_request(options)
    end

    # Disconnects a participant.
    #
    # For security recommendations, see [Amazon Connect Chat security best
    # practices][1].
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    # [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
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
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_participant({
    #     client_token: "ClientToken",
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/DisconnectParticipant AWS API Documentation
    #
    # @overload disconnect_participant(params = {})
    # @param [Hash] params ({})
    def disconnect_participant(params = {}, options = {})
      req = build_request(:disconnect_participant, params)
      req.send_request(options)
    end

    # Provides a pre-signed URL for download of a completed attachment. This
    # is an asynchronous API for use with active contacts.
    #
    # For security recommendations, see [Amazon Connect Chat security best
    # practices][1].
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    # [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :attachment_id
    #   A unique identifier for the attachment.
    #
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @option params [Integer] :url_expiry_in_seconds
    #   The expiration time of the URL in ISO timestamp. It's specified in
    #   ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #   2019-11-08T02:41:28.172Z.
    #
    # @return [Types::GetAttachmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAttachmentResponse#url #url} => String
    #   * {Types::GetAttachmentResponse#url_expiry #url_expiry} => String
    #   * {Types::GetAttachmentResponse#attachment_size_in_bytes #attachment_size_in_bytes} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attachment({
    #     attachment_id: "ArtifactId", # required
    #     connection_token: "ParticipantToken", # required
    #     url_expiry_in_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.url #=> String
    #   resp.url_expiry #=> String
    #   resp.attachment_size_in_bytes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/GetAttachment AWS API Documentation
    #
    # @overload get_attachment(params = {})
    # @param [Hash] params ({})
    def get_attachment(params = {}, options = {})
      req = build_request(:get_attachment, params)
      req.send_request(options)
    end

    # Retrieves the AuthenticationUrl for the current authentication session
    # for the AuthenticateCustomer flow block.
    #
    # For security recommendations, see [Amazon Connect Chat security best
    # practices][1].
    #
    # <note markdown="1"> * This API can only be called within one minute of receiving the
    #   authenticationInitiated event.
    #
    # * The current supported channel is chat. This API is not supported for
    #   Apple Messages for Business, WhatsApp, or SMS chats.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    #
    # @option params [required, String] :session_id
    #   The sessionId provided in the authenticationInitiated event.
    #
    # @option params [required, String] :redirect_uri
    #   The URL where the customer will be redirected after Amazon Cognito
    #   authorizes the user.
    #
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Types::GetAuthenticationUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAuthenticationUrlResponse#authentication_url #authentication_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authentication_url({
    #     session_id: "SessionId", # required
    #     redirect_uri: "RedirectURI", # required
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.authentication_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/GetAuthenticationUrl AWS API Documentation
    #
    # @overload get_authentication_url(params = {})
    # @param [Hash] params ({})
    def get_authentication_url(params = {}, options = {})
      req = build_request(:get_authentication_url, params)
      req.send_request(options)
    end

    # Retrieves a transcript of the session, including details about any
    # attachments. For information about accessing past chat contact
    # transcripts for a persistent chat, see [Enable persistent chat][1].
    #
    # For security recommendations, see [Amazon Connect Chat security best
    # practices][2].
    #
    # If you have a process that consumes events in the transcript of an
    # chat that has ended, note that chat transcripts contain the following
    # event content types if the event has occurred during the chat session:
    #
    # * `application/vnd.amazonaws.connect.event.participant.left`
    #
    # * `application/vnd.amazonaws.connect.event.participant.joined`
    #
    # * `application/vnd.amazonaws.connect.event.chat.ended`
    #
    # * `application/vnd.amazonaws.connect.event.transfer.succeeded`
    #
    # * `application/vnd.amazonaws.connect.event.transfer.failed`
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    # [3]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [String] :contact_id
    #   The contactId from the current contact chain for which transcript is
    #   needed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the page. Default: 10.
    #
    # @option params [String] :next_token
    #   The pagination token. Use the value returned previously in the next
    #   subsequent request to retrieve the next set of results.
    #
    # @option params [String] :scan_direction
    #   The direction from StartPosition from which to retrieve message.
    #   Default: BACKWARD when no StartPosition is provided, FORWARD with
    #   StartPosition.
    #
    # @option params [String] :sort_order
    #   The sort order for the records. Default: DESCENDING.
    #
    # @option params [Types::StartPosition] :start_position
    #   A filtering option for where to start.
    #
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Types::GetTranscriptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTranscriptResponse#initial_contact_id #initial_contact_id} => String
    #   * {Types::GetTranscriptResponse#transcript #transcript} => Array&lt;Types::Item&gt;
    #   * {Types::GetTranscriptResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transcript({
    #     contact_id: "ContactId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     scan_direction: "FORWARD", # accepts FORWARD, BACKWARD
    #     sort_order: "DESCENDING", # accepts DESCENDING, ASCENDING
    #     start_position: {
    #       id: "ChatItemId",
    #       absolute_time: "Instant",
    #       most_recent: 1,
    #     },
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.initial_contact_id #=> String
    #   resp.transcript #=> Array
    #   resp.transcript[0].absolute_time #=> String
    #   resp.transcript[0].content #=> String
    #   resp.transcript[0].content_type #=> String
    #   resp.transcript[0].id #=> String
    #   resp.transcript[0].type #=> String, one of "TYPING", "PARTICIPANT_JOINED", "PARTICIPANT_LEFT", "CHAT_ENDED", "TRANSFER_SUCCEEDED", "TRANSFER_FAILED", "MESSAGE", "EVENT", "ATTACHMENT", "CONNECTION_ACK", "MESSAGE_DELIVERED", "MESSAGE_READ"
    #   resp.transcript[0].participant_id #=> String
    #   resp.transcript[0].display_name #=> String
    #   resp.transcript[0].participant_role #=> String, one of "AGENT", "CUSTOMER", "SYSTEM", "CUSTOM_BOT", "SUPERVISOR"
    #   resp.transcript[0].attachments #=> Array
    #   resp.transcript[0].attachments[0].content_type #=> String
    #   resp.transcript[0].attachments[0].attachment_id #=> String
    #   resp.transcript[0].attachments[0].attachment_name #=> String
    #   resp.transcript[0].attachments[0].status #=> String, one of "APPROVED", "REJECTED", "IN_PROGRESS"
    #   resp.transcript[0].message_metadata.message_id #=> String
    #   resp.transcript[0].message_metadata.receipts #=> Array
    #   resp.transcript[0].message_metadata.receipts[0].delivered_timestamp #=> String
    #   resp.transcript[0].message_metadata.receipts[0].read_timestamp #=> String
    #   resp.transcript[0].message_metadata.receipts[0].recipient_participant_id #=> String
    #   resp.transcript[0].related_contact_id #=> String
    #   resp.transcript[0].contact_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/GetTranscript AWS API Documentation
    #
    # @overload get_transcript(params = {})
    # @param [Hash] params ({})
    def get_transcript(params = {}, options = {})
      req = build_request(:get_transcript, params)
      req.send_request(options)
    end

    # <note markdown="1"> The `application/vnd.amazonaws.connect.event.connection.acknowledged`
    # ContentType will no longer be supported starting December 31, 2024.
    # This event has been migrated to the [CreateParticipantConnection][1]
    # API using the `ConnectParticipant` field.
    #
    #  </note>
    #
    # Sends an event. Message receipts are not supported when there are more
    # than two active participants in the chat. Using the SendEvent API for
    # message receipts when a supervisor is barged-in will result in a
    # conflict exception.
    #
    # For security recommendations, see [Amazon Connect Chat security best
    # practices][2].
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    # [3]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :content_type
    #   The content type of the request. Supported types are:
    #
    #   * application/vnd.amazonaws.connect.event.typing
    #
    #   * application/vnd.amazonaws.connect.event.connection.acknowledged
    #     (will be deprecated on December 31, 2024)
    #
    #   * application/vnd.amazonaws.connect.event.message.delivered
    #
    #   * application/vnd.amazonaws.connect.event.message.read
    #
    # @option params [String] :content
    #   The content of the event to be sent (for example, message text). For
    #   content related to message receipts, this is supported in the form of
    #   a JSON string.
    #
    #   Sample Content:
    #   "\{\\"messageId\\":\\"11111111-aaaa-bbbb-cccc-EXAMPLE01234\\"}"
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
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Types::SendEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendEventResponse#id #id} => String
    #   * {Types::SendEventResponse#absolute_time #absolute_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_event({
    #     content_type: "ChatContentType", # required
    #     content: "ChatContent",
    #     client_token: "ClientToken",
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.absolute_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/SendEvent AWS API Documentation
    #
    # @overload send_event(params = {})
    # @param [Hash] params ({})
    def send_event(params = {}, options = {})
      req = build_request(:send_event, params)
      req.send_request(options)
    end

    # Sends a message.
    #
    # For security recommendations, see [Amazon Connect Chat security best
    # practices][1].
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    # [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :content_type
    #   The type of the content. Supported types are `text/plain`,
    #   `text/markdown`, `application/json`, and
    #   `application/vnd.amazonaws.connect.message.interactive.response`.
    #
    # @option params [required, String] :content
    #   The content of the message.
    #
    #   * For `text/plain` and `text/markdown`, the Length Constraints are
    #     Minimum of 1, Maximum of 1024.
    #
    #   * For `application/json`, the Length Constraints are Minimum of 1,
    #     Maximum of 12000.
    #
    #   * For
    #     `application/vnd.amazonaws.connect.message.interactive.response`,
    #     the Length Constraints are Minimum of 1, Maximum of 12288.
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
    # @option params [required, String] :connection_token
    #   The authentication token associated with the connection.
    #
    # @return [Types::SendMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendMessageResponse#id #id} => String
    #   * {Types::SendMessageResponse#absolute_time #absolute_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_message({
    #     content_type: "ChatContentType", # required
    #     content: "ChatContent", # required
    #     client_token: "ClientToken",
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.absolute_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/SendMessage AWS API Documentation
    #
    # @overload send_message(params = {})
    # @param [Hash] params ({})
    def send_message(params = {}, options = {})
      req = build_request(:send_message, params)
      req.send_request(options)
    end

    # Provides a pre-signed Amazon S3 URL in response for uploading the file
    # directly to S3.
    #
    # For security recommendations, see [Amazon Connect Chat security best
    # practices][1].
    #
    # <note markdown="1"> `ConnectionToken` is used for invoking this API instead of
    # `ParticipantToken`.
    #
    #  </note>
    #
    # The Amazon Connect Participant Service APIs do not use [Signature
    # Version 4 authentication][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat
    # [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #
    # @option params [required, String] :content_type
    #   Describes the MIME file type of the attachment. For a list of
    #   supported file types, see [Feature specifications][1] in the *Amazon
    #   Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html
    #
    # @option params [required, Integer] :attachment_size_in_bytes
    #   The size of the attachment in bytes.
    #
    # @option params [required, String] :attachment_name
    #   A case-sensitive name of the attachment being uploaded.
    #
    # @option params [required, String] :client_token
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
    # @option params [required, String] :connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #
    # @return [Types::StartAttachmentUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAttachmentUploadResponse#attachment_id #attachment_id} => String
    #   * {Types::StartAttachmentUploadResponse#upload_metadata #upload_metadata} => Types::UploadMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_attachment_upload({
    #     content_type: "ContentType", # required
    #     attachment_size_in_bytes: 1, # required
    #     attachment_name: "AttachmentName", # required
    #     client_token: "NonEmptyClientToken", # required
    #     connection_token: "ParticipantToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment_id #=> String
    #   resp.upload_metadata.url #=> String
    #   resp.upload_metadata.url_expiry #=> String
    #   resp.upload_metadata.headers_to_include #=> Hash
    #   resp.upload_metadata.headers_to_include["UploadMetadataSignedHeadersKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/StartAttachmentUpload AWS API Documentation
    #
    # @overload start_attachment_upload(params = {})
    # @param [Hash] params ({})
    def start_attachment_upload(params = {}, options = {})
      req = build_request(:start_attachment_upload, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ConnectParticipant')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-connectparticipant'
      context[:gem_version] = '1.67.0'
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
