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

module Aws::Chime
  # An API client for Chime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Chime::Client.new(
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

    @identifier = :chime

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
    add_plugin(Aws::Chime::Plugins::Endpoints)

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
    #   @option options [Aws::Chime::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Chime::EndpointParameters`.
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

    # Associates a phone number with the specified Amazon Chime user.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @option params [required, String] :e164_phone_number
    #   The phone number, in E.164 format.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_number_with_user({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #     e164_phone_number: "E164PhoneNumber", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumberWithUser AWS API Documentation
    #
    # @overload associate_phone_number_with_user(params = {})
    # @param [Hash] params ({})
    def associate_phone_number_with_user(params = {}, options = {})
      req = build_request(:associate_phone_number_with_user, params)
      req.send_request(options)
    end

    # Associates the specified sign-in delegate groups with the specified
    # Amazon Chime account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<Types::SigninDelegateGroup>] :signin_delegate_groups
    #   The sign-in delegate groups.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_signin_delegate_groups_with_account({
    #     account_id: "NonEmptyString", # required
    #     signin_delegate_groups: [ # required
    #       {
    #         group_name: "NonEmptyString",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociateSigninDelegateGroupsWithAccount AWS API Documentation
    #
    # @overload associate_signin_delegate_groups_with_account(params = {})
    # @param [Hash] params ({})
    def associate_signin_delegate_groups_with_account(params = {}, options = {})
      req = build_request(:associate_signin_delegate_groups_with_account, params)
      req.send_request(options)
    end

    # Adds up to 50 members to a chat room in an Amazon Chime Enterprise
    # account. Members can be users or bots. The member role designates
    # whether the member is a chat room administrator or a general chat room
    # member.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [required, Array<Types::MembershipItem>] :membership_item_list
    #   The list of membership items.
    #
    # @return [Types::BatchCreateRoomMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateRoomMembershipResponse#errors #errors} => Array&lt;Types::MemberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_room_membership({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     membership_item_list: [ # required
    #       {
    #         member_id: "NonEmptyString",
    #         role: "Administrator", # accepts Administrator, Member
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].member_id #=> String
    #   resp.errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchCreateRoomMembership AWS API Documentation
    #
    # @overload batch_create_room_membership(params = {})
    # @param [Hash] params ({})
    def batch_create_room_membership(params = {}, options = {})
      req = build_request(:batch_create_room_membership, params)
      req.send_request(options)
    end

    # Moves phone numbers into the **Deletion queue**. Phone numbers must be
    # disassociated from any users or Amazon Chime Voice Connectors before
    # they can be deleted.
    #
    # Phone numbers remain in the **Deletion queue** for 7 days before they
    # are deleted permanently.
    #
    # @option params [required, Array<String>] :phone_number_ids
    #   List of phone number IDs.
    #
    # @return [Types::BatchDeletePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeletePhoneNumberResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_phone_number({
    #     phone_number_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchDeletePhoneNumber AWS API Documentation
    #
    # @overload batch_delete_phone_number(params = {})
    # @param [Hash] params ({})
    def batch_delete_phone_number(params = {}, options = {})
      req = build_request(:batch_delete_phone_number, params)
      req.send_request(options)
    end

    # Suspends up to 50 users from a `Team` or `EnterpriseLWA` Amazon Chime
    # account. For more information about different account types, see
    # [Managing Your Amazon Chime Accounts][1] in the *Amazon Chime
    # Administration Guide*.
    #
    # Users suspended from a `Team` account are disassociated from the
    # account,but they can continue to use Amazon Chime as free users. To
    # remove the suspension from suspended `Team` account users, invite them
    # to the `Team` account again. You can use the InviteUsers action to do
    # so.
    #
    # Users suspended from an `EnterpriseLWA` account are immediately signed
    # out of Amazon Chime and can no longer sign in. To remove the
    # suspension from suspended `EnterpriseLWA` account users, use the
    # BatchUnsuspendUser action.
    #
    # To sign out users without suspending them, use the LogoutUser action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<String>] :user_id_list
    #   The request containing the user IDs to suspend.
    #
    # @return [Types::BatchSuspendUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchSuspendUserResponse#user_errors #user_errors} => Array&lt;Types::UserError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_suspend_user({
    #     account_id: "NonEmptyString", # required
    #     user_id_list: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_errors #=> Array
    #   resp.user_errors[0].user_id #=> String
    #   resp.user_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.user_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchSuspendUser AWS API Documentation
    #
    # @overload batch_suspend_user(params = {})
    # @param [Hash] params ({})
    def batch_suspend_user(params = {}, options = {})
      req = build_request(:batch_suspend_user, params)
      req.send_request(options)
    end

    # Removes the suspension from up to 50 previously suspended users for
    # the specified Amazon Chime `EnterpriseLWA` account. Only users on
    # `EnterpriseLWA` accounts can be unsuspended using this action. For
    # more information about different account types, see [ Managing Your
    # Amazon Chime Accounts ][1] in the account types, in the *Amazon Chime
    # Administration Guide*.
    #
    # Previously suspended users who are unsuspended using this action are
    # returned to `Registered` status. Users who are not previously
    # suspended are ignored.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<String>] :user_id_list
    #   The request containing the user IDs to unsuspend.
    #
    # @return [Types::BatchUnsuspendUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUnsuspendUserResponse#user_errors #user_errors} => Array&lt;Types::UserError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_unsuspend_user({
    #     account_id: "NonEmptyString", # required
    #     user_id_list: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_errors #=> Array
    #   resp.user_errors[0].user_id #=> String
    #   resp.user_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.user_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUnsuspendUser AWS API Documentation
    #
    # @overload batch_unsuspend_user(params = {})
    # @param [Hash] params ({})
    def batch_unsuspend_user(params = {}, options = {})
      req = build_request(:batch_unsuspend_user, params)
      req.send_request(options)
    end

    # Updates phone number product types or calling names. You can update
    # one attribute at a time for each `UpdatePhoneNumberRequestItem`. For
    # example, you can update the product type or the calling name.
    #
    # For toll-free numbers, you cannot use the Amazon Chime Business
    # Calling product type. For numbers outside the U.S., you must use the
    # Amazon Chime SIP Media Application Dial-In product type.
    #
    # Updates to outbound calling names can take up to 72 hours to complete.
    # Pending updates to outbound calling names must be complete before you
    # can request another update.
    #
    # @option params [required, Array<Types::UpdatePhoneNumberRequestItem>] :update_phone_number_request_items
    #   The request containing the phone number IDs and product types or
    #   calling names to update.
    #
    # @return [Types::BatchUpdatePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdatePhoneNumberResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_phone_number({
    #     update_phone_number_request_items: [ # required
    #       {
    #         phone_number_id: "NonEmptyString", # required
    #         product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector, SipMediaApplicationDialIn
    #         calling_name: "CallingName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdatePhoneNumber AWS API Documentation
    #
    # @overload batch_update_phone_number(params = {})
    # @param [Hash] params ({})
    def batch_update_phone_number(params = {}, options = {})
      req = build_request(:batch_update_phone_number, params)
      req.send_request(options)
    end

    # Updates user details within the UpdateUserRequestItem object for up to
    # 20 users for the specified Amazon Chime account. Currently, only
    # `LicenseType` updates are supported for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<Types::UpdateUserRequestItem>] :update_user_request_items
    #   The request containing the user IDs and details to update.
    #
    # @return [Types::BatchUpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateUserResponse#user_errors #user_errors} => Array&lt;Types::UserError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_user({
    #     account_id: "NonEmptyString", # required
    #     update_user_request_items: [ # required
    #       {
    #         user_id: "NonEmptyString", # required
    #         license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #         user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #         alexa_for_business_metadata: {
    #           is_alexa_for_business_enabled: false,
    #           alexa_for_business_room_arn: "SensitiveString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.user_errors #=> Array
    #   resp.user_errors[0].user_id #=> String
    #   resp.user_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.user_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdateUser AWS API Documentation
    #
    # @overload batch_update_user(params = {})
    # @param [Hash] params ({})
    def batch_update_user(params = {}, options = {})
      req = build_request(:batch_update_user, params)
      req.send_request(options)
    end

    # Creates an Amazon Chime account under the administrator's AWS
    # account. Only `Team` account types are currently supported for this
    # action. For more information about different account types, see
    # [Managing Your Amazon Chime Accounts][1] in the *Amazon Chime
    # Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
    #
    # @option params [required, String] :name
    #   The name of the Amazon Chime account.
    #
    # @return [Types::CreateAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountResponse#account #account} => Types::Account
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account({
    #     name: "AccountName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account.aws_account_id #=> String
    #   resp.account.account_id #=> String
    #   resp.account.name #=> String
    #   resp.account.account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.account.created_timestamp #=> Time
    #   resp.account.default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.supported_licenses #=> Array
    #   resp.account.supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.account_status #=> String, one of "Suspended", "Active"
    #   resp.account.signin_delegate_groups #=> Array
    #   resp.account.signin_delegate_groups[0].group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAccount AWS API Documentation
    #
    # @overload create_account(params = {})
    # @param [Hash] params ({})
    def create_account(params = {}, options = {})
      req = build_request(:create_account, params)
      req.send_request(options)
    end

    # Creates a bot for an Amazon Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :display_name
    #   The bot display name.
    #
    # @option params [String] :domain
    #   The domain of the Amazon Chime Enterprise account.
    #
    # @return [Types::CreateBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBotResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot({
    #     account_id: "NonEmptyString", # required
    #     display_name: "SensitiveString", # required
    #     domain: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateBot AWS API Documentation
    #
    # @overload create_bot(params = {})
    # @param [Hash] params ({})
    def create_bot(params = {}, options = {})
      req = build_request(:create_bot, params)
      req.send_request(options)
    end

    # Uses the join token and call metadata in a meeting request (From
    # number, To number, and so forth) to initiate an outbound call to a
    # public switched telephone network (PSTN) and join them into a Chime
    # meeting. Also ensures that the From number belongs to the customer.
    #
    # To play welcome audio or implement an interactive voice response
    # (IVR), use the `CreateSipMediaApplicationCall` action with the
    # corresponding SIP media application ID.
    #
    # **This API is not available in a dedicated namespace.**
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, String] :from_phone_number
    #   Phone number used as the caller ID when the remote party receives a
    #   call.
    #
    # @option params [required, String] :to_phone_number
    #   Phone number called when inviting someone to a meeting.
    #
    # @option params [required, String] :join_token
    #   Token used by the Amazon Chime SDK attendee. Call the
    #   [CreateAttendee][1] action to get a join token.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime/latest/APIReference/API_CreateAttendee.html
    #
    # @return [Types::CreateMeetingDialOutResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMeetingDialOutResponse#transaction_id #transaction_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_meeting_dial_out({
    #     meeting_id: "GuidString", # required
    #     from_phone_number: "E164PhoneNumber", # required
    #     to_phone_number: "E164PhoneNumber", # required
    #     join_token: "JoinTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transaction_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMeetingDialOut AWS API Documentation
    #
    # @overload create_meeting_dial_out(params = {})
    # @param [Hash] params ({})
    def create_meeting_dial_out(params = {}, options = {})
      req = build_request(:create_meeting_dial_out, params)
      req.send_request(options)
    end

    # Creates an order for phone numbers to be provisioned. For toll-free
    # numbers, you cannot use the Amazon Chime Business Calling product
    # type. For numbers outside the U.S., you must use the Amazon Chime SIP
    # Media Application Dial-In product type.
    #
    # @option params [required, String] :product_type
    #   The phone number product type.
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #
    # @return [Types::CreatePhoneNumberOrderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePhoneNumberOrderResponse#phone_number_order #phone_number_order} => Types::PhoneNumberOrder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_phone_number_order({
    #     product_type: "BusinessCalling", # required, accepts BusinessCalling, VoiceConnector, SipMediaApplicationDialIn
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_order.phone_number_order_id #=> String
    #   resp.phone_number_order.product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number_order.status #=> String, one of "Processing", "Successful", "Failed", "Partial"
    #   resp.phone_number_order.ordered_phone_numbers #=> Array
    #   resp.phone_number_order.ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_order.ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_order.created_timestamp #=> Time
    #   resp.phone_number_order.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreatePhoneNumberOrder AWS API Documentation
    #
    # @overload create_phone_number_order(params = {})
    # @param [Hash] params ({})
    def create_phone_number_order(params = {}, options = {})
      req = build_request(:create_phone_number_order, params)
      req.send_request(options)
    end

    # Creates a chat room for the specified Amazon Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :name
    #   The room name.
    #
    # @option params [String] :client_request_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoomResponse#room #room} => Types::Room
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_room({
    #     account_id: "NonEmptyString", # required
    #     name: "SensitiveString", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.room.room_id #=> String
    #   resp.room.name #=> String
    #   resp.room.account_id #=> String
    #   resp.room.created_by #=> String
    #   resp.room.created_timestamp #=> Time
    #   resp.room.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateRoom AWS API Documentation
    #
    # @overload create_room(params = {})
    # @param [Hash] params ({})
    def create_room(params = {}, options = {})
      req = build_request(:create_room, params)
      req.send_request(options)
    end

    # Adds a member to a chat room in an Amazon Chime Enterprise account. A
    # member can be either a user or a bot. The member role designates
    # whether the member is a chat room administrator or a general chat room
    # member.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [required, String] :member_id
    #   The Amazon Chime member ID (user ID or bot ID).
    #
    # @option params [String] :role
    #   The role of the member.
    #
    # @return [Types::CreateRoomMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoomMembershipResponse#room_membership #room_membership} => Types::RoomMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_room_membership({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     member_id: "NonEmptyString", # required
    #     role: "Administrator", # accepts Administrator, Member
    #   })
    #
    # @example Response structure
    #
    #   resp.room_membership.room_id #=> String
    #   resp.room_membership.member.member_id #=> String
    #   resp.room_membership.member.member_type #=> String, one of "User", "Bot", "Webhook"
    #   resp.room_membership.member.email #=> String
    #   resp.room_membership.member.full_name #=> String
    #   resp.room_membership.member.account_id #=> String
    #   resp.room_membership.role #=> String, one of "Administrator", "Member"
    #   resp.room_membership.invited_by #=> String
    #   resp.room_membership.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateRoomMembership AWS API Documentation
    #
    # @overload create_room_membership(params = {})
    # @param [Hash] params ({})
    def create_room_membership(params = {}, options = {})
      req = build_request(:create_room_membership, params)
      req.send_request(options)
    end

    # Creates a user under the specified Amazon Chime account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [String] :username
    #   The user name.
    #
    # @option params [String] :email
    #   The user's email address.
    #
    # @option params [String] :user_type
    #   The user type.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     account_id: "NonEmptyString", # required
    #     username: "String",
    #     email: "EmailAddress",
    #     user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #   })
    #
    # @example Response structure
    #
    #   resp.user.user_id #=> String
    #   resp.user.account_id #=> String
    #   resp.user.primary_email #=> String
    #   resp.user.primary_provisioned_number #=> String
    #   resp.user.display_name #=> String
    #   resp.user.license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.user.user_type #=> String, one of "PrivateUser", "SharedDevice"
    #   resp.user.user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.user.user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.user.registered_on #=> Time
    #   resp.user.invited_on #=> Time
    #   resp.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.user.personal_pin #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes the specified Amazon Chime account. You must suspend all users
    # before deleting `Team` account. You can use the BatchSuspendUser
    # action to dodo.
    #
    # For `EnterpriseLWA` and `EnterpriseAD` accounts, you must release the
    # claimed domains for your Amazon Chime account before deletion. As soon
    # as you release the domain, all users under that account are suspended.
    #
    # Deleted accounts appear in your `Disabled` accounts list for 90 days.
    # To restore deleted account from your `Disabled` accounts list, you
    # must contact AWS Support.
    #
    # After 90 days, deleted accounts are permanently removed from your
    # `Disabled` accounts list.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account({
    #     account_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAccount AWS API Documentation
    #
    # @overload delete_account(params = {})
    # @param [Hash] params ({})
    def delete_account(params = {}, options = {})
      req = build_request(:delete_account, params)
      req.send_request(options)
    end

    # Deletes the events configuration that allows a bot to receive outgoing
    # events.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_events_configuration({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteEventsConfiguration AWS API Documentation
    #
    # @overload delete_events_configuration(params = {})
    # @param [Hash] params ({})
    def delete_events_configuration(params = {}, options = {})
      req = build_request(:delete_events_configuration, params)
      req.send_request(options)
    end

    # Moves the specified phone number into the **Deletion queue**. A phone
    # number must be disassociated from any users or Amazon Chime Voice
    # Connectors before it can be deleted.
    #
    # Deleted phone numbers remain in the **Deletion queue** for 7 days
    # before they are deleted permanently.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_phone_number({
    #     phone_number_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeletePhoneNumber AWS API Documentation
    #
    # @overload delete_phone_number(params = {})
    # @param [Hash] params ({})
    def delete_phone_number(params = {}, options = {})
      req = build_request(:delete_phone_number, params)
      req.send_request(options)
    end

    # Deletes a chat room in an Amazon Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The chat room ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteRoom AWS API Documentation
    #
    # @overload delete_room(params = {})
    # @param [Hash] params ({})
    def delete_room(params = {}, options = {})
      req = build_request(:delete_room, params)
      req.send_request(options)
    end

    # Removes a member from a chat room in an Amazon Chime Enterprise
    # account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [required, String] :member_id
    #   The member ID (user ID or bot ID).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room_membership({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     member_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteRoomMembership AWS API Documentation
    #
    # @overload delete_room_membership(params = {})
    # @param [Hash] params ({})
    def delete_room_membership(params = {}, options = {})
      req = build_request(:delete_room_membership, params)
      req.send_request(options)
    end

    # Disassociates the primary provisioned phone number from the specified
    # Amazon Chime user.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_number_from_user({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumberFromUser AWS API Documentation
    #
    # @overload disassociate_phone_number_from_user(params = {})
    # @param [Hash] params ({})
    def disassociate_phone_number_from_user(params = {}, options = {})
      req = build_request(:disassociate_phone_number_from_user, params)
      req.send_request(options)
    end

    # Disassociates the specified sign-in delegate groups from the specified
    # Amazon Chime account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<String>] :group_names
    #   The sign-in delegate group names.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_signin_delegate_groups_from_account({
    #     account_id: "NonEmptyString", # required
    #     group_names: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociateSigninDelegateGroupsFromAccount AWS API Documentation
    #
    # @overload disassociate_signin_delegate_groups_from_account(params = {})
    # @param [Hash] params ({})
    def disassociate_signin_delegate_groups_from_account(params = {}, options = {})
      req = build_request(:disassociate_signin_delegate_groups_from_account, params)
      req.send_request(options)
    end

    # Retrieves details for the specified Amazon Chime account, such as
    # account type and supported licenses.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @return [Types::GetAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountResponse#account #account} => Types::Account
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account({
    #     account_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account.aws_account_id #=> String
    #   resp.account.account_id #=> String
    #   resp.account.name #=> String
    #   resp.account.account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.account.created_timestamp #=> Time
    #   resp.account.default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.supported_licenses #=> Array
    #   resp.account.supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.account_status #=> String, one of "Suspended", "Active"
    #   resp.account.signin_delegate_groups #=> Array
    #   resp.account.signin_delegate_groups[0].group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccount AWS API Documentation
    #
    # @overload get_account(params = {})
    # @param [Hash] params ({})
    def get_account(params = {}, options = {})
      req = build_request(:get_account, params)
      req.send_request(options)
    end

    # Retrieves account settings for the specified Amazon Chime account ID,
    # such as remote control and dialout settings. For more information
    # about these settings, see [Use the Policies Page][1] in the *Amazon
    # Chime Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/policies.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @return [Types::GetAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsResponse#account_settings #account_settings} => Types::AccountSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_settings({
    #     account_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_settings.disable_remote_control #=> Boolean
    #   resp.account_settings.enable_dial_out #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Retrieves details for the specified bot, such as bot email address,
    # bot type, status, and display name.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Types::GetBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetBot AWS API Documentation
    #
    # @overload get_bot(params = {})
    # @param [Hash] params ({})
    def get_bot(params = {}, options = {})
      req = build_request(:get_bot, params)
      req.send_request(options)
    end

    # Gets details for an events configuration that allows a bot to receive
    # outgoing events, such as an HTTPS endpoint or Lambda function ARN.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Types::GetEventsConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventsConfigurationResponse#events_configuration #events_configuration} => Types::EventsConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_events_configuration({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.events_configuration.bot_id #=> String
    #   resp.events_configuration.outbound_events_https_endpoint #=> String
    #   resp.events_configuration.lambda_function_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetEventsConfiguration AWS API Documentation
    #
    # @overload get_events_configuration(params = {})
    # @param [Hash] params ({})
    def get_events_configuration(params = {}, options = {})
      req = build_request(:get_events_configuration, params)
      req.send_request(options)
    end

    # Retrieves global settings for the administrator's AWS account, such
    # as Amazon Chime Business Calling and Amazon Chime Voice Connector
    # settings.
    #
    # @return [Types::GetGlobalSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGlobalSettingsResponse#business_calling #business_calling} => Types::BusinessCallingSettings
    #   * {Types::GetGlobalSettingsResponse#voice_connector #voice_connector} => Types::VoiceConnectorSettings
    #
    # @example Response structure
    #
    #   resp.business_calling.cdr_bucket #=> String
    #   resp.voice_connector.cdr_bucket #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetGlobalSettings AWS API Documentation
    #
    # @overload get_global_settings(params = {})
    # @param [Hash] params ({})
    def get_global_settings(params = {}, options = {})
      req = build_request(:get_global_settings, params)
      req.send_request(options)
    end

    # Retrieves details for the specified phone number ID, such as
    # associations, capabilities, and product type.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number ID.
    #
    # @return [Types::GetPhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPhoneNumberResponse#phone_number #phone_number} => Types::PhoneNumber
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_phone_number({
    #     phone_number_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.country #=> String
    #   resp.phone_number.type #=> String, one of "Local", "TollFree"
    #   resp.phone_number.product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number.status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.calling_name #=> String
    #   resp.phone_number.calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumber AWS API Documentation
    #
    # @overload get_phone_number(params = {})
    # @param [Hash] params ({})
    def get_phone_number(params = {}, options = {})
      req = build_request(:get_phone_number, params)
      req.send_request(options)
    end

    # Retrieves details for the specified phone number order, such as the
    # order creation timestamp, phone numbers in E.164 format, product type,
    # and order status.
    #
    # @option params [required, String] :phone_number_order_id
    #   The ID for the phone number order.
    #
    # @return [Types::GetPhoneNumberOrderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPhoneNumberOrderResponse#phone_number_order #phone_number_order} => Types::PhoneNumberOrder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_phone_number_order({
    #     phone_number_order_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_order.phone_number_order_id #=> String
    #   resp.phone_number_order.product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number_order.status #=> String, one of "Processing", "Successful", "Failed", "Partial"
    #   resp.phone_number_order.ordered_phone_numbers #=> Array
    #   resp.phone_number_order.ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_order.ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_order.created_timestamp #=> Time
    #   resp.phone_number_order.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumberOrder AWS API Documentation
    #
    # @overload get_phone_number_order(params = {})
    # @param [Hash] params ({})
    def get_phone_number_order(params = {}, options = {})
      req = build_request(:get_phone_number_order, params)
      req.send_request(options)
    end

    # Retrieves the phone number settings for the administrator's AWS
    # account, such as the default outbound calling name.
    #
    # @return [Types::GetPhoneNumberSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPhoneNumberSettingsResponse#calling_name #calling_name} => String
    #   * {Types::GetPhoneNumberSettingsResponse#calling_name_updated_timestamp #calling_name_updated_timestamp} => Time
    #
    # @example Response structure
    #
    #   resp.calling_name #=> String
    #   resp.calling_name_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumberSettings AWS API Documentation
    #
    # @overload get_phone_number_settings(params = {})
    # @param [Hash] params ({})
    def get_phone_number_settings(params = {}, options = {})
      req = build_request(:get_phone_number_settings, params)
      req.send_request(options)
    end

    # Gets the retention settings for the specified Amazon Chime Enterprise
    # account. For more information about retention settings, see [Managing
    # Chat Retention Policies][1] in the *Amazon Chime Administration
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @return [Types::GetRetentionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRetentionSettingsResponse#retention_settings #retention_settings} => Types::RetentionSettings
    #   * {Types::GetRetentionSettingsResponse#initiate_deletion_timestamp #initiate_deletion_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_retention_settings({
    #     account_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.retention_settings.room_retention_settings.retention_days #=> Integer
    #   resp.retention_settings.conversation_retention_settings.retention_days #=> Integer
    #   resp.initiate_deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetRetentionSettings AWS API Documentation
    #
    # @overload get_retention_settings(params = {})
    # @param [Hash] params ({})
    def get_retention_settings(params = {}, options = {})
      req = build_request(:get_retention_settings, params)
      req.send_request(options)
    end

    # Retrieves room details, such as the room name, for a room in an Amazon
    # Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @return [Types::GetRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRoomResponse#room #room} => Types::Room
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_room({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.room.room_id #=> String
    #   resp.room.name #=> String
    #   resp.room.account_id #=> String
    #   resp.room.created_by #=> String
    #   resp.room.created_timestamp #=> Time
    #   resp.room.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetRoom AWS API Documentation
    #
    # @overload get_room(params = {})
    # @param [Hash] params ({})
    def get_room(params = {}, options = {})
      req = build_request(:get_room, params)
      req.send_request(options)
    end

    # Retrieves details for the specified user ID, such as primary email
    # address, license type,and personal meeting PIN.
    #
    # To retrieve user details with an email address instead of a user ID,
    # use the ListUsers action, and then filter by email address.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Types::GetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.user_id #=> String
    #   resp.user.account_id #=> String
    #   resp.user.primary_email #=> String
    #   resp.user.primary_provisioned_number #=> String
    #   resp.user.display_name #=> String
    #   resp.user.license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.user.user_type #=> String, one of "PrivateUser", "SharedDevice"
    #   resp.user.user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.user.user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.user.registered_on #=> Time
    #   resp.user.invited_on #=> Time
    #   resp.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.user.personal_pin #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUser AWS API Documentation
    #
    # @overload get_user(params = {})
    # @param [Hash] params ({})
    def get_user(params = {}, options = {})
      req = build_request(:get_user, params)
      req.send_request(options)
    end

    # Retrieves settings for the specified user ID, such as any associated
    # phone number settings.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Types::GetUserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserSettingsResponse#user_settings #user_settings} => Types::UserSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_settings({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_settings.telephony.inbound_calling #=> Boolean
    #   resp.user_settings.telephony.outbound_calling #=> Boolean
    #   resp.user_settings.telephony.sms #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUserSettings AWS API Documentation
    #
    # @overload get_user_settings(params = {})
    # @param [Hash] params ({})
    def get_user_settings(params = {}, options = {})
      req = build_request(:get_user_settings, params)
      req.send_request(options)
    end

    # Sends email to a maximum of 50 users, inviting them to the specified
    # Amazon Chime `Team` account. Only `Team` account types are currently
    # supported for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<String>] :user_email_list
    #   The user email addresses to which to send the email invitation.
    #
    # @option params [String] :user_type
    #   The user type.
    #
    # @return [Types::InviteUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InviteUsersResponse#invites #invites} => Array&lt;Types::Invite&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_users({
    #     account_id: "NonEmptyString", # required
    #     user_email_list: ["EmailAddress"], # required
    #     user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #   })
    #
    # @example Response structure
    #
    #   resp.invites #=> Array
    #   resp.invites[0].invite_id #=> String
    #   resp.invites[0].status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.invites[0].email_address #=> String
    #   resp.invites[0].email_status #=> String, one of "NotSent", "Sent", "Failed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/InviteUsers AWS API Documentation
    #
    # @overload invite_users(params = {})
    # @param [Hash] params ({})
    def invite_users(params = {}, options = {})
      req = build_request(:invite_users, params)
      req.send_request(options)
    end

    # Lists the Amazon Chime accounts under the administrator's AWS
    # account. You can filter accounts by account name prefix. To find out
    # which Amazon Chime account a user belongs to, you can filter by the
    # user's email address, which returns one account result.
    #
    # @option params [String] :name
    #   Amazon Chime account name prefix with which to filter results.
    #
    # @option params [String] :user_email
    #   User email address with which to filter results.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Defaults to
    #   100.
    #
    # @return [Types::ListAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountsResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::ListAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts({
    #     name: "AccountName",
    #     user_email: "EmailAddress",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].aws_account_id #=> String
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].name #=> String
    #   resp.accounts[0].account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.accounts[0].created_timestamp #=> Time
    #   resp.accounts[0].default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.accounts[0].supported_licenses #=> Array
    #   resp.accounts[0].supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.accounts[0].account_status #=> String, one of "Suspended", "Active"
    #   resp.accounts[0].signin_delegate_groups #=> Array
    #   resp.accounts[0].signin_delegate_groups[0].group_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAccounts AWS API Documentation
    #
    # @overload list_accounts(params = {})
    # @param [Hash] params ({})
    def list_accounts(params = {}, options = {})
      req = build_request(:list_accounts, params)
      req.send_request(options)
    end

    # Lists the bots associated with the administrator's Amazon Chime
    # Enterprise account ID.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   is 10.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListBotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBotsResponse#bots #bots} => Array&lt;Types::Bot&gt;
    #   * {Types::ListBotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bots({
    #     account_id: "NonEmptyString", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.bots #=> Array
    #   resp.bots[0].bot_id #=> String
    #   resp.bots[0].user_id #=> String
    #   resp.bots[0].display_name #=> String
    #   resp.bots[0].bot_type #=> String, one of "ChatBot"
    #   resp.bots[0].disabled #=> Boolean
    #   resp.bots[0].created_timestamp #=> Time
    #   resp.bots[0].updated_timestamp #=> Time
    #   resp.bots[0].bot_email #=> String
    #   resp.bots[0].security_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListBots AWS API Documentation
    #
    # @overload list_bots(params = {})
    # @param [Hash] params ({})
    def list_bots(params = {}, options = {})
      req = build_request(:list_bots, params)
      req.send_request(options)
    end

    # Lists the phone number orders for the administrator's Amazon Chime
    # account.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListPhoneNumberOrdersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPhoneNumberOrdersResponse#phone_number_orders #phone_number_orders} => Array&lt;Types::PhoneNumberOrder&gt;
    #   * {Types::ListPhoneNumberOrdersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_number_orders({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_orders #=> Array
    #   resp.phone_number_orders[0].phone_number_order_id #=> String
    #   resp.phone_number_orders[0].product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number_orders[0].status #=> String, one of "Processing", "Successful", "Failed", "Partial"
    #   resp.phone_number_orders[0].ordered_phone_numbers #=> Array
    #   resp.phone_number_orders[0].ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_orders[0].ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_orders[0].created_timestamp #=> Time
    #   resp.phone_number_orders[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListPhoneNumberOrders AWS API Documentation
    #
    # @overload list_phone_number_orders(params = {})
    # @param [Hash] params ({})
    def list_phone_number_orders(params = {}, options = {})
      req = build_request(:list_phone_number_orders, params)
      req.send_request(options)
    end

    # Lists the phone numbers for the specified Amazon Chime account, Amazon
    # Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice
    # Connector group.
    #
    # @option params [String] :status
    #   The phone number status.
    #
    # @option params [String] :product_type
    #   The phone number product type.
    #
    # @option params [String] :filter_name
    #   The filter to use to limit the number of results.
    #
    # @option params [String] :filter_value
    #   The value to use for the filter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListPhoneNumbersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPhoneNumbersResponse#phone_numbers #phone_numbers} => Array&lt;Types::PhoneNumber&gt;
    #   * {Types::ListPhoneNumbersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers({
    #     status: "AcquireInProgress", # accepts AcquireInProgress, AcquireFailed, Unassigned, Assigned, ReleaseInProgress, DeleteInProgress, ReleaseFailed, DeleteFailed
    #     product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector, SipMediaApplicationDialIn
    #     filter_name: "AccountId", # accepts AccountId, UserId, VoiceConnectorId, VoiceConnectorGroupId, SipRuleId
    #     filter_value: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_numbers #=> Array
    #   resp.phone_numbers[0].phone_number_id #=> String
    #   resp.phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_numbers[0].country #=> String
    #   resp.phone_numbers[0].type #=> String, one of "Local", "TollFree"
    #   resp.phone_numbers[0].product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_numbers[0].status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_numbers[0].capabilities.inbound_call #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_call #=> Boolean
    #   resp.phone_numbers[0].capabilities.inbound_sms #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_sms #=> Boolean
    #   resp.phone_numbers[0].capabilities.inbound_mms #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_mms #=> Boolean
    #   resp.phone_numbers[0].associations #=> Array
    #   resp.phone_numbers[0].associations[0].value #=> String
    #   resp.phone_numbers[0].associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_numbers[0].associations[0].associated_timestamp #=> Time
    #   resp.phone_numbers[0].calling_name #=> String
    #   resp.phone_numbers[0].calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_numbers[0].created_timestamp #=> Time
    #   resp.phone_numbers[0].updated_timestamp #=> Time
    #   resp.phone_numbers[0].deletion_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListPhoneNumbers AWS API Documentation
    #
    # @overload list_phone_numbers(params = {})
    # @param [Hash] params ({})
    def list_phone_numbers(params = {}, options = {})
      req = build_request(:list_phone_numbers, params)
      req.send_request(options)
    end

    # Lists the membership details for the specified room in an Amazon Chime
    # Enterprise account, such as the members' IDs, email addresses, and
    # names.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListRoomMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoomMembershipsResponse#room_memberships #room_memberships} => Array&lt;Types::RoomMembership&gt;
    #   * {Types::ListRoomMembershipsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_room_memberships({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.room_memberships #=> Array
    #   resp.room_memberships[0].room_id #=> String
    #   resp.room_memberships[0].member.member_id #=> String
    #   resp.room_memberships[0].member.member_type #=> String, one of "User", "Bot", "Webhook"
    #   resp.room_memberships[0].member.email #=> String
    #   resp.room_memberships[0].member.full_name #=> String
    #   resp.room_memberships[0].member.account_id #=> String
    #   resp.room_memberships[0].role #=> String, one of "Administrator", "Member"
    #   resp.room_memberships[0].invited_by #=> String
    #   resp.room_memberships[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListRoomMemberships AWS API Documentation
    #
    # @overload list_room_memberships(params = {})
    # @param [Hash] params ({})
    def list_room_memberships(params = {}, options = {})
      req = build_request(:list_room_memberships, params)
      req.send_request(options)
    end

    # Lists the room details for the specified Amazon Chime Enterprise
    # account. Optionally, filter the results by a member ID (user ID or bot
    # ID) to see a list of rooms that the member belongs to.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [String] :member_id
    #   The member ID (user ID or bot ID).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListRoomsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoomsResponse#rooms #rooms} => Array&lt;Types::Room&gt;
    #   * {Types::ListRoomsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rooms({
    #     account_id: "NonEmptyString", # required
    #     member_id: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.rooms #=> Array
    #   resp.rooms[0].room_id #=> String
    #   resp.rooms[0].name #=> String
    #   resp.rooms[0].account_id #=> String
    #   resp.rooms[0].created_by #=> String
    #   resp.rooms[0].created_timestamp #=> Time
    #   resp.rooms[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListRooms AWS API Documentation
    #
    # @overload list_rooms(params = {})
    # @param [Hash] params ({})
    def list_rooms(params = {}, options = {})
      req = build_request(:list_rooms, params)
      req.send_request(options)
    end

    # Lists supported phone number countries.
    #
    # @option params [required, String] :product_type
    #   The phone number product type.
    #
    # @return [Types::ListSupportedPhoneNumberCountriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSupportedPhoneNumberCountriesResponse#phone_number_countries #phone_number_countries} => Array&lt;Types::PhoneNumberCountry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_supported_phone_number_countries({
    #     product_type: "BusinessCalling", # required, accepts BusinessCalling, VoiceConnector, SipMediaApplicationDialIn
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_countries #=> Array
    #   resp.phone_number_countries[0].country_code #=> String
    #   resp.phone_number_countries[0].supported_phone_number_types #=> Array
    #   resp.phone_number_countries[0].supported_phone_number_types[0] #=> String, one of "Local", "TollFree"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListSupportedPhoneNumberCountries AWS API Documentation
    #
    # @overload list_supported_phone_number_countries(params = {})
    # @param [Hash] params ({})
    def list_supported_phone_number_countries(params = {}, options = {})
      req = build_request(:list_supported_phone_number_countries, params)
      req.send_request(options)
    end

    # Lists the users that belong to the specified Amazon Chime account. You
    # can specify an email address to list only the user that the email
    # address belongs to.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [String] :user_email
    #   Optional. The user email address used to filter results. Maximum 1.
    #
    # @option params [String] :user_type
    #   The user type.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Defaults to
    #   100.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     account_id: "NonEmptyString", # required
    #     user_email: "EmailAddress",
    #     user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].user_id #=> String
    #   resp.users[0].account_id #=> String
    #   resp.users[0].primary_email #=> String
    #   resp.users[0].primary_provisioned_number #=> String
    #   resp.users[0].display_name #=> String
    #   resp.users[0].license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.users[0].user_type #=> String, one of "PrivateUser", "SharedDevice"
    #   resp.users[0].user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.users[0].user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.users[0].registered_on #=> Time
    #   resp.users[0].invited_on #=> Time
    #   resp.users[0].alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.users[0].alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.users[0].personal_pin #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Logs out the specified user from all of the devices they are currently
    # logged into.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.logout_user({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/LogoutUser AWS API Documentation
    #
    # @overload logout_user(params = {})
    # @param [Hash] params ({})
    def logout_user(params = {}, options = {})
      req = build_request(:logout_user, params)
      req.send_request(options)
    end

    # Creates an events configuration that allows a bot to receive outgoing
    # events sent by Amazon Chime. Choose either an HTTPS endpoint or a
    # Lambda function ARN. For more information, see Bot.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @option params [String] :outbound_events_https_endpoint
    #   HTTPS endpoint that allows the bot to receive outgoing events.
    #
    # @option params [String] :lambda_function_arn
    #   Lambda function ARN that allows the bot to receive outgoing events.
    #
    # @return [Types::PutEventsConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventsConfigurationResponse#events_configuration #events_configuration} => Types::EventsConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_events_configuration({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #     outbound_events_https_endpoint: "SensitiveString",
    #     lambda_function_arn: "SensitiveString",
    #   })
    #
    # @example Response structure
    #
    #   resp.events_configuration.bot_id #=> String
    #   resp.events_configuration.outbound_events_https_endpoint #=> String
    #   resp.events_configuration.lambda_function_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutEventsConfiguration AWS API Documentation
    #
    # @overload put_events_configuration(params = {})
    # @param [Hash] params ({})
    def put_events_configuration(params = {}, options = {})
      req = build_request(:put_events_configuration, params)
      req.send_request(options)
    end

    # Puts retention settings for the specified Amazon Chime Enterprise
    # account. We recommend using AWS CloudTrail to monitor usage of this
    # API for your account. For more information, see [Logging Amazon Chime
    # API Calls with AWS CloudTrail][1] in the *Amazon Chime Administration
    # Guide*.
    #
    # To turn off existing retention settings, remove the number of days
    # from the corresponding **RetentionDays** field in the
    # **RetentionSettings** object. For more information about retention
    # settings, see [Managing Chat Retention Policies][2] in the *Amazon
    # Chime Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/cloudtrail.html
    # [2]: https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Types::RetentionSettings] :retention_settings
    #   The retention settings.
    #
    # @return [Types::PutRetentionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRetentionSettingsResponse#retention_settings #retention_settings} => Types::RetentionSettings
    #   * {Types::PutRetentionSettingsResponse#initiate_deletion_timestamp #initiate_deletion_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_retention_settings({
    #     account_id: "NonEmptyString", # required
    #     retention_settings: { # required
    #       room_retention_settings: {
    #         retention_days: 1,
    #       },
    #       conversation_retention_settings: {
    #         retention_days: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.retention_settings.room_retention_settings.retention_days #=> Integer
    #   resp.retention_settings.conversation_retention_settings.retention_days #=> Integer
    #   resp.initiate_deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutRetentionSettings AWS API Documentation
    #
    # @overload put_retention_settings(params = {})
    # @param [Hash] params ({})
    def put_retention_settings(params = {}, options = {})
      req = build_request(:put_retention_settings, params)
      req.send_request(options)
    end

    # Redacts the specified message from the specified Amazon Chime
    # conversation.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :conversation_id
    #   The conversation ID.
    #
    # @option params [required, String] :message_id
    #   The message ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.redact_conversation_message({
    #     account_id: "NonEmptyString", # required
    #     conversation_id: "NonEmptyString", # required
    #     message_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RedactConversationMessage AWS API Documentation
    #
    # @overload redact_conversation_message(params = {})
    # @param [Hash] params ({})
    def redact_conversation_message(params = {}, options = {})
      req = build_request(:redact_conversation_message, params)
      req.send_request(options)
    end

    # Redacts the specified message from the specified Amazon Chime channel.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [required, String] :message_id
    #   The message ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.redact_room_message({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     message_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RedactRoomMessage AWS API Documentation
    #
    # @overload redact_room_message(params = {})
    # @param [Hash] params ({})
    def redact_room_message(params = {}, options = {})
      req = build_request(:redact_room_message, params)
      req.send_request(options)
    end

    # Regenerates the security token for a bot.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Types::RegenerateSecurityTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegenerateSecurityTokenResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.regenerate_security_token({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RegenerateSecurityToken AWS API Documentation
    #
    # @overload regenerate_security_token(params = {})
    # @param [Hash] params ({})
    def regenerate_security_token(params = {}, options = {})
      req = build_request(:regenerate_security_token, params)
      req.send_request(options)
    end

    # Resets the personal meeting PIN for the specified user on an Amazon
    # Chime account. Returns the User object with the updated personal
    # meeting PIN.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Types::ResetPersonalPINResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetPersonalPINResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_personal_pin({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.user_id #=> String
    #   resp.user.account_id #=> String
    #   resp.user.primary_email #=> String
    #   resp.user.primary_provisioned_number #=> String
    #   resp.user.display_name #=> String
    #   resp.user.license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.user.user_type #=> String, one of "PrivateUser", "SharedDevice"
    #   resp.user.user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.user.user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.user.registered_on #=> Time
    #   resp.user.invited_on #=> Time
    #   resp.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.user.personal_pin #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ResetPersonalPIN AWS API Documentation
    #
    # @overload reset_personal_pin(params = {})
    # @param [Hash] params ({})
    def reset_personal_pin(params = {}, options = {})
      req = build_request(:reset_personal_pin, params)
      req.send_request(options)
    end

    # Moves a phone number from the **Deletion queue** back into the phone
    # number **Inventory**.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number.
    #
    # @return [Types::RestorePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestorePhoneNumberResponse#phone_number #phone_number} => Types::PhoneNumber
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_phone_number({
    #     phone_number_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.country #=> String
    #   resp.phone_number.type #=> String, one of "Local", "TollFree"
    #   resp.phone_number.product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number.status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.calling_name #=> String
    #   resp.phone_number.calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RestorePhoneNumber AWS API Documentation
    #
    # @overload restore_phone_number(params = {})
    # @param [Hash] params ({})
    def restore_phone_number(params = {}, options = {})
      req = build_request(:restore_phone_number, params)
      req.send_request(options)
    end

    # Searches for phone numbers that can be ordered. For US numbers,
    # provide at least one of the following search filters: `AreaCode`,
    # `City`, `State`, or `TollFreePrefix`. If you provide `City`, you must
    # also provide `State`. Numbers outside the US only support the
    # `PhoneNumberType` filter, which you must use.
    #
    # @option params [String] :area_code
    #   The area code used to filter results. Only applies to the US.
    #
    # @option params [String] :city
    #   The city used to filter results. Only applies to the US.
    #
    # @option params [String] :country
    #   The country used to filter results. Defaults to the US Format: ISO
    #   3166-1 alpha-2.
    #
    # @option params [String] :state
    #   The state used to filter results. Required only if you provide `City`.
    #   Only applies to the US.
    #
    # @option params [String] :toll_free_prefix
    #   The toll-free prefix that you use to filter results. Only applies to
    #   the US.
    #
    # @option params [String] :phone_number_type
    #   The phone number type used to filter results. Required for non-US
    #   numbers.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token used to retrieve the next page of results.
    #
    # @return [Types::SearchAvailablePhoneNumbersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAvailablePhoneNumbersResponse#e164_phone_numbers #e164_phone_numbers} => Array&lt;String&gt;
    #   * {Types::SearchAvailablePhoneNumbersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_available_phone_numbers({
    #     area_code: "String",
    #     city: "String",
    #     country: "Alpha2CountryCode",
    #     state: "String",
    #     toll_free_prefix: "TollFreePrefix",
    #     phone_number_type: "Local", # accepts Local, TollFree
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.e164_phone_numbers #=> Array
    #   resp.e164_phone_numbers[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SearchAvailablePhoneNumbers AWS API Documentation
    #
    # @overload search_available_phone_numbers(params = {})
    # @param [Hash] params ({})
    def search_available_phone_numbers(params = {}, options = {})
      req = build_request(:search_available_phone_numbers, params)
      req.send_request(options)
    end

    # Updates account details for the specified Amazon Chime account.
    # Currently, only account name and default license updates are supported
    # for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [String] :name
    #   The new name for the specified Amazon Chime account.
    #
    # @option params [String] :default_license
    #   The default license applied when you add users to an Amazon Chime
    #   account.
    #
    # @return [Types::UpdateAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountResponse#account #account} => Types::Account
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account({
    #     account_id: "NonEmptyString", # required
    #     name: "AccountName",
    #     default_license: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #   })
    #
    # @example Response structure
    #
    #   resp.account.aws_account_id #=> String
    #   resp.account.account_id #=> String
    #   resp.account.name #=> String
    #   resp.account.account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.account.created_timestamp #=> Time
    #   resp.account.default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.supported_licenses #=> Array
    #   resp.account.supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.account_status #=> String, one of "Suspended", "Active"
    #   resp.account.signin_delegate_groups #=> Array
    #   resp.account.signin_delegate_groups[0].group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccount AWS API Documentation
    #
    # @overload update_account(params = {})
    # @param [Hash] params ({})
    def update_account(params = {}, options = {})
      req = build_request(:update_account, params)
      req.send_request(options)
    end

    # Updates the settings for the specified Amazon Chime account. You can
    # update settings for remote control of shared screens, or for the
    # dial-out option. For more information about these settings, see [Use
    # the Policies Page][1] in the *Amazon Chime Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/policies.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Types::AccountSettings] :account_settings
    #   The Amazon Chime account settings to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings({
    #     account_id: "NonEmptyString", # required
    #     account_settings: { # required
    #       disable_remote_control: false,
    #       enable_dial_out: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountSettings AWS API Documentation
    #
    # @overload update_account_settings(params = {})
    # @param [Hash] params ({})
    def update_account_settings(params = {}, options = {})
      req = build_request(:update_account_settings, params)
      req.send_request(options)
    end

    # Updates the status of the specified bot, such as starting or stopping
    # the bot from running in your Amazon Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @option params [Boolean] :disabled
    #   When true, stops the specified bot from running in your account.
    #
    # @return [Types::UpdateBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBotResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #     disabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateBot AWS API Documentation
    #
    # @overload update_bot(params = {})
    # @param [Hash] params ({})
    def update_bot(params = {}, options = {})
      req = build_request(:update_bot, params)
      req.send_request(options)
    end

    # Updates global settings for the administrator's AWS account, such as
    # Amazon Chime Business Calling and Amazon Chime Voice Connector
    # settings.
    #
    # @option params [Types::BusinessCallingSettings] :business_calling
    #   The Amazon Chime Business Calling settings.
    #
    # @option params [Types::VoiceConnectorSettings] :voice_connector
    #   The Amazon Chime Voice Connector settings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_settings({
    #     business_calling: {
    #       cdr_bucket: "String",
    #     },
    #     voice_connector: {
    #       cdr_bucket: "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateGlobalSettings AWS API Documentation
    #
    # @overload update_global_settings(params = {})
    # @param [Hash] params ({})
    def update_global_settings(params = {}, options = {})
      req = build_request(:update_global_settings, params)
      req.send_request(options)
    end

    # Updates phone number details, such as product type or calling name,
    # for the specified phone number ID. You can update one phone number
    # detail at a time. For example, you can update either the product type
    # or the calling name in one action.
    #
    # For toll-free numbers, you cannot use the Amazon Chime Business
    # Calling product type. For numbers outside the U.S., you must use the
    # Amazon Chime SIP Media Application Dial-In product type.
    #
    # Updates to outbound calling names can take 72 hours to complete.
    # Pending updates to outbound calling names must be complete before you
    # can request another update.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number ID.
    #
    # @option params [String] :product_type
    #   The product type.
    #
    # @option params [String] :calling_name
    #   The outbound calling name associated with the phone number.
    #
    # @return [Types::UpdatePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePhoneNumberResponse#phone_number #phone_number} => Types::PhoneNumber
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number({
    #     phone_number_id: "String", # required
    #     product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector, SipMediaApplicationDialIn
    #     calling_name: "CallingName",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.country #=> String
    #   resp.phone_number.type #=> String, one of "Local", "TollFree"
    #   resp.phone_number.product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number.status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.calling_name #=> String
    #   resp.phone_number.calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdatePhoneNumber AWS API Documentation
    #
    # @overload update_phone_number(params = {})
    # @param [Hash] params ({})
    def update_phone_number(params = {}, options = {})
      req = build_request(:update_phone_number, params)
      req.send_request(options)
    end

    # Updates the phone number settings for the administrator's AWS
    # account, such as the default outbound calling name. You can update the
    # default outbound calling name once every seven days. Outbound calling
    # names can take up to 72 hours to update.
    #
    # @option params [required, String] :calling_name
    #   The default outbound calling name for the account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number_settings({
    #     calling_name: "CallingName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdatePhoneNumberSettings AWS API Documentation
    #
    # @overload update_phone_number_settings(params = {})
    # @param [Hash] params ({})
    def update_phone_number_settings(params = {}, options = {})
      req = build_request(:update_phone_number_settings, params)
      req.send_request(options)
    end

    # Updates room details, such as the room name, for a room in an Amazon
    # Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [String] :name
    #   The room name.
    #
    # @return [Types::UpdateRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRoomResponse#room #room} => Types::Room
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_room({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     name: "SensitiveString",
    #   })
    #
    # @example Response structure
    #
    #   resp.room.room_id #=> String
    #   resp.room.name #=> String
    #   resp.room.account_id #=> String
    #   resp.room.created_by #=> String
    #   resp.room.created_timestamp #=> Time
    #   resp.room.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateRoom AWS API Documentation
    #
    # @overload update_room(params = {})
    # @param [Hash] params ({})
    def update_room(params = {}, options = {})
      req = build_request(:update_room, params)
      req.send_request(options)
    end

    # Updates room membership details, such as the member role, for a room
    # in an Amazon Chime Enterprise account. The member role designates
    # whether the member is a chat room administrator or a general chat room
    # member. The member role can be updated only for user IDs.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [required, String] :member_id
    #   The member ID.
    #
    # @option params [String] :role
    #   The role of the member.
    #
    # @return [Types::UpdateRoomMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRoomMembershipResponse#room_membership #room_membership} => Types::RoomMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_room_membership({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     member_id: "NonEmptyString", # required
    #     role: "Administrator", # accepts Administrator, Member
    #   })
    #
    # @example Response structure
    #
    #   resp.room_membership.room_id #=> String
    #   resp.room_membership.member.member_id #=> String
    #   resp.room_membership.member.member_type #=> String, one of "User", "Bot", "Webhook"
    #   resp.room_membership.member.email #=> String
    #   resp.room_membership.member.full_name #=> String
    #   resp.room_membership.member.account_id #=> String
    #   resp.room_membership.role #=> String, one of "Administrator", "Member"
    #   resp.room_membership.invited_by #=> String
    #   resp.room_membership.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateRoomMembership AWS API Documentation
    #
    # @overload update_room_membership(params = {})
    # @param [Hash] params ({})
    def update_room_membership(params = {}, options = {})
      req = build_request(:update_room_membership, params)
      req.send_request(options)
    end

    # Updates user details for a specified user ID. Currently, only
    # `LicenseType` updates are supported for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @option params [String] :license_type
    #   The user license type to update. This must be a supported license type
    #   for the Amazon Chime account that the user belongs to.
    #
    # @option params [String] :user_type
    #   The user type.
    #
    # @option params [Types::AlexaForBusinessMetadata] :alexa_for_business_metadata
    #   The Alexa for Business metadata.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #     license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #     user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #     alexa_for_business_metadata: {
    #       is_alexa_for_business_enabled: false,
    #       alexa_for_business_room_arn: "SensitiveString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user.user_id #=> String
    #   resp.user.account_id #=> String
    #   resp.user.primary_email #=> String
    #   resp.user.primary_provisioned_number #=> String
    #   resp.user.display_name #=> String
    #   resp.user.license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.user.user_type #=> String, one of "PrivateUser", "SharedDevice"
    #   resp.user.user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.user.user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.user.registered_on #=> Time
    #   resp.user.invited_on #=> Time
    #   resp.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.user.personal_pin #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
      req.send_request(options)
    end

    # Updates the settings for the specified user, such as phone number
    # settings.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @option params [required, Types::UserSettings] :user_settings
    #   The user settings to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_settings({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #     user_settings: { # required
    #       telephony: { # required
    #         inbound_calling: false, # required
    #         outbound_calling: false, # required
    #         sms: false, # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserSettings AWS API Documentation
    #
    # @overload update_user_settings(params = {})
    # @param [Hash] params ({})
    def update_user_settings(params = {}, options = {})
      req = build_request(:update_user_settings, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Chime')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-chime'
      context[:gem_version] = '1.108.0'
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
