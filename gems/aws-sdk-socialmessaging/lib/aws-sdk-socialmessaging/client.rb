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

module Aws::SocialMessaging
  # An API client for SocialMessaging.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SocialMessaging::Client.new(
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

    @identifier = :socialmessaging

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
    add_plugin(Aws::SocialMessaging::Plugins::Endpoints)

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
    #   @option options [Aws::SocialMessaging::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SocialMessaging::EndpointParameters`.
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

    # This is only used through the Amazon Web Services console during
    # sign-up to associate your WhatsApp Business Account to your Amazon Web
    # Services account.
    #
    # @option params [Types::WhatsAppSignupCallback] :signup_callback
    #   Contains the callback access token.
    #
    # @option params [Types::WhatsAppSetupFinalization] :setup_finalization
    #   A JSON object that contains the phone numbers and WhatsApp Business
    #   Account to link to your account.
    #
    # @return [Types::AssociateWhatsAppBusinessAccountOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateWhatsAppBusinessAccountOutput#signup_callback_result #signup_callback_result} => Types::WhatsAppSignupCallbackResult
    #   * {Types::AssociateWhatsAppBusinessAccountOutput#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_whats_app_business_account({
    #     signup_callback: {
    #       access_token: "WhatsAppSignupCallbackAccessTokenString", # required
    #     },
    #     setup_finalization: {
    #       associate_in_progress_token: "AssociateInProgressToken", # required
    #       phone_numbers: [ # required
    #         {
    #           id: "WhatsAppPhoneNumber", # required
    #           two_factor_pin: "TwoFactorPin", # required
    #           data_localization_region: "IsoCountryCode",
    #           tags: [
    #             {
    #               key: "TagKeyString", # required
    #               value: "TagValueString",
    #             },
    #           ],
    #         },
    #       ],
    #       phone_number_parent: "LinkedWhatsAppBusinessAccountId",
    #       waba: {
    #         id: "WhatsAppBusinessAccountId",
    #         event_destinations: [
    #           {
    #             event_destination_arn: "EventDestinationArn", # required
    #             role_arn: "RoleArn",
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString",
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.signup_callback_result.associate_in_progress_token #=> String
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup #=> Hash
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup["WhatsAppBusinessAccountId"].account_name #=> String
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup["WhatsAppBusinessAccountId"].registration_status #=> String, one of "COMPLETE", "INCOMPLETE"
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup["WhatsAppBusinessAccountId"].unregistered_whats_app_phone_numbers #=> Array
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup["WhatsAppBusinessAccountId"].unregistered_whats_app_phone_numbers[0].arn #=> String
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup["WhatsAppBusinessAccountId"].unregistered_whats_app_phone_numbers[0].phone_number #=> String
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup["WhatsAppBusinessAccountId"].unregistered_whats_app_phone_numbers[0].phone_number_id #=> String
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup["WhatsAppBusinessAccountId"].unregistered_whats_app_phone_numbers[0].meta_phone_number_id #=> String
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup["WhatsAppBusinessAccountId"].unregistered_whats_app_phone_numbers[0].display_phone_number_name #=> String
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup["WhatsAppBusinessAccountId"].unregistered_whats_app_phone_numbers[0].display_phone_number #=> String
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup["WhatsAppBusinessAccountId"].unregistered_whats_app_phone_numbers[0].quality_rating #=> String
    #   resp.signup_callback_result.linked_accounts_with_incomplete_setup["WhatsAppBusinessAccountId"].waba_id #=> String
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/AssociateWhatsAppBusinessAccount AWS API Documentation
    #
    # @overload associate_whats_app_business_account(params = {})
    # @param [Hash] params ({})
    def associate_whats_app_business_account(params = {}, options = {})
      req = build_request(:associate_whats_app_business_account, params)
      req.send_request(options)
    end

    # Delete a media object from the WhatsApp service. If the object is
    # still in an Amazon S3 bucket you should delete it from there too.
    #
    # @option params [required, String] :media_id
    #   The unique identifier of the media file to delete. Use the `mediaId`
    #   returned from [PostWhatsAppMessageMedia][1].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/social-messaging/latest/APIReference/API_PostWhatsAppMessageMedia.html
    #
    # @option params [required, String] :origination_phone_number_id
    #   The unique identifier of the originating phone number associated with
    #   the media. Phone number identifiers are formatted as
    #   `phone-number-id-01234567890123456789012345678901`. Use
    #   [GetLinkedWhatsAppBusinessAccount][1] to find a phone number's id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html
    #
    # @return [Types::DeleteWhatsAppMessageMediaOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWhatsAppMessageMediaOutput#success #success} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_whats_app_message_media({
    #     media_id: "WhatsAppMediaId", # required
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.success #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DeleteWhatsAppMessageMedia AWS API Documentation
    #
    # @overload delete_whats_app_message_media(params = {})
    # @param [Hash] params ({})
    def delete_whats_app_message_media(params = {}, options = {})
      req = build_request(:delete_whats_app_message_media, params)
      req.send_request(options)
    end

    # Disassociate a WhatsApp Business Account (WABA) from your Amazon Web
    # Services account.
    #
    # @option params [required, String] :id
    #   The unique identifier of your WhatsApp Business Account. WABA
    #   identifiers are formatted as `waba-01234567890123456789012345678901`.
    #   Use [ListLinkedWhatsAppBusinessAccounts][1] to list all WABAs and
    #   their details.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_whats_app_business_account({
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DisassociateWhatsAppBusinessAccount AWS API Documentation
    #
    # @overload disassociate_whats_app_business_account(params = {})
    # @param [Hash] params ({})
    def disassociate_whats_app_business_account(params = {}, options = {})
      req = build_request(:disassociate_whats_app_business_account, params)
      req.send_request(options)
    end

    # Get the details of your linked WhatsApp Business Account.
    #
    # @option params [required, String] :id
    #   The unique identifier, from Amazon Web Services, of the linked
    #   WhatsApp Business Account. WABA identifiers are formatted as
    #   `waba-01234567890123456789012345678901`. Use
    #   [ListLinkedWhatsAppBusinessAccounts][1] to list all WABAs and their
    #   details.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html
    #
    # @return [Types::GetLinkedWhatsAppBusinessAccountOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLinkedWhatsAppBusinessAccountOutput#account #account} => Types::LinkedWhatsAppBusinessAccount
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_linked_whats_app_business_account({
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account.arn #=> String
    #   resp.account.id #=> String
    #   resp.account.waba_id #=> String
    #   resp.account.registration_status #=> String, one of "COMPLETE", "INCOMPLETE"
    #   resp.account.link_date #=> Time
    #   resp.account.waba_name #=> String
    #   resp.account.event_destinations #=> Array
    #   resp.account.event_destinations[0].event_destination_arn #=> String
    #   resp.account.event_destinations[0].role_arn #=> String
    #   resp.account.phone_numbers #=> Array
    #   resp.account.phone_numbers[0].arn #=> String
    #   resp.account.phone_numbers[0].phone_number #=> String
    #   resp.account.phone_numbers[0].phone_number_id #=> String
    #   resp.account.phone_numbers[0].meta_phone_number_id #=> String
    #   resp.account.phone_numbers[0].display_phone_number_name #=> String
    #   resp.account.phone_numbers[0].display_phone_number #=> String
    #   resp.account.phone_numbers[0].quality_rating #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetLinkedWhatsAppBusinessAccount AWS API Documentation
    #
    # @overload get_linked_whats_app_business_account(params = {})
    # @param [Hash] params ({})
    def get_linked_whats_app_business_account(params = {}, options = {})
      req = build_request(:get_linked_whats_app_business_account, params)
      req.send_request(options)
    end

    # Use your WhatsApp phone number id to get the WABA account id and phone
    # number details.
    #
    # @option params [required, String] :id
    #   The unique identifier of the phone number. Phone number identifiers
    #   are formatted as `phone-number-id-01234567890123456789012345678901`.
    #   Use [GetLinkedWhatsAppBusinessAccount][1] to find a phone number's
    #   id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html
    #
    # @return [Types::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput#phone_number #phone_number} => Types::WhatsAppPhoneNumberDetail
    #   * {Types::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput#linked_whats_app_business_account_id #linked_whats_app_business_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_linked_whats_app_business_account_phone_number({
    #     id: "WhatsAppPhoneNumberId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.arn #=> String
    #   resp.phone_number.phone_number #=> String
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.meta_phone_number_id #=> String
    #   resp.phone_number.display_phone_number_name #=> String
    #   resp.phone_number.display_phone_number #=> String
    #   resp.phone_number.quality_rating #=> String
    #   resp.linked_whats_app_business_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetLinkedWhatsAppBusinessAccountPhoneNumber AWS API Documentation
    #
    # @overload get_linked_whats_app_business_account_phone_number(params = {})
    # @param [Hash] params ({})
    def get_linked_whats_app_business_account_phone_number(params = {}, options = {})
      req = build_request(:get_linked_whats_app_business_account_phone_number, params)
      req.send_request(options)
    end

    # Get a media file from the WhatsApp service. On successful completion
    # the media file is retrieved from Meta and stored in the specified
    # Amazon S3 bucket. Use either `destinationS3File` or
    # `destinationS3PresignedUrl` for the destination. If both are used then
    # an `InvalidParameterException` is returned.
    #
    # @option params [required, String] :media_id
    #   The unique identifier for the media file.
    #
    # @option params [required, String] :origination_phone_number_id
    #   The unique identifier of the originating phone number for the WhatsApp
    #   message media. The phone number identifiers are formatted as
    #   `phone-number-id-01234567890123456789012345678901`. Use
    #   [GetLinkedWhatsAppBusinessAccount][1] to find a phone number's id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html
    #
    # @option params [Boolean] :metadata_only
    #   Set to `True` to get only the metadata for the file.
    #
    # @option params [Types::S3PresignedUrl] :destination_s3_presigned_url
    #   The presign url of the media file.
    #
    # @option params [Types::S3File] :destination_s3_file
    #   The `bucketName` and `key` of the S3 media file.
    #
    # @return [Types::GetWhatsAppMessageMediaOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWhatsAppMessageMediaOutput#mime_type #mime_type} => String
    #   * {Types::GetWhatsAppMessageMediaOutput#file_size #file_size} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_whats_app_message_media({
    #     media_id: "WhatsAppMediaId", # required
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #     metadata_only: false,
    #     destination_s3_presigned_url: {
    #       url: "S3PresignedUrlUrlString", # required
    #       headers: { # required
    #         "String" => "String",
    #       },
    #     },
    #     destination_s3_file: {
    #       bucket_name: "S3FileBucketNameString", # required
    #       key: "S3FileKeyString", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.mime_type #=> String
    #   resp.file_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetWhatsAppMessageMedia AWS API Documentation
    #
    # @overload get_whats_app_message_media(params = {})
    # @param [Hash] params ({})
    def get_whats_app_message_media(params = {}, options = {})
      req = build_request(:get_whats_app_message_media, params)
      req.send_request(options)
    end

    # List all WhatsApp Business Accounts linked to your Amazon Web Services
    # account.
    #
    # @option params [String] :next_token
    #   The next token for pagination.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListLinkedWhatsAppBusinessAccountsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLinkedWhatsAppBusinessAccountsOutput#linked_accounts #linked_accounts} => Array&lt;Types::LinkedWhatsAppBusinessAccountSummary&gt;
    #   * {Types::ListLinkedWhatsAppBusinessAccountsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_linked_whats_app_business_accounts({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.linked_accounts #=> Array
    #   resp.linked_accounts[0].arn #=> String
    #   resp.linked_accounts[0].id #=> String
    #   resp.linked_accounts[0].waba_id #=> String
    #   resp.linked_accounts[0].registration_status #=> String, one of "COMPLETE", "INCOMPLETE"
    #   resp.linked_accounts[0].link_date #=> Time
    #   resp.linked_accounts[0].waba_name #=> String
    #   resp.linked_accounts[0].event_destinations #=> Array
    #   resp.linked_accounts[0].event_destinations[0].event_destination_arn #=> String
    #   resp.linked_accounts[0].event_destinations[0].role_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListLinkedWhatsAppBusinessAccounts AWS API Documentation
    #
    # @overload list_linked_whats_app_business_accounts(params = {})
    # @param [Hash] params ({})
    def list_linked_whats_app_business_accounts(params = {}, options = {})
      req = build_request(:list_linked_whats_app_business_accounts, params)
      req.send_request(options)
    end

    # List all tags associated with a resource, such as a phone number or
    # WABA.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to retrieve the tags
    #   from.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#status_code #status_code} => Integer
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Upload a media file to the WhatsApp service. Only the specified
    # `originationPhoneNumberId` has the permissions to send the media file
    # when using [SendWhatsAppMessage][1]. You must use either
    # `sourceS3File` or `sourceS3PresignedUrl` for the source. If both or
    # neither are specified then an `InvalidParameterException` is returned.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_SendWhatsAppMessage.html
    #
    # @option params [required, String] :origination_phone_number_id
    #   The ID of the phone number to associate with the WhatsApp media file.
    #   The phone number identifiers are formatted as
    #   `phone-number-id-01234567890123456789012345678901`. Use
    #   [GetLinkedWhatsAppBusinessAccount][1] to find a phone number's id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html
    #
    # @option params [Types::S3PresignedUrl] :source_s3_presigned_url
    #   The source presign url of the media file.
    #
    # @option params [Types::S3File] :source_s3_file
    #   The source S3 url for the media file.
    #
    # @return [Types::PostWhatsAppMessageMediaOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PostWhatsAppMessageMediaOutput#media_id #media_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_whats_app_message_media({
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #     source_s3_presigned_url: {
    #       url: "S3PresignedUrlUrlString", # required
    #       headers: { # required
    #         "String" => "String",
    #       },
    #     },
    #     source_s3_file: {
    #       bucket_name: "S3FileBucketNameString", # required
    #       key: "S3FileKeyString", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.media_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/PostWhatsAppMessageMedia AWS API Documentation
    #
    # @overload post_whats_app_message_media(params = {})
    # @param [Hash] params ({})
    def post_whats_app_message_media(params = {}, options = {})
      req = build_request(:post_whats_app_message_media, params)
      req.send_request(options)
    end

    # Add an event destination to log event data from WhatsApp for a
    # WhatsApp Business Account (WABA). A WABA can only have one event
    # destination at a time. All resources associated with the WABA use the
    # same event destination.
    #
    # @option params [required, String] :id
    #   The unique identifier of your WhatsApp Business Account. WABA
    #   identifiers are formatted as `waba-01234567890123456789012345678901`.
    #   Use [ListLinkedWhatsAppBusinessAccounts][1] to list all WABAs and
    #   their details.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html
    #
    # @option params [required, Array<Types::WhatsAppBusinessAccountEventDestination>] :event_destinations
    #   An array of `WhatsAppBusinessAccountEventDestination` event
    #   destinations.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_whats_app_business_account_event_destinations({
    #     id: "LinkedWhatsAppBusinessAccountId", # required
    #     event_destinations: [ # required
    #       {
    #         event_destination_arn: "EventDestinationArn", # required
    #         role_arn: "RoleArn",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/PutWhatsAppBusinessAccountEventDestinations AWS API Documentation
    #
    # @overload put_whats_app_business_account_event_destinations(params = {})
    # @param [Hash] params ({})
    def put_whats_app_business_account_event_destinations(params = {}, options = {})
      req = build_request(:put_whats_app_business_account_event_destinations, params)
      req.send_request(options)
    end

    # Send a WhatsApp message. For examples of sending a message using the
    # Amazon Web Services CLI, see [Sending messages][1] in the <i>
    # <i>Amazon Web Services End User Messaging Social User Guide</i> </i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/social-messaging/latest/userguide/send-message.html
    #
    # @option params [required, String] :origination_phone_number_id
    #   The ID of the phone number used to send the WhatsApp message. If you
    #   are sending a media file only the `originationPhoneNumberId` used to
    #   upload the file can be used. Phone number identifiers are formatted as
    #   `phone-number-id-01234567890123456789012345678901`. Use
    #   [GetLinkedWhatsAppBusinessAccount][1] to find a phone number's id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html
    #
    # @option params [required, String, StringIO, File] :message
    #   The message to send through WhatsApp. The length is in KB. The message
    #   field passes through a WhatsApp Message object, see [Messages][1] in
    #   the *WhatsApp Business Platform Cloud API Reference*.
    #
    #
    #
    #   [1]: https://developers.facebook.com/docs/whatsapp/cloud-api/reference/messages
    #
    # @option params [required, String] :meta_api_version
    #   The API version for the request formatted as `v{VersionNumber}`. For a
    #   list of supported API versions and Amazon Web Services Regions, see [
    #   *Amazon Web Services End User Messaging Social API* Service
    #   Endpoints][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/end-user-messaging.html
    #
    # @return [Types::SendWhatsAppMessageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendWhatsAppMessageOutput#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_whats_app_message({
    #     origination_phone_number_id: "WhatsAppPhoneNumberId", # required
    #     message: "data", # required
    #     meta_api_version: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/SendWhatsAppMessage AWS API Documentation
    #
    # @overload send_whats_app_message(params = {})
    # @param [Hash] params ({})
    def send_whats_app_message(params = {}, options = {})
      req = build_request(:send_whats_app_message, params)
      req.send_request(options)
    end

    # Adds or overwrites only the specified tags for the specified resource.
    # When you specify an existing tag key, the value is overwritten with
    # the new value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to the resource.
    #
    # @return [Types::TagResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagResourceOutput#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/TagResource AWS API Documentation
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
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove from the resource.
    #
    # @return [Types::UntagResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagResourceOutput#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SocialMessaging')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-socialmessaging'
      context[:gem_version] = '1.10.0'
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
