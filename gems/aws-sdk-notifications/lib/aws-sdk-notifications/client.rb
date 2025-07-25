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

module Aws::Notifications
  # An API client for Notifications.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Notifications::Client.new(
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

    @identifier = :notifications

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
    add_plugin(Aws::Notifications::Plugins::Endpoints)

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
    #   @option options [Aws::Notifications::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Notifications::EndpointParameters`.
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

    # Associates a delivery [Channel][1] with a particular
    # `NotificationConfiguration`. Supported Channels include Chatbot, the
    # Console Mobile Application, and emails (notifications-contacts).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/notifications/latest/userguide/managing-delivery-channels.html
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Channel to associate with the
    #   `NotificationConfiguration`.
    #
    #   Supported ARNs include Chatbot, the Console Mobile Application, and
    #   notifications-contacts.
    #
    # @option params [required, String] :notification_configuration_arn
    #   The ARN of the `NotificationConfiguration` to associate with the
    #   Channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_channel({
    #     arn: "ChannelArn", # required
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/AssociateChannel AWS API Documentation
    #
    # @overload associate_channel(params = {})
    # @param [Hash] params ({})
    def associate_channel(params = {}, options = {})
      req = build_request(:associate_channel, params)
      req.send_request(options)
    end

    # Associates an Account Contact with a particular
    # `ManagedNotificationConfiguration`.
    #
    # @option params [required, String] :contact_identifier
    #   A unique value of an Account Contact Type to associate with the
    #   `ManagedNotificationConfiguration`.
    #
    # @option params [required, String] :managed_notification_configuration_arn
    #   The Amazon Resource Name (ARN) of the
    #   `ManagedNotificationConfiguration` to associate with the Account
    #   Contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_managed_notification_account_contact({
    #     contact_identifier: "ACCOUNT_PRIMARY", # required, accepts ACCOUNT_PRIMARY, ACCOUNT_ALTERNATE_BILLING, ACCOUNT_ALTERNATE_OPERATIONS, ACCOUNT_ALTERNATE_SECURITY
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/AssociateManagedNotificationAccountContact AWS API Documentation
    #
    # @overload associate_managed_notification_account_contact(params = {})
    # @param [Hash] params ({})
    def associate_managed_notification_account_contact(params = {}, options = {})
      req = build_request(:associate_managed_notification_account_contact, params)
      req.send_request(options)
    end

    # Associates an additional Channel with a particular
    # `ManagedNotificationConfiguration`.
    #
    # Supported Channels include Chatbot, the Console Mobile Application,
    # and emails (notifications-contacts).
    #
    # @option params [required, String] :channel_arn
    #   The Amazon Resource Name (ARN) of the Channel to associate with the
    #   `ManagedNotificationConfiguration`.
    #
    #   Supported ARNs include Chatbot, the Console Mobile Application, and
    #   email (notifications-contacts).
    #
    # @option params [required, String] :managed_notification_configuration_arn
    #   The Amazon Resource Name (ARN) of the
    #   `ManagedNotificationConfiguration` to associate with the additional
    #   Channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_managed_notification_additional_channel({
    #     channel_arn: "ChannelArn", # required
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/AssociateManagedNotificationAdditionalChannel AWS API Documentation
    #
    # @overload associate_managed_notification_additional_channel(params = {})
    # @param [Hash] params ({})
    def associate_managed_notification_additional_channel(params = {}, options = {})
      req = build_request(:associate_managed_notification_additional_channel, params)
      req.send_request(options)
    end

    # Creates an [ `EventRule` ][1] that is associated with a specified
    # `NotificationConfiguration`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/notifications/latest/userguide/glossary.html
    #
    # @option params [required, String] :notification_configuration_arn
    #   The Amazon Resource Name (ARN) of the `NotificationConfiguration`
    #   associated with this `EventRule`.
    #
    # @option params [required, String] :source
    #   The matched event source.
    #
    #   Must match one of the valid EventBridge sources. Only Amazon Web
    #   Services service sourced events are supported. For example, `aws.ec2`
    #   and `aws.cloudwatch`. For more information, see [Event delivery from
    #   Amazon Web Services services][1] in the *Amazon EventBridge User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #
    # @option params [required, String] :event_type
    #   The event type to match.
    #
    #   Must match one of the valid Amazon EventBridge event types. For
    #   example, EC2 Instance State-change Notification and Amazon CloudWatch
    #   Alarm State Change. For more information, see [Event delivery from
    #   Amazon Web Services services][1] in the *Amazon EventBridge User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #
    # @option params [String] :event_pattern
    #   An additional event pattern used to further filter the events this
    #   `EventRule` receives.
    #
    #   For more information, see [Amazon EventBridge event patterns][1] in
    #   the *Amazon EventBridge User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html
    #
    # @option params [required, Array<String>] :regions
    #   A list of Amazon Web Services Regions that send events to this
    #   `EventRule`.
    #
    # @return [Types::CreateEventRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventRuleResponse#arn #arn} => String
    #   * {Types::CreateEventRuleResponse#notification_configuration_arn #notification_configuration_arn} => String
    #   * {Types::CreateEventRuleResponse#status_summary_by_region #status_summary_by_region} => Hash&lt;String,Types::EventRuleStatusSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_rule({
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     source: "Source", # required
    #     event_type: "EventType", # required
    #     event_pattern: "EventRuleEventPattern",
    #     regions: ["Region"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.notification_configuration_arn #=> String
    #   resp.status_summary_by_region #=> Hash
    #   resp.status_summary_by_region["Region"].status #=> String, one of "ACTIVE", "INACTIVE", "CREATING", "UPDATING", "DELETING"
    #   resp.status_summary_by_region["Region"].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/CreateEventRule AWS API Documentation
    #
    # @overload create_event_rule(params = {})
    # @param [Hash] params ({})
    def create_event_rule(params = {}, options = {})
      req = build_request(:create_event_rule, params)
      req.send_request(options)
    end

    # Creates a new `NotificationConfiguration`.
    #
    # @option params [required, String] :name
    #   The name of the `NotificationConfiguration`. Supports RFC 3986's
    #   unreserved characters.
    #
    # @option params [required, String] :description
    #   The description of the `NotificationConfiguration`.
    #
    # @option params [String] :aggregation_duration
    #   The aggregation preference of the `NotificationConfiguration`.
    #
    #   * Values:
    #
    #     * `LONG`
    #
    #       * Aggregate notifications for long periods of time (12 hours).
    #
    #       ^
    #     * `SHORT`
    #
    #       * Aggregate notifications for short periods of time (5 minutes).
    #
    #       ^
    #     * `NONE`
    #
    #       * Don't aggregate notifications.
    #
    #       ^
    #
    # @option params [Hash<String,String>] :tags
    #   A map of tags assigned to a resource. A tag is a string-to-string map
    #   of key-value pairs.
    #
    # @return [Types::CreateNotificationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNotificationConfigurationResponse#arn #arn} => String
    #   * {Types::CreateNotificationConfigurationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notification_configuration({
    #     name: "NotificationConfigurationName", # required
    #     description: "NotificationConfigurationDescription", # required
    #     aggregation_duration: "LONG", # accepts LONG, SHORT, NONE
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.status #=> String, one of "ACTIVE", "PARTIALLY_ACTIVE", "INACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/CreateNotificationConfiguration AWS API Documentation
    #
    # @overload create_notification_configuration(params = {})
    # @param [Hash] params ({})
    def create_notification_configuration(params = {}, options = {})
      req = build_request(:create_notification_configuration, params)
      req.send_request(options)
    end

    # Deletes an `EventRule`.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the `EventRule` to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_rule({
    #     arn: "EventRuleArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DeleteEventRule AWS API Documentation
    #
    # @overload delete_event_rule(params = {})
    # @param [Hash] params ({})
    def delete_event_rule(params = {}, options = {})
      req = build_request(:delete_event_rule, params)
      req.send_request(options)
    end

    # Deletes a `NotificationConfiguration`.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the `NotificationConfiguration` to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification_configuration({
    #     arn: "NotificationConfigurationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DeleteNotificationConfiguration AWS API Documentation
    #
    # @overload delete_notification_configuration(params = {})
    # @param [Hash] params ({})
    def delete_notification_configuration(params = {}, options = {})
      req = build_request(:delete_notification_configuration, params)
      req.send_request(options)
    end

    # Deregisters a `NotificationConfiguration` in the specified Region.
    #
    # <note markdown="1"> You can't deregister the last `NotificationHub` in the account.
    # `NotificationEvents` stored in the deregistered
    # `NotificationConfiguration` are no longer be visible. Recreating a new
    # `NotificationConfiguration` in the same Region restores access to
    # those `NotificationEvents`.
    #
    #  </note>
    #
    # @option params [required, String] :notification_hub_region
    #   The `NotificationConfiguration` Region.
    #
    # @return [Types::DeregisterNotificationHubResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterNotificationHubResponse#notification_hub_region #notification_hub_region} => String
    #   * {Types::DeregisterNotificationHubResponse#status_summary #status_summary} => Types::NotificationHubStatusSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_notification_hub({
    #     notification_hub_region: "Region", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_hub_region #=> String
    #   resp.status_summary.status #=> String, one of "ACTIVE", "REGISTERING", "DEREGISTERING", "INACTIVE"
    #   resp.status_summary.reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DeregisterNotificationHub AWS API Documentation
    #
    # @overload deregister_notification_hub(params = {})
    # @param [Hash] params ({})
    def deregister_notification_hub(params = {}, options = {})
      req = build_request(:deregister_notification_hub, params)
      req.send_request(options)
    end

    # Disables service trust between User Notifications and Amazon Web
    # Services Organizations.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DisableNotificationsAccessForOrganization AWS API Documentation
    #
    # @overload disable_notifications_access_for_organization(params = {})
    # @param [Hash] params ({})
    def disable_notifications_access_for_organization(params = {}, options = {})
      req = build_request(:disable_notifications_access_for_organization, params)
      req.send_request(options)
    end

    # Disassociates a Channel from a specified `NotificationConfiguration`.
    # Supported Channels include Chatbot, the Console Mobile Application,
    # and emails (notifications-contacts).
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Channel to disassociate.
    #
    # @option params [required, String] :notification_configuration_arn
    #   The ARN of the `NotificationConfiguration` to disassociate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_channel({
    #     arn: "ChannelArn", # required
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DisassociateChannel AWS API Documentation
    #
    # @overload disassociate_channel(params = {})
    # @param [Hash] params ({})
    def disassociate_channel(params = {}, options = {})
      req = build_request(:disassociate_channel, params)
      req.send_request(options)
    end

    # Disassociates an Account Contact with a particular
    # `ManagedNotificationConfiguration`.
    #
    # @option params [required, String] :contact_identifier
    #   The unique value of an Account Contact Type to associate with the
    #   `ManagedNotificationConfiguration`.
    #
    # @option params [required, String] :managed_notification_configuration_arn
    #   The Amazon Resource Name (ARN) of the
    #   `ManagedNotificationConfiguration` to associate with the Account
    #   Contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_managed_notification_account_contact({
    #     contact_identifier: "ACCOUNT_PRIMARY", # required, accepts ACCOUNT_PRIMARY, ACCOUNT_ALTERNATE_BILLING, ACCOUNT_ALTERNATE_OPERATIONS, ACCOUNT_ALTERNATE_SECURITY
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DisassociateManagedNotificationAccountContact AWS API Documentation
    #
    # @overload disassociate_managed_notification_account_contact(params = {})
    # @param [Hash] params ({})
    def disassociate_managed_notification_account_contact(params = {}, options = {})
      req = build_request(:disassociate_managed_notification_account_contact, params)
      req.send_request(options)
    end

    # Disassociates an additional Channel from a particular
    # `ManagedNotificationConfiguration`.
    #
    # Supported Channels include Chatbot, the Console Mobile Application,
    # and emails (notifications-contacts).
    #
    # @option params [required, String] :channel_arn
    #   The Amazon Resource Name (ARN) of the Channel to associate with the
    #   `ManagedNotificationConfiguration`.
    #
    # @option params [required, String] :managed_notification_configuration_arn
    #   The Amazon Resource Name (ARN) of the Managed Notification
    #   Configuration to associate with the additional Channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_managed_notification_additional_channel({
    #     channel_arn: "ChannelArn", # required
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DisassociateManagedNotificationAdditionalChannel AWS API Documentation
    #
    # @overload disassociate_managed_notification_additional_channel(params = {})
    # @param [Hash] params ({})
    def disassociate_managed_notification_additional_channel(params = {}, options = {})
      req = build_request(:disassociate_managed_notification_additional_channel, params)
      req.send_request(options)
    end

    # Enables service trust between User Notifications and Amazon Web
    # Services Organizations.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/EnableNotificationsAccessForOrganization AWS API Documentation
    #
    # @overload enable_notifications_access_for_organization(params = {})
    # @param [Hash] params ({})
    def enable_notifications_access_for_organization(params = {}, options = {})
      req = build_request(:enable_notifications_access_for_organization, params)
      req.send_request(options)
    end

    # Returns a specified `EventRule`.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the `EventRule` to return.
    #
    # @return [Types::GetEventRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventRuleResponse#arn #arn} => String
    #   * {Types::GetEventRuleResponse#notification_configuration_arn #notification_configuration_arn} => String
    #   * {Types::GetEventRuleResponse#creation_time #creation_time} => Time
    #   * {Types::GetEventRuleResponse#source #source} => String
    #   * {Types::GetEventRuleResponse#event_type #event_type} => String
    #   * {Types::GetEventRuleResponse#event_pattern #event_pattern} => String
    #   * {Types::GetEventRuleResponse#regions #regions} => Array&lt;String&gt;
    #   * {Types::GetEventRuleResponse#managed_rules #managed_rules} => Array&lt;String&gt;
    #   * {Types::GetEventRuleResponse#status_summary_by_region #status_summary_by_region} => Hash&lt;String,Types::EventRuleStatusSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_rule({
    #     arn: "EventRuleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.notification_configuration_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.source #=> String
    #   resp.event_type #=> String
    #   resp.event_pattern #=> String
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #   resp.managed_rules #=> Array
    #   resp.managed_rules[0] #=> String
    #   resp.status_summary_by_region #=> Hash
    #   resp.status_summary_by_region["Region"].status #=> String, one of "ACTIVE", "INACTIVE", "CREATING", "UPDATING", "DELETING"
    #   resp.status_summary_by_region["Region"].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetEventRule AWS API Documentation
    #
    # @overload get_event_rule(params = {})
    # @param [Hash] params ({})
    def get_event_rule(params = {}, options = {})
      req = build_request(:get_event_rule, params)
      req.send_request(options)
    end

    # Returns the child event of a specific given
    # `ManagedNotificationEvent`.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the `ManagedNotificationChildEvent`
    #   to return.
    #
    # @option params [String] :locale
    #   The locale code of the language used for the retrieved
    #   `ManagedNotificationChildEvent`. The default locale is English
    #   `en_US`.
    #
    # @return [Types::GetManagedNotificationChildEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedNotificationChildEventResponse#arn #arn} => String
    #   * {Types::GetManagedNotificationChildEventResponse#managed_notification_configuration_arn #managed_notification_configuration_arn} => String
    #   * {Types::GetManagedNotificationChildEventResponse#creation_time #creation_time} => Time
    #   * {Types::GetManagedNotificationChildEventResponse#content #content} => Types::ManagedNotificationChildEvent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_notification_child_event({
    #     arn: "ManagedNotificationChildEventArn", # required
    #     locale: "de_DE", # accepts de_DE, en_CA, en_US, en_UK, es_ES, fr_CA, fr_FR, id_ID, it_IT, ja_JP, ko_KR, pt_BR, tr_TR, zh_CN, zh_TW
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.managed_notification_configuration_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.content.schema_version #=> String, one of "v1.0"
    #   resp.content.id #=> String
    #   resp.content.message_components.headline #=> String
    #   resp.content.message_components.paragraph_summary #=> String
    #   resp.content.message_components.complete_description #=> String
    #   resp.content.message_components.dimensions #=> Array
    #   resp.content.message_components.dimensions[0].name #=> String
    #   resp.content.message_components.dimensions[0].value #=> String
    #   resp.content.source_event_detail_url #=> String
    #   resp.content.source_event_detail_url_display_text #=> String
    #   resp.content.notification_type #=> String, one of "ALERT", "WARNING", "ANNOUNCEMENT", "INFORMATIONAL"
    #   resp.content.event_status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.content.aggregate_managed_notification_event_arn #=> String
    #   resp.content.start_time #=> Time
    #   resp.content.end_time #=> Time
    #   resp.content.text_parts #=> Hash
    #   resp.content.text_parts["TextPartId"].type #=> String, one of "LOCALIZED_TEXT", "PLAIN_TEXT", "URL"
    #   resp.content.text_parts["TextPartId"].display_text #=> String
    #   resp.content.text_parts["TextPartId"].text_by_locale #=> Hash
    #   resp.content.text_parts["TextPartId"].text_by_locale["LocaleCode"] #=> String
    #   resp.content.text_parts["TextPartId"].url #=> String
    #   resp.content.organizational_unit_id #=> String
    #   resp.content.aggregation_detail.summarization_dimensions #=> Array
    #   resp.content.aggregation_detail.summarization_dimensions[0].name #=> String
    #   resp.content.aggregation_detail.summarization_dimensions[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetManagedNotificationChildEvent AWS API Documentation
    #
    # @overload get_managed_notification_child_event(params = {})
    # @param [Hash] params ({})
    def get_managed_notification_child_event(params = {}, options = {})
      req = build_request(:get_managed_notification_child_event, params)
      req.send_request(options)
    end

    # Returns a specified `ManagedNotificationConfiguration`.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the
    #   `ManagedNotificationConfiguration` to return.
    #
    # @return [Types::GetManagedNotificationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedNotificationConfigurationResponse#arn #arn} => String
    #   * {Types::GetManagedNotificationConfigurationResponse#name #name} => String
    #   * {Types::GetManagedNotificationConfigurationResponse#description #description} => String
    #   * {Types::GetManagedNotificationConfigurationResponse#category #category} => String
    #   * {Types::GetManagedNotificationConfigurationResponse#sub_category #sub_category} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_notification_configuration({
    #     arn: "ManagedNotificationConfigurationOsArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.category #=> String
    #   resp.sub_category #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetManagedNotificationConfiguration AWS API Documentation
    #
    # @overload get_managed_notification_configuration(params = {})
    # @param [Hash] params ({})
    def get_managed_notification_configuration(params = {}, options = {})
      req = build_request(:get_managed_notification_configuration, params)
      req.send_request(options)
    end

    # Returns a specified `ManagedNotificationEvent`.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the `ManagedNotificationEvent` to
    #   return.
    #
    # @option params [String] :locale
    #   The locale code of the language used for the retrieved
    #   `ManagedNotificationEvent`. The default locale is English `(en_US)`.
    #
    # @return [Types::GetManagedNotificationEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedNotificationEventResponse#arn #arn} => String
    #   * {Types::GetManagedNotificationEventResponse#managed_notification_configuration_arn #managed_notification_configuration_arn} => String
    #   * {Types::GetManagedNotificationEventResponse#creation_time #creation_time} => Time
    #   * {Types::GetManagedNotificationEventResponse#content #content} => Types::ManagedNotificationEvent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_notification_event({
    #     arn: "ManagedNotificationEventArn", # required
    #     locale: "de_DE", # accepts de_DE, en_CA, en_US, en_UK, es_ES, fr_CA, fr_FR, id_ID, it_IT, ja_JP, ko_KR, pt_BR, tr_TR, zh_CN, zh_TW
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.managed_notification_configuration_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.content.schema_version #=> String, one of "v1.0"
    #   resp.content.id #=> String
    #   resp.content.message_components.headline #=> String
    #   resp.content.message_components.paragraph_summary #=> String
    #   resp.content.message_components.complete_description #=> String
    #   resp.content.message_components.dimensions #=> Array
    #   resp.content.message_components.dimensions[0].name #=> String
    #   resp.content.message_components.dimensions[0].value #=> String
    #   resp.content.source_event_detail_url #=> String
    #   resp.content.source_event_detail_url_display_text #=> String
    #   resp.content.notification_type #=> String, one of "ALERT", "WARNING", "ANNOUNCEMENT", "INFORMATIONAL"
    #   resp.content.event_status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.content.aggregation_event_type #=> String, one of "AGGREGATE", "CHILD", "NONE"
    #   resp.content.aggregation_summary.event_count #=> Integer
    #   resp.content.aggregation_summary.aggregated_by #=> Array
    #   resp.content.aggregation_summary.aggregated_by[0].name #=> String
    #   resp.content.aggregation_summary.aggregated_by[0].value #=> String
    #   resp.content.aggregation_summary.aggregated_accounts.name #=> String
    #   resp.content.aggregation_summary.aggregated_accounts.count #=> Integer
    #   resp.content.aggregation_summary.aggregated_accounts.sample_values #=> Array
    #   resp.content.aggregation_summary.aggregated_accounts.sample_values[0] #=> String
    #   resp.content.aggregation_summary.aggregated_regions.name #=> String
    #   resp.content.aggregation_summary.aggregated_regions.count #=> Integer
    #   resp.content.aggregation_summary.aggregated_regions.sample_values #=> Array
    #   resp.content.aggregation_summary.aggregated_regions.sample_values[0] #=> String
    #   resp.content.aggregation_summary.aggregated_organizational_units.name #=> String
    #   resp.content.aggregation_summary.aggregated_organizational_units.count #=> Integer
    #   resp.content.aggregation_summary.aggregated_organizational_units.sample_values #=> Array
    #   resp.content.aggregation_summary.aggregated_organizational_units.sample_values[0] #=> String
    #   resp.content.aggregation_summary.additional_summarization_dimensions #=> Array
    #   resp.content.aggregation_summary.additional_summarization_dimensions[0].name #=> String
    #   resp.content.aggregation_summary.additional_summarization_dimensions[0].count #=> Integer
    #   resp.content.aggregation_summary.additional_summarization_dimensions[0].sample_values #=> Array
    #   resp.content.aggregation_summary.additional_summarization_dimensions[0].sample_values[0] #=> String
    #   resp.content.start_time #=> Time
    #   resp.content.end_time #=> Time
    #   resp.content.text_parts #=> Hash
    #   resp.content.text_parts["TextPartId"].type #=> String, one of "LOCALIZED_TEXT", "PLAIN_TEXT", "URL"
    #   resp.content.text_parts["TextPartId"].display_text #=> String
    #   resp.content.text_parts["TextPartId"].text_by_locale #=> Hash
    #   resp.content.text_parts["TextPartId"].text_by_locale["LocaleCode"] #=> String
    #   resp.content.text_parts["TextPartId"].url #=> String
    #   resp.content.organizational_unit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetManagedNotificationEvent AWS API Documentation
    #
    # @overload get_managed_notification_event(params = {})
    # @param [Hash] params ({})
    def get_managed_notification_event(params = {}, options = {})
      req = build_request(:get_managed_notification_event, params)
      req.send_request(options)
    end

    # Returns a specified `NotificationConfiguration`.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the `NotificationConfiguration` to
    #   return.
    #
    # @return [Types::GetNotificationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNotificationConfigurationResponse#arn #arn} => String
    #   * {Types::GetNotificationConfigurationResponse#name #name} => String
    #   * {Types::GetNotificationConfigurationResponse#description #description} => String
    #   * {Types::GetNotificationConfigurationResponse#status #status} => String
    #   * {Types::GetNotificationConfigurationResponse#creation_time #creation_time} => Time
    #   * {Types::GetNotificationConfigurationResponse#aggregation_duration #aggregation_duration} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_notification_configuration({
    #     arn: "NotificationConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "ACTIVE", "PARTIALLY_ACTIVE", "INACTIVE", "DELETING"
    #   resp.creation_time #=> Time
    #   resp.aggregation_duration #=> String, one of "LONG", "SHORT", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetNotificationConfiguration AWS API Documentation
    #
    # @overload get_notification_configuration(params = {})
    # @param [Hash] params ({})
    def get_notification_configuration(params = {}, options = {})
      req = build_request(:get_notification_configuration, params)
      req.send_request(options)
    end

    # Returns a specified `NotificationEvent`.
    #
    # User Notifications stores notifications in the individual Regions you
    # register as notification hubs and the Region of the source event rule.
    # `GetNotificationEvent` only returns notifications stored in the same
    # Region in which the action is called. User Notifications doesn't
    # backfill notifications to new Regions selected as notification hubs.
    # For this reason, we recommend that you make calls in your oldest
    # registered notification hub. For more information, see [Notification
    # hubs][1] in the *Amazon Web Services User Notifications User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the `NotificationEvent` to return.
    #
    # @option params [String] :locale
    #   The locale code of the language used for the retrieved
    #   `NotificationEvent`. The default locale is English `en_US`.
    #
    # @return [Types::GetNotificationEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNotificationEventResponse#arn #arn} => String
    #   * {Types::GetNotificationEventResponse#notification_configuration_arn #notification_configuration_arn} => String
    #   * {Types::GetNotificationEventResponse#creation_time #creation_time} => Time
    #   * {Types::GetNotificationEventResponse#content #content} => Types::NotificationEvent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_notification_event({
    #     arn: "NotificationEventArn", # required
    #     locale: "de_DE", # accepts de_DE, en_CA, en_US, en_UK, es_ES, fr_CA, fr_FR, id_ID, it_IT, ja_JP, ko_KR, pt_BR, tr_TR, zh_CN, zh_TW
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.notification_configuration_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.content.schema_version #=> String, one of "v1.0"
    #   resp.content.id #=> String
    #   resp.content.source_event_metadata.event_type_version #=> String
    #   resp.content.source_event_metadata.source_event_id #=> String
    #   resp.content.source_event_metadata.event_origin_region #=> String
    #   resp.content.source_event_metadata.related_account #=> String
    #   resp.content.source_event_metadata.source #=> String
    #   resp.content.source_event_metadata.event_occurrence_time #=> Time
    #   resp.content.source_event_metadata.event_type #=> String
    #   resp.content.source_event_metadata.related_resources #=> Array
    #   resp.content.source_event_metadata.related_resources[0].id #=> String
    #   resp.content.source_event_metadata.related_resources[0].arn #=> String
    #   resp.content.source_event_metadata.related_resources[0].detail_url #=> String
    #   resp.content.source_event_metadata.related_resources[0].tags #=> Array
    #   resp.content.source_event_metadata.related_resources[0].tags[0] #=> String
    #   resp.content.message_components.headline #=> String
    #   resp.content.message_components.paragraph_summary #=> String
    #   resp.content.message_components.complete_description #=> String
    #   resp.content.message_components.dimensions #=> Array
    #   resp.content.message_components.dimensions[0].name #=> String
    #   resp.content.message_components.dimensions[0].value #=> String
    #   resp.content.source_event_detail_url #=> String
    #   resp.content.source_event_detail_url_display_text #=> String
    #   resp.content.notification_type #=> String, one of "ALERT", "WARNING", "ANNOUNCEMENT", "INFORMATIONAL"
    #   resp.content.event_status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.content.aggregation_event_type #=> String, one of "AGGREGATE", "CHILD", "NONE"
    #   resp.content.aggregate_notification_event_arn #=> String
    #   resp.content.aggregation_summary.event_count #=> Integer
    #   resp.content.aggregation_summary.aggregated_by #=> Array
    #   resp.content.aggregation_summary.aggregated_by[0].name #=> String
    #   resp.content.aggregation_summary.aggregated_by[0].value #=> String
    #   resp.content.aggregation_summary.aggregated_accounts.name #=> String
    #   resp.content.aggregation_summary.aggregated_accounts.count #=> Integer
    #   resp.content.aggregation_summary.aggregated_accounts.sample_values #=> Array
    #   resp.content.aggregation_summary.aggregated_accounts.sample_values[0] #=> String
    #   resp.content.aggregation_summary.aggregated_regions.name #=> String
    #   resp.content.aggregation_summary.aggregated_regions.count #=> Integer
    #   resp.content.aggregation_summary.aggregated_regions.sample_values #=> Array
    #   resp.content.aggregation_summary.aggregated_regions.sample_values[0] #=> String
    #   resp.content.aggregation_summary.aggregated_organizational_units.name #=> String
    #   resp.content.aggregation_summary.aggregated_organizational_units.count #=> Integer
    #   resp.content.aggregation_summary.aggregated_organizational_units.sample_values #=> Array
    #   resp.content.aggregation_summary.aggregated_organizational_units.sample_values[0] #=> String
    #   resp.content.aggregation_summary.additional_summarization_dimensions #=> Array
    #   resp.content.aggregation_summary.additional_summarization_dimensions[0].name #=> String
    #   resp.content.aggregation_summary.additional_summarization_dimensions[0].count #=> Integer
    #   resp.content.aggregation_summary.additional_summarization_dimensions[0].sample_values #=> Array
    #   resp.content.aggregation_summary.additional_summarization_dimensions[0].sample_values[0] #=> String
    #   resp.content.start_time #=> Time
    #   resp.content.end_time #=> Time
    #   resp.content.text_parts #=> Hash
    #   resp.content.text_parts["TextPartId"].type #=> String, one of "LOCALIZED_TEXT", "PLAIN_TEXT", "URL"
    #   resp.content.text_parts["TextPartId"].display_text #=> String
    #   resp.content.text_parts["TextPartId"].text_by_locale #=> Hash
    #   resp.content.text_parts["TextPartId"].text_by_locale["LocaleCode"] #=> String
    #   resp.content.text_parts["TextPartId"].url #=> String
    #   resp.content.media #=> Array
    #   resp.content.media[0].media_id #=> String
    #   resp.content.media[0].type #=> String, one of "IMAGE"
    #   resp.content.media[0].url #=> String
    #   resp.content.media[0].caption #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetNotificationEvent AWS API Documentation
    #
    # @overload get_notification_event(params = {})
    # @param [Hash] params ({})
    def get_notification_event(params = {}, options = {})
      req = build_request(:get_notification_event, params)
      req.send_request(options)
    end

    # Returns the AccessStatus of Service Trust Enablement for User
    # Notifications and Amazon Web Services Organizations.
    #
    # @return [Types::GetNotificationsAccessForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNotificationsAccessForOrganizationResponse#notifications_access_for_organization #notifications_access_for_organization} => Types::NotificationsAccessForOrganization
    #
    # @example Response structure
    #
    #   resp.notifications_access_for_organization.access_status #=> String, one of "ENABLED", "DISABLED", "PENDING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetNotificationsAccessForOrganization AWS API Documentation
    #
    # @overload get_notifications_access_for_organization(params = {})
    # @param [Hash] params ({})
    def get_notifications_access_for_organization(params = {}, options = {})
      req = build_request(:get_notifications_access_for_organization, params)
      req.send_request(options)
    end

    # Returns a list of Channels for a `NotificationConfiguration`.
    #
    # @option params [required, String] :notification_configuration_arn
    #   The Amazon Resource Name (ARN) of the `NotificationConfiguration`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned in this call. The default
    #   value is 20.
    #
    # @option params [String] :next_token
    #   The start token for paginated calls. Retrieved from the response of a
    #   previous ListNotificationEvents call. `NextToken` uses Base64
    #   encoding.
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #   * {Types::ListChannelsResponse#channels #channels} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.channels #=> Array
    #   resp.channels[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Returns a list of `EventRules` according to specified filters, in
    # reverse chronological order (newest first).
    #
    # @option params [required, String] :notification_configuration_arn
    #   The Amazon Resource Name (ARN) of the `NotificationConfiguration`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned in this call. The default
    #   value is 20.
    #
    # @option params [String] :next_token
    #   The start token for paginated calls. Retrieved from the response of a
    #   previous `ListEventRules` call. Next token uses Base64 encoding.
    #
    # @return [Types::ListEventRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventRulesResponse#next_token #next_token} => String
    #   * {Types::ListEventRulesResponse#event_rules #event_rules} => Array&lt;Types::EventRuleStructure&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_rules({
    #     notification_configuration_arn: "NotificationConfigurationArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.event_rules #=> Array
    #   resp.event_rules[0].arn #=> String
    #   resp.event_rules[0].notification_configuration_arn #=> String
    #   resp.event_rules[0].creation_time #=> Time
    #   resp.event_rules[0].source #=> String
    #   resp.event_rules[0].event_type #=> String
    #   resp.event_rules[0].event_pattern #=> String
    #   resp.event_rules[0].regions #=> Array
    #   resp.event_rules[0].regions[0] #=> String
    #   resp.event_rules[0].managed_rules #=> Array
    #   resp.event_rules[0].managed_rules[0] #=> String
    #   resp.event_rules[0].status_summary_by_region #=> Hash
    #   resp.event_rules[0].status_summary_by_region["Region"].status #=> String, one of "ACTIVE", "INACTIVE", "CREATING", "UPDATING", "DELETING"
    #   resp.event_rules[0].status_summary_by_region["Region"].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListEventRules AWS API Documentation
    #
    # @overload list_event_rules(params = {})
    # @param [Hash] params ({})
    def list_event_rules(params = {}, options = {})
      req = build_request(:list_event_rules, params)
      req.send_request(options)
    end

    # Returns a list of Account contacts and Channels associated with a
    # `ManagedNotificationConfiguration`, in paginated format.
    #
    # @option params [required, String] :managed_notification_configuration_arn
    #   The Amazon Resource Name (ARN) of the
    #   `ManagedNotificationConfiguration` to match.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned in this call. Defaults to
    #   20.
    #
    # @option params [String] :next_token
    #   The start token for paginated calls. Retrieved from the response of a
    #   previous `ListManagedNotificationChannelAssociations` call.
    #
    # @return [Types::ListManagedNotificationChannelAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedNotificationChannelAssociationsResponse#next_token #next_token} => String
    #   * {Types::ListManagedNotificationChannelAssociationsResponse#channel_associations #channel_associations} => Array&lt;Types::ManagedNotificationChannelAssociationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_notification_channel_associations({
    #     managed_notification_configuration_arn: "ManagedNotificationConfigurationOsArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.channel_associations #=> Array
    #   resp.channel_associations[0].channel_identifier #=> String
    #   resp.channel_associations[0].channel_type #=> String, one of "MOBILE", "CHATBOT", "EMAIL", "ACCOUNT_CONTACT"
    #   resp.channel_associations[0].override_option #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListManagedNotificationChannelAssociations AWS API Documentation
    #
    # @overload list_managed_notification_channel_associations(params = {})
    # @param [Hash] params ({})
    def list_managed_notification_channel_associations(params = {}, options = {})
      req = build_request(:list_managed_notification_channel_associations, params)
      req.send_request(options)
    end

    # Returns a list of `ManagedNotificationChildEvents` for a specified
    # aggregate `ManagedNotificationEvent`, ordered by creation time in
    # reverse chronological order (newest first).
    #
    # @option params [required, String] :aggregate_managed_notification_event_arn
    #   The Amazon Resource Name (ARN) of the `ManagedNotificationEvent`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The earliest time of events to return from this call.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Latest time of events to return from this call.
    #
    # @option params [String] :locale
    #   The locale code of the language used for the retrieved
    #   `NotificationEvent`. The default locale is English.`en_US`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned in this call. Defaults to
    #   20.
    #
    # @option params [String] :related_account
    #   The Amazon Web Services account ID associated with the Managed
    #   Notification Child Events.
    #
    # @option params [String] :organizational_unit_id
    #   The identifier of the Amazon Web Services Organizations organizational
    #   unit (OU) associated with the Managed Notification Child Events.
    #
    # @option params [String] :next_token
    #   The start token for paginated calls. Retrieved from the response of a
    #   previous ListManagedNotificationChannelAssociations call. Next token
    #   uses Base64 encoding.
    #
    # @return [Types::ListManagedNotificationChildEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedNotificationChildEventsResponse#next_token #next_token} => String
    #   * {Types::ListManagedNotificationChildEventsResponse#managed_notification_child_events #managed_notification_child_events} => Array&lt;Types::ManagedNotificationChildEventOverview&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_notification_child_events({
    #     aggregate_managed_notification_event_arn: "ManagedNotificationEventArn", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     locale: "de_DE", # accepts de_DE, en_CA, en_US, en_UK, es_ES, fr_CA, fr_FR, id_ID, it_IT, ja_JP, ko_KR, pt_BR, tr_TR, zh_CN, zh_TW
    #     max_results: 1,
    #     related_account: "AccountId",
    #     organizational_unit_id: "OrganizationalUnitId",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.managed_notification_child_events #=> Array
    #   resp.managed_notification_child_events[0].arn #=> String
    #   resp.managed_notification_child_events[0].managed_notification_configuration_arn #=> String
    #   resp.managed_notification_child_events[0].related_account #=> String
    #   resp.managed_notification_child_events[0].creation_time #=> Time
    #   resp.managed_notification_child_events[0].child_event.schema_version #=> String, one of "v1.0"
    #   resp.managed_notification_child_events[0].child_event.source_event_metadata.event_origin_region #=> String
    #   resp.managed_notification_child_events[0].child_event.source_event_metadata.source #=> String
    #   resp.managed_notification_child_events[0].child_event.source_event_metadata.event_type #=> String
    #   resp.managed_notification_child_events[0].child_event.message_components.headline #=> String
    #   resp.managed_notification_child_events[0].child_event.aggregation_detail.summarization_dimensions #=> Array
    #   resp.managed_notification_child_events[0].child_event.aggregation_detail.summarization_dimensions[0].name #=> String
    #   resp.managed_notification_child_events[0].child_event.aggregation_detail.summarization_dimensions[0].value #=> String
    #   resp.managed_notification_child_events[0].child_event.event_status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.managed_notification_child_events[0].child_event.notification_type #=> String, one of "ALERT", "WARNING", "ANNOUNCEMENT", "INFORMATIONAL"
    #   resp.managed_notification_child_events[0].aggregate_managed_notification_event_arn #=> String
    #   resp.managed_notification_child_events[0].organizational_unit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListManagedNotificationChildEvents AWS API Documentation
    #
    # @overload list_managed_notification_child_events(params = {})
    # @param [Hash] params ({})
    def list_managed_notification_child_events(params = {}, options = {})
      req = build_request(:list_managed_notification_child_events, params)
      req.send_request(options)
    end

    # Returns a list of Managed Notification Configurations according to
    # specified filters, ordered by creation time in reverse chronological
    # order (newest first).
    #
    # @option params [String] :channel_identifier
    #   The identifier or ARN of the notification channel to filter
    #   configurations by.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned in this call. Defaults to
    #   20.
    #
    # @option params [String] :next_token
    #   The start token for paginated calls. Retrieved from the response of a
    #   previous ListManagedNotificationChannelAssociations call. Next token
    #   uses Base64 encoding.
    #
    # @return [Types::ListManagedNotificationConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedNotificationConfigurationsResponse#next_token #next_token} => String
    #   * {Types::ListManagedNotificationConfigurationsResponse#managed_notification_configurations #managed_notification_configurations} => Array&lt;Types::ManagedNotificationConfigurationStructure&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_notification_configurations({
    #     channel_identifier: "ChannelIdentifier",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.managed_notification_configurations #=> Array
    #   resp.managed_notification_configurations[0].arn #=> String
    #   resp.managed_notification_configurations[0].name #=> String
    #   resp.managed_notification_configurations[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListManagedNotificationConfigurations AWS API Documentation
    #
    # @overload list_managed_notification_configurations(params = {})
    # @param [Hash] params ({})
    def list_managed_notification_configurations(params = {}, options = {})
      req = build_request(:list_managed_notification_configurations, params)
      req.send_request(options)
    end

    # Returns a list of Managed Notification Events according to specified
    # filters, ordered by creation time in reverse chronological order
    # (newest first).
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The earliest time of events to return from this call.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Latest time of events to return from this call.
    #
    # @option params [String] :locale
    #   The locale code of the language used for the retrieved
    #   NotificationEvent. The default locale is English (en\_US).
    #
    # @option params [String] :source
    #   The Amazon Web Services service the event originates from. For example
    #   aws.cloudwatch.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned in this call. Defaults to
    #   20.
    #
    # @option params [String] :next_token
    #   The start token for paginated calls. Retrieved from the response of a
    #   previous `ListManagedNotificationChannelAssociations` call. Next token
    #   uses Base64 encoding.
    #
    # @option params [String] :organizational_unit_id
    #   The Organizational Unit Id that an Amazon Web Services account belongs
    #   to.
    #
    # @option params [String] :related_account
    #   The Amazon Web Services account ID associated with the Managed
    #   Notification Events.
    #
    # @return [Types::ListManagedNotificationEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedNotificationEventsResponse#next_token #next_token} => String
    #   * {Types::ListManagedNotificationEventsResponse#managed_notification_events #managed_notification_events} => Array&lt;Types::ManagedNotificationEventOverview&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_notification_events({
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     locale: "de_DE", # accepts de_DE, en_CA, en_US, en_UK, es_ES, fr_CA, fr_FR, id_ID, it_IT, ja_JP, ko_KR, pt_BR, tr_TR, zh_CN, zh_TW
    #     source: "Source",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     organizational_unit_id: "OrganizationalUnitId",
    #     related_account: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.managed_notification_events #=> Array
    #   resp.managed_notification_events[0].arn #=> String
    #   resp.managed_notification_events[0].managed_notification_configuration_arn #=> String
    #   resp.managed_notification_events[0].related_account #=> String
    #   resp.managed_notification_events[0].creation_time #=> Time
    #   resp.managed_notification_events[0].notification_event.schema_version #=> String, one of "v1.0"
    #   resp.managed_notification_events[0].notification_event.source_event_metadata.event_origin_region #=> String
    #   resp.managed_notification_events[0].notification_event.source_event_metadata.source #=> String
    #   resp.managed_notification_events[0].notification_event.source_event_metadata.event_type #=> String
    #   resp.managed_notification_events[0].notification_event.message_components.headline #=> String
    #   resp.managed_notification_events[0].notification_event.event_status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.managed_notification_events[0].notification_event.notification_type #=> String, one of "ALERT", "WARNING", "ANNOUNCEMENT", "INFORMATIONAL"
    #   resp.managed_notification_events[0].aggregation_event_type #=> String, one of "AGGREGATE", "CHILD", "NONE"
    #   resp.managed_notification_events[0].organizational_unit_id #=> String
    #   resp.managed_notification_events[0].aggregation_summary.event_count #=> Integer
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_by #=> Array
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_by[0].name #=> String
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_by[0].value #=> String
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_accounts.name #=> String
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_accounts.count #=> Integer
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_accounts.sample_values #=> Array
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_accounts.sample_values[0] #=> String
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_regions.name #=> String
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_regions.count #=> Integer
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_regions.sample_values #=> Array
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_regions.sample_values[0] #=> String
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_organizational_units.name #=> String
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_organizational_units.count #=> Integer
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_organizational_units.sample_values #=> Array
    #   resp.managed_notification_events[0].aggregation_summary.aggregated_organizational_units.sample_values[0] #=> String
    #   resp.managed_notification_events[0].aggregation_summary.additional_summarization_dimensions #=> Array
    #   resp.managed_notification_events[0].aggregation_summary.additional_summarization_dimensions[0].name #=> String
    #   resp.managed_notification_events[0].aggregation_summary.additional_summarization_dimensions[0].count #=> Integer
    #   resp.managed_notification_events[0].aggregation_summary.additional_summarization_dimensions[0].sample_values #=> Array
    #   resp.managed_notification_events[0].aggregation_summary.additional_summarization_dimensions[0].sample_values[0] #=> String
    #   resp.managed_notification_events[0].aggregated_notification_regions #=> Array
    #   resp.managed_notification_events[0].aggregated_notification_regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListManagedNotificationEvents AWS API Documentation
    #
    # @overload list_managed_notification_events(params = {})
    # @param [Hash] params ({})
    def list_managed_notification_events(params = {}, options = {})
      req = build_request(:list_managed_notification_events, params)
      req.send_request(options)
    end

    # Returns a list of abbreviated `NotificationConfigurations` according
    # to specified filters, in reverse chronological order (newest first).
    #
    # @option params [String] :event_rule_source
    #   The matched event source.
    #
    #   Must match one of the valid EventBridge sources. Only Amazon Web
    #   Services service sourced events are supported. For example, `aws.ec2`
    #   and `aws.cloudwatch`. For more information, see [Event delivery from
    #   Amazon Web Services services][1] in the *Amazon EventBridge User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #
    # @option params [String] :channel_arn
    #   The Amazon Resource Name (ARN) of the Channel to match.
    #
    # @option params [String] :status
    #   The `NotificationConfiguration` status to match.
    #
    #   * Values:
    #
    #     * `ACTIVE`
    #
    #       * All `EventRules` are `ACTIVE` and any call can be run.
    #
    #       ^
    #     * `PARTIALLY_ACTIVE`
    #
    #       * Some `EventRules` are `ACTIVE` and some are `INACTIVE`. Any call
    #         can be run.
    #
    #       * Any call can be run.
    #     * `INACTIVE`
    #
    #       * All `EventRules` are `INACTIVE` and any call can be run.
    #
    #       ^
    #     * `DELETING`
    #
    #       * This `NotificationConfiguration` is being deleted.
    #
    #       * Only `GET` and `LIST` calls can be run.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned in this call. Defaults to
    #   20.
    #
    # @option params [String] :next_token
    #   The start token for paginated calls. Retrieved from the response of a
    #   previous `ListEventRules` call. Next token uses Base64 encoding.
    #
    # @return [Types::ListNotificationConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotificationConfigurationsResponse#next_token #next_token} => String
    #   * {Types::ListNotificationConfigurationsResponse#notification_configurations #notification_configurations} => Array&lt;Types::NotificationConfigurationStructure&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notification_configurations({
    #     event_rule_source: "Source",
    #     channel_arn: "ChannelArn",
    #     status: "ACTIVE", # accepts ACTIVE, PARTIALLY_ACTIVE, INACTIVE, DELETING
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.notification_configurations #=> Array
    #   resp.notification_configurations[0].arn #=> String
    #   resp.notification_configurations[0].name #=> String
    #   resp.notification_configurations[0].description #=> String
    #   resp.notification_configurations[0].status #=> String, one of "ACTIVE", "PARTIALLY_ACTIVE", "INACTIVE", "DELETING"
    #   resp.notification_configurations[0].creation_time #=> Time
    #   resp.notification_configurations[0].aggregation_duration #=> String, one of "LONG", "SHORT", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListNotificationConfigurations AWS API Documentation
    #
    # @overload list_notification_configurations(params = {})
    # @param [Hash] params ({})
    def list_notification_configurations(params = {}, options = {})
      req = build_request(:list_notification_configurations, params)
      req.send_request(options)
    end

    # Returns a list of `NotificationEvents` according to specified filters,
    # in reverse chronological order (newest first).
    #
    # User Notifications stores notifications in the individual Regions you
    # register as notification hubs and the Region of the source event rule.
    # ListNotificationEvents only returns notifications stored in the same
    # Region in which the action is called. User Notifications doesn't
    # backfill notifications to new Regions selected as notification hubs.
    # For this reason, we recommend that you make calls in your oldest
    # registered notification hub. For more information, see [Notification
    # hubs][1] in the *Amazon Web Services User Notifications User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The earliest time of events to return from this call.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Latest time of events to return from this call.
    #
    # @option params [String] :locale
    #   The locale code of the language used for the retrieved
    #   `NotificationEvent`. The default locale is English `(en_US)`.
    #
    # @option params [String] :source
    #   The matched event source.
    #
    #   Must match one of the valid EventBridge sources. Only Amazon Web
    #   Services service sourced events are supported. For example, `aws.ec2`
    #   and `aws.cloudwatch`. For more information, see [Event delivery from
    #   Amazon Web Services services][1] in the *Amazon EventBridge User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #
    # @option params [Boolean] :include_child_events
    #   Include aggregated child events in the result.
    #
    # @option params [String] :aggregate_notification_event_arn
    #   The Amazon Resource Name (ARN) of the `aggregatedNotificationEventArn`
    #   to match.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned in this call. Defaults to
    #   20.
    #
    # @option params [String] :next_token
    #   The start token for paginated calls. Retrieved from the response of a
    #   previous `ListEventRules` call. Next token uses Base64 encoding.
    #
    # @return [Types::ListNotificationEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotificationEventsResponse#next_token #next_token} => String
    #   * {Types::ListNotificationEventsResponse#notification_events #notification_events} => Array&lt;Types::NotificationEventOverview&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notification_events({
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     locale: "de_DE", # accepts de_DE, en_CA, en_US, en_UK, es_ES, fr_CA, fr_FR, id_ID, it_IT, ja_JP, ko_KR, pt_BR, tr_TR, zh_CN, zh_TW
    #     source: "Source",
    #     include_child_events: false,
    #     aggregate_notification_event_arn: "NotificationEventArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.notification_events #=> Array
    #   resp.notification_events[0].arn #=> String
    #   resp.notification_events[0].notification_configuration_arn #=> String
    #   resp.notification_events[0].related_account #=> String
    #   resp.notification_events[0].creation_time #=> Time
    #   resp.notification_events[0].notification_event.schema_version #=> String, one of "v1.0"
    #   resp.notification_events[0].notification_event.source_event_metadata.event_origin_region #=> String
    #   resp.notification_events[0].notification_event.source_event_metadata.source #=> String
    #   resp.notification_events[0].notification_event.source_event_metadata.event_type #=> String
    #   resp.notification_events[0].notification_event.message_components.headline #=> String
    #   resp.notification_events[0].notification_event.event_status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.notification_events[0].notification_event.notification_type #=> String, one of "ALERT", "WARNING", "ANNOUNCEMENT", "INFORMATIONAL"
    #   resp.notification_events[0].aggregation_event_type #=> String, one of "AGGREGATE", "CHILD", "NONE"
    #   resp.notification_events[0].aggregate_notification_event_arn #=> String
    #   resp.notification_events[0].aggregation_summary.event_count #=> Integer
    #   resp.notification_events[0].aggregation_summary.aggregated_by #=> Array
    #   resp.notification_events[0].aggregation_summary.aggregated_by[0].name #=> String
    #   resp.notification_events[0].aggregation_summary.aggregated_by[0].value #=> String
    #   resp.notification_events[0].aggregation_summary.aggregated_accounts.name #=> String
    #   resp.notification_events[0].aggregation_summary.aggregated_accounts.count #=> Integer
    #   resp.notification_events[0].aggregation_summary.aggregated_accounts.sample_values #=> Array
    #   resp.notification_events[0].aggregation_summary.aggregated_accounts.sample_values[0] #=> String
    #   resp.notification_events[0].aggregation_summary.aggregated_regions.name #=> String
    #   resp.notification_events[0].aggregation_summary.aggregated_regions.count #=> Integer
    #   resp.notification_events[0].aggregation_summary.aggregated_regions.sample_values #=> Array
    #   resp.notification_events[0].aggregation_summary.aggregated_regions.sample_values[0] #=> String
    #   resp.notification_events[0].aggregation_summary.aggregated_organizational_units.name #=> String
    #   resp.notification_events[0].aggregation_summary.aggregated_organizational_units.count #=> Integer
    #   resp.notification_events[0].aggregation_summary.aggregated_organizational_units.sample_values #=> Array
    #   resp.notification_events[0].aggregation_summary.aggregated_organizational_units.sample_values[0] #=> String
    #   resp.notification_events[0].aggregation_summary.additional_summarization_dimensions #=> Array
    #   resp.notification_events[0].aggregation_summary.additional_summarization_dimensions[0].name #=> String
    #   resp.notification_events[0].aggregation_summary.additional_summarization_dimensions[0].count #=> Integer
    #   resp.notification_events[0].aggregation_summary.additional_summarization_dimensions[0].sample_values #=> Array
    #   resp.notification_events[0].aggregation_summary.additional_summarization_dimensions[0].sample_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListNotificationEvents AWS API Documentation
    #
    # @overload list_notification_events(params = {})
    # @param [Hash] params ({})
    def list_notification_events(params = {}, options = {})
      req = build_request(:list_notification_events, params)
      req.send_request(options)
    end

    # Returns a list of `NotificationHubs`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to list in a single response.
    #
    # @option params [String] :next_token
    #   A pagination token. Set to null to start listing notification hubs
    #   from the start.
    #
    # @return [Types::ListNotificationHubsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotificationHubsResponse#notification_hubs #notification_hubs} => Array&lt;Types::NotificationHubOverview&gt;
    #   * {Types::ListNotificationHubsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notification_hubs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_hubs #=> Array
    #   resp.notification_hubs[0].notification_hub_region #=> String
    #   resp.notification_hubs[0].status_summary.status #=> String, one of "ACTIVE", "REGISTERING", "DEREGISTERING", "INACTIVE"
    #   resp.notification_hubs[0].status_summary.reason #=> String
    #   resp.notification_hubs[0].creation_time #=> Time
    #   resp.notification_hubs[0].last_activation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListNotificationHubs AWS API Documentation
    #
    # @overload list_notification_hubs(params = {})
    # @param [Hash] params ({})
    def list_notification_hubs(params = {}, options = {})
      req = build_request(:list_notification_hubs, params)
      req.send_request(options)
    end

    # Returns a list of tags for a specified Amazon Resource Name (ARN).
    #
    # For more information, see [Tagging your Amazon Web Services
    # resources][1] in the *Tagging Amazon Web Services Resources User
    # Guide*.
    #
    # <note markdown="1"> This is only supported for `NotificationConfigurations`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) to use to list tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "NotificationConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Registers a `NotificationConfiguration` in the specified Region.
    #
    # There is a maximum of one `NotificationConfiguration` per Region. You
    # can have a maximum of 3 `NotificationHub` resources at a time.
    #
    # @option params [required, String] :notification_hub_region
    #   The Region of the `NotificationHub`.
    #
    # @return [Types::RegisterNotificationHubResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterNotificationHubResponse#notification_hub_region #notification_hub_region} => String
    #   * {Types::RegisterNotificationHubResponse#status_summary #status_summary} => Types::NotificationHubStatusSummary
    #   * {Types::RegisterNotificationHubResponse#creation_time #creation_time} => Time
    #   * {Types::RegisterNotificationHubResponse#last_activation_time #last_activation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_notification_hub({
    #     notification_hub_region: "Region", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_hub_region #=> String
    #   resp.status_summary.status #=> String, one of "ACTIVE", "REGISTERING", "DEREGISTERING", "INACTIVE"
    #   resp.status_summary.reason #=> String
    #   resp.creation_time #=> Time
    #   resp.last_activation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/RegisterNotificationHub AWS API Documentation
    #
    # @overload register_notification_hub(params = {})
    # @param [Hash] params ({})
    def register_notification_hub(params = {}, options = {})
      req = build_request(:register_notification_hub, params)
      req.send_request(options)
    end

    # Tags the resource with a tag key and value.
    #
    # For more information, see [Tagging your Amazon Web Services
    # resources][1] in the *Tagging Amazon Web Services Resources User
    # Guide*.
    #
    # <note markdown="1"> This is only supported for `NotificationConfigurations`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) to use to tag a resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map of tags assigned to a resource. A tag is a string-to-string map
    #   of key-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "NotificationConfigurationArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untags a resource with a specified Amazon Resource Name (ARN).
    #
    # For more information, see [Tagging your Amazon Web Services
    # resources][1] in the *Tagging Amazon Web Services Resources User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) to use to untag a resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to use to untag a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "NotificationConfigurationArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing `EventRule`.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) to use to update the `EventRule`.
    #
    # @option params [String] :event_pattern
    #   An additional event pattern used to further filter the events this
    #   `EventRule` receives.
    #
    #   For more information, see [Amazon EventBridge event patterns][1] in
    #   the *Amazon EventBridge User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html
    #
    # @option params [Array<String>] :regions
    #   A list of Amazon Web Services Regions that sends events to this
    #   `EventRule`.
    #
    # @return [Types::UpdateEventRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEventRuleResponse#arn #arn} => String
    #   * {Types::UpdateEventRuleResponse#notification_configuration_arn #notification_configuration_arn} => String
    #   * {Types::UpdateEventRuleResponse#status_summary_by_region #status_summary_by_region} => Hash&lt;String,Types::EventRuleStatusSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_rule({
    #     arn: "EventRuleArn", # required
    #     event_pattern: "EventRuleEventPattern",
    #     regions: ["Region"],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.notification_configuration_arn #=> String
    #   resp.status_summary_by_region #=> Hash
    #   resp.status_summary_by_region["Region"].status #=> String, one of "ACTIVE", "INACTIVE", "CREATING", "UPDATING", "DELETING"
    #   resp.status_summary_by_region["Region"].reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/UpdateEventRule AWS API Documentation
    #
    # @overload update_event_rule(params = {})
    # @param [Hash] params ({})
    def update_event_rule(params = {}, options = {})
      req = build_request(:update_event_rule, params)
      req.send_request(options)
    end

    # Updates a `NotificationConfiguration`.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) used to update the
    #   `NotificationConfiguration`.
    #
    # @option params [String] :name
    #   The name of the `NotificationConfiguration`.
    #
    # @option params [String] :description
    #   The description of the `NotificationConfiguration`.
    #
    # @option params [String] :aggregation_duration
    #   The aggregation preference of the `NotificationConfiguration`.
    #
    #   * Values:
    #
    #     * `LONG`
    #
    #       * Aggregate notifications for long periods of time (12 hours).
    #
    #       ^
    #     * `SHORT`
    #
    #       * Aggregate notifications for short periods of time (5 minutes).
    #
    #       ^
    #     * `NONE`
    #
    #       * Don't aggregate notifications.
    #
    #       ^
    #
    # @return [Types::UpdateNotificationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNotificationConfigurationResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notification_configuration({
    #     arn: "NotificationConfigurationArn", # required
    #     name: "NotificationConfigurationName",
    #     description: "NotificationConfigurationDescription",
    #     aggregation_duration: "LONG", # accepts LONG, SHORT, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/UpdateNotificationConfiguration AWS API Documentation
    #
    # @overload update_notification_configuration(params = {})
    # @param [Hash] params ({})
    def update_notification_configuration(params = {}, options = {})
      req = build_request(:update_notification_configuration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Notifications')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-notifications'
      context[:gem_version] = '1.8.0'
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
