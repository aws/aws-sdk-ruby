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

module Aws::PartnerCentralAccount
  # An API client for PartnerCentralAccount.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PartnerCentralAccount::Client.new(
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

    @identifier = :partnercentralaccount

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
    add_plugin(Aws::PartnerCentralAccount::Plugins::Endpoints)

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
    #   @option options [Aws::PartnerCentralAccount::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PartnerCentralAccount::EndpointParameters`.
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

    # Accepts a connection invitation from another partner, establishing a
    # formal partnership connection between the two parties.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier where the connection invitation exists.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the connection invitation to accept.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AcceptConnectionInvitationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptConnectionInvitationResponse#connection #connection} => Types::Connection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_connection_invitation({
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionInvitationId", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.catalog #=> String
    #   resp.connection.id #=> String
    #   resp.connection.arn #=> String
    #   resp.connection.other_participant_account_id #=> String
    #   resp.connection.updated_at #=> Time
    #   resp.connection.connection_types #=> Hash
    #   resp.connection.connection_types["ConnectionType"].created_at #=> Time
    #   resp.connection.connection_types["ConnectionType"].inviter_email #=> String
    #   resp.connection.connection_types["ConnectionType"].inviter_name #=> String
    #   resp.connection.connection_types["ConnectionType"].status #=> String, one of "ACTIVE", "CANCELED"
    #   resp.connection.connection_types["ConnectionType"].canceled_at #=> Time
    #   resp.connection.connection_types["ConnectionType"].canceled_by #=> String
    #   resp.connection.connection_types["ConnectionType"].other_participant.partner_profile.id #=> String
    #   resp.connection.connection_types["ConnectionType"].other_participant.partner_profile.name #=> String
    #   resp.connection.connection_types["ConnectionType"].other_participant.seller_profile.id #=> String
    #   resp.connection.connection_types["ConnectionType"].other_participant.seller_profile.name #=> String
    #   resp.connection.connection_types["ConnectionType"].other_participant.account.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/AcceptConnectionInvitation AWS API Documentation
    #
    # @overload accept_connection_invitation(params = {})
    # @param [Hash] params ({})
    def accept_connection_invitation(params = {}, options = {})
      req = build_request(:accept_connection_invitation, params)
      req.send_request(options)
    end

    # Associates an email domain with AWS training and certification for the
    # partner account, enabling automatic verification of employee
    # certifications.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the partner account.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :email
    #   The email address used to verify domain ownership for AWS training and
    #   certification association.
    #
    # @option params [required, String] :email_verification_code
    #   The verification code sent to the email address to confirm domain
    #   ownership.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_aws_training_certification_email_domain({
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     client_token: "ClientToken",
    #     email: "Email", # required
    #     email_verification_code: "EmailVerificationCode", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/AssociateAwsTrainingCertificationEmailDomain AWS API Documentation
    #
    # @overload associate_aws_training_certification_email_domain(params = {})
    # @param [Hash] params ({})
    def associate_aws_training_certification_email_domain(params = {}, options = {})
      req = build_request(:associate_aws_training_certification_email_domain, params)
      req.send_request(options)
    end

    # Cancels an existing connection between partners, terminating the
    # partnership relationship.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier where the connection exists.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the connection to cancel.
    #
    # @option params [required, String] :connection_type
    #   The type of connection to cancel (e.g., reseller, distributor,
    #   technology partner).
    #
    # @option params [required, String] :reason
    #   The reason for canceling the connection, providing context for the
    #   termination.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CancelConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelConnectionResponse#catalog #catalog} => String
    #   * {Types::CancelConnectionResponse#id #id} => String
    #   * {Types::CancelConnectionResponse#arn #arn} => String
    #   * {Types::CancelConnectionResponse#other_participant_account_id #other_participant_account_id} => String
    #   * {Types::CancelConnectionResponse#updated_at #updated_at} => Time
    #   * {Types::CancelConnectionResponse#connection_types #connection_types} => Hash&lt;String,Types::ConnectionTypeDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_connection({
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionId", # required
    #     connection_type: "OPPORTUNITY_COLLABORATION", # required, accepts OPPORTUNITY_COLLABORATION, SUBSIDIARY
    #     reason: "CancelConnectionRequestReasonString", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.other_participant_account_id #=> String
    #   resp.updated_at #=> Time
    #   resp.connection_types #=> Hash
    #   resp.connection_types["ConnectionType"].created_at #=> Time
    #   resp.connection_types["ConnectionType"].inviter_email #=> String
    #   resp.connection_types["ConnectionType"].inviter_name #=> String
    #   resp.connection_types["ConnectionType"].status #=> String, one of "ACTIVE", "CANCELED"
    #   resp.connection_types["ConnectionType"].canceled_at #=> Time
    #   resp.connection_types["ConnectionType"].canceled_by #=> String
    #   resp.connection_types["ConnectionType"].other_participant.partner_profile.id #=> String
    #   resp.connection_types["ConnectionType"].other_participant.partner_profile.name #=> String
    #   resp.connection_types["ConnectionType"].other_participant.seller_profile.id #=> String
    #   resp.connection_types["ConnectionType"].other_participant.seller_profile.name #=> String
    #   resp.connection_types["ConnectionType"].other_participant.account.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CancelConnection AWS API Documentation
    #
    # @overload cancel_connection(params = {})
    # @param [Hash] params ({})
    def cancel_connection(params = {}, options = {})
      req = build_request(:cancel_connection, params)
      req.send_request(options)
    end

    # Cancels a pending connection invitation before it has been accepted or
    # rejected.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier where the connection invitation exists.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the connection invitation to cancel.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CancelConnectionInvitationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelConnectionInvitationResponse#catalog #catalog} => String
    #   * {Types::CancelConnectionInvitationResponse#id #id} => String
    #   * {Types::CancelConnectionInvitationResponse#arn #arn} => String
    #   * {Types::CancelConnectionInvitationResponse#connection_id #connection_id} => String
    #   * {Types::CancelConnectionInvitationResponse#connection_type #connection_type} => String
    #   * {Types::CancelConnectionInvitationResponse#created_at #created_at} => Time
    #   * {Types::CancelConnectionInvitationResponse#updated_at #updated_at} => Time
    #   * {Types::CancelConnectionInvitationResponse#expires_at #expires_at} => Time
    #   * {Types::CancelConnectionInvitationResponse#other_participant_identifier #other_participant_identifier} => String
    #   * {Types::CancelConnectionInvitationResponse#participant_type #participant_type} => String
    #   * {Types::CancelConnectionInvitationResponse#status #status} => String
    #   * {Types::CancelConnectionInvitationResponse#invitation_message #invitation_message} => String
    #   * {Types::CancelConnectionInvitationResponse#inviter_email #inviter_email} => String
    #   * {Types::CancelConnectionInvitationResponse#inviter_name #inviter_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_connection_invitation({
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionInvitationId", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.connection_id #=> String
    #   resp.connection_type #=> String, one of "OPPORTUNITY_COLLABORATION", "SUBSIDIARY"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.expires_at #=> Time
    #   resp.other_participant_identifier #=> String
    #   resp.participant_type #=> String, one of "SENDER", "RECEIVER"
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"
    #   resp.invitation_message #=> String
    #   resp.inviter_email #=> String
    #   resp.inviter_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CancelConnectionInvitation AWS API Documentation
    #
    # @overload cancel_connection_invitation(params = {})
    # @param [Hash] params ({})
    def cancel_connection_invitation(params = {}, options = {})
      req = build_request(:cancel_connection_invitation, params)
      req.send_request(options)
    end

    # Cancels an in-progress profile update task, stopping any pending
    # changes to the partner profile.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the partner account.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :task_id
    #   The unique identifier of the profile update task to cancel.
    #
    # @return [Types::CancelProfileUpdateTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelProfileUpdateTaskResponse#catalog #catalog} => String
    #   * {Types::CancelProfileUpdateTaskResponse#arn #arn} => String
    #   * {Types::CancelProfileUpdateTaskResponse#id #id} => String
    #   * {Types::CancelProfileUpdateTaskResponse#task_id #task_id} => String
    #   * {Types::CancelProfileUpdateTaskResponse#task_details #task_details} => Types::TaskDetails
    #   * {Types::CancelProfileUpdateTaskResponse#started_at #started_at} => Time
    #   * {Types::CancelProfileUpdateTaskResponse#status #status} => String
    #   * {Types::CancelProfileUpdateTaskResponse#ended_at #ended_at} => Time
    #   * {Types::CancelProfileUpdateTaskResponse#error_detail_list #error_detail_list} => Array&lt;Types::ErrorDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_profile_update_task({
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     client_token: "ClientToken",
    #     task_id: "ProfileTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.task_id #=> String
    #   resp.task_details.display_name #=> String
    #   resp.task_details.description #=> String
    #   resp.task_details.website_url #=> String
    #   resp.task_details.logo_url #=> String
    #   resp.task_details.primary_solution_type #=> String, one of "SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"
    #   resp.task_details.industry_segments #=> Array
    #   resp.task_details.industry_segments[0] #=> String, one of "AGRICULTURE_MINING", "BIOTECHNOLOGY", "BUSINESS_CONSUMER_SERVICES", "BUSINESS_SERV", "COMMUNICATIONS", "COMPUTER_HARDWARE", "COMPUTERS_ELECTRONICS", "COMPUTER_SOFTWARE", "CONSUMER_GOODS", "CONSUMER_RELATED", "EDUCATION", "ENERGY_UTILITIES", "FINANCIAL_SERVICES", "GAMING", "GOVERNMENT", "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", "HEALTHCARE", "HEALTHCARE_PHARMACEUTICALS_BIOTECH", "INDUSTRIAL_ENERGY", "INTERNET_SPECIFIC", "LIFE_SCIENCES", "MANUFACTURING", "MEDIA_ENTERTAINMENT_LEISURE", "MEDIA_ENTERTAINMENT", "MEDICAL_HEALTH", "NON_PROFIT_ORGANIZATION", "OTHER", "PROFESSIONAL_SERVICES", "REAL_ESTATE_CONSTRUCTION", "RETAIL", "RETAIL_WHOLESALE_DISTRIBUTION", "SEMICONDUCTOR_ELECTR", "SOFTWARE_INTERNET", "TELECOMMUNICATIONS", "TRANSPORTATION_LOGISTICS", "TRAVEL_HOSPITALITY", "WHOLESALE_DISTRIBUTION"
    #   resp.task_details.translation_source_locale #=> String
    #   resp.task_details.localized_contents #=> Array
    #   resp.task_details.localized_contents[0].display_name #=> String
    #   resp.task_details.localized_contents[0].description #=> String
    #   resp.task_details.localized_contents[0].website_url #=> String
    #   resp.task_details.localized_contents[0].logo_url #=> String
    #   resp.task_details.localized_contents[0].locale #=> String
    #   resp.started_at #=> Time
    #   resp.status #=> String, one of "IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED"
    #   resp.ended_at #=> Time
    #   resp.error_detail_list #=> Array
    #   resp.error_detail_list[0].locale #=> String
    #   resp.error_detail_list[0].message #=> String
    #   resp.error_detail_list[0].reason #=> String, one of "INVALID_CONTENT", "DUPLICATE_PROFILE", "INVALID_LOGO", "INVALID_LOGO_URL", "INVALID_LOGO_FILE", "INVALID_LOGO_SIZE", "INVALID_WEBSITE_URL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CancelProfileUpdateTask AWS API Documentation
    #
    # @overload cancel_profile_update_task(params = {})
    # @param [Hash] params ({})
    def cancel_profile_update_task(params = {}, options = {})
      req = build_request(:cancel_profile_update_task, params)
      req.send_request(options)
    end

    # Creates a new connection invitation to establish a partnership with
    # another organization.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier where the connection invitation will be
    #   created.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :connection_type
    #   The type of connection being requested (e.g., reseller, distributor,
    #   technology partner).
    #
    # @option params [required, String] :email
    #   The email address of the person to send the connection invitation to.
    #
    # @option params [required, String] :message
    #   A custom message to include with the connection invitation.
    #
    # @option params [required, String] :name
    #   The name of the person sending the connection invitation.
    #
    # @option params [required, String] :receiver_identifier
    #   The identifier of the organization or partner to invite for
    #   connection.
    #
    # @return [Types::CreateConnectionInvitationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectionInvitationResponse#catalog #catalog} => String
    #   * {Types::CreateConnectionInvitationResponse#id #id} => String
    #   * {Types::CreateConnectionInvitationResponse#arn #arn} => String
    #   * {Types::CreateConnectionInvitationResponse#connection_id #connection_id} => String
    #   * {Types::CreateConnectionInvitationResponse#connection_type #connection_type} => String
    #   * {Types::CreateConnectionInvitationResponse#created_at #created_at} => Time
    #   * {Types::CreateConnectionInvitationResponse#updated_at #updated_at} => Time
    #   * {Types::CreateConnectionInvitationResponse#expires_at #expires_at} => Time
    #   * {Types::CreateConnectionInvitationResponse#other_participant_identifier #other_participant_identifier} => String
    #   * {Types::CreateConnectionInvitationResponse#participant_type #participant_type} => String
    #   * {Types::CreateConnectionInvitationResponse#status #status} => String
    #   * {Types::CreateConnectionInvitationResponse#invitation_message #invitation_message} => String
    #   * {Types::CreateConnectionInvitationResponse#inviter_email #inviter_email} => String
    #   * {Types::CreateConnectionInvitationResponse#inviter_name #inviter_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection_invitation({
    #     catalog: "Catalog", # required
    #     client_token: "ClientToken", # required
    #     connection_type: "OPPORTUNITY_COLLABORATION", # required, accepts OPPORTUNITY_COLLABORATION, SUBSIDIARY
    #     email: "Email", # required
    #     message: "CreateConnectionInvitationRequestMessageString", # required
    #     name: "SensitiveUnicodeString", # required
    #     receiver_identifier: "ParticipantIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.connection_id #=> String
    #   resp.connection_type #=> String, one of "OPPORTUNITY_COLLABORATION", "SUBSIDIARY"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.expires_at #=> Time
    #   resp.other_participant_identifier #=> String
    #   resp.participant_type #=> String, one of "SENDER", "RECEIVER"
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"
    #   resp.invitation_message #=> String
    #   resp.inviter_email #=> String
    #   resp.inviter_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CreateConnectionInvitation AWS API Documentation
    #
    # @overload create_connection_invitation(params = {})
    # @param [Hash] params ({})
    def create_connection_invitation(params = {}, options = {})
      req = build_request(:create_connection_invitation, params)
      req.send_request(options)
    end

    # Creates a new partner account in the AWS Partner Network with the
    # specified details and configuration.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier where the partner account will be created.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :legal_name
    #   The legal name of the organization becoming a partner.
    #
    # @option params [required, String] :primary_solution_type
    #   The primary type of solution or service the partner provides (e.g.,
    #   consulting, software, managed services).
    #
    # @option params [required, Types::AllianceLeadContact] :alliance_lead_contact
    #   The primary contact person for alliance and partnership matters.
    #
    # @option params [required, String] :email_verification_code
    #   The verification code sent to the alliance lead contact's email to
    #   confirm account creation.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to associate with the partner account for organization
    #   and billing purposes.
    #
    # @return [Types::CreatePartnerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePartnerResponse#catalog #catalog} => String
    #   * {Types::CreatePartnerResponse#arn #arn} => String
    #   * {Types::CreatePartnerResponse#id #id} => String
    #   * {Types::CreatePartnerResponse#legal_name #legal_name} => String
    #   * {Types::CreatePartnerResponse#created_at #created_at} => Time
    #   * {Types::CreatePartnerResponse#profile #profile} => Types::PartnerProfile
    #   * {Types::CreatePartnerResponse#aws_training_certification_email_domains #aws_training_certification_email_domains} => Array&lt;Types::PartnerDomain&gt;
    #   * {Types::CreatePartnerResponse#alliance_lead_contact #alliance_lead_contact} => Types::AllianceLeadContact
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_partner({
    #     catalog: "Catalog", # required
    #     client_token: "ClientToken",
    #     legal_name: "SensitiveUnicodeString", # required
    #     primary_solution_type: "SOFTWARE_PRODUCTS", # required, accepts SOFTWARE_PRODUCTS, CONSULTING_SERVICES, PROFESSIONAL_SERVICES, MANAGED_SERVICES, HARDWARE_PRODUCTS, COMMUNICATION_SERVICES, VALUE_ADDED_RESALE_AWS_SERVICES, TRAINING_SERVICES
    #     alliance_lead_contact: { # required
    #       first_name: "SensitiveUnicodeString", # required
    #       last_name: "SensitiveUnicodeString", # required
    #       email: "Email", # required
    #       business_title: "SensitiveUnicodeString", # required
    #     },
    #     email_verification_code: "EmailVerificationCode", # required
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
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.legal_name #=> String
    #   resp.created_at #=> Time
    #   resp.profile.display_name #=> String
    #   resp.profile.description #=> String
    #   resp.profile.website_url #=> String
    #   resp.profile.logo_url #=> String
    #   resp.profile.primary_solution_type #=> String, one of "SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"
    #   resp.profile.industry_segments #=> Array
    #   resp.profile.industry_segments[0] #=> String, one of "AGRICULTURE_MINING", "BIOTECHNOLOGY", "BUSINESS_CONSUMER_SERVICES", "BUSINESS_SERV", "COMMUNICATIONS", "COMPUTER_HARDWARE", "COMPUTERS_ELECTRONICS", "COMPUTER_SOFTWARE", "CONSUMER_GOODS", "CONSUMER_RELATED", "EDUCATION", "ENERGY_UTILITIES", "FINANCIAL_SERVICES", "GAMING", "GOVERNMENT", "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", "HEALTHCARE", "HEALTHCARE_PHARMACEUTICALS_BIOTECH", "INDUSTRIAL_ENERGY", "INTERNET_SPECIFIC", "LIFE_SCIENCES", "MANUFACTURING", "MEDIA_ENTERTAINMENT_LEISURE", "MEDIA_ENTERTAINMENT", "MEDICAL_HEALTH", "NON_PROFIT_ORGANIZATION", "OTHER", "PROFESSIONAL_SERVICES", "REAL_ESTATE_CONSTRUCTION", "RETAIL", "RETAIL_WHOLESALE_DISTRIBUTION", "SEMICONDUCTOR_ELECTR", "SOFTWARE_INTERNET", "TELECOMMUNICATIONS", "TRANSPORTATION_LOGISTICS", "TRAVEL_HOSPITALITY", "WHOLESALE_DISTRIBUTION"
    #   resp.profile.translation_source_locale #=> String
    #   resp.profile.localized_contents #=> Array
    #   resp.profile.localized_contents[0].display_name #=> String
    #   resp.profile.localized_contents[0].description #=> String
    #   resp.profile.localized_contents[0].website_url #=> String
    #   resp.profile.localized_contents[0].logo_url #=> String
    #   resp.profile.localized_contents[0].locale #=> String
    #   resp.profile.profile_id #=> String
    #   resp.aws_training_certification_email_domains #=> Array
    #   resp.aws_training_certification_email_domains[0].domain_name #=> String
    #   resp.aws_training_certification_email_domains[0].registered_at #=> Time
    #   resp.alliance_lead_contact.first_name #=> String
    #   resp.alliance_lead_contact.last_name #=> String
    #   resp.alliance_lead_contact.email #=> String
    #   resp.alliance_lead_contact.business_title #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/CreatePartner AWS API Documentation
    #
    # @overload create_partner(params = {})
    # @param [Hash] params ({})
    def create_partner(params = {}, options = {})
      req = build_request(:create_partner, params)
      req.send_request(options)
    end

    # Removes the association between an email domain and AWS training and
    # certification for the partner account.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the partner account.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :domain_name
    #   The domain name to disassociate from AWS training and certification.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_aws_training_certification_email_domain({
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     client_token: "ClientToken",
    #     domain_name: "DomainName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/DisassociateAwsTrainingCertificationEmailDomain AWS API Documentation
    #
    # @overload disassociate_aws_training_certification_email_domain(params = {})
    # @param [Hash] params ({})
    def disassociate_aws_training_certification_email_domain(params = {}, options = {})
      req = build_request(:disassociate_aws_training_certification_email_domain, params)
      req.send_request(options)
    end

    # Retrieves the alliance lead contact information for a partner account.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the partner account.
    #
    # @return [Types::GetAllianceLeadContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAllianceLeadContactResponse#catalog #catalog} => String
    #   * {Types::GetAllianceLeadContactResponse#arn #arn} => String
    #   * {Types::GetAllianceLeadContactResponse#id #id} => String
    #   * {Types::GetAllianceLeadContactResponse#alliance_lead_contact #alliance_lead_contact} => Types::AllianceLeadContact
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_alliance_lead_contact({
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.alliance_lead_contact.first_name #=> String
    #   resp.alliance_lead_contact.last_name #=> String
    #   resp.alliance_lead_contact.email #=> String
    #   resp.alliance_lead_contact.business_title #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetAllianceLeadContact AWS API Documentation
    #
    # @overload get_alliance_lead_contact(params = {})
    # @param [Hash] params ({})
    def get_alliance_lead_contact(params = {}, options = {})
      req = build_request(:get_alliance_lead_contact, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific connection between
    # partners.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier where the connection exists.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the connection to retrieve.
    #
    # @return [Types::GetConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionResponse#catalog #catalog} => String
    #   * {Types::GetConnectionResponse#id #id} => String
    #   * {Types::GetConnectionResponse#arn #arn} => String
    #   * {Types::GetConnectionResponse#other_participant_account_id #other_participant_account_id} => String
    #   * {Types::GetConnectionResponse#updated_at #updated_at} => Time
    #   * {Types::GetConnectionResponse#connection_types #connection_types} => Hash&lt;String,Types::ConnectionTypeDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection({
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.other_participant_account_id #=> String
    #   resp.updated_at #=> Time
    #   resp.connection_types #=> Hash
    #   resp.connection_types["ConnectionType"].created_at #=> Time
    #   resp.connection_types["ConnectionType"].inviter_email #=> String
    #   resp.connection_types["ConnectionType"].inviter_name #=> String
    #   resp.connection_types["ConnectionType"].status #=> String, one of "ACTIVE", "CANCELED"
    #   resp.connection_types["ConnectionType"].canceled_at #=> Time
    #   resp.connection_types["ConnectionType"].canceled_by #=> String
    #   resp.connection_types["ConnectionType"].other_participant.partner_profile.id #=> String
    #   resp.connection_types["ConnectionType"].other_participant.partner_profile.name #=> String
    #   resp.connection_types["ConnectionType"].other_participant.seller_profile.id #=> String
    #   resp.connection_types["ConnectionType"].other_participant.seller_profile.name #=> String
    #   resp.connection_types["ConnectionType"].other_participant.account.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetConnection AWS API Documentation
    #
    # @overload get_connection(params = {})
    # @param [Hash] params ({})
    def get_connection(params = {}, options = {})
      req = build_request(:get_connection, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific connection invitation.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier where the connection invitation exists.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the connection invitation to retrieve.
    #
    # @return [Types::GetConnectionInvitationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionInvitationResponse#catalog #catalog} => String
    #   * {Types::GetConnectionInvitationResponse#id #id} => String
    #   * {Types::GetConnectionInvitationResponse#arn #arn} => String
    #   * {Types::GetConnectionInvitationResponse#connection_id #connection_id} => String
    #   * {Types::GetConnectionInvitationResponse#connection_type #connection_type} => String
    #   * {Types::GetConnectionInvitationResponse#created_at #created_at} => Time
    #   * {Types::GetConnectionInvitationResponse#updated_at #updated_at} => Time
    #   * {Types::GetConnectionInvitationResponse#expires_at #expires_at} => Time
    #   * {Types::GetConnectionInvitationResponse#other_participant_identifier #other_participant_identifier} => String
    #   * {Types::GetConnectionInvitationResponse#participant_type #participant_type} => String
    #   * {Types::GetConnectionInvitationResponse#status #status} => String
    #   * {Types::GetConnectionInvitationResponse#invitation_message #invitation_message} => String
    #   * {Types::GetConnectionInvitationResponse#inviter_email #inviter_email} => String
    #   * {Types::GetConnectionInvitationResponse#inviter_name #inviter_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection_invitation({
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionInvitationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.connection_id #=> String
    #   resp.connection_type #=> String, one of "OPPORTUNITY_COLLABORATION", "SUBSIDIARY"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.expires_at #=> Time
    #   resp.other_participant_identifier #=> String
    #   resp.participant_type #=> String, one of "SENDER", "RECEIVER"
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"
    #   resp.invitation_message #=> String
    #   resp.inviter_email #=> String
    #   resp.inviter_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetConnectionInvitation AWS API Documentation
    #
    # @overload get_connection_invitation(params = {})
    # @param [Hash] params ({})
    def get_connection_invitation(params = {}, options = {})
      req = build_request(:get_connection_invitation, params)
      req.send_request(options)
    end

    # Retrieves the connection preferences for a partner account, including
    # access settings and exclusions.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @return [Types::GetConnectionPreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionPreferencesResponse#catalog #catalog} => String
    #   * {Types::GetConnectionPreferencesResponse#arn #arn} => String
    #   * {Types::GetConnectionPreferencesResponse#access_type #access_type} => String
    #   * {Types::GetConnectionPreferencesResponse#excluded_participant_ids #excluded_participant_ids} => Array&lt;String&gt;
    #   * {Types::GetConnectionPreferencesResponse#updated_at #updated_at} => Time
    #   * {Types::GetConnectionPreferencesResponse#revision #revision} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection_preferences({
    #     catalog: "Catalog", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.access_type #=> String, one of "ALLOW_ALL", "DENY_ALL", "ALLOW_BY_DEFAULT_DENY_SOME"
    #   resp.excluded_participant_ids #=> Array
    #   resp.excluded_participant_ids[0] #=> String
    #   resp.updated_at #=> Time
    #   resp.revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetConnectionPreferences AWS API Documentation
    #
    # @overload get_connection_preferences(params = {})
    # @param [Hash] params ({})
    def get_connection_preferences(params = {}, options = {})
      req = build_request(:get_connection_preferences, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific partner account.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the partner account to retrieve.
    #
    # @return [Types::GetPartnerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPartnerResponse#catalog #catalog} => String
    #   * {Types::GetPartnerResponse#arn #arn} => String
    #   * {Types::GetPartnerResponse#id #id} => String
    #   * {Types::GetPartnerResponse#legal_name #legal_name} => String
    #   * {Types::GetPartnerResponse#created_at #created_at} => Time
    #   * {Types::GetPartnerResponse#profile #profile} => Types::PartnerProfile
    #   * {Types::GetPartnerResponse#aws_training_certification_email_domains #aws_training_certification_email_domains} => Array&lt;Types::PartnerDomain&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_partner({
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.legal_name #=> String
    #   resp.created_at #=> Time
    #   resp.profile.display_name #=> String
    #   resp.profile.description #=> String
    #   resp.profile.website_url #=> String
    #   resp.profile.logo_url #=> String
    #   resp.profile.primary_solution_type #=> String, one of "SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"
    #   resp.profile.industry_segments #=> Array
    #   resp.profile.industry_segments[0] #=> String, one of "AGRICULTURE_MINING", "BIOTECHNOLOGY", "BUSINESS_CONSUMER_SERVICES", "BUSINESS_SERV", "COMMUNICATIONS", "COMPUTER_HARDWARE", "COMPUTERS_ELECTRONICS", "COMPUTER_SOFTWARE", "CONSUMER_GOODS", "CONSUMER_RELATED", "EDUCATION", "ENERGY_UTILITIES", "FINANCIAL_SERVICES", "GAMING", "GOVERNMENT", "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", "HEALTHCARE", "HEALTHCARE_PHARMACEUTICALS_BIOTECH", "INDUSTRIAL_ENERGY", "INTERNET_SPECIFIC", "LIFE_SCIENCES", "MANUFACTURING", "MEDIA_ENTERTAINMENT_LEISURE", "MEDIA_ENTERTAINMENT", "MEDICAL_HEALTH", "NON_PROFIT_ORGANIZATION", "OTHER", "PROFESSIONAL_SERVICES", "REAL_ESTATE_CONSTRUCTION", "RETAIL", "RETAIL_WHOLESALE_DISTRIBUTION", "SEMICONDUCTOR_ELECTR", "SOFTWARE_INTERNET", "TELECOMMUNICATIONS", "TRANSPORTATION_LOGISTICS", "TRAVEL_HOSPITALITY", "WHOLESALE_DISTRIBUTION"
    #   resp.profile.translation_source_locale #=> String
    #   resp.profile.localized_contents #=> Array
    #   resp.profile.localized_contents[0].display_name #=> String
    #   resp.profile.localized_contents[0].description #=> String
    #   resp.profile.localized_contents[0].website_url #=> String
    #   resp.profile.localized_contents[0].logo_url #=> String
    #   resp.profile.localized_contents[0].locale #=> String
    #   resp.profile.profile_id #=> String
    #   resp.aws_training_certification_email_domains #=> Array
    #   resp.aws_training_certification_email_domains[0].domain_name #=> String
    #   resp.aws_training_certification_email_domains[0].registered_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetPartner AWS API Documentation
    #
    # @overload get_partner(params = {})
    # @param [Hash] params ({})
    def get_partner(params = {}, options = {})
      req = build_request(:get_partner, params)
      req.send_request(options)
    end

    # Retrieves information about a specific profile update task.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the partner account.
    #
    # @return [Types::GetProfileUpdateTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileUpdateTaskResponse#catalog #catalog} => String
    #   * {Types::GetProfileUpdateTaskResponse#arn #arn} => String
    #   * {Types::GetProfileUpdateTaskResponse#id #id} => String
    #   * {Types::GetProfileUpdateTaskResponse#task_id #task_id} => String
    #   * {Types::GetProfileUpdateTaskResponse#task_details #task_details} => Types::TaskDetails
    #   * {Types::GetProfileUpdateTaskResponse#started_at #started_at} => Time
    #   * {Types::GetProfileUpdateTaskResponse#status #status} => String
    #   * {Types::GetProfileUpdateTaskResponse#ended_at #ended_at} => Time
    #   * {Types::GetProfileUpdateTaskResponse#error_detail_list #error_detail_list} => Array&lt;Types::ErrorDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile_update_task({
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.task_id #=> String
    #   resp.task_details.display_name #=> String
    #   resp.task_details.description #=> String
    #   resp.task_details.website_url #=> String
    #   resp.task_details.logo_url #=> String
    #   resp.task_details.primary_solution_type #=> String, one of "SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"
    #   resp.task_details.industry_segments #=> Array
    #   resp.task_details.industry_segments[0] #=> String, one of "AGRICULTURE_MINING", "BIOTECHNOLOGY", "BUSINESS_CONSUMER_SERVICES", "BUSINESS_SERV", "COMMUNICATIONS", "COMPUTER_HARDWARE", "COMPUTERS_ELECTRONICS", "COMPUTER_SOFTWARE", "CONSUMER_GOODS", "CONSUMER_RELATED", "EDUCATION", "ENERGY_UTILITIES", "FINANCIAL_SERVICES", "GAMING", "GOVERNMENT", "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", "HEALTHCARE", "HEALTHCARE_PHARMACEUTICALS_BIOTECH", "INDUSTRIAL_ENERGY", "INTERNET_SPECIFIC", "LIFE_SCIENCES", "MANUFACTURING", "MEDIA_ENTERTAINMENT_LEISURE", "MEDIA_ENTERTAINMENT", "MEDICAL_HEALTH", "NON_PROFIT_ORGANIZATION", "OTHER", "PROFESSIONAL_SERVICES", "REAL_ESTATE_CONSTRUCTION", "RETAIL", "RETAIL_WHOLESALE_DISTRIBUTION", "SEMICONDUCTOR_ELECTR", "SOFTWARE_INTERNET", "TELECOMMUNICATIONS", "TRANSPORTATION_LOGISTICS", "TRAVEL_HOSPITALITY", "WHOLESALE_DISTRIBUTION"
    #   resp.task_details.translation_source_locale #=> String
    #   resp.task_details.localized_contents #=> Array
    #   resp.task_details.localized_contents[0].display_name #=> String
    #   resp.task_details.localized_contents[0].description #=> String
    #   resp.task_details.localized_contents[0].website_url #=> String
    #   resp.task_details.localized_contents[0].logo_url #=> String
    #   resp.task_details.localized_contents[0].locale #=> String
    #   resp.started_at #=> Time
    #   resp.status #=> String, one of "IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED"
    #   resp.ended_at #=> Time
    #   resp.error_detail_list #=> Array
    #   resp.error_detail_list[0].locale #=> String
    #   resp.error_detail_list[0].message #=> String
    #   resp.error_detail_list[0].reason #=> String, one of "INVALID_CONTENT", "DUPLICATE_PROFILE", "INVALID_LOGO", "INVALID_LOGO_URL", "INVALID_LOGO_FILE", "INVALID_LOGO_SIZE", "INVALID_WEBSITE_URL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetProfileUpdateTask AWS API Documentation
    #
    # @overload get_profile_update_task(params = {})
    # @param [Hash] params ({})
    def get_profile_update_task(params = {}, options = {})
      req = build_request(:get_profile_update_task, params)
      req.send_request(options)
    end

    # Retrieves the visibility settings for a partner profile, determining
    # who can see the profile information.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the partner account.
    #
    # @return [Types::GetProfileVisibilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileVisibilityResponse#catalog #catalog} => String
    #   * {Types::GetProfileVisibilityResponse#arn #arn} => String
    #   * {Types::GetProfileVisibilityResponse#id #id} => String
    #   * {Types::GetProfileVisibilityResponse#visibility #visibility} => String
    #   * {Types::GetProfileVisibilityResponse#profile_id #profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile_visibility({
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.visibility #=> String, one of "PRIVATE", "PUBLIC"
    #   resp.profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetProfileVisibility AWS API Documentation
    #
    # @overload get_profile_visibility(params = {})
    # @param [Hash] params ({})
    def get_profile_visibility(params = {}, options = {})
      req = build_request(:get_profile_visibility, params)
      req.send_request(options)
    end

    # Retrieves the current status and details of a verification process for
    # a partner account. This operation allows partners to check the
    # progress and results of business or registrant verification processes.
    #
    # @option params [required, String] :verification_type
    #   The type of verification to retrieve information for. Valid values
    #   include business verification for company registration details and
    #   registrant verification for individual identity confirmation.
    #
    # @return [Types::GetVerificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVerificationResponse#verification_type #verification_type} => String
    #   * {Types::GetVerificationResponse#verification_status #verification_status} => String
    #   * {Types::GetVerificationResponse#verification_status_reason #verification_status_reason} => String
    #   * {Types::GetVerificationResponse#verification_response_details #verification_response_details} => Types::VerificationResponseDetails
    #   * {Types::GetVerificationResponse#started_at #started_at} => Time
    #   * {Types::GetVerificationResponse#completed_at #completed_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_verification({
    #     verification_type: "BUSINESS_VERIFICATION", # required, accepts BUSINESS_VERIFICATION, REGISTRANT_VERIFICATION
    #   })
    #
    # @example Response structure
    #
    #   resp.verification_type #=> String, one of "BUSINESS_VERIFICATION", "REGISTRANT_VERIFICATION"
    #   resp.verification_status #=> String, one of "PENDING_CUSTOMER_ACTION", "IN_PROGRESS", "FAILED", "SUCCEEDED", "REJECTED"
    #   resp.verification_status_reason #=> String
    #   resp.verification_response_details.business_verification_response.business_verification_details.legal_name #=> String
    #   resp.verification_response_details.business_verification_response.business_verification_details.registration_id #=> String
    #   resp.verification_response_details.business_verification_response.business_verification_details.country_code #=> String
    #   resp.verification_response_details.business_verification_response.business_verification_details.jurisdiction_of_incorporation #=> String
    #   resp.verification_response_details.registrant_verification_response.completion_url #=> String
    #   resp.verification_response_details.registrant_verification_response.completion_url_expires_at #=> Time
    #   resp.started_at #=> Time
    #   resp.completed_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/GetVerification AWS API Documentation
    #
    # @overload get_verification(params = {})
    # @param [Hash] params ({})
    def get_verification(params = {}, options = {})
      req = build_request(:get_verification, params)
      req.send_request(options)
    end

    # Lists connection invitations for the partner account, with optional
    # filtering by status, type, and other criteria.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results in paginated
    #   responses.
    #
    # @option params [String] :connection_type
    #   Filter results by connection type (e.g., reseller, distributor,
    #   technology partner).
    #
    # @option params [Integer] :max_results
    #   The maximum number of connection invitations to return in a single
    #   response.
    #
    # @option params [Array<String>] :other_participant_identifiers
    #   Filter results by specific participant identifiers.
    #
    # @option params [String] :participant_type
    #   Filter results by participant type (inviter or invitee).
    #
    # @option params [String] :status
    #   Filter results by invitation status (pending, accepted, rejected,
    #   canceled, expired).
    #
    # @return [Types::ListConnectionInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectionInvitationsResponse#connection_invitation_summaries #connection_invitation_summaries} => Array&lt;Types::ConnectionInvitationSummary&gt;
    #   * {Types::ListConnectionInvitationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connection_invitations({
    #     catalog: "Catalog", # required
    #     next_token: "NextToken",
    #     connection_type: "OPPORTUNITY_COLLABORATION", # accepts OPPORTUNITY_COLLABORATION, SUBSIDIARY
    #     max_results: 1,
    #     other_participant_identifiers: ["ParticipantIdentifier"],
    #     participant_type: "SENDER", # accepts SENDER, RECEIVER
    #     status: "PENDING", # accepts PENDING, ACCEPTED, REJECTED, CANCELED, EXPIRED
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_invitation_summaries #=> Array
    #   resp.connection_invitation_summaries[0].catalog #=> String
    #   resp.connection_invitation_summaries[0].id #=> String
    #   resp.connection_invitation_summaries[0].arn #=> String
    #   resp.connection_invitation_summaries[0].connection_id #=> String
    #   resp.connection_invitation_summaries[0].connection_type #=> String, one of "OPPORTUNITY_COLLABORATION", "SUBSIDIARY"
    #   resp.connection_invitation_summaries[0].created_at #=> Time
    #   resp.connection_invitation_summaries[0].updated_at #=> Time
    #   resp.connection_invitation_summaries[0].expires_at #=> Time
    #   resp.connection_invitation_summaries[0].other_participant_identifier #=> String
    #   resp.connection_invitation_summaries[0].participant_type #=> String, one of "SENDER", "RECEIVER"
    #   resp.connection_invitation_summaries[0].status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListConnectionInvitations AWS API Documentation
    #
    # @overload list_connection_invitations(params = {})
    # @param [Hash] params ({})
    def list_connection_invitations(params = {}, options = {})
      req = build_request(:list_connection_invitations, params)
      req.send_request(options)
    end

    # Lists active connections for the partner account, with optional
    # filtering by connection type and participant.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results in paginated
    #   responses.
    #
    # @option params [String] :connection_type
    #   Filter results by connection type (e.g., reseller, distributor,
    #   technology partner).
    #
    # @option params [Integer] :max_results
    #   The maximum number of connections to return in a single response.
    #
    # @option params [Array<String>] :other_participant_identifiers
    #   Filter results by specific participant identifiers.
    #
    # @return [Types::ListConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectionsResponse#connection_summaries #connection_summaries} => Array&lt;Types::ConnectionSummary&gt;
    #   * {Types::ListConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connections({
    #     catalog: "Catalog", # required
    #     next_token: "NextToken",
    #     connection_type: "ConnectionTypeFilter",
    #     max_results: 1,
    #     other_participant_identifiers: ["ParticipantIdentifier"],
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_summaries #=> Array
    #   resp.connection_summaries[0].catalog #=> String
    #   resp.connection_summaries[0].id #=> String
    #   resp.connection_summaries[0].arn #=> String
    #   resp.connection_summaries[0].other_participant_account_id #=> String
    #   resp.connection_summaries[0].updated_at #=> Time
    #   resp.connection_summaries[0].connection_types #=> Hash
    #   resp.connection_summaries[0].connection_types["ConnectionType"].status #=> String, one of "ACTIVE", "CANCELED"
    #   resp.connection_summaries[0].connection_types["ConnectionType"].other_participant.partner_profile.id #=> String
    #   resp.connection_summaries[0].connection_types["ConnectionType"].other_participant.partner_profile.name #=> String
    #   resp.connection_summaries[0].connection_types["ConnectionType"].other_participant.seller_profile.id #=> String
    #   resp.connection_summaries[0].connection_types["ConnectionType"].other_participant.seller_profile.name #=> String
    #   resp.connection_summaries[0].connection_types["ConnectionType"].other_participant.account.name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListConnections AWS API Documentation
    #
    # @overload list_connections(params = {})
    # @param [Hash] params ({})
    def list_connections(params = {}, options = {})
      req = build_request(:list_connections, params)
      req.send_request(options)
    end

    # Lists partner accounts in the catalog, providing a summary view of all
    # partners.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier to list partners from.
    #
    # @option params [String] :next_token
    #   The token for retrieving the next page of results in paginated
    #   responses.
    #
    # @return [Types::ListPartnersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPartnersResponse#partner_summary_list #partner_summary_list} => Array&lt;Types::PartnerSummary&gt;
    #   * {Types::ListPartnersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_partners({
    #     catalog: "Catalog", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.partner_summary_list #=> Array
    #   resp.partner_summary_list[0].catalog #=> String
    #   resp.partner_summary_list[0].arn #=> String
    #   resp.partner_summary_list[0].id #=> String
    #   resp.partner_summary_list[0].legal_name #=> String
    #   resp.partner_summary_list[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListPartners AWS API Documentation
    #
    # @overload list_partners(params = {})
    # @param [Hash] params ({})
    def list_partners(params = {}, options = {})
      req = build_request(:list_partners, params)
      req.send_request(options)
    end

    # Lists all tags associated with a specific AWS Partner Central Account
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_arn #resource_arn} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates the alliance lead contact information for a partner
    # account.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the partner account.
    #
    # @option params [required, Types::AllianceLeadContact] :alliance_lead_contact
    #   The alliance lead contact information to set for the partner account.
    #
    # @option params [String] :email_verification_code
    #   The verification code sent to the alliance lead contact's email to
    #   confirm the update.
    #
    # @return [Types::PutAllianceLeadContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAllianceLeadContactResponse#catalog #catalog} => String
    #   * {Types::PutAllianceLeadContactResponse#arn #arn} => String
    #   * {Types::PutAllianceLeadContactResponse#id #id} => String
    #   * {Types::PutAllianceLeadContactResponse#alliance_lead_contact #alliance_lead_contact} => Types::AllianceLeadContact
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_alliance_lead_contact({
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     alliance_lead_contact: { # required
    #       first_name: "SensitiveUnicodeString", # required
    #       last_name: "SensitiveUnicodeString", # required
    #       email: "Email", # required
    #       business_title: "SensitiveUnicodeString", # required
    #     },
    #     email_verification_code: "EmailVerificationCode",
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.alliance_lead_contact.first_name #=> String
    #   resp.alliance_lead_contact.last_name #=> String
    #   resp.alliance_lead_contact.email #=> String
    #   resp.alliance_lead_contact.business_title #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/PutAllianceLeadContact AWS API Documentation
    #
    # @overload put_alliance_lead_contact(params = {})
    # @param [Hash] params ({})
    def put_alliance_lead_contact(params = {}, options = {})
      req = build_request(:put_alliance_lead_contact, params)
      req.send_request(options)
    end

    # Sets the visibility level for a partner profile, controlling who can
    # view the profile information.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the partner account.
    #
    # @option params [required, String] :visibility
    #   The visibility setting to apply to the partner profile.
    #
    # @return [Types::PutProfileVisibilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutProfileVisibilityResponse#catalog #catalog} => String
    #   * {Types::PutProfileVisibilityResponse#arn #arn} => String
    #   * {Types::PutProfileVisibilityResponse#id #id} => String
    #   * {Types::PutProfileVisibilityResponse#visibility #visibility} => String
    #   * {Types::PutProfileVisibilityResponse#profile_id #profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_profile_visibility({
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     visibility: "PRIVATE", # required, accepts PRIVATE, PUBLIC
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.visibility #=> String, one of "PRIVATE", "PUBLIC"
    #   resp.profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/PutProfileVisibility AWS API Documentation
    #
    # @overload put_profile_visibility(params = {})
    # @param [Hash] params ({})
    def put_profile_visibility(params = {}, options = {})
      req = build_request(:put_profile_visibility, params)
      req.send_request(options)
    end

    # Rejects a connection invitation from another partner, declining the
    # partnership request.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier where the connection invitation exists.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the connection invitation to reject.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :reason
    #   The reason for rejecting the connection invitation.
    #
    # @return [Types::RejectConnectionInvitationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectConnectionInvitationResponse#catalog #catalog} => String
    #   * {Types::RejectConnectionInvitationResponse#id #id} => String
    #   * {Types::RejectConnectionInvitationResponse#arn #arn} => String
    #   * {Types::RejectConnectionInvitationResponse#connection_id #connection_id} => String
    #   * {Types::RejectConnectionInvitationResponse#connection_type #connection_type} => String
    #   * {Types::RejectConnectionInvitationResponse#created_at #created_at} => Time
    #   * {Types::RejectConnectionInvitationResponse#updated_at #updated_at} => Time
    #   * {Types::RejectConnectionInvitationResponse#expires_at #expires_at} => Time
    #   * {Types::RejectConnectionInvitationResponse#other_participant_identifier #other_participant_identifier} => String
    #   * {Types::RejectConnectionInvitationResponse#participant_type #participant_type} => String
    #   * {Types::RejectConnectionInvitationResponse#status #status} => String
    #   * {Types::RejectConnectionInvitationResponse#invitation_message #invitation_message} => String
    #   * {Types::RejectConnectionInvitationResponse#inviter_email #inviter_email} => String
    #   * {Types::RejectConnectionInvitationResponse#inviter_name #inviter_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_connection_invitation({
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionInvitationId", # required
    #     client_token: "ClientToken", # required
    #     reason: "RejectConnectionInvitationRequestReasonString",
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.connection_id #=> String
    #   resp.connection_type #=> String, one of "OPPORTUNITY_COLLABORATION", "SUBSIDIARY"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.expires_at #=> Time
    #   resp.other_participant_identifier #=> String
    #   resp.participant_type #=> String, one of "SENDER", "RECEIVER"
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"
    #   resp.invitation_message #=> String
    #   resp.inviter_email #=> String
    #   resp.inviter_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/RejectConnectionInvitation AWS API Documentation
    #
    # @overload reject_connection_invitation(params = {})
    # @param [Hash] params ({})
    def reject_connection_invitation(params = {}, options = {})
      req = build_request(:reject_connection_invitation, params)
      req.send_request(options)
    end

    # Sends an email verification code to the specified email address for
    # account verification purposes.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, String] :email
    #   The email address to send the verification code to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_email_verification_code({
    #     catalog: "Catalog", # required
    #     email: "Email", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/SendEmailVerificationCode AWS API Documentation
    #
    # @overload send_email_verification_code(params = {})
    # @param [Hash] params ({})
    def send_email_verification_code(params = {}, options = {})
      req = build_request(:send_email_verification_code, params)
      req.send_request(options)
    end

    # Initiates a profile update task to modify partner profile information
    # asynchronously.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the partner account.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::TaskDetails] :task_details
    #   The details of the profile updates to be performed.
    #
    # @return [Types::StartProfileUpdateTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartProfileUpdateTaskResponse#catalog #catalog} => String
    #   * {Types::StartProfileUpdateTaskResponse#arn #arn} => String
    #   * {Types::StartProfileUpdateTaskResponse#id #id} => String
    #   * {Types::StartProfileUpdateTaskResponse#task_id #task_id} => String
    #   * {Types::StartProfileUpdateTaskResponse#task_details #task_details} => Types::TaskDetails
    #   * {Types::StartProfileUpdateTaskResponse#started_at #started_at} => Time
    #   * {Types::StartProfileUpdateTaskResponse#status #status} => String
    #   * {Types::StartProfileUpdateTaskResponse#ended_at #ended_at} => Time
    #   * {Types::StartProfileUpdateTaskResponse#error_detail_list #error_detail_list} => Array&lt;Types::ErrorDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_profile_update_task({
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     client_token: "ClientToken",
    #     task_details: { # required
    #       display_name: "UnicodeString", # required
    #       description: "TaskDetailsDescriptionString", # required
    #       website_url: "Url", # required
    #       logo_url: "Url", # required
    #       primary_solution_type: "SOFTWARE_PRODUCTS", # required, accepts SOFTWARE_PRODUCTS, CONSULTING_SERVICES, PROFESSIONAL_SERVICES, MANAGED_SERVICES, HARDWARE_PRODUCTS, COMMUNICATION_SERVICES, VALUE_ADDED_RESALE_AWS_SERVICES, TRAINING_SERVICES
    #       industry_segments: ["AGRICULTURE_MINING"], # required, accepts AGRICULTURE_MINING, BIOTECHNOLOGY, BUSINESS_CONSUMER_SERVICES, BUSINESS_SERV, COMMUNICATIONS, COMPUTER_HARDWARE, COMPUTERS_ELECTRONICS, COMPUTER_SOFTWARE, CONSUMER_GOODS, CONSUMER_RELATED, EDUCATION, ENERGY_UTILITIES, FINANCIAL_SERVICES, GAMING, GOVERNMENT, GOVERNMENT_EDUCATION_PUBLIC_SERVICES, HEALTHCARE, HEALTHCARE_PHARMACEUTICALS_BIOTECH, INDUSTRIAL_ENERGY, INTERNET_SPECIFIC, LIFE_SCIENCES, MANUFACTURING, MEDIA_ENTERTAINMENT_LEISURE, MEDIA_ENTERTAINMENT, MEDICAL_HEALTH, NON_PROFIT_ORGANIZATION, OTHER, PROFESSIONAL_SERVICES, REAL_ESTATE_CONSTRUCTION, RETAIL, RETAIL_WHOLESALE_DISTRIBUTION, SEMICONDUCTOR_ELECTR, SOFTWARE_INTERNET, TELECOMMUNICATIONS, TRANSPORTATION_LOGISTICS, TRAVEL_HOSPITALITY, WHOLESALE_DISTRIBUTION
    #       translation_source_locale: "Locale", # required
    #       localized_contents: [
    #         {
    #           display_name: "UnicodeString", # required
    #           description: "LocalizedContentDescriptionString", # required
    #           website_url: "Url", # required
    #           logo_url: "Url", # required
    #           locale: "Locale", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.task_id #=> String
    #   resp.task_details.display_name #=> String
    #   resp.task_details.description #=> String
    #   resp.task_details.website_url #=> String
    #   resp.task_details.logo_url #=> String
    #   resp.task_details.primary_solution_type #=> String, one of "SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"
    #   resp.task_details.industry_segments #=> Array
    #   resp.task_details.industry_segments[0] #=> String, one of "AGRICULTURE_MINING", "BIOTECHNOLOGY", "BUSINESS_CONSUMER_SERVICES", "BUSINESS_SERV", "COMMUNICATIONS", "COMPUTER_HARDWARE", "COMPUTERS_ELECTRONICS", "COMPUTER_SOFTWARE", "CONSUMER_GOODS", "CONSUMER_RELATED", "EDUCATION", "ENERGY_UTILITIES", "FINANCIAL_SERVICES", "GAMING", "GOVERNMENT", "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", "HEALTHCARE", "HEALTHCARE_PHARMACEUTICALS_BIOTECH", "INDUSTRIAL_ENERGY", "INTERNET_SPECIFIC", "LIFE_SCIENCES", "MANUFACTURING", "MEDIA_ENTERTAINMENT_LEISURE", "MEDIA_ENTERTAINMENT", "MEDICAL_HEALTH", "NON_PROFIT_ORGANIZATION", "OTHER", "PROFESSIONAL_SERVICES", "REAL_ESTATE_CONSTRUCTION", "RETAIL", "RETAIL_WHOLESALE_DISTRIBUTION", "SEMICONDUCTOR_ELECTR", "SOFTWARE_INTERNET", "TELECOMMUNICATIONS", "TRANSPORTATION_LOGISTICS", "TRAVEL_HOSPITALITY", "WHOLESALE_DISTRIBUTION"
    #   resp.task_details.translation_source_locale #=> String
    #   resp.task_details.localized_contents #=> Array
    #   resp.task_details.localized_contents[0].display_name #=> String
    #   resp.task_details.localized_contents[0].description #=> String
    #   resp.task_details.localized_contents[0].website_url #=> String
    #   resp.task_details.localized_contents[0].logo_url #=> String
    #   resp.task_details.localized_contents[0].locale #=> String
    #   resp.started_at #=> Time
    #   resp.status #=> String, one of "IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED"
    #   resp.ended_at #=> Time
    #   resp.error_detail_list #=> Array
    #   resp.error_detail_list[0].locale #=> String
    #   resp.error_detail_list[0].message #=> String
    #   resp.error_detail_list[0].reason #=> String, one of "INVALID_CONTENT", "DUPLICATE_PROFILE", "INVALID_LOGO", "INVALID_LOGO_URL", "INVALID_LOGO_FILE", "INVALID_LOGO_SIZE", "INVALID_WEBSITE_URL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/StartProfileUpdateTask AWS API Documentation
    #
    # @overload start_profile_update_task(params = {})
    # @param [Hash] params ({})
    def start_profile_update_task(params = {}, options = {})
      req = build_request(:start_profile_update_task, params)
      req.send_request(options)
    end

    # Initiates a new verification process for a partner account. This
    # operation begins the verification workflow for either business
    # registration or individual registrant identity verification as
    # required by AWS Partner Central.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. This prevents duplicate verification
    #   processes from being started accidentally.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::VerificationDetails] :verification_details
    #   The specific details required for the verification process, including
    #   business information for business verification or personal information
    #   for registrant verification.
    #
    # @return [Types::StartVerificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartVerificationResponse#verification_type #verification_type} => String
    #   * {Types::StartVerificationResponse#verification_status #verification_status} => String
    #   * {Types::StartVerificationResponse#verification_status_reason #verification_status_reason} => String
    #   * {Types::StartVerificationResponse#verification_response_details #verification_response_details} => Types::VerificationResponseDetails
    #   * {Types::StartVerificationResponse#started_at #started_at} => Time
    #   * {Types::StartVerificationResponse#completed_at #completed_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_verification({
    #     client_token: "ClientToken",
    #     verification_details: {
    #       business_verification_details: {
    #         legal_name: "LegalName", # required
    #         registration_id: "RegistrationId", # required
    #         country_code: "CountryCode", # required
    #         jurisdiction_of_incorporation: "JurisdictionCode",
    #       },
    #       registrant_verification_details: {
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.verification_type #=> String, one of "BUSINESS_VERIFICATION", "REGISTRANT_VERIFICATION"
    #   resp.verification_status #=> String, one of "PENDING_CUSTOMER_ACTION", "IN_PROGRESS", "FAILED", "SUCCEEDED", "REJECTED"
    #   resp.verification_status_reason #=> String
    #   resp.verification_response_details.business_verification_response.business_verification_details.legal_name #=> String
    #   resp.verification_response_details.business_verification_response.business_verification_details.registration_id #=> String
    #   resp.verification_response_details.business_verification_response.business_verification_details.country_code #=> String
    #   resp.verification_response_details.business_verification_response.business_verification_details.jurisdiction_of_incorporation #=> String
    #   resp.verification_response_details.registrant_verification_response.completion_url #=> String
    #   resp.verification_response_details.registrant_verification_response.completion_url_expires_at #=> Time
    #   resp.started_at #=> Time
    #   resp.completed_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/StartVerification AWS API Documentation
    #
    # @overload start_verification(params = {})
    # @param [Hash] params ({})
    def start_verification(params = {}, options = {})
      req = build_request(:start_verification, params)
      req.send_request(options)
    end

    # Adds or updates tags for a specified AWS Partner Central Account
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags to add or update for the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes specified tags from an AWS Partner Central Account resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the connection preferences for a partner account, modifying
    # access settings and exclusions.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the partner account.
    #
    # @option params [required, Integer] :revision
    #   The revision number of the connection preferences for optimistic
    #   locking.
    #
    # @option params [required, String] :access_type
    #   The access type setting for connections (e.g., open, restricted,
    #   invitation-only).
    #
    # @option params [Array<String>] :excluded_participant_identifiers
    #   The updated list of participant identifiers to exclude from
    #   connections.
    #
    # @return [Types::UpdateConnectionPreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConnectionPreferencesResponse#catalog #catalog} => String
    #   * {Types::UpdateConnectionPreferencesResponse#arn #arn} => String
    #   * {Types::UpdateConnectionPreferencesResponse#access_type #access_type} => String
    #   * {Types::UpdateConnectionPreferencesResponse#excluded_participant_ids #excluded_participant_ids} => Array&lt;String&gt;
    #   * {Types::UpdateConnectionPreferencesResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateConnectionPreferencesResponse#revision #revision} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection_preferences({
    #     catalog: "Catalog", # required
    #     revision: 1, # required
    #     access_type: "ALLOW_ALL", # required, accepts ALLOW_ALL, DENY_ALL, ALLOW_BY_DEFAULT_DENY_SOME
    #     excluded_participant_identifiers: ["ParticipantIdentifier"],
    #   })
    #
    # @example Response structure
    #
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.access_type #=> String, one of "ALLOW_ALL", "DENY_ALL", "ALLOW_BY_DEFAULT_DENY_SOME"
    #   resp.excluded_participant_ids #=> Array
    #   resp.excluded_participant_ids[0] #=> String
    #   resp.updated_at #=> Time
    #   resp.revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-account-2025-04-04/UpdateConnectionPreferences AWS API Documentation
    #
    # @overload update_connection_preferences(params = {})
    # @param [Hash] params ({})
    def update_connection_preferences(params = {}, options = {})
      req = build_request(:update_connection_preferences, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PartnerCentralAccount')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-partnercentralaccount'
      context[:gem_version] = '1.1.0'
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
